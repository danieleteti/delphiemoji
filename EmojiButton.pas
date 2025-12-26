unit EmojiButton;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes,
  Winapi.Windows, Winapi.Messages, Winapi.GDIPAPI, Winapi.GDIPOBJ,
  Vcl.Controls, Vcl.Graphics, Vcl.Forms, Vcl.Themes,
  UnicodeEmoji, EmojiUtils;

const
  EMOJI_BUTTON_VERSION = '0.9.0';

type
  TEmojiPosition = (epLeft, epRight, epTop, epBottom);
  TButtonShape = (bsRect, bsRoundRect, bsCircle, bsEllipse);
  TButtonState = (bsNormal, bsHover, bsPressed, bsDisabled);

  // Button styles like Bootstrap/Bulma CSS frameworks
  TEmojiButtonStyle = (
    ebsVCLStyle,    // Use active VCL style
    ebsPrimary,     // Blue
    ebsSecondary,   // Gray
    ebsSuccess,     // Green
    ebsDanger,      // Red
    ebsWarning,     // Yellow/Orange
    ebsInfo,        // Cyan
    ebsLight,       // Light gray
    ebsDark,        // Dark
    // Pastel styles - soft, gentle colors
    ebsPastelRose,      // Soft pink/rose
    ebsPastelSky,       // Light blue
    ebsPastelMint,      // Mint green
    ebsPastelLemon,     // Pale yellow
    ebsPastelLavender,  // Light purple
    // High contrast accessibility styles
    ebsHighContrastLight, // Black on white
    ebsHighContrastDark,  // White on black
    // Colorblind-friendly styles (Deuteranopia/Protanopia safe)
    ebsAccessibleBlue,    // Blue (safe for all)
    ebsAccessibleOrange,  // Orange (distinguishable from blue)
    ebsAccessibleTeal,    // Teal (distinguishable from both)
    // Famous/Popular styles
    ebsMaterialBlue,    // Google Material Design Blue
    ebsMaterialIndigo,  // Google Material Design Indigo
    ebsGitHub,          // GitHub button style
    ebsOutline,         // Outline/Ghost button style
    ebsCustom           // User-defined custom colors
  );

  TEmojiButton = class;

  // Grouped color properties for the button
  TEmojiButtonColors = class(TPersistent)
  private
    FOwner: TEmojiButton;
    // Background colors
    FColor: TColor;
    FHoverColor: TColor;
    FPressedColor: TColor;
    FDisabledColor: TColor;
    FFocusColor: TColor;
    // Border colors
    FBorderColor: TColor;
    FBorderHoverColor: TColor;
    FBorderPressedColor: TColor;
    FFocusBorderColor: TColor;
    // Font colors
    FFontColor: TColor;
    FFontHoverColor: TColor;
    FFontPressedColor: TColor;
    FFontDisabledColor: TColor;
    procedure SetColor(const Value: TColor);
    procedure SetHoverColor(const Value: TColor);
    procedure SetPressedColor(const Value: TColor);
    procedure SetDisabledColor(const Value: TColor);
    procedure SetFocusColor(const Value: TColor);
    procedure SetBorderColor(const Value: TColor);
    procedure SetBorderHoverColor(const Value: TColor);
    procedure SetBorderPressedColor(const Value: TColor);
    procedure SetFocusBorderColor(const Value: TColor);
    procedure SetFontColor(const Value: TColor);
    procedure SetFontHoverColor(const Value: TColor);
    procedure SetFontPressedColor(const Value: TColor);
    procedure SetFontDisabledColor(const Value: TColor);
  protected
    procedure Changed;
  public
    constructor Create(AOwner: TEmojiButton);
    procedure Assign(Source: TPersistent); override;
    procedure ApplyStyle(AStyle: TEmojiButtonStyle);
  published
    // Background
    property Color: TColor read FColor write SetColor default clBtnFace;
    property HoverColor: TColor read FHoverColor write SetHoverColor default clBtnHighlight;
    property PressedColor: TColor read FPressedColor write SetPressedColor default clBtnShadow;
    property DisabledColor: TColor read FDisabledColor write SetDisabledColor default clBtnFace;
    property FocusColor: TColor read FFocusColor write SetFocusColor default clBtnHighlight;
    // Border
    property BorderColor: TColor read FBorderColor write SetBorderColor default clBtnShadow;
    property BorderHoverColor: TColor read FBorderHoverColor write SetBorderHoverColor default clHighlight;
    property BorderPressedColor: TColor read FBorderPressedColor write SetBorderPressedColor default clHighlight;
    property FocusBorderColor: TColor read FFocusBorderColor write SetFocusBorderColor default clHighlight;
    // Font
    property FontColor: TColor read FFontColor write SetFontColor default clBtnText;
    property FontHoverColor: TColor read FFontHoverColor write SetFontHoverColor default clBtnText;
    property FontPressedColor: TColor read FFontPressedColor write SetFontPressedColor default clBtnText;
    property FontDisabledColor: TColor read FFontDisabledColor write SetFontDisabledColor default clGrayText;
  end;

  TEmojiButton = class(TCustomControl)
  private
    // Emoji states
    FEmojiName: string;
    FHoverEmojiName: string;
    FPressedEmojiName: string;
    FDisabledEmojiName: string;
    FEmojiSize: Integer;

    // Text
    FCaption: string;
    FWordWrap: Boolean;

    // Layout
    FEmojiPosition: TEmojiPosition;
    FSpacing: Integer;
    FPadding: TPadding;

    // Shape and borders
    FShape: TButtonShape;
    FBorderRadius: Integer;
    FBorderWidth: Integer;
    FFocusBorderExtraWidth: Integer;

    // Style system
    FButtonStyle: TEmojiButtonStyle;
    FColors: TEmojiButtonColors;

    // Shadow
    FShadow: Boolean;
    FShadowColor: TColor;
    FShadowOffsetX: Integer;
    FShadowOffsetY: Integer;
    FShadowBlur: Integer;
    FShadowOpacity: Byte;

    // Press effect
    FShowPressedEffect: Boolean;
    FPressedOffsetX: Integer;
    FPressedOffsetY: Integer;

    // Button behavior
    FModalResult: TModalResult;
    FCancel: Boolean;
    FDefault: Boolean;

    // Internal state
    FButtonState: TButtonState;
    FMouseInControl: Boolean;

    // Setters
    procedure SetEmojiName(const Value: string);
    procedure SetHoverEmojiName(const Value: string);
    procedure SetPressedEmojiName(const Value: string);
    procedure SetDisabledEmojiName(const Value: string);
    procedure SetEmojiSize(const Value: Integer);
    procedure SetCaption(const Value: string);
    procedure SetWordWrap(const Value: Boolean);
    procedure SetEmojiPosition(const Value: TEmojiPosition);
    procedure SetSpacing(const Value: Integer);
    procedure SetShape(const Value: TButtonShape);
    procedure SetBorderRadius(const Value: Integer);
    procedure SetBorderWidth(const Value: Integer);
    procedure SetFocusBorderExtraWidth(const Value: Integer);
    procedure SetButtonStyle(const Value: TEmojiButtonStyle);
    procedure SetColors(const Value: TEmojiButtonColors);
    procedure SetShadow(const Value: Boolean);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffsetX(const Value: Integer);
    procedure SetShadowOffsetY(const Value: Integer);
    procedure SetShadowBlur(const Value: Integer);
    procedure SetShadowOpacity(const Value: Byte);
    procedure SetShowPressedEffect(const Value: Boolean);
    procedure SetPressedOffsetX(const Value: Integer);
    procedure SetPressedOffsetY(const Value: Integer);
    procedure SetDefault(const Value: Boolean);
    procedure PaddingChanged(Sender: TObject);

    // Helpers
    function GetVersion: string;
    function GetCurrentEmojiName: string;
    function IsVCLStyleActive: Boolean;
    function GetCurrentBackgroundColor: TColor;
    function GetCurrentBorderColor: TColor;
    function GetCurrentFontColor: TColor;
    function GetCurrentBorderWidth: Integer;
    procedure UpdateState;
    procedure DrawButtonShape(ACanvas: TCanvas; ARect: TRect; AFillColor, ABorderColor: TColor; ABorderWidth: Integer);
    procedure DrawThemedButton(ACanvas: TCanvas; ARect: TRect);
    procedure DrawShadow(ACanvas: TCanvas; ARect: TRect);
    function CalculateContentRect: TRect;
    function CalculateEmojiRect(const AContentRect: TRect; out ATextRect: TRect): TRect;

    // Messages
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
    procedure CMFocusChanged(var Message: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
  protected
    procedure Paint; override;
    procedure SetName(const Value: TComponentName); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure Click; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property ButtonState: TButtonState read FButtonState;
  published
    // Emoji properties
    property EmojiName: string read FEmojiName write SetEmojiName;
    property HoverEmojiName: string read FHoverEmojiName write SetHoverEmojiName;
    property PressedEmojiName: string read FPressedEmojiName write SetPressedEmojiName;
    property DisabledEmojiName: string read FDisabledEmojiName write SetDisabledEmojiName;
    property EmojiSize: Integer read FEmojiSize write SetEmojiSize default 32;

    // Text properties
    property Caption: string read FCaption write SetCaption;
    property Font;
    property WordWrap: Boolean read FWordWrap write SetWordWrap default True;

    // Layout properties
    property EmojiPosition: TEmojiPosition read FEmojiPosition write SetEmojiPosition default epLeft;
    property Spacing: Integer read FSpacing write SetSpacing default 8;
    property Padding: TPadding read FPadding write FPadding;

    // Shape and border properties
    property Shape: TButtonShape read FShape write SetShape default bsRoundRect;
    property BorderRadius: Integer read FBorderRadius write SetBorderRadius default 8;
    property BorderWidth: Integer read FBorderWidth write SetBorderWidth default 1;
    property FocusBorderExtraWidth: Integer read FFocusBorderExtraWidth write SetFocusBorderExtraWidth default 1;

    // Style system (Bootstrap-like styles)
    property ButtonStyle: TEmojiButtonStyle read FButtonStyle write SetButtonStyle default ebsVCLStyle;
    property Colors: TEmojiButtonColors read FColors write SetColors;

    // Shadow properties
    property Shadow: Boolean read FShadow write SetShadow default False;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffsetX: Integer read FShadowOffsetX write SetShadowOffsetX default 2;
    property ShadowOffsetY: Integer read FShadowOffsetY write SetShadowOffsetY default 2;
    property ShadowBlur: Integer read FShadowBlur write SetShadowBlur default 4;
    property ShadowOpacity: Byte read FShadowOpacity write SetShadowOpacity default 128;

    // Press effect properties
    property ShowPressedEffect: Boolean read FShowPressedEffect write SetShowPressedEffect default True;
    property PressedOffsetX: Integer read FPressedOffsetX write SetPressedOffsetX default 1;
    property PressedOffsetY: Integer read FPressedOffsetY write SetPressedOffsetY default 1;

    // Button behavior properties
    property ModalResult: TModalResult read FModalResult write FModalResult default mrNone;
    property Cancel: Boolean read FCancel write FCancel default False;
    property Default: Boolean read FDefault write SetDefault default False;

    // Other properties
    property Version: string read GetVersion;

    // Inherited properties
    property Action;
    property Align;
    property Anchors;
    property Constraints;
    property Cursor default crHandPoint;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Hint;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop default True;
    property Touch;
    property Visible;

    // Inherited events
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGesture;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
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
  System.Math;

{ Bootstrap-like color palettes }
const
  // Primary (Blue)
  CPrimaryColor         = $00D78000;  // RGB(0, 128, 215)
  CPrimaryHoverColor    = $00FF9F00;  // RGB(0, 159, 255)
  CPrimaryPressedColor  = $008F5400;  // RGB(0, 84, 143)

  // Secondary (Gray)
  CSecondaryColor       = $00808080;  // RGB(128, 128, 128)
  CSecondaryHoverColor  = $00A0A0A0;  // RGB(160, 160, 160)
  CSecondaryPressedColor= $00606060;  // RGB(96, 96, 96)

  // Success (Green)
  CSuccessColor         = $003CA82E;  // RGB(46, 168, 60)
  CSuccessHoverColor    = $006AD65C;  // RGB(92, 214, 106)
  CSuccessPressedColor  = $0028701E;  // RGB(30, 112, 40)

  // Danger (Red)
  CDangerColor          = $003C50D7;  // RGB(215, 80, 60)
  CDangerHoverColor     = $006478FF;  // RGB(255, 120, 100)
  CDangerPressedColor   = $0028358F;  // RGB(143, 53, 40)

  // Warning (Orange/Yellow)
  CWarningColor         = $0000A5FF;  // RGB(255, 165, 0)
  CWarningHoverColor    = $0033BFFF;  // RGB(255, 191, 51)
  CWarningPressedColor  = $00007ACC;  // RGB(204, 122, 0)

  // Info (Cyan)
  CInfoColor            = $00D7D700;  // RGB(0, 215, 215)
  CInfoHoverColor       = $00FFFF33;  // RGB(51, 255, 255)
  CInfoPressedColor     = $008F8F00;  // RGB(0, 143, 143)

  // Light
  CLightColor           = $00F0F0F0;  // RGB(240, 240, 240)
  CLightHoverColor      = $00FFFFFF;  // RGB(255, 255, 255)
  CLightPressedColor    = $00D0D0D0;  // RGB(208, 208, 208)

  // Dark
  CDarkColor            = $00404040;  // RGB(64, 64, 64)
  CDarkHoverColor       = $00606060;  // RGB(96, 96, 96)
  CDarkPressedColor     = $00202020;  // RGB(32, 32, 32)

  // Pastel Rose (soft pink)
  CPastelRoseColor      = $00CBC0F0;  // RGB(240, 192, 203)
  CPastelRoseHover      = $00D8D0F5;  // RGB(245, 208, 216)
  CPastelRosePressed    = $00A090D0;  // RGB(208, 144, 160)

  // Pastel Sky (light blue)
  CPastelSkyColor       = $00F0E0C0;  // RGB(192, 224, 240)
  CPastelSkyHover       = $00F5E8D0;  // RGB(208, 232, 245)
  CPastelSkyPressed     = $00D0C090;  // RGB(144, 192, 208)

  // Pastel Mint (soft green)
  CPastelMintColor      = $00C0F0D0;  // RGB(208, 240, 192)
  CPastelMintHover      = $00D0F5E0;  // RGB(224, 245, 208)
  CPastelMintPressed    = $0090D0A0;  // RGB(160, 208, 144)

  // Pastel Lemon (pale yellow)
  CPastelLemonColor     = $00C0F0F0;  // RGB(240, 240, 192)
  CPastelLemonHover     = $00D0F5F5;  // RGB(245, 245, 208)
  CPastelLemonPressed   = $0090D0D0;  // RGB(208, 208, 144)

  // Pastel Lavender (light purple)
  CPastelLavenderColor  = $00F0C0E0;  // RGB(224, 192, 240)
  CPastelLavenderHover  = $00F5D0E8;  // RGB(232, 208, 245)
  CPastelLavenderPressed= $00D090C0;  // RGB(192, 144, 208)

  // High Contrast Light (black on white)
  CHighContrastLightColor     = $00FFFFFF;  // RGB(255, 255, 255)
  CHighContrastLightHover     = $00F0F0F0;  // RGB(240, 240, 240)
  CHighContrastLightPressed   = $00E0E0E0;  // RGB(224, 224, 224)
  CHighContrastLightBorder    = $00000000;  // RGB(0, 0, 0)

  // High Contrast Dark (white on black)
  CHighContrastDarkColor      = $00000000;  // RGB(0, 0, 0)
  CHighContrastDarkHover      = $00202020;  // RGB(32, 32, 32)
  CHighContrastDarkPressed    = $00404040;  // RGB(64, 64, 64)
  CHighContrastDarkBorder     = $00FFFFFF;  // RGB(255, 255, 255)

  // Accessible Blue (colorblind safe - works for all color vision)
  CAccessibleBlueColor        = $00CC7800;  // RGB(0, 120, 204) - distinguishable blue
  CAccessibleBlueHover        = $00E89420;  // RGB(32, 148, 232)
  CAccessibleBluePressed      = $00985800;  // RGB(0, 88, 152)

  // Accessible Orange (colorblind safe - distinguishable from blue)
  CAccessibleOrangeColor      = $000088E0;  // RGB(224, 136, 0) - distinct from blue
  CAccessibleOrangeHover      = $0020A8FF;  // RGB(255, 168, 32)
  CAccessibleOrangePressed    = $000060A0;  // RGB(160, 96, 0)

  // Accessible Teal (colorblind safe - distinguishable from blue and orange)
  CAccessibleTealColor        = $00909000;  // RGB(0, 144, 144)
  CAccessibleTealHover        = $00B0B020;  // RGB(32, 176, 176)
  CAccessibleTealPressed      = $00606000;  // RGB(0, 96, 96)

  // Material Design Blue (Google style)
  CMaterialBlueColor          = $00E09820;  // RGB(32, 152, 224) - 2196F3
  CMaterialBlueHover          = $00F0A840;  // RGB(64, 168, 240) - 42A5F5
  CMaterialBluePressed        = $00B07818;  // RGB(24, 120, 176) - 1976D2

  // Material Design Indigo
  CMaterialIndigoColor        = $00B43F8C;  // RGB(140, 63, 180) - 3F51B5
  CMaterialIndigoHover        = $00C05FA0;  // RGB(160, 95, 192) - 5C6BC0
  CMaterialIndigoPressed      = $00902070;  // RGB(112, 32, 144) - 303F9F

  // GitHub button style
  CGitHubColor                = $00353535;  // RGB(53, 53, 53) - GitHub dark
  CGitHubHover                = $00454545;  // RGB(69, 69, 69)
  CGitHubPressed              = $00252525;  // RGB(37, 37, 37)

  // Outline/Ghost style (transparent with border)
  COutlineColor               = $00FFFFFF;  // RGB(255, 255, 255) - transparent effect
  COutlineHover               = $00F0F0F0;  // RGB(240, 240, 240) - slight highlight
  COutlinePressed             = $00E0E0E0;  // RGB(224, 224, 224)
  COutlineBorder              = $00808080;  // RGB(128, 128, 128)

{ TEmojiButtonColors }

constructor TEmojiButtonColors.Create(AOwner: TEmojiButton);
begin
  inherited Create;
  FOwner := AOwner;
  // Default to system button colors
  FColor := clBtnFace;
  FHoverColor := clBtnHighlight;
  FPressedColor := clBtnShadow;
  FDisabledColor := clBtnFace;
  FFocusColor := clBtnHighlight;
  FBorderColor := clBtnShadow;
  FBorderHoverColor := clHighlight;
  FBorderPressedColor := clHighlight;
  FFocusBorderColor := clHighlight;
  FFontColor := clBtnText;
  FFontHoverColor := clBtnText;
  FFontPressedColor := clBtnText;
  FFontDisabledColor := clGrayText;
end;

procedure TEmojiButtonColors.Assign(Source: TPersistent);
begin
  if Source is TEmojiButtonColors then
  begin
    FColor := TEmojiButtonColors(Source).FColor;
    FHoverColor := TEmojiButtonColors(Source).FHoverColor;
    FPressedColor := TEmojiButtonColors(Source).FPressedColor;
    FDisabledColor := TEmojiButtonColors(Source).FDisabledColor;
    FFocusColor := TEmojiButtonColors(Source).FFocusColor;
    FBorderColor := TEmojiButtonColors(Source).FBorderColor;
    FBorderHoverColor := TEmojiButtonColors(Source).FBorderHoverColor;
    FBorderPressedColor := TEmojiButtonColors(Source).FBorderPressedColor;
    FFocusBorderColor := TEmojiButtonColors(Source).FFocusBorderColor;
    FFontColor := TEmojiButtonColors(Source).FFontColor;
    FFontHoverColor := TEmojiButtonColors(Source).FFontHoverColor;
    FFontPressedColor := TEmojiButtonColors(Source).FFontPressedColor;
    FFontDisabledColor := TEmojiButtonColors(Source).FFontDisabledColor;
    Changed;
  end
  else
    inherited Assign(Source);
end;

procedure TEmojiButtonColors.Changed;
begin
  if Assigned(FOwner) then
    FOwner.Invalidate;
end;

procedure TEmojiButtonColors.ApplyStyle(AStyle: TEmojiButtonStyle);

  procedure SetColorScheme(AColor, AHoverColor, APressedColor: TColor;
    AFontColor: TColor);
  begin
    FColor := AColor;
    FHoverColor := AHoverColor;
    FPressedColor := APressedColor;
    FDisabledColor := clBtnFace;
    FFocusColor := AColor;
    FFontColor := AFontColor;
    FFontHoverColor := AFontColor;
    FFontPressedColor := AFontColor;
    FFontDisabledColor := clGrayText;
    // Border colors match background colors for clean look
    FBorderColor := AColor;
    FBorderHoverColor := AHoverColor;
    FBorderPressedColor := APressedColor;
    FFocusBorderColor := AHoverColor;
  end;

  procedure SetColorSchemeWithBorder(AColor, AHoverColor, APressedColor: TColor;
    AFontColor, ABorderColor: TColor);
  begin
    SetColorScheme(AColor, AHoverColor, APressedColor, AFontColor);
    // Override border colors with custom border color
    FBorderColor := ABorderColor;
    FBorderHoverColor := ABorderColor;
    FBorderPressedColor := ABorderColor;
    FFocusBorderColor := ABorderColor;
  end;

begin
  case AStyle of
    ebsVCLStyle:
      begin
        // Reset to system defaults - actual colors come from VCL style
        FColor := clBtnFace;
        FHoverColor := clBtnHighlight;
        FPressedColor := clBtnShadow;
        FDisabledColor := clBtnFace;
        FFocusColor := clBtnHighlight;
        FBorderColor := clBtnShadow;
        FBorderHoverColor := clHighlight;
        FBorderPressedColor := clHighlight;
        FFocusBorderColor := clHighlight;
        FFontColor := clBtnText;
        FFontHoverColor := clBtnText;
        FFontPressedColor := clBtnText;
        FFontDisabledColor := clGrayText;
      end;
    ebsPrimary:
      SetColorScheme(CPrimaryColor, CPrimaryHoverColor, CPrimaryPressedColor, clWhite);
    ebsSecondary:
      SetColorScheme(CSecondaryColor, CSecondaryHoverColor, CSecondaryPressedColor, clWhite);
    ebsSuccess:
      SetColorScheme(CSuccessColor, CSuccessHoverColor, CSuccessPressedColor, clWhite);
    ebsDanger:
      SetColorScheme(CDangerColor, CDangerHoverColor, CDangerPressedColor, clWhite);
    ebsWarning:
      SetColorScheme(CWarningColor, CWarningHoverColor, CWarningPressedColor, clBlack);
    ebsInfo:
      SetColorScheme(CInfoColor, CInfoHoverColor, CInfoPressedColor, clBlack);
    ebsLight:
      SetColorScheme(CLightColor, CLightHoverColor, CLightPressedColor, clBlack);
    ebsDark:
      SetColorScheme(CDarkColor, CDarkHoverColor, CDarkPressedColor, clWhite);

    // Pastel styles
    ebsPastelRose:
      SetColorScheme(CPastelRoseColor, CPastelRoseHover, CPastelRosePressed, clBlack);
    ebsPastelSky:
      SetColorScheme(CPastelSkyColor, CPastelSkyHover, CPastelSkyPressed, clBlack);
    ebsPastelMint:
      SetColorScheme(CPastelMintColor, CPastelMintHover, CPastelMintPressed, clBlack);
    ebsPastelLemon:
      SetColorScheme(CPastelLemonColor, CPastelLemonHover, CPastelLemonPressed, clBlack);
    ebsPastelLavender:
      SetColorScheme(CPastelLavenderColor, CPastelLavenderHover, CPastelLavenderPressed, clBlack);

    // High contrast accessibility styles
    ebsHighContrastLight:
      SetColorSchemeWithBorder(CHighContrastLightColor, CHighContrastLightHover,
        CHighContrastLightPressed, clBlack, CHighContrastLightBorder);
    ebsHighContrastDark:
      SetColorSchemeWithBorder(CHighContrastDarkColor, CHighContrastDarkHover,
        CHighContrastDarkPressed, clWhite, CHighContrastDarkBorder);

    // Colorblind-friendly styles
    ebsAccessibleBlue:
      SetColorScheme(CAccessibleBlueColor, CAccessibleBlueHover, CAccessibleBluePressed, clWhite);
    ebsAccessibleOrange:
      SetColorScheme(CAccessibleOrangeColor, CAccessibleOrangeHover, CAccessibleOrangePressed, clWhite);
    ebsAccessibleTeal:
      SetColorScheme(CAccessibleTealColor, CAccessibleTealHover, CAccessibleTealPressed, clWhite);

    // Famous/Popular styles
    ebsMaterialBlue:
      SetColorScheme(CMaterialBlueColor, CMaterialBlueHover, CMaterialBluePressed, clWhite);
    ebsMaterialIndigo:
      SetColorScheme(CMaterialIndigoColor, CMaterialIndigoHover, CMaterialIndigoPressed, clWhite);
    ebsGitHub:
      SetColorScheme(CGitHubColor, CGitHubHover, CGitHubPressed, clWhite);
    ebsOutline:
      SetColorSchemeWithBorder(COutlineColor, COutlineHover, COutlinePressed, clBlack, COutlineBorder);

    ebsCustom:
      ; // Keep current colors - user will set them manually
  end;
  Changed;
end;

procedure TEmojiButtonColors.SetColor(const Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetHoverColor(const Value: TColor);
begin
  if FHoverColor <> Value then
  begin
    FHoverColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetPressedColor(const Value: TColor);
begin
  if FPressedColor <> Value then
  begin
    FPressedColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetDisabledColor(const Value: TColor);
begin
  if FDisabledColor <> Value then
  begin
    FDisabledColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFocusColor(const Value: TColor);
begin
  if FFocusColor <> Value then
  begin
    FFocusColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetBorderColor(const Value: TColor);
begin
  if FBorderColor <> Value then
  begin
    FBorderColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetBorderHoverColor(const Value: TColor);
begin
  if FBorderHoverColor <> Value then
  begin
    FBorderHoverColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetBorderPressedColor(const Value: TColor);
begin
  if FBorderPressedColor <> Value then
  begin
    FBorderPressedColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFocusBorderColor(const Value: TColor);
begin
  if FFocusBorderColor <> Value then
  begin
    FFocusBorderColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFontColor(const Value: TColor);
begin
  if FFontColor <> Value then
  begin
    FFontColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFontHoverColor(const Value: TColor);
begin
  if FFontHoverColor <> Value then
  begin
    FFontHoverColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFontPressedColor(const Value: TColor);
begin
  if FFontPressedColor <> Value then
  begin
    FFontPressedColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

procedure TEmojiButtonColors.SetFontDisabledColor(const Value: TColor);
begin
  if FFontDisabledColor <> Value then
  begin
    FFontDisabledColor := Value;
    if Assigned(FOwner) then
      FOwner.FButtonStyle := ebsCustom;
    Changed;
  end;
end;

{ TEmojiButton }

constructor TEmojiButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Use csOpaque to prevent flickering - we manually fill background in Paint
  ControlStyle := ControlStyle + [csCaptureMouse, csClickEvents, csSetCaption, csDoubleClicks, csOpaque];

  // Defaults
  Width := 120;
  Height := 40;
  TabStop := True;
  Cursor := crHandPoint;
  DoubleBuffered := True;

  // Emoji defaults
  FEmojiName := '';
  FHoverEmojiName := '';
  FPressedEmojiName := '';
  FDisabledEmojiName := '';
  FEmojiSize := 32;

  // Text defaults
  FCaption := '';
  FWordWrap := True;
  Font.Size := 10;

  // Layout defaults
  FEmojiPosition := epLeft;
  FSpacing := 8;
  FPadding := TPadding.Create(Self);
  FPadding.SetBounds(8, 8, 8, 8);
  FPadding.OnChange := PaddingChanged;

  // Shape defaults
  FShape := bsRoundRect;
  FBorderRadius := 8;
  FBorderWidth := 1;
  FFocusBorderExtraWidth := 1;

  // Style system - create colors object with defaults
  FColors := TEmojiButtonColors.Create(Self);
  FButtonStyle := ebsVCLStyle;

  // Shadow defaults
  FShadow := False;
  FShadowColor := clGray;
  FShadowOffsetX := 2;
  FShadowOffsetY := 2;
  FShadowBlur := 4;
  FShadowOpacity := 128;

  // Press effect defaults
  FShowPressedEffect := True;
  FPressedOffsetX := 1;
  FPressedOffsetY := 1;

  // Button behavior defaults
  FModalResult := mrNone;
  FCancel := False;
  FDefault := False;

  // State
  FButtonState := bsNormal;
  FMouseInControl := False;
end;

destructor TEmojiButton.Destroy;
begin
  FColors.Free;
  FPadding.Free;
  inherited;
end;

procedure TEmojiButton.SetName(const Value: TComponentName);
begin
  // Update Caption to match Name when component is first created (like TButton)
  if (csDesigning in ComponentState) and
     ((FCaption = '') or (FCaption = Name)) then
    FCaption := Value;
  inherited SetName(Value);
end;

function TEmojiButton.GetVersion: string;
begin
  Result := EMOJI_BUTTON_VERSION;
end;

procedure TEmojiButton.PaddingChanged(Sender: TObject);
begin
  Invalidate;
end;

procedure TEmojiButton.UpdateState;
var
  LNewState: TButtonState;
begin
  if not Enabled then
    LNewState := bsDisabled
  else if FMouseInControl then
    LNewState := bsHover
  else
    LNewState := bsNormal;

  if LNewState <> FButtonState then
  begin
    FButtonState := LNewState;
    Invalidate;
  end;
end;

function TEmojiButton.GetCurrentEmojiName: string;
begin
  case FButtonState of
    bsDisabled:
      if FDisabledEmojiName <> '' then
        Result := FDisabledEmojiName
      else
        Result := FEmojiName;
    bsPressed:
      if FPressedEmojiName <> '' then
        Result := FPressedEmojiName
      else if FHoverEmojiName <> '' then
        Result := FHoverEmojiName
      else
        Result := FEmojiName;
    bsHover:
      if FHoverEmojiName <> '' then
        Result := FHoverEmojiName
      else
        Result := FEmojiName;
  else
    Result := FEmojiName;
  end;
end;

function TEmojiButton.IsVCLStyleActive: Boolean;
begin
  // Check if VCL style should be used for drawing
  // First check if ButtonStyle is set to use VCL style
  if FButtonStyle <> ebsVCLStyle then
  begin
    Result := False;
    Exit;
  end;
  // When ButtonStyle is ebsVCLStyle, we always want to use themed drawing
  // This includes Windows default theme (system style) which still supports themes
  Result := StyleServices.Available and StyleServices.Enabled;
end;

function TEmojiButton.GetCurrentBackgroundColor: TColor;
var
  LDetails: TThemedElementDetails;
begin
  if IsVCLStyleActive then
  begin
    // Use themed element colors for proper style integration
    case FButtonState of
      bsDisabled:
        LDetails := StyleServices.GetElementDetails(tbPushButtonDisabled);
      bsPressed:
        LDetails := StyleServices.GetElementDetails(tbPushButtonPressed);
      bsHover:
        LDetails := StyleServices.GetElementDetails(tbPushButtonHot);
    else
      if Focused then
        LDetails := StyleServices.GetElementDetails(tbPushButtonDefaulted)
      else
        LDetails := StyleServices.GetElementDetails(tbPushButtonNormal);
    end;
    if not StyleServices.GetElementColor(LDetails, ecFillColor, Result) then
      Result := StyleServices.GetStyleColor(scPanel);
  end
  else
  begin
    // Use FColors for custom styling
    case FButtonState of
      bsDisabled: Result := FColors.DisabledColor;
      bsPressed: Result := FColors.PressedColor;
      bsHover: Result := FColors.HoverColor;
    else
      // Normal state - check if focused
      if Focused then
        Result := FColors.FocusColor
      else
        Result := FColors.Color;
    end;
  end;
end;

function TEmojiButton.GetCurrentBorderColor: TColor;
var
  LDetails: TThemedElementDetails;
begin
  if IsVCLStyleActive then
  begin
    case FButtonState of
      bsPressed:
        LDetails := StyleServices.GetElementDetails(tbPushButtonPressed);
      bsHover:
        LDetails := StyleServices.GetElementDetails(tbPushButtonHot);
    else
      if Focused then
        LDetails := StyleServices.GetElementDetails(tbPushButtonDefaulted)
      else
        LDetails := StyleServices.GetElementDetails(tbPushButtonNormal);
    end;
    if not StyleServices.GetElementColor(LDetails, ecBorderColor, Result) then
      Result := StyleServices.GetStyleColor(scBorder);
  end
  else
  begin
    // Use FColors for custom styling
    if Focused then
      Result := FColors.FocusBorderColor
    else
    begin
      case FButtonState of
        bsPressed: Result := FColors.BorderPressedColor;
        bsHover: Result := FColors.BorderHoverColor;
      else
        Result := FColors.BorderColor;
      end;
    end;
  end;
end;

function TEmojiButton.GetCurrentFontColor: TColor;
var
  LDetails: TThemedElementDetails;
begin
  if IsVCLStyleActive then
  begin
    case FButtonState of
      bsDisabled:
        LDetails := StyleServices.GetElementDetails(tbPushButtonDisabled);
      bsPressed:
        LDetails := StyleServices.GetElementDetails(tbPushButtonPressed);
      bsHover:
        LDetails := StyleServices.GetElementDetails(tbPushButtonHot);
    else
      if Focused then
        LDetails := StyleServices.GetElementDetails(tbPushButtonDefaulted)
      else
        LDetails := StyleServices.GetElementDetails(tbPushButtonNormal);
    end;
    if not StyleServices.GetElementColor(LDetails, ecTextColor, Result) then
      Result := StyleServices.GetStyleFontColor(sfButtonTextNormal);
  end
  else
  begin
    // Use FColors for custom styling
    case FButtonState of
      bsDisabled: Result := FColors.FontDisabledColor;
      bsPressed: Result := FColors.FontPressedColor;
      bsHover: Result := FColors.FontHoverColor;
    else
      Result := FColors.FontColor;
    end;
  end;
end;

function TEmojiButton.GetCurrentBorderWidth: Integer;
begin
  if Focused then
    Result := FBorderWidth + FFocusBorderExtraWidth
  else
    Result := FBorderWidth;
end;

function TEmojiButton.CalculateContentRect: TRect;
var
  LIsPressed: Boolean;
  LBorderWidth: Integer;
  LMaxBorderHalf: Integer;
  LBorderInward: Integer;
  LUseThemedButton: Boolean;
begin
  Result := ClientRect;
  LIsPressed := (FButtonState = bsPressed);
  LBorderWidth := GetCurrentBorderWidth;
  LUseThemedButton := IsVCLStyleActive;

  if LUseThemedButton then
  begin
    // For themed buttons, use standard button content margins
    // The theme draws its own border, so just apply a small margin + padding
    Result.Inflate(-4, -4);  // Standard themed button content margin
  end
  else
  begin
    // Custom drawing mode
    // Handle shadow space (same as Paint)
    if FShadow and not IsVCLStyleActive then
    begin
      Result.Right := Result.Right - FShadowOffsetX - FShadowBlur;
      Result.Bottom := Result.Bottom - FShadowOffsetY - FShadowBlur;

      if LIsPressed then
        Result.Offset(FShadowOffsetX, FShadowOffsetY);
    end
    else
    begin
      if LIsPressed and FShowPressedEffect then
        Result.Offset(FPressedOffsetX, FPressedOffsetY);
    end;

    // 3. DrawButtonShape shrinks path by max border half
    LMaxBorderHalf := (FBorderWidth + FFocusBorderExtraWidth) div 2;
    Result.Inflate(-LMaxBorderHalf, -LMaxBorderHalf);

    // 4. Border extends inward from path - account for this
    LBorderInward := (LBorderWidth + 1) div 2;
    Result.Inflate(-LBorderInward, -LBorderInward);
  end;

  // Apply padding (positive values shrink the rect)
  Result.Left := Result.Left + FPadding.Left;
  Result.Top := Result.Top + FPadding.Top;
  Result.Right := Result.Right - FPadding.Right;
  Result.Bottom := Result.Bottom - FPadding.Bottom;
end;

function TEmojiButton.CalculateEmojiRect(const AContentRect: TRect; out ATextRect: TRect): TRect;
var
  LEmojiRect: TRect;
  LTextWidth, LTextHeight: Integer;
  LTotalWidth, LTotalHeight: Integer;
  LStartX, LStartY: Integer;
begin
  ATextRect := AContentRect;
  LTextWidth := 0;
  LTextHeight := 0;

  // Calculate text size if there's a caption
  if FCaption <> '' then
  begin
    Canvas.Font := Font;
    if FWordWrap then
    begin
      // Calculate available width for text based on position
      if FEmojiName <> '' then
      begin
        case FEmojiPosition of
          epLeft, epRight:
            LTextWidth := AContentRect.Width - FEmojiSize - FSpacing;
          epTop, epBottom:
            LTextWidth := AContentRect.Width;
        end;
      end
      else
        LTextWidth := AContentRect.Width;
      ATextRect := Rect(0, 0, LTextWidth, 0);
      DrawText(Canvas.Handle, PChar(FCaption), -1, ATextRect, DT_CALCRECT or DT_WORDBREAK);
      LTextWidth := ATextRect.Width;
      LTextHeight := ATextRect.Height;
    end
    else
    begin
      LTextWidth := Canvas.TextWidth(FCaption);
      LTextHeight := Canvas.TextHeight(FCaption);
    end;
  end;

  // If no emoji, just center the text and exit
  if FEmojiName = '' then
  begin
    Result := TRect.Empty;
    if FCaption <> '' then
    begin
      // Center text in content area
      ATextRect.Left := AContentRect.Left + (AContentRect.Width - LTextWidth) div 2;
      ATextRect.Top := AContentRect.Top + (AContentRect.Height - LTextHeight) div 2;
      ATextRect.Right := ATextRect.Left + LTextWidth;
      ATextRect.Bottom := ATextRect.Top + LTextHeight;
    end;
    Exit;
  end;

  // Calculate positions based on emoji position
  // For horizontal layouts (left/right), use common vertical center for emoji and text
  case FEmojiPosition of
    epLeft:
    begin
      LTotalWidth := FEmojiSize + IfThen(FCaption <> '', FSpacing + LTextWidth, 0);
      LStartX := AContentRect.Left + Max(0, (AContentRect.Width - LTotalWidth) div 2);

      // Calculate common vertical center
      var LCenterY := AContentRect.Top + AContentRect.Height div 2;

      // Position emoji centered on common center
      LStartY := LCenterY - FEmojiSize div 2;
      LEmojiRect := Rect(LStartX, LStartY, LStartX + FEmojiSize, LStartY + FEmojiSize);

      if FCaption <> '' then
      begin
        ATextRect.Left := LEmojiRect.Right + FSpacing;
        ATextRect.Top := LCenterY - LTextHeight div 2;
        ATextRect.Right := ATextRect.Left + LTextWidth;
        ATextRect.Bottom := ATextRect.Top + LTextHeight;
      end;
    end;

    epRight:
    begin
      LTotalWidth := FEmojiSize + IfThen(FCaption <> '', FSpacing + LTextWidth, 0);
      LStartX := AContentRect.Left + Max(0, (AContentRect.Width - LTotalWidth) div 2);

      var LCenterY := AContentRect.Top + AContentRect.Height div 2;
      LStartY := LCenterY - FEmojiSize div 2;

      if FCaption <> '' then
      begin
        ATextRect.Left := LStartX;
        ATextRect.Top := LCenterY - LTextHeight div 2;
        ATextRect.Right := ATextRect.Left + LTextWidth;
        ATextRect.Bottom := ATextRect.Top + LTextHeight;
        LEmojiRect := Rect(ATextRect.Right + FSpacing, LStartY,
                          ATextRect.Right + FSpacing + FEmojiSize, LStartY + FEmojiSize);
      end
      else
        LEmojiRect := Rect(LStartX, LStartY, LStartX + FEmojiSize, LStartY + FEmojiSize);
    end;

    epTop:
    begin
      LTotalHeight := FEmojiSize + IfThen(FCaption <> '', FSpacing + LTextHeight, 0);
      LStartX := AContentRect.Left + (AContentRect.Width - FEmojiSize) div 2;
      LStartY := AContentRect.Top + (AContentRect.Height - LTotalHeight) div 2;

      LEmojiRect := Rect(LStartX, LStartY, LStartX + FEmojiSize, LStartY + FEmojiSize);

      if FCaption <> '' then
      begin
        ATextRect.Left := AContentRect.Left + (AContentRect.Width - LTextWidth) div 2;
        ATextRect.Top := LEmojiRect.Bottom + FSpacing;
        ATextRect.Right := ATextRect.Left + LTextWidth;
        ATextRect.Bottom := ATextRect.Top + LTextHeight;
      end;
    end;

    epBottom:
    begin
      LTotalHeight := FEmojiSize + IfThen(FCaption <> '', FSpacing + LTextHeight, 0);
      LStartX := AContentRect.Left + (AContentRect.Width - FEmojiSize) div 2;
      LStartY := AContentRect.Top + (AContentRect.Height - LTotalHeight) div 2;

      if FCaption <> '' then
      begin
        ATextRect.Left := AContentRect.Left + (AContentRect.Width - LTextWidth) div 2;
        ATextRect.Top := LStartY;
        ATextRect.Right := ATextRect.Left + LTextWidth;
        ATextRect.Bottom := ATextRect.Top + LTextHeight;
        LEmojiRect := Rect(LStartX, ATextRect.Bottom + FSpacing,
                          LStartX + FEmojiSize, ATextRect.Bottom + FSpacing + FEmojiSize);
      end
      else
        LEmojiRect := Rect(LStartX, LStartY, LStartX + FEmojiSize, LStartY + FEmojiSize);
    end;
  end;

  Result := LEmojiRect;
end;

procedure TEmojiButton.DrawShadow(ACanvas: TCanvas; ARect: TRect);
var
  LGraphics: TGPGraphics;
  LBrush: TGPSolidBrush;
  LPath: TGPGraphicsPath;
  LShadowRect: TGPRectF;
  LRadius: Single;
  LAlpha: Byte;
  I: Integer;
begin
  if not FShadow then Exit;

  LGraphics := TGPGraphics.Create(ACanvas.Handle);
  try
    LGraphics.SetSmoothingMode(SmoothingModeAntiAlias);

    // Draw multiple layers for soft shadow effect
    for I := FShadowBlur downto 0 do
    begin
      LAlpha := MulDiv(FShadowOpacity, I + 1, FShadowBlur + 1) div 2;

      LShadowRect := MakeRect(
        Single(ARect.Left + FShadowOffsetX - I),
        Single(ARect.Top + FShadowOffsetY - I),
        Single(ARect.Width + I * 2),
        Single(ARect.Height + I * 2)
      );

      LBrush := TGPSolidBrush.Create(MakeColor(LAlpha,
        GetRValue(ColorToRGB(FShadowColor)),
        GetGValue(ColorToRGB(FShadowColor)),
        GetBValue(ColorToRGB(FShadowColor))));
      try
        LPath := TGPGraphicsPath.Create;
        try
          case FShape of
            bsRect:
              LPath.AddRectangle(LShadowRect);
            bsRoundRect:
            begin
              LRadius := Min(FBorderRadius + I, Min(LShadowRect.Width, LShadowRect.Height) / 2);
              if LRadius > 0 then
              begin
                LPath.AddArc(LShadowRect.X, LShadowRect.Y, LRadius * 2, LRadius * 2, 180, 90);
                LPath.AddLine(LShadowRect.X + LRadius, LShadowRect.Y,
                             LShadowRect.X + LShadowRect.Width - LRadius, LShadowRect.Y);
                LPath.AddArc(LShadowRect.X + LShadowRect.Width - LRadius * 2, LShadowRect.Y, LRadius * 2, LRadius * 2, 270, 90);
                LPath.AddLine(LShadowRect.X + LShadowRect.Width, LShadowRect.Y + LRadius,
                             LShadowRect.X + LShadowRect.Width, LShadowRect.Y + LShadowRect.Height - LRadius);
                LPath.AddArc(LShadowRect.X + LShadowRect.Width - LRadius * 2, LShadowRect.Y + LShadowRect.Height - LRadius * 2, LRadius * 2, LRadius * 2, 0, 90);
                LPath.AddLine(LShadowRect.X + LShadowRect.Width - LRadius, LShadowRect.Y + LShadowRect.Height,
                             LShadowRect.X + LRadius, LShadowRect.Y + LShadowRect.Height);
                LPath.AddArc(LShadowRect.X, LShadowRect.Y + LShadowRect.Height - LRadius * 2, LRadius * 2, LRadius * 2, 90, 90);
                LPath.CloseFigure;
              end
              else
                LPath.AddRectangle(LShadowRect);
            end;
            bsCircle, bsEllipse:
              LPath.AddEllipse(LShadowRect);
          end;
          LGraphics.FillPath(LBrush, LPath);
        finally
          LPath.Free;
        end;
      finally
        LBrush.Free;
      end;
    end;
  finally
    LGraphics.Free;
  end;
end;

procedure TEmojiButton.DrawButtonShape(ACanvas: TCanvas; ARect: TRect;
  AFillColor, ABorderColor: TColor; ABorderWidth: Integer);
var
  LGraphics: TGPGraphics;
  LBrush: TGPSolidBrush;
  LPen: TGPPen;
  LPath: TGPGraphicsPath;
  LGPRect: TGPRectF;
  LRadius: Single;
  LCenterX, LCenterY, LSize: Single;
  LHalfBorder: Single;
begin
  LGraphics := TGPGraphics.Create(ACanvas.Handle);
  try
    LGraphics.SetSmoothingMode(SmoothingModeAntiAlias);

    // Shrink by half border width + 0.5 for antialiasing, so border stays inside control bounds
    LHalfBorder := (ABorderWidth / 2) + 0.5;
    LGPRect := MakeRect(
      Single(ARect.Left) + LHalfBorder,
      Single(ARect.Top) + LHalfBorder,
      Single(ARect.Width) - (ABorderWidth + 1),
      Single(ARect.Height) - (ABorderWidth + 1));

    // Create path for shape
    LPath := TGPGraphicsPath.Create;
    try
      case FShape of
        bsRect:
          LPath.AddRectangle(LGPRect);
        bsRoundRect:
        begin
          LRadius := Min(FBorderRadius, Min(LGPRect.Width, LGPRect.Height) / 2);
          if LRadius > 0 then
          begin
            // Top-left arc
            LPath.AddArc(LGPRect.X, LGPRect.Y, LRadius * 2, LRadius * 2, 180, 90);
            // Top line
            LPath.AddLine(LGPRect.X + LRadius, LGPRect.Y,
                         LGPRect.X + LGPRect.Width - LRadius, LGPRect.Y);
            // Top-right arc
            LPath.AddArc(LGPRect.X + LGPRect.Width - LRadius * 2, LGPRect.Y, LRadius * 2, LRadius * 2, 270, 90);
            // Right line
            LPath.AddLine(LGPRect.X + LGPRect.Width, LGPRect.Y + LRadius,
                         LGPRect.X + LGPRect.Width, LGPRect.Y + LGPRect.Height - LRadius);
            // Bottom-right arc
            LPath.AddArc(LGPRect.X + LGPRect.Width - LRadius * 2, LGPRect.Y + LGPRect.Height - LRadius * 2, LRadius * 2, LRadius * 2, 0, 90);
            // Bottom line
            LPath.AddLine(LGPRect.X + LGPRect.Width - LRadius, LGPRect.Y + LGPRect.Height,
                         LGPRect.X + LRadius, LGPRect.Y + LGPRect.Height);
            // Bottom-left arc
            LPath.AddArc(LGPRect.X, LGPRect.Y + LGPRect.Height - LRadius * 2, LRadius * 2, LRadius * 2, 90, 90);
            // Left line (closes the figure)
            LPath.CloseFigure;
          end
          else
            LPath.AddRectangle(LGPRect);
        end;
        bsCircle:
        begin
          LSize := Min(LGPRect.Width, LGPRect.Height);
          LCenterX := LGPRect.X + LGPRect.Width / 2;
          LCenterY := LGPRect.Y + LGPRect.Height / 2;
          LPath.AddEllipse(LCenterX - LSize / 2, LCenterY - LSize / 2, LSize, LSize);
        end;
        bsEllipse:
          LPath.AddEllipse(LGPRect);
      end;

      // Fill background
      LBrush := TGPSolidBrush.Create(MakeColor(255,
        GetRValue(ColorToRGB(AFillColor)),
        GetGValue(ColorToRGB(AFillColor)),
        GetBValue(ColorToRGB(AFillColor))));
      try
        LGraphics.FillPath(LBrush, LPath);
      finally
        LBrush.Free;
      end;

      // Draw border
      if ABorderWidth > 0 then
      begin
        LPen := TGPPen.Create(MakeColor(255,
          GetRValue(ColorToRGB(ABorderColor)),
          GetGValue(ColorToRGB(ABorderColor)),
          GetBValue(ColorToRGB(ABorderColor))), ABorderWidth);
        try
          LGraphics.DrawPath(LPen, LPath);
        finally
          LPen.Free;
        end;
      end;
    finally
      LPath.Free;
    end;
  finally
    LGraphics.Free;
  end;
end;

procedure TEmojiButton.DrawThemedButton(ACanvas: TCanvas; ARect: TRect);
var
  LDetails: TThemedElementDetails;
begin
  // Get themed element details based on button state
  case FButtonState of
    bsDisabled:
      LDetails := StyleServices.GetElementDetails(tbPushButtonDisabled);
    bsPressed:
      LDetails := StyleServices.GetElementDetails(tbPushButtonPressed);
    bsHover:
      LDetails := StyleServices.GetElementDetails(tbPushButtonHot);
  else
    if Focused then
      LDetails := StyleServices.GetElementDetails(tbPushButtonDefaulted)
    else
      LDetails := StyleServices.GetElementDetails(tbPushButtonNormal);
  end;

  // Draw the themed button element (includes background and border)
  StyleServices.DrawElement(ACanvas.Handle, LDetails, ARect);
end;

procedure TEmojiButton.Paint;
var
  LButtonRect: TRect;
  LContentRect: TRect;
  LEmojiRect, LTextRect: TRect;
  LEmoji, LEmojiName: string;
  LDrawFlags: Cardinal;
  LBorderWidth: Integer;
  LIsPressed: Boolean;
  LUseThemedButton: Boolean;
begin
  inherited;

  LButtonRect := ClientRect;
  LBorderWidth := GetCurrentBorderWidth;
  LIsPressed := (FButtonState = bsPressed);
  LUseThemedButton := IsVCLStyleActive;

  // Handle shadow (only for custom drawing when VCL styles not active)
  if FShadow and not IsVCLStyleActive then
  begin
    // Always reserve space for shadow (for consistent button size)
    LButtonRect.Right := LButtonRect.Right - FShadowOffsetX - FShadowBlur;
    LButtonRect.Bottom := LButtonRect.Bottom - FShadowOffsetY - FShadowBlur;

    if LIsPressed then
    begin
      // When pressed: no shadow, button moves to where shadow was
      LButtonRect.Offset(FShadowOffsetX, FShadowOffsetY);
    end
    else
    begin
      // When not pressed: draw shadow
      DrawShadow(Canvas, LButtonRect);
    end;
  end;

  // Fill parent background first (for rounded corners to blend properly)
  // We use csOpaque to prevent flickering, so we must fill the background manually
  if Assigned(Parent) then
  begin
    if StyleServices.Available and StyleServices.Enabled and not StyleServices.IsSystemStyle then
      // VCL styled form - use StyleServices to draw parent background
      StyleServices.DrawParentBackground(Handle, Canvas.Handle, nil, False)
    else
    begin
      // System style - fill with parent brush color
      Canvas.Brush.Color := Parent.Brush.Color;
      Canvas.Brush.Style := bsSolid;
      Canvas.FillRect(ClientRect);
    end;
  end;

  // Draw button background and border
  if LUseThemedButton then
    DrawThemedButton(Canvas, LButtonRect)
  else
    DrawButtonShape(Canvas, LButtonRect, GetCurrentBackgroundColor,
      GetCurrentBorderColor, LBorderWidth);

  // Calculate content area
  LContentRect := CalculateContentRect;

  // Calculate emoji and text positions
  LEmojiRect := CalculateEmojiRect(LContentRect, LTextRect);

  // Draw emoji
  LEmojiName := GetCurrentEmojiName;
  if LEmojiName <> '' then
  begin
    LEmoji := FindEmojiByName(LEmojiName);
    if LEmoji <> '' then
    begin
      if TEmojiRenderer.IsEmojiSupported then
      begin
        // Measure emoji and center within LEmojiRect
        var LEmojiActualSize := TEmojiRenderer.MeasureEmoji(LEmoji, FEmojiSize);
        var LEmojiX := LEmojiRect.Left + (LEmojiRect.Width - LEmojiActualSize.Width) div 2;
        var LEmojiY := LEmojiRect.Top + (LEmojiRect.Height - LEmojiActualSize.Height) div 2;
        TEmojiRenderer.DrawEmoji(Canvas, LEmoji, LEmojiX, LEmojiY, FEmojiSize);
      end
      else
      begin
        // Fallback GDI rendering
        Canvas.Font.Name := 'Segoe UI Emoji';
        Canvas.Font.Size := FEmojiSize div 2;
        Canvas.Brush.Style := bsClear;
        var LTextSize := Canvas.TextExtent(LEmoji);
        var LEmojiX := LEmojiRect.Left + (LEmojiRect.Width - LTextSize.Width) div 2;
        var LEmojiY := LEmojiRect.Top + (LEmojiRect.Height - LTextSize.Height) div 2;
        Canvas.TextOut(LEmojiX, LEmojiY, LEmoji);
      end;
    end;
  end;

  // Draw caption
  if FCaption <> '' then
  begin
    Canvas.Font := Font;
    SetBkMode(Canvas.Handle, TRANSPARENT);

    // Use DT_LEFT and DT_TOP since we already calculated the centered position
    LDrawFlags := DT_LEFT or DT_TOP;
    if FWordWrap then
      LDrawFlags := LDrawFlags or DT_WORDBREAK
    else
      LDrawFlags := LDrawFlags or DT_SINGLELINE;

    if LUseThemedButton then
    begin
      // Get text color from VCL style based on state
      var LTextColor: TColor;
      case FButtonState of
        bsDisabled:
          LTextColor := StyleServices.GetStyleFontColor(sfButtonTextDisabled);
        bsPressed:
          LTextColor := StyleServices.GetStyleFontColor(sfButtonTextPressed);
        bsHover:
          LTextColor := StyleServices.GetStyleFontColor(sfButtonTextHot);
      else
        if Focused then
          LTextColor := StyleServices.GetStyleFontColor(sfButtonTextFocused)
        else
          LTextColor := StyleServices.GetStyleFontColor(sfButtonTextNormal);
      end;
      Canvas.Font.Color := LTextColor;
      DrawText(Canvas.Handle, PChar(FCaption), -1, LTextRect, LDrawFlags);
    end
    else
    begin
      Canvas.Font.Color := GetCurrentFontColor;
      DrawText(Canvas.Handle, PChar(FCaption), -1, LTextRect, LDrawFlags);
    end;
  end;
end;

procedure TEmojiButton.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  FMouseInControl := True;
  UpdateState;
end;

procedure TEmojiButton.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  FMouseInControl := False;
  if FButtonState <> bsPressed then
    UpdateState;
end;

procedure TEmojiButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  UpdateState;
end;

procedure TEmojiButton.CMDialogKey(var Message: TCMDialogKey);
begin
  with Message do
  begin
    if (((CharCode = VK_RETURN) and FDefault) or
       ((CharCode = VK_ESCAPE) and FCancel)) and
       (KeyDataToShiftState(KeyData) = []) and CanFocus then
    begin
      Click;
      Result := 1;
    end
    else
      inherited;
  end;
end;

procedure TEmojiButton.CMFocusChanged(var Message: TCMFocusChanged);
begin
  inherited;
  Invalidate;
end;

procedure TEmojiButton.WMSetFocus(var Message: TWMSetFocus);
begin
  inherited;
  Invalidate;
end;

procedure TEmojiButton.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  Invalidate;
end;

procedure TEmojiButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  LNeedsFocus: Boolean;
begin
  LNeedsFocus := (Button = mbLeft) and TabStop and not Focused;
  if Button = mbLeft then
  begin
    FButtonState := bsPressed;
    // Force immediate repaint only on first click (when getting focus)
    // to ensure pressed state is visible before focus change processing
    if LNeedsFocus then
      Repaint
    else
      Invalidate;
  end;
  inherited;
  if LNeedsFocus then
    SetFocus;
end;

procedure TEmojiButton.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbLeft then
  begin
    UpdateState;
  end;
end;

procedure TEmojiButton.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_SPACE) or (Key = VK_RETURN) then
  begin
    FButtonState := bsPressed;
    Invalidate;
  end;
end;

procedure TEmojiButton.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_SPACE) or (Key = VK_RETURN) then
  begin
    UpdateState;
    Click;
  end;
