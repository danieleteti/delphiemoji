# Delphi Emoji

**Delphi Emoji** is a comprehensive Delphi unit that provides easy access to all modern emojis directly in your Delphi applications. This library is <u>automatically generated</u> from the latest Unicode standards, ensuring your apps always have access to the most current emoji collection. Features

![](https://raw.githubusercontent.com/danieleteti/delphiemoji/refs/heads/main/delphi_emoji_logo.png)

- ✅ **Always up-to-date** - Automatically generated from the latest Unicode standards using a Python script
- ✅ **Cross-platform** - Works with all Delphi versions that support Unicode strings (XE2+)
- ✅ **Easy integration** - Simple API for accessing emojis
- ✅ **Complete set** - Includes all RGI (Recommended for General Interchange) emojis
- ✅ **Type-safe access** - Emojis are available as constants in a record structure

## Installation

### Option 1: Simple Usage (Unit Only)

- Add `UnicodeEmoji.pas` to your project or to your library path
- Add the unit to your uses clause: `uses UnicodeEmoji;`

### Option 2: VCL Component with Visual Editor

1. Open `EmojiComponent.dpk` in Delphi IDE
2. Right-click on `EmojiComponent.bpl` → **Compile**
3. Right-click on `EmojiComponent.bpl` → **Install**
4. The `TEmojiPaintBox` component will appear in the **Emoji** palette
5. Double-click the component on a form to open the visual emoji selector

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

### Using TEmojiPaintBox Component

After installing the package, you can use the `TEmojiPaintBox` component:

```pascal
// Set emoji by name - the component auto-scales and centers the emoji
EmojiPaintBox1.EmojiName := 'grinning face';
EmojiPaintBox1.EmojiName := 'red heart';
EmojiPaintBox1.EmojiName := 'thumbs up';
```

The component features:
- Automatic scaling to fit the component bounds
- Centered emoji display
- High-quality Direct2D rendering with colored emoji support
- Visual emoji picker in the IDE (double-click the component)

### Advanced Rendering with TEmojiRenderer

For advanced rendering scenarios, use `TEmojiRenderer` from `EmojiUtils.pas`:

```pascal
uses EmojiUtils, UnicodeEmoji;

// Simple rendering
TEmojiRenderer.DrawEmoji(Canvas, TEmoji.ROCKET, 10, 10, 48);

// Rendering with custom configuration
var
  Config: TEmojiRenderConfig;
begin
  Config := TEmojiRenderConfig.Default;
  Config.FontSize := 72;
  Config.BackgroundColor := clWhite;
  Config.EnableColorFont := True;
  TEmojiRenderer.DrawEmoji(Canvas, TEmoji.STAR, Rect(0, 0, 100, 100), Config);
end;

// Measure emoji size before rendering
var
  Size: TSize;
begin
  Size := TEmojiRenderer.MeasureEmoji(TEmoji.FIRE, 48);
  // Size.cx = width, Size.cy = height
end;

// Check if emoji rendering is supported
if TEmojiRenderer.IsEmojiSupported then
  ShowMessage('Emoji fonts available!');
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

## Sample Applications

The `Samples` folder contains ready-to-run demo applications:

| Sample | Description |
|--------|-------------|
| **ConsoleSample** | Simple console app demonstrating emoji constants and FindEmojiByName |
| **VCLSample** | Basic VCL app with Direct2D emoji rendering |
| **VCLSample2** | Advanced demo with 4 tabs: basic rendering, configuration options, font info, and performance testing |

Open `Samples/ProjectGroup1.groupproj` to load all VCL samples at once.

## Requirements

- Delphi XE2 or newer (Unicode support required)
- Windows 8.1+ recommended for colored emoji support (Segoe UI Emoji)
- Python 3.6+ to run the generation script (optional, for regenerating emoji data)
- Internet connection to fetch the latest emoji data (optional)

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
