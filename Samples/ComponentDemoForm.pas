unit ComponentDemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, EmojiImage, UnicodeEmoji;

type
  TfrmComponentDemo = class(TForm)
    pnlTop: TPanel;
    lblTitle: TLabel;
    pnlControls: TPanel;
    lblEmojiName: TLabel;
    edtEmojiName: TEdit;
    btnSelectEmoji: TButton;
    lblPadding: TLabel;
    trkPadding: TTrackBar;
    lblPaddingValue: TLabel;
    pnlMain: TPanel;
    lblMainEmoji: TLabel;
    MainEmoji: TEmojiImage;
    pnlSizes: TPanel;
    lblSizes: TLabel;
    lblSmall: TLabel;
    lblMedium: TLabel;
    lblLarge: TLabel;
    SmallEmoji: TEmojiImage;
    MediumEmoji: TEmojiImage;
    LargeEmoji: TEmojiImage;
    pnlGallery: TPanel;
    lblGallery: TLabel;
    btnRandomize: TButton;
    Emoji1: TEmojiImage;
    Emoji2: TEmojiImage;
    Emoji3: TEmojiImage;
    Emoji4: TEmojiImage;
    Emoji5: TEmojiImage;
    Emoji6: TEmojiImage;
    Emoji7: TEmojiImage;
    Emoji8: TEmojiImage;
    Emoji9: TEmojiImage;
    Emoji10: TEmojiImage;
    Emoji11: TEmojiImage;
    Emoji12: TEmojiImage;
    pnlPaddingDemo: TPanel;
    lblPaddingDemo: TLabel;
    lblPad0: TLabel;
    lblPad15: TLabel;
    lblPad30: TLabel;
    EmojiPad0: TEmojiImage;
    EmojiPad15: TEmojiImage;
    EmojiPad30: TEmojiImage;
    pnlHoverDemo: TPanel;
    lblHoverDemo: TLabel;
    lblHoverHint: TLabel;
    EmojiHover1: TEmojiImage;
    EmojiHover2: TEmojiImage;
    EmojiHover3: TEmojiImage;
    EmojiHover4: TEmojiImage;
    EmojiHover5: TEmojiImage;
    EmojiHover6: TEmojiImage;
    procedure FormCreate(Sender: TObject);
    procedure btnSelectEmojiClick(Sender: TObject);
    procedure trkPaddingChange(Sender: TObject);
    procedure edtEmojiNameChange(Sender: TObject);
    procedure btnRandomizeClick(Sender: TObject);
  private
    procedure UpdateMainEmojis;
  end;

var
  frmComponentDemo: TfrmComponentDemo;

implementation

{$R *.dfm}

uses
  EmojiSelectorForm;

procedure TfrmComponentDemo.FormCreate(Sender: TObject);
begin
  Randomize;
end;

procedure TfrmComponentDemo.btnSelectEmojiClick(Sender: TObject);
var
  LEmojiName: string;
begin
  LEmojiName := edtEmojiName.Text;
  if TEmojiSelector.SelectEmoji(LEmojiName) then
  begin
    edtEmojiName.Text := LEmojiName;
  end;
end;

procedure TfrmComponentDemo.edtEmojiNameChange(Sender: TObject);
begin
  UpdateMainEmojis;
end;

procedure TfrmComponentDemo.trkPaddingChange(Sender: TObject);
begin
  lblPaddingValue.Caption := IntToStr(trkPadding.Position) + '%';
  MainEmoji.PaddingPercentage := trkPadding.Position;
  SmallEmoji.PaddingPercentage := trkPadding.Position;
  MediumEmoji.PaddingPercentage := trkPadding.Position;
  LargeEmoji.PaddingPercentage := trkPadding.Position;
end;

procedure TfrmComponentDemo.UpdateMainEmojis;
begin
  MainEmoji.EmojiName := edtEmojiName.Text;
  SmallEmoji.EmojiName := edtEmojiName.Text;
  MediumEmoji.EmojiName := edtEmojiName.Text;
  LargeEmoji.EmojiName := edtEmojiName.Text;
  // Update padding demo too
  EmojiPad0.EmojiName := edtEmojiName.Text;
  EmojiPad15.EmojiName := edtEmojiName.Text;
  EmojiPad30.EmojiName := edtEmojiName.Text;
end;

procedure TfrmComponentDemo.btnRandomizeClick(Sender: TObject);
var
  LEmojiNames: TArray<string>;
begin
  LEmojiNames := GetAllEmojiNames;
  Emoji1.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji2.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji3.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji4.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji5.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji6.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji7.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji8.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji9.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji10.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji11.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
  Emoji12.EmojiName := LEmojiNames[Random(Length(LEmojiNames))];
end;

end.