end;

procedure TEmojiButton.Click;
var
  LForm: TCustomForm;
begin
  LForm := GetParentForm(Self);
  if LForm <> nil then
    LForm.ModalResult := FModalResult;
  inherited Click;
end;

// Property setters

procedure TEmojiButton.SetEmojiName(const Value: string);
begin
  if FEmojiName <> Value then
  begin
    FEmojiName := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetHoverEmojiName(const Value: string);
begin
  if FHoverEmojiName <> Value then
  begin
    FHoverEmojiName := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetPressedEmojiName(const Value: string);
begin
  if FPressedEmojiName <> Value then
  begin
    FPressedEmojiName := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetDisabledEmojiName(const Value: string);
begin
  if FDisabledEmojiName <> Value then
  begin
    FDisabledEmojiName := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetEmojiSize(const Value: Integer);
begin
  if (FEmojiSize <> Value) and (Value > 0) then
  begin
    FEmojiSize := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetCaption(const Value: string);
begin
  if FCaption <> Value then
  begin
    FCaption := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetWordWrap(const Value: Boolean);
begin
  if FWordWrap <> Value then
  begin
    FWordWrap := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetEmojiPosition(const Value: TEmojiPosition);
begin
  if FEmojiPosition <> Value then
  begin
    FEmojiPosition := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetSpacing(const Value: Integer);
