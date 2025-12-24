unit EmojiView;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Graphics, UnicodeEmoji,
  Vcl.ExtCtrls;

const
  EMOJI_VIEW_VERSION = '0.5';

type
  TEmojiView = class(TPaintBox)
  private
    FEmojiName: string;
    FPaddingPercentage: Integer;
    FUseColoredEmojiAtDesignTime: Boolean;
    procedure SetEmojiName(const Value: string);
    procedure SetPaddingPercentage(const Value: Integer);
    procedure SetUseColoredEmojiAtDesignTime(const Value: Boolean);
    procedure DrawErrorMessage(const AMessage: string);
    function GetVersion: string;
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    class function IsEmojiSupported: Boolean;
  published
    property EmojiName: string read FEmojiName write SetEmojiName;
    property PaddingPercentage: Integer read FPaddingPercentage write SetPaddingPercentage default 0;
    property UseColoredEmojiAtDesignTime: Boolean read FUseColoredEmojiAtDesignTime write SetUseColoredEmojiAtDesignTime default False;
    property Version: string read GetVersion;
  end;

implementation

uses
  System.Types, System.Math, Winapi.Windows, EmojiUtils;

{ TEmojiView }

constructor TEmojiView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEmojiName := 'waving hand';
  FPaddingPercentage := 0;
  FUseColoredEmojiAtDesignTime := False;
end;

class function TEmojiView.IsEmojiSupported: Boolean;
begin
  Result := TEmojiRenderer.IsEmojiSupported;
end;

function TEmojiView.GetVersion: string;
begin
  Result := EMOJI_VIEW_VERSION;
end;

procedure TEmojiView.DrawErrorMessage(const AMessage: string);
var
  LRect: TRect;
begin
  Canvas.Brush.Color := clInfoBk;
  Canvas.FillRect(ClientRect);
  Canvas.Font.Name := 'Segoe UI';
  Canvas.Font.Size := 8;
  Canvas.Font.Color := clInfoText;
  LRect := ClientRect;
  InflateRect(LRect, -4, -4);
  DrawText(Canvas.Handle, PChar(AMessage), -1, LRect,
    DT_CENTER or DT_VCENTER or DT_WORDBREAK);
end;

procedure TEmojiView.Paint;
const
  REFERENCE_SIZE = 100;
var
  LEmoji: string;
  LFontSize: Integer;
  LTargetSize: Integer;
  LTextSize: TSize;
  LRefSize: TSize;
  LScale: Double;
  LEmojiSize: TSize;
  LX, LY: Integer;
begin
  inherited;

  // Check if emoji rendering is supported
  if not TEmojiRenderer.IsEmojiSupported then
  begin
    DrawErrorMessage('Emoji not supported: no emoji font found');
    Exit;
  end;

  LEmoji := FindEmojiByName(FEmojiName);
  if LEmoji = '' then
  begin
    DrawErrorMessage('Emoji not found: "' + FEmojiName + '"');
    Exit;
  end;

  // Calculate target size (smaller dimension minus padding)
  LTargetSize := Min(Width, Height);
  if LTargetSize < 16 then
    LTargetSize := 16;
  LTargetSize := Round(LTargetSize * (100 - FPaddingPercentage) / 100);

  // Use GDI at design-time (unless UseColoredEmojiAtDesignTime is True)
  // Use Direct2D at runtime for colored emoji
  if (FUseColoredEmojiAtDesignTime or not (csDesigning in ComponentState)) and TEmojiRenderer.IsEmojiSupported then
  begin
    // Measure emoji at reference size to calculate scale factor
    LRefSize := TEmojiRenderer.MeasureEmoji(LEmoji, REFERENCE_SIZE);
    if (LRefSize.Width > 0) and (LRefSize.Height > 0) then
    begin
      // Calculate scale to fit target size
      LScale := LTargetSize / Max(LRefSize.Width, LRefSize.Height);
      LFontSize := Round(REFERENCE_SIZE * LScale);
    end
    else
      LFontSize := LTargetSize;

    // Measure at actual font size for centering
    LEmojiSize := TEmojiRenderer.MeasureEmoji(LEmoji, LFontSize);
    LX := (Width - LEmojiSize.Width) div 2;
    LY := (Height - LEmojiSize.Height) div 2;
    TEmojiRenderer.DrawEmoji(Canvas, LEmoji, LX, LY, LFontSize);
  end
  else
  begin
    // GDI rendering (design-time or fallback)
    Canvas.Font.Name := 'Segoe UI Emoji';
    Canvas.Font.Size := LTargetSize div 2;
    Canvas.Brush.Style := bsClear;
    LTextSize := Canvas.TextExtent(LEmoji);
    LX := (Width - LTextSize.cx) div 2;
    LY := (Height - LTextSize.cy) div 2;
    Canvas.TextOut(LX, LY, LEmoji);
  end;
end;

procedure TEmojiView.SetEmojiName(const Value: string);
begin
  if FEmojiName <> Value then
  begin
    FEmojiName := Value;
    Invalidate;
  end;
end;

procedure TEmojiView.SetPaddingPercentage(const Value: Integer);
var
  LValue: Integer;
begin
  // Clamp value between 0 and 50
  LValue := Value;
  if LValue < 0 then LValue := 0;
  if LValue > 50 then LValue := 50;

  if FPaddingPercentage <> LValue then
  begin
    FPaddingPercentage := LValue;
    Invalidate;
  end;
end;

procedure TEmojiView.SetUseColoredEmojiAtDesignTime(const Value: Boolean);
begin
  if FUseColoredEmojiAtDesignTime <> Value then
  begin
    FUseColoredEmojiAtDesignTime := Value;
    Invalidate;
  end;
end;

end.
