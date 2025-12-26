unit EmojiImage;

interface

uses
  System.SysUtils, System.Classes, Winapi.Messages, Vcl.Controls, Vcl.Graphics,
  UnicodeEmoji;

const
  EMOJI_IMAGE_VERSION = '0.9.0';

type
  TEmojiChangedEvent = procedure(Sender: TObject; const OldEmoji, NewEmoji: string) of object;

  TEmojiImage = class(TGraphicControl)
  private
    FEmojiName: string;
    FHoverEmojiName: string;
    FPaddingPercentage: Integer;
    FUseColoredEmojiAtDesignTime: Boolean;
    FIsHovered: Boolean;
    FOnEmojiChanged: TEmojiChangedEvent;
    procedure SetEmojiName(const Value: string);
    procedure SetHoverEmojiName(const Value: string);
    procedure SetPaddingPercentage(const Value: Integer);
    procedure SetUseColoredEmojiAtDesignTime(const Value: Boolean);
    procedure DrawErrorMessage(const AMessage: string);
    function GetVersion: string;
    function GetCurrentEmoji: string;
    procedure DoEmojiChanged(const OldEmoji, NewEmoji: string);
  protected
    procedure Paint; override;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  public
    constructor Create(AOwner: TComponent); override;
    class function IsEmojiSupported: Boolean;
    property IsHovered: Boolean read FIsHovered;
  published
    { TEmojiImage specific properties }
    property EmojiName: string read FEmojiName write SetEmojiName;
    property HoverEmojiName: string read FHoverEmojiName write SetHoverEmojiName;
    property PaddingPercentage: Integer read FPaddingPercentage write SetPaddingPercentage default 0;
    property UseColoredEmojiAtDesignTime: Boolean read FUseColoredEmojiAtDesignTime write SetUseColoredEmojiAtDesignTime default True;
    property Version: string read GetVersion;
    property OnEmojiChanged: TEmojiChangedEvent read FOnEmojiChanged write FOnEmojiChanged;
    { Inherited properties }
    property Align;
    property Anchors;
    property Constraints;
    property Cursor;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Hint;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Touch;
    property Visible;
    { Inherited events }
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnGesture;
    property OnMouseActivate;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

implementation

uses
  System.Types, System.Math, Winapi.Windows, EmojiUtils;

{ TEmojiImage }

constructor TEmojiImage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEmojiName := 'waving hand';
  FHoverEmojiName := '';
  FPaddingPercentage := 0;
  FUseColoredEmojiAtDesignTime := True;
  FIsHovered := False;
end;

class function TEmojiImage.IsEmojiSupported: Boolean;
begin
  Result := TEmojiRenderer.IsEmojiSupported;
end;

function TEmojiImage.GetVersion: string;
begin
  Result := EMOJI_IMAGE_VERSION;
end;

function TEmojiImage.GetCurrentEmoji: string;
begin
  if FIsHovered and (FHoverEmojiName <> '') then
    Result := FHoverEmojiName
  else
    Result := FEmojiName;
end;

procedure TEmojiImage.DoEmojiChanged(const OldEmoji, NewEmoji: string);
begin
  if Assigned(FOnEmojiChanged) then
    FOnEmojiChanged(Self, OldEmoji, NewEmoji);
end;

procedure TEmojiImage.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  FIsHovered := True;
  if FHoverEmojiName <> '' then
    Invalidate;
end;

procedure TEmojiImage.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  FIsHovered := False;
  if FHoverEmojiName <> '' then
    Invalidate;
end;

procedure TEmojiImage.DrawErrorMessage(const AMessage: string);
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

procedure TEmojiImage.Paint;
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
  LCurrentEmojiName: string;
begin
  inherited;

  // Check if emoji rendering is supported
  if not TEmojiRenderer.IsEmojiSupported then
  begin
    DrawErrorMessage('Emoji not supported: no emoji font found');
    Exit;
  end;

  // Determine which emoji to display
  LCurrentEmojiName := GetCurrentEmoji;
  LEmoji := FindEmojiByName(LCurrentEmojiName);

  if LEmoji = '' then
  begin
    DrawErrorMessage('Emoji not found: "' + LCurrentEmojiName + '"');
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

procedure TEmojiImage.SetEmojiName(const Value: string);
var
  LOldEmoji: string;
begin
  if FEmojiName <> Value then
  begin
    LOldEmoji := FEmojiName;
    FEmojiName := Value;
    DoEmojiChanged(LOldEmoji, Value);
    Invalidate;
  end;
end;

procedure TEmojiImage.SetHoverEmojiName(const Value: string);
begin
  if FHoverEmojiName <> Value then
  begin
    FHoverEmojiName := Value;
    if FIsHovered then
      Invalidate;
  end;
end;

procedure TEmojiImage.SetPaddingPercentage(const Value: Integer);
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

procedure TEmojiImage.SetUseColoredEmojiAtDesignTime(const Value: Boolean);
begin
  if FUseColoredEmojiAtDesignTime <> Value then
  begin
    FUseColoredEmojiAtDesignTime := Value;
    Invalidate;
  end;
end;

end.