begin
  if FSpacing <> Value then
  begin
    FSpacing := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShape(const Value: TButtonShape);
begin
  if FShape <> Value then
  begin
    FShape := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetBorderRadius(const Value: Integer);
begin
  if FBorderRadius <> Value then
  begin
    FBorderRadius := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetBorderWidth(const Value: Integer);
begin
  if FBorderWidth <> Value then
  begin
    FBorderWidth := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetFocusBorderExtraWidth(const Value: Integer);
begin
  if FFocusBorderExtraWidth <> Value then
  begin
    FFocusBorderExtraWidth := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetButtonStyle(const Value: TEmojiButtonStyle);
begin
  if FButtonStyle <> Value then
  begin
    FButtonStyle := Value;
    if Value <> ebsCustom then
      FColors.ApplyStyle(Value);
    Invalidate;
  end;
end;

procedure TEmojiButton.SetColors(const Value: TEmojiButtonColors);
begin
  FColors.Assign(Value);
end;

procedure TEmojiButton.SetShadow(const Value: Boolean);
begin
  if FShadow <> Value then
  begin
    FShadow := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShadowColor(const Value: TColor);
begin
  if FShadowColor <> Value then
  begin
    FShadowColor := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShadowOffsetX(const Value: Integer);
