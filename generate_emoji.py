#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests, re, sys, html

BASE = 'https://www.unicode.org/Public/emoji/latest/'
FILES = ['emoji-sequences.txt', 'emoji-zwj-sequences.txt']
EMOJI_TEST_FILE = 'emoji-test.txt'
RE = re.compile(r'^([0-9A-F ]+)\s*;\s*(RGI_Emoji_[A-Za-z_]+)\s*;\s*(.+?)(?:\s+#.*)?$')
# Pattern for emoji-test.txt: codepoints ; status # emoji name
RE_TEST = re.compile(r'^([0-9A-F ]+)\s*;\s*fully-qualified\s*#\s*\S+\s+(.+)$')

def download(fname):
    r = requests.get(BASE + fname)
    r.raise_for_status()
    return r.text.splitlines()

def parse(lines):
    emojis = {}
    for L in lines:
        m = RE.match(L)
        if not m:
            continue
        cps = tuple(m.group(1).split())
        name = html.unescape(m.group(3).strip())
        emojis[cps] = name
    return emojis

def parse_test(lines):
    """Parse emoji-test.txt to get all fully-qualified emojis"""
    emojis = {}
    # Pattern to remove version prefix like "E0.6 ", "E1.0 ", "E15.1 "
    version_prefix = re.compile(r'^E\d+\.\d+\s+')
    for L in lines:
        L = L.strip()
        if not L or L.startswith('#'):
            continue
        m = RE_TEST.match(L)
        if m:
            cps = tuple(m.group(1).split())
            name = m.group(2).strip()
            # Remove version prefix (e.g., "E0.6 rocket" -> "rocket")
            name = version_prefix.sub('', name)
            # Skip skin tone modifiers as standalone
            if len(cps) == 1 and name.startswith('light skin tone'):
                continue
            emojis[cps] = name
    return emojis

def cp_to_delphi_literal(cps):
    s = []
    for cp in cps:
        u = int(cp, 16)
        if u <= 0xFFFF:
            s.append(f'#$%04X' % u)
        else:
            # surrogate pair
            u0 = u - 0x10000
            high = 0xD800 + (u0 >> 10)
            low = 0xDC00 + (u0 & 0x3FF)
            s.append(f'#$%04X' % high)
            s.append(f'#$%04X' % low)
    return ''.join(s)

def mk_ident(name):
    # Delphi reserved words that cannot be used as identifiers
    RESERVED_WORDS = {
        'AND', 'ARRAY', 'AS', 'ASM', 'BEGIN', 'CASE', 'CLASS', 'CONST',
        'CONSTRUCTOR', 'DESTRUCTOR', 'DIV', 'DO', 'DOWNTO', 'ELSE', 'END',
        'EXCEPT', 'EXPORTS', 'FILE', 'FINALIZATION', 'FINALLY', 'FOR',
        'FUNCTION', 'GOTO', 'IF', 'IMPLEMENTATION', 'IN', 'INHERITED',
        'INITIALIZATION', 'INLINE', 'INTERFACE', 'IS', 'LABEL', 'LIBRARY',
        'MOD', 'NIL', 'NOT', 'OBJECT', 'OF', 'OR', 'OUT', 'PACKED',
        'PROCEDURE', 'PROGRAM', 'PROPERTY', 'RAISE', 'RECORD', 'REPEAT',
        'RESOURCESTRING', 'SET', 'SHL', 'SHR', 'STRING', 'THEN', 'THREADVAR',
        'TO', 'TRY', 'TYPE', 'UNIT', 'UNTIL', 'USES', 'VAR', 'WHILE', 'WITH',
        'XOR', 'ON', 'AT', 'ABSOLUTE', 'ABSTRACT', 'ASSEMBLER', 'CDECL',
        'DEFAULT', 'DISPID', 'DYNAMIC', 'EXPORT', 'EXTERNAL', 'FAR', 'FORWARD',
        'INDEX', 'LOCAL', 'MESSAGE', 'NAME', 'NEAR', 'NODEFAULT', 'OVERRIDE',
        'OVERLOAD', 'PASCAL', 'PRIVATE', 'PROTECTED', 'PUBLIC', 'PUBLISHED',
        'READ', 'READONLY', 'REGISTER', 'REINTRODUCE', 'RESIDENT', 'SAFECALL',
        'STDCALL', 'STORED', 'STRICT', 'VIRTUAL', 'WRITE', 'WRITEONLY',
        'PLATFORM', 'DEPRECATED', 'EXPERIMENTAL', 'HELPER', 'REFERENCE',
        'SEALED', 'FINAL', 'CONTAINS', 'REQUIRES', 'PACKAGE'
    }
    # Clean up the name to create a valid identifier
    ident = re.sub(r'[^A-Za-z0-9]+','_', name).strip('_').upper()
    # Add underscore prefix if starts with digit
    if ident[0].isdigit():
        ident = '_' + ident
    # Add EMOJI_ prefix if it's a reserved word
    if ident in RESERVED_WORDS:
        ident = 'EMOJI_' + ident
    return ident

