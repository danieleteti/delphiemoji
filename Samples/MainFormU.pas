unit MainFormU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Vcl.Direct2D, Winapi.D2D1, UnicodeEmoji, EmojiUtils;

type
  TGraphicControlHack = class(Vcl.Controls.TGraphicControl)

  end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  TEmojiRenderer.DrawEmoji(Canvas, TEmoji.MAN_ARTIST, 10, 10, 200);
end;

procedure TForm9.PaintBox1Paint(Sender: TObject);
var
  C: TDirect2DCanvas;
  R: D2D_RECT_F;
  LCanvas: TCanvas;
begin
  LCanvas := TGraphicControlHack(Sender).Canvas;
  C := TDirect2DCanvas.Create(LCanvas.Handle, LCanvas.ClipRect);
  C.BeginDraw;
  try
    R := LCanvas.ClipRect;
    C.FillRectangle(R);
    // Brush determines the font color.
    C.Brush.Color := ClBlack;

    var
    Ok := False;
    C.Font.Size := 1000;
    while not Ok do
    begin
      if C.TextExtent(TEmoji.MAN_ARTIST).Cx > R.Right - R.Left then
        C.Font.Size := C.Font.Size - 2
      else
        Ok := True;
    end;
    C.Font.Size := C.Font.Size - 2;
    C.RenderTarget.DrawText(PChar(TEmoji.MAN_ARTIST), Length(TEmoji.MAN_ARTIST), C.Font.Handle, R, C.Brush.Handle,
      D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT);
  finally
    C.EndDraw;
    C.Free;
  end;
end;

end.