begin
  if FShadowOffsetX <> Value then
  begin
    FShadowOffsetX := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShadowOffsetY(const Value: Integer);
begin
  if FShadowOffsetY <> Value then
  begin
    FShadowOffsetY := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShadowBlur(const Value: Integer);
begin
  if FShadowBlur <> Value then
  begin
    FShadowBlur := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShadowOpacity(const Value: Byte);
begin
  if FShadowOpacity <> Value then
  begin
    FShadowOpacity := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetShowPressedEffect(const Value: Boolean);
begin
  if FShowPressedEffect <> Value then
  begin
    FShowPressedEffect := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetPressedOffsetX(const Value: Integer);
begin
  if FPressedOffsetX <> Value then
  begin
    FPressedOffsetX := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetPressedOffsetY(const Value: Integer);
begin
  if FPressedOffsetY <> Value then
  begin
    FPressedOffsetY := Value;
    Invalidate;
  end;
end;

procedure TEmojiButton.SetDefault(const Value: Boolean);
var
  LForm: TCustomForm;
begin
  FDefault := Value;
  if HandleAllocated then
  begin
    LForm := GetParentForm(Self);
    if LForm <> nil then
      LForm.Perform(CM_FOCUSCHANGED, 0, LPARAM(LForm.ActiveControl));
  end;
end;

end.
