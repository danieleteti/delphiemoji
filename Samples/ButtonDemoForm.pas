unit ButtonDemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, EmojiButton, EmojiImage;

type
  TfrmButtonDemo = class(TForm)
    pnlTop: TPanel;
    lblTitle: TLabel;
    pnlBasic: TPanel;
    lblBasic: TLabel;
    btnOK: TEmojiButton;
    btnCancel: TEmojiButton;
    btnSave: TEmojiButton;
    pnlPositions: TPanel;
    lblPositions: TLabel;
    btnLeft: TEmojiButton;
    btnRight: TEmojiButton;
    btnTop: TEmojiButton;
    btnBottom: TEmojiButton;
    pnlShapes: TPanel;
    lblShapes: TLabel;
    btnRect: TEmojiButton;
    btnRound: TEmojiButton;
    btnCircle: TEmojiButton;
    pnlColors: TPanel;
    lblColors: TLabel;
    btnGreen: TEmojiButton;
    btnRed: TEmojiButton;
    btnBlue: TEmojiButton;
    pnlStates: TPanel;
    lblStates: TLabel;
    lblStatesHint: TLabel;
    btnHover: TEmojiButton;
    btnPressed: TEmojiButton;
    btnDisabled: TEmojiButton;
    pnlShadow: TPanel;
    lblShadow: TLabel;
    btnShadow: TEmojiButton;
    btnNoShadow: TEmojiButton;
    pnlAllStyles: TPanel;
    lblAllStyles: TLabel;
    btnStyleVCL: TEmojiButton;
    btnStylePrimary: TEmojiButton;
    btnStyleSecondary: TEmojiButton;
    btnStyleSuccess: TEmojiButton;
    btnStyleDanger: TEmojiButton;
    btnStyleWarning: TEmojiButton;
    btnStyleInfo: TEmojiButton;
    btnStyleLight: TEmojiButton;
    btnStyleDark: TEmojiButton;
    btnStyleCustom: TEmojiButton;
    lblStylesHint: TLabel;
    pnlNewStyles: TPanel;
    lblNewStyles: TLabel;
    btnPastelRose: TEmojiButton;
    btnPastelSky: TEmojiButton;
    btnPastelMint: TEmojiButton;
    btnHCLight: TEmojiButton;
    btnHCDark: TEmojiButton;
    btnAccessBlue: TEmojiButton;
    btnAccessOrange: TEmojiButton;
    btnMaterialBlue: TEmojiButton;
    btnGitHub: TEmojiButton;
    btnOutline: TEmojiButton;
    lblNewStylesHint: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
  public
  end;

var
  frmButtonDemo: TfrmButtonDemo;

implementation

{$R *.dfm}

procedure TfrmButtonDemo.FormCreate(Sender: TObject);
begin
  // Setup is done at design-time
end;

procedure TfrmButtonDemo.btnOKClick(Sender: TObject);
begin
  ShowMessage('OK clicked!');
end;

procedure TfrmButtonDemo.btnCancelClick(Sender: TObject);
begin
  ShowMessage('Cancel clicked!');
end;

procedure TfrmButtonDemo.btnSaveClick(Sender: TObject);
begin
  ShowMessage('Save clicked!');
end;

end.
