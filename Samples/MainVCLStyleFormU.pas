unit MainVCLStyleFormU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Themes, EmojiButton;

type
  TForm14 = class(TForm)
    lblTitle: TLabel;

    lblRow1: TLabel;
    btnStandard: TButton;
    btnVCLStyle: TEmojiButton;

    lblRow2: TLabel;
    btnPrimary: TEmojiButton;
    btnSecondary: TEmojiButton;
    btnSuccess: TEmojiButton;
    btnDanger: TEmojiButton;

    lblRow3: TLabel;
    btnWarning: TEmojiButton;
    btnInfo: TEmojiButton;
    btnLight: TEmojiButton;
    btnDark: TEmojiButton;

    lblRow4: TLabel;
    btnCustom1: TEmojiButton;
    btnCustom2: TEmojiButton;

    lblRow5: TLabel;
    btnDisabledVCL: TEmojiButton;
    btnDisabledPrimary: TEmojiButton;
    btnDisabledDanger: TEmojiButton;

    lblStyleInfo: TLabel;

    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.FormCreate(Sender: TObject);
begin
  Caption := 'TEmojiButton Styles Demo - Active VCL Style: ' + TStyleManager.ActiveStyle.Name;
end;

end.