def generate_unit(emojis, unit='UnicodeEmoji'):
    items = sorted(emojis.items(), key=lambda kv: kv[1])

    # Build unique identifiers map (to handle duplicates)
    used_idents = {}
    ident_map = {}  # (cps, name) -> unique_ident
    for cps, name in items:
        base_ident = mk_ident(name)
        ident = base_ident
        counter = 1
        while ident in used_idents:
            counter += 1
            ident = f'{base_ident}_{counter}'
        used_idents[ident] = True
        ident_map[(cps, name)] = ident

    lines = [f'unit {unit};',
             '',
             'interface',
             '',
             'uses',
             '  System.SysUtils, System.Generics.Collections;',
             '',
             'type',
             '  TEmoji = record',
             '  public',
             '    const']

    # Add constants to the record
    for cps, name in items:
        ident = ident_map[(cps, name)]
        lit = cp_to_delphi_literal(cps)
        lines.append(f'      {ident}: string = {lit};  // {name}')

    lines += ['  end;',
              '',
              f'const TotalEmojiCount = {len(emojis)};',
              '',
              'function FindEmojiByName(const Name: string): string;',
              'function GetAllEmoji: TArray<string>;',
              'function GetAllEmojiNames: TArray<string>;',
              '',
              'implementation',
              '',
              'function FindEmojiByName(const Name: string): string;',
              'begin']

    for cps, name in items:
        ident = ident_map[(cps, name)]
        nm = name.replace("'", "''")
        lines.append(f"  if SameText(Name, '{nm}') then Exit(TEmoji.{ident});")
    
    lines += ["  Result := '';",
              "end;",
              "",
              "function GetAllEmoji: TArray<string>;",
              "begin",
              f"  SetLength(Result, {len(emojis)});"]
    
    for idx, (cps, name) in enumerate(items):
        ident = ident_map[(cps, name)]
        lines.append(f'  Result[{idx}] := TEmoji.{ident};')
    
    lines += ["end;",
              "",
              "function GetAllEmojiNames: TArray<string>;",
              "begin",
              f"  SetLength(Result, {len(emojis)});"]
    
    # Aggiunge i nomi delle emoji
    for idx, (cps, name) in enumerate(items):
        escaped_name = name.replace("'", "''")
        lines.append(f"  Result[{idx}] := '{escaped_name}';")
    
    lines += ["end;",
              "",
              "end."]
              
    return '\n'.join(lines)

def main():
    allp = {}

    # Parse emoji-test.txt for ALL fully-qualified emojis (faces, objects, symbols, etc.)
    print(f'Downloading {EMOJI_TEST_FILE}...')
    test_emojis = parse_test(download(EMOJI_TEST_FILE))
    print(f'  Found {len(test_emojis)} emojis from emoji-test.txt')
    allp.update(test_emojis)

    # Parse sequence files for ZWJ sequences and special sequences
    for f in FILES:
        print(f'Downloading {f}...')
        seq_emojis = parse(download(f))
        print(f'  Found {len(seq_emojis)} emojis from {f}')
        allp.update(seq_emojis)

    print(f'Total: {len(allp)} unique fully-qualified emojis.')
    unit = generate_unit(allp)
    fn = sys.argv[1] if len(sys.argv)>1 else 'UnicodeEmoji.pas'
    with open(fn, 'w', encoding='utf-8') as F:
        F.write(unit)
    print(f'Unit generated: "{fn}" with {len(allp)} emojis.')

if __name__=='__main__':
    main()