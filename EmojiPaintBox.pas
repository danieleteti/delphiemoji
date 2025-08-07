unit EmojiPaintBox;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Graphics, UnicodeEmoji;

type
  TEmojiPaintBox = class(TPaintBox)
  private
    FEmojiName: string;
    procedure SetEmojiName(const Value: string);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property EmojiName: string read FEmojiName write SetEmojiName;
  end;

implementation

{ TEmojiPaintBox }

constructor TEmojiPaintBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEmojiName := 'waving hand'; // Default emoji
end;

procedure TEmojiPaintBox.Paint;
var
  LSize: TSize;
  LEmoji: string;
  LScale: Double;
  LFontSize: Integer;
begin
  inherited;

  LEmoji := FindEmojiByName(FEmojiName);
  if LEmoji = '' then
    LEmoji := '?';

  Canvas.Brush.Style := bsClear;
  Canvas.Font.Name := 'Segoe UI Emoji';
  Canvas.Font.Color := clWindowText;

  // Start with a reasonable font size
  LFontSize := Height;
  Canvas.Font.Size := LFontSize;

  // Calculate the text size with the current font
  LSize := Canvas.TextExtent(LEmoji);

  // Adjust font size to fit the component bounds
  if (LSize.cx > Width) or (LSize.cy > Height) then
  begin
    LScale := Min(Width / LSize.cx, Height / LSize.cy);
    LFontSize := Round(LFontSize * LScale);
    Canvas.Font.Size := LFontSize;
    LSize := Canvas.TextExtent(LEmoji);
  end;

  // Center the emoji
  Canvas.TextOut((Width - LSize.cx) div 2, (Height - LSize.cy) div 2, LEmoji);
end;

procedure TEmojiPaintBox.SetEmojiName(const Value: string);
begin
  if FEmojiName <> Value then
  begin
    FEmojiName := Value;
    Invalidate; // Redraw the component
  end;
end;

end.
