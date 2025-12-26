# Emoji4Delphi

VCL components for rendering colored emoji in Delphi applications.

![](https://raw.githubusercontent.com/danieleteti/delphiemoji/refs/heads/main/delphi_emoji_logo.png)

## Features

- **Always up-to-date** - Emoji database generated via Python script directly from [unicode.org](https://unicode.org/Public/emoji/latest/emoji-test.txt)
- **3944 emoji** included from the latest Unicode standard
- **TEmojiImage** - Display emoji with hover support
- **TEmojiButton** - Button with emoji and 24 built-in styles (Bootstrap, Material, Pastel, Accessibility)

## Installation

1. Build `Emoji4DelphiRT.dproj` (Runtime)
2. Install `Emoji4DelphiDT.dproj` (Design-time)

## Quick Start

```pascal
// TEmojiImage
EmojiImage1.EmojiName := 'rocket';

// TEmojiButton
EmojiButton1.EmojiName := 'check mark';
EmojiButton1.ButtonStyle := ebsSuccess;
```

## Requirements

- Delphi 10.3+
- Windows 10+ (Segoe UI Emoji)

## License

MIT License

## Version

0.9.0
