# Delphi Emoji

**Delphi Emoji** is a comprehensive Delphi unit that provides easy access to all modern emojis directly in your Delphi applications. This library is <u>automatically generated</u> from the latest Unicode standards, ensuring your apps always have access to the most current emoji collection. Features

![](https://github.com/danieleteti/delphiemoji/blob/08086ce090f91351dca9644d9c3816e296815351/delphi_emoji_logo.png)

- ✅ **Always up-to-date** - Automatically generated from the latest Unicode standards using a Python script
- ✅ **Cross-platform** - Works with all Delphi versions that support Unicode strings (XE2+)
- ✅ **Easy integration** - Simple API for accessing emojis
- ✅ **Complete set** - Includes all RGI (Recommended for General Interchange) emojis
- ✅ **Type-safe access** - Emojis are available as constants in a record structure

## Installation

- Add `UnicodeEmoji.pas` to your project or to your library path
- Add the unit to your uses clause: `uses UnicodeEmoji;`

## Usage

### Basic Emoji Access

```pascal
// Access emojis directly
ShowMessage('Hello ' + TEmoji.WORLD_MAP + ' from Delphi!');
ShowMessage('I ' + TEmoji.RED_HEART + ' Delphi!');
```

### Finding Emojis by Name

```pascal
var 
  EmojiStr: string;
begin
  EmojiStr := FindEmojiByName('smiling face with halo');
  if EmojiStr <> '' then
    ShowMessage('Angel emoji: ' + EmojiStr);
end;
```

### Getting All Emojis

```pascal
var
  AllEmojis: TArray<string>;
  Emoji: string;
begin
  AllEmojis := GetAllEmoji;
  for Emoji in AllEmojis do
    Memo1.Lines.Add(Emoji);
end;
```

### Getting All Emoji Names

```pascal
var
  EmojiNames: TArray<string>;
  Name: string;
begin
  EmojiNames := GetAllEmojiNames;
  for Name in EmojiNames do
    ListBox1.Items.Add(Name);
end;
```

## Console Application Example

```pascal
program EmojiConsole;

{$APPTYPE CONSOLE}

uses
  System.SysUtils, UnicodeEmoji;

begin
  try
    Writeln('Weather Report:');
    Writeln('Today: ' + TEmoji.SUN_WITH_FACE);
    Writeln('Tonight: ' + TEmoji.CRESCENT_MOON + TEmoji.STAR);
    Writeln('Tomorrow: ' + TEmoji.CLOUD_WITH_RAIN + TEmoji.UMBRELLA);
    
    Writeln(#13#10'All food emojis:');
    Writeln(TEmoji.HAMBURGER + ' ' + TEmoji.PIZZA + ' ' + 
            TEmoji.TACO + ' ' + TEmoji.BEVERAGE_BOX);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
```

## Windows Application Example

```pascal
unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, UnicodeEmoji;

type
  TForm1 = class(TForm)
    btnShowEmoji: TButton;
    edtEmojiName: TEdit;
    lblResult: TLabel;
    btnListAll: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure btnShowEmojiClick(Sender: TObject);
    procedure btnListAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnShowEmojiClick(Sender: TObject);
begin
  lblResult.Caption := FindEmojiByName(edtEmojiName.Text);
end;

procedure TForm1.btnListAllClick(Sender: TObject);
var
  Emojis: TArray<string>;
  Emoji: string;
begin
  Memo1.Clear;
  Emojis := GetAllEmoji;
  for Emoji in Emojis do
    Memo1.Lines.Add(Emoji);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Caption := 'Delphi Emoji Demo ' + TEmoji.SMILING_FACE_WITH_HEARTS;
  lblResult.Font.Size := 20;
end;

end.
```

## Requirements

- Delphi XE2 or newer (Unicode support required)
- Python 3.6+ to run the generation script
- Internet connection to fetch the latest emoji data

## Contributing

Contributions are welcome! Here's how you can help:

1. Report issues or suggest enhancements
2. Submit pull requests for improvements
3. Help improve the documentation
4. Share how you're using Delphi Emoji in your projects

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Unicode Consortium for maintaining the emoji standard
- Embarcadero for Delphi
- Python community for enabling the generator script

---

**Happy coding with emojis!** 🚀💻😊
