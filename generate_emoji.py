#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests, re, sys, html

BASE = 'https://www.unicode.org/Public/emoji/latest/'
FILES = ['emoji-sequences.txt', 'emoji-zwj-sequences.txt']
RE = re.compile(r'^([0-9A-F ]+)\s*;\s*(RGI_Emoji_[A-Za-z_]+)\s*;\s*(.+?)(?:\s+#.*)?$')

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
    # Rimuove il prefisso EMOJI_ e mantiene solo il nome pulito
    ident = re.sub(r'[^A-Za-z0-9]+','_', name).strip('_').upper()
    # Aggiunge un underscore se inizia con una cifra
    if ident[0].isdigit():
        ident = '_' + ident
    return ident

def generate_unit(emojis, unit='UnicodeEmoji'):
    items = sorted(emojis.items(), key=lambda kv: kv[1])
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
    
    # Aggiungi costanti al record senza prefisso EMOJI_
    for cps, name in items:
        ident = mk_ident(name)
        lit = cp_to_delphi_literal(cps)
        lines.append(f'      {ident}: string = {lit};  // {name}')
    
    lines += ['  end;',
              '',
              f'const TotalEmojiCount = {len(emojis)};',
              '',
              'function FindEmojiByName(const Name: string): string;',
              'function GetAllEmoji: TArray<string>;',
              'function GetAllEmojiNames: TArray<string>;',  # Nuova funzione
              '',
              'implementation',
              '',
              'function FindEmojiByName(const Name: string): string;',
              'begin']
    
    for cps, name in items:
        nm = name.replace("'", "''")
        ident = mk_ident(name)
        lines.append(f"  if SameText(Name, '{nm}') then Exit(TEmoji.{ident});")
    
    lines += ["  Result := '';",
              "end;",
              "",
              "function GetAllEmoji: TArray<string>;",
              "begin",
              f"  SetLength(Result, {len(emojis)});"]
    
    for idx, (cps, name) in enumerate(items):
        ident = mk_ident(name)
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
    for f in FILES:
        allp.update(parse(download(f)))
    print(f'Found {len(allp)} fully-qualified emojis (RGI).')
    unit = generate_unit(allp)
    fn = sys.argv[1] if len(sys.argv)>1 else 'UnicodeEmoji.pas'
    with open(fn, 'w', encoding='utf-8') as F:
        F.write(unit)
    print(f'Unit generated: "{fn}" with {len(allp)} emojis.')

if __name__=='__main__':
    main()