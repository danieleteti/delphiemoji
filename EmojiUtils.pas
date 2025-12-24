unit EmojiUtils;

interface

uses
  Vcl.Graphics, System.SysUtils, System.Types, System.Generics.Collections,
  System.Math, Winapi.Windows, Direct2D, D2D1, Winapi.DxgiFormat;

type
  // Configuration for emoji rendering
  TEmojiRenderConfig = record
    FontSize: Single;           // Font size in DIPs
    BackgroundColor: TColor;    // Background color (clNone for transparent)
    TextColor: TColor;          // Text color (ignored for colored emoji)
    AntialiasMode: D2D1_TEXT_ANTIALIAS_MODE;
    ClearTypeEnabled: Boolean;
    EnableColorFont: Boolean;   // Enable colored emoji
    class function Default: TEmojiRenderConfig; static;
    class function Create(AFontSize: Single; ABackgroundColor: TColor = clNone;
      ATextColor: TColor = clBlack): TEmojiRenderConfig; static;
  end;

  // Information about an available emoji font
  TEmojiFont = record
    Name: string;
    IsColorFont: Boolean;
    IsAvailable: Boolean;
  end;

  // Main class for emoji rendering
  TEmojiRenderer = class
  private
    class var FInstance: TEmojiRenderer;
    class var FD2DFactory: ID2D1Factory;
    class var FDWriteFactory: IDWriteFactory;
    class var FSystemDPI: Single;
    class var FAvailableFonts: TArray<TEmojiFont>;

    class constructor Create;
    class destructor Destroy;

    class procedure InitializeFactories;
    class procedure DetectAvailableFonts;
    class function GetSystemDPI: Single;
    class function CreateRenderTarget(Canvas: TCanvas; const Bounds: TRect): ID2D1DCRenderTarget;
    class function CreateTextFormat(const FontName: string; FontSize: Single): IDWriteTextFormat;
    class function FindBestEmojiFont: string;

  public
    // Main rendering methods
    class procedure DrawEmoji(Canvas: TCanvas; const EmojiText: string;
      X, Y: Integer; const Config: TEmojiRenderConfig); overload;
    class procedure DrawEmoji(Canvas: TCanvas; const EmojiText: string;
      X, Y: Integer; FontSize: Single = 72); overload;
    class procedure DrawEmoji(Canvas: TCanvas; const EmojiText: string;
      const Bounds: TRect; const Config: TEmojiRenderConfig); overload;

    // Utility methods
    class function MeasureEmoji(const EmojiText: string; FontSize: Single): TSize;
    class function GetAvailableEmojiFonts: TArray<TEmojiFont>;
    class function IsEmojiSupported: Boolean;
    class procedure RefreshFontCache;

    // Properties
    class property SystemDPI: Single read FSystemDPI;
    class property AvailableFonts: TArray<TEmojiFont> read FAvailableFonts;
  end;

  // Custom exceptions
  EEmojiRenderException = class(Exception);
  EEmojiFactoryException = class(EEmojiRenderException);
  EEmojiNotSupportedException = class(EEmojiRenderException);

// Utility function to convert TColor to D2D1_COLOR_F
function ColorToD2D1Color(Color: TColor): D2D1_COLOR_F;

implementation

const
  // Supported emoji fonts in order of preference
  EMOJI_FONTS: array[0..4] of string = (
    'Segoe UI Emoji',      // Windows 8.1+
    'Apple Color Emoji',   // macOS/iOS
    'Noto Color Emoji',    // Android/Linux
    'Twemoji Mozilla',     // Firefox
    'Symbola'              // Fallback Unicode
  );

// Utility function to convert TColor to D2D1_COLOR_F
function ColorToD2D1Color(Color: TColor): D2D1_COLOR_F;
var
  RGB: Cardinal;
begin
  RGB := ColorToRGB(Color);
  Result.r := GetRValue(RGB) / 255.0;
  Result.g := GetGValue(RGB) / 255.0;
  Result.b := GetBValue(RGB) / 255.0;
  Result.a := 1.0;
end;

{ TEmojiRenderConfig }

class function TEmojiRenderConfig.Default: TEmojiRenderConfig;
begin
  Result.FontSize := 72;
  Result.BackgroundColor := clNone;
  Result.TextColor := clBlack;
  Result.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE;
  Result.ClearTypeEnabled := True;
  Result.EnableColorFont := True;
end;

class function TEmojiRenderConfig.Create(AFontSize: Single; ABackgroundColor: TColor;
  ATextColor: TColor): TEmojiRenderConfig;
begin
  Result := Default;
  Result.FontSize := AFontSize;
  Result.BackgroundColor := ABackgroundColor;
  Result.TextColor := ATextColor;
end;

{ TEmojiRenderer }

class constructor TEmojiRenderer.Create;
begin
  FInstance := nil;
  FD2DFactory := nil;
  FDWriteFactory := nil;
  FSystemDPI := GetSystemDPI;

  InitializeFactories;
  DetectAvailableFonts;
end;

class destructor TEmojiRenderer.Destroy;
begin
  // COM interfaces are released automatically
  FDWriteFactory := nil;
  FD2DFactory := nil;
  FInstance.Free;
end;

class procedure TEmojiRenderer.InitializeFactories;
var
  FactoryOptions: D2D1_FACTORY_OPTIONS;
  Hr: HRESULT;
begin
  // Create Direct2D factory once
  if not Assigned(FD2DFactory) then
  begin
    FactoryOptions.DebugLevel := D2D1_DEBUG_LEVEL_NONE;
    Hr := D2D1CreateFactory(
      D2D1_FACTORY_TYPE_SINGLE_THREADED,
      IID_ID2D1Factory,
      @FactoryOptions,
      FD2DFactory
    );
    if FAILED(Hr) then
      raise EEmojiFactoryException.CreateFmt('Failed to create Direct2D factory: HRESULT = 0x%x', [Hr]);
  end;

  // Create DirectWrite factory once
  if not Assigned(FDWriteFactory) then
  begin
    Hr := DWriteCreateFactory(
      DWRITE_FACTORY_TYPE_SHARED,
      IID_IDWriteFactory,
      IUnknown(FDWriteFactory)
    );
    if FAILED(Hr) then
      raise EEmojiFactoryException.CreateFmt('Failed to create DirectWrite factory: HRESULT = 0x%x', [Hr]);
  end;
end;

class procedure TEmojiRenderer.DetectAvailableFonts;
var
  FontCollection: IDWriteFontCollection;
  FontFamily: IDWriteFontFamily;
  I: Integer;
  J: Cardinal;
  Hr: HRESULT;
  FontList: TList<TEmojiFont>;
  EmojiFont: TEmojiFont;
  Exists: LongBool;
  Font: IDWriteFont;
begin
  FontList := TList<TEmojiFont>.Create;
  try
    // Get system font collection
    Hr := FDWriteFactory.GetSystemFontCollection(FontCollection);
    if FAILED(Hr) then Exit;

    // Check each emoji font in the preference list
    for I := Low(EMOJI_FONTS) to High(EMOJI_FONTS) do
    begin
      EmojiFont.Name := EMOJI_FONTS[I];
      EmojiFont.IsAvailable := False;
      EmojiFont.IsColorFont := False;

      // Check if the font exists
      Hr := FontCollection.FindFamilyName(PWideChar(EMOJI_FONTS[I]), J, Exists);
      if SUCCEEDED(Hr) and Exists then
      begin
        EmojiFont.IsAvailable := True;

        // Get the font family
        Hr := FontCollection.GetFontFamily(J, FontFamily);
        if SUCCEEDED(Hr) then
        begin
          // Get the first font in the family
          Hr := FontFamily.GetFirstMatchingFont(
            DWRITE_FONT_WEIGHT_NORMAL,
            DWRITE_FONT_STRETCH_NORMAL,
            DWRITE_FONT_STYLE_NORMAL,
            Font
          );
          if SUCCEEDED(Hr) then
          begin
            // Check if it supports colored emoji
            // Note: IsColorFont is not always available in all versions
            // For safety, we assume emoji fonts support colors
            EmojiFont.IsColorFont := True;
          end;
        end;
      end;

      FontList.Add(EmojiFont);
    end;

    FAvailableFonts := FontList.ToArray;
  finally
    FontList.Free;
  end;
end;

class function TEmojiRenderer.GetSystemDPI: Single;
var
  DC: HDC;
begin
  DC := GetDC(0);
  try
    Result := GetDeviceCaps(DC, LOGPIXELSX);
  finally
    ReleaseDC(0, DC);
  end;
end;

class function TEmojiRenderer.CreateRenderTarget(Canvas: TCanvas;
  const Bounds: TRect): ID2D1DCRenderTarget;
var
  Props: D2D1_RENDER_TARGET_PROPERTIES;
  Hr: HRESULT;
begin
  Props.&type := D2D1_RENDER_TARGET_TYPE_DEFAULT;
  Props.PixelFormat.Format := DXGI_FORMAT_B8G8R8A8_UNORM;
  Props.PixelFormat.AlphaMode := D2D1_ALPHA_MODE_IGNORE;
  Props.DpiX := FSystemDPI;
  Props.DpiY := FSystemDPI;
  Props.Usage := D2D1_RENDER_TARGET_USAGE_NONE;
  Props.MinLevel := D2D1_FEATURE_LEVEL_DEFAULT;

  Hr := FD2DFactory.CreateDCRenderTarget(Props, Result);
  if FAILED(Hr) then
    raise EEmojiRenderException.CreateFmt('Failed to create DC render target: HRESULT = 0x%x', [Hr]);

  Hr := Result.BindDC(Canvas.Handle, Bounds);
  if FAILED(Hr) then
    raise EEmojiRenderException.CreateFmt('BindDC failed: HRESULT = 0x%x', [Hr]);
end;

class function TEmojiRenderer.CreateTextFormat(const FontName: string;
  FontSize: Single): IDWriteTextFormat;
var
  Hr: HRESULT;
begin
  Hr := FDWriteFactory.CreateTextFormat(
    PWideChar(FontName),
    nil,
    DWRITE_FONT_WEIGHT_NORMAL,
    DWRITE_FONT_STYLE_NORMAL,
    DWRITE_FONT_STRETCH_NORMAL,
    FontSize,
    PWideChar('en-us'),
    Result
  );
  if FAILED(Hr) then
    raise EEmojiRenderException.CreateFmt('Failed to create text format for font "%s": HRESULT = 0x%x', [FontName, Hr]);
end;

class function TEmojiRenderer.FindBestEmojiFont: string;
var
  EmojiFont: TEmojiFont;
begin
  Result := 'Segoe UI'; // Default fallback

  for EmojiFont in FAvailableFonts do
  begin
    if EmojiFont.IsAvailable then
    begin
      Result := EmojiFont.Name;
      Exit; // Restituisce il primo font disponibile (ordinato per preferenza)
    end;
  end;
end;

class procedure TEmojiRenderer.DrawEmoji(Canvas: TCanvas; const EmojiText: string;
  X, Y: Integer; const Config: TEmojiRenderConfig);
var
  Bounds: TRect;
begin
  // Calculate bounds based on font size
  Bounds := Rect(X, Y, X + Round(Config.FontSize * 1.5), Y + Round(Config.FontSize * 1.5));
  DrawEmoji(Canvas, EmojiText, Bounds, Config);
end;

class procedure TEmojiRenderer.DrawEmoji(Canvas: TCanvas; const EmojiText: string;
  X, Y: Integer; FontSize: Single);
var
  Config: TEmojiRenderConfig;
begin
  Config := TEmojiRenderConfig.Create(FontSize);
  DrawEmoji(Canvas, EmojiText, X, Y, Config);
end;

class procedure TEmojiRenderer.DrawEmoji(Canvas: TCanvas; const EmojiText: string;
  const Bounds: TRect; const Config: TEmojiRenderConfig);
var
  RenderTarget: ID2D1DCRenderTarget;
  TextFormat: IDWriteTextFormat;
  TextLayout: IDWriteTextLayout;
  Brush: ID2D1SolidColorBrush;
  Origin: D2D1_POINT_2F;
  Hr: HRESULT;
  FontName: string;
  DrawOptions: D2D1_DRAW_TEXT_OPTIONS;
  BackgroundBrush: ID2D1SolidColorBrush;
  BoundsF: D2D1_RECT_F;
begin
  if not IsEmojiSupported then
    raise EEmojiNotSupportedException.Create('No emoji fonts available on this system');

  InitializeFactories;

  RenderTarget := nil;
  TextFormat := nil;
  TextLayout := nil;
  Brush := nil;
  BackgroundBrush := nil;

  try
    // Create render target
    RenderTarget := CreateRenderTarget(Canvas, Bounds);

    // Configure antialiasing
    RenderTarget.SetTextAntialiasMode(Config.AntialiasMode);

    // Find the best available font
    FontName := FindBestEmojiFont;

    // Create text format
    TextFormat := CreateTextFormat(FontName, Config.FontSize);

    // Configure alignment
    TextFormat.SetTextAlignment(DWRITE_TEXT_ALIGNMENT_LEADING);
    TextFormat.SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT_NEAR);

    // Create text layout
    Hr := FDWriteFactory.CreateTextLayout(
      PWideChar(EmojiText),
      Length(EmojiText),
      TextFormat,
      Bounds.Right - Bounds.Left,
      Bounds.Bottom - Bounds.Top,
      TextLayout
    );
    if FAILED(Hr) then
      raise EEmojiRenderException.CreateFmt('Failed to create text layout: HRESULT = 0x%x', [Hr]);

    // Create brush for text
    Hr := RenderTarget.CreateSolidColorBrush(
      ColorToD2D1Color(Config.TextColor),
      nil,
      Brush
    );
    if FAILED(Hr) then
      raise EEmojiRenderException.CreateFmt('Failed to create text brush: HRESULT = 0x%x', [Hr]);

    // Create background brush if needed
    if Config.BackgroundColor <> clNone then
    begin
      Hr := RenderTarget.CreateSolidColorBrush(
        ColorToD2D1Color(Config.BackgroundColor),
        nil,
        BackgroundBrush
      );
      if FAILED(Hr) then
        raise EEmojiRenderException.CreateFmt('Failed to create background brush: HRESULT = 0x%x', [Hr]);
    end;

    // Begin drawing
    RenderTarget.BeginDraw;
    try
      // Clear the background if requested (coordinates relative to bound rect)
      if Assigned(BackgroundBrush) then
      begin
        BoundsF.left := 0;
        BoundsF.top := 0;
        BoundsF.right := Bounds.Right - Bounds.Left;
        BoundsF.bottom := Bounds.Bottom - Bounds.Top;
        RenderTarget.FillRectangle(BoundsF, BackgroundBrush);
      end;

      // Set origin (relative to bound rect, so 0,0)
      Origin.X := 0;
      Origin.Y := 0;

      // Configure drawing options
      DrawOptions := D2D1_DRAW_TEXT_OPTIONS_NONE;
      if Config.EnableColorFont then
        DrawOptions := DrawOptions or D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT;

      // Draw the text/emoji
      RenderTarget.DrawTextLayout(Origin, TextLayout, Brush, DrawOptions);

    finally
      Hr := RenderTarget.EndDraw;
      if Hr = D2DERR_RECREATE_TARGET then
      begin
        OutputDebugString('Direct2D device lost - render target needs recreation');
        // We could implement retry logic here
      end
      else if FAILED(Hr) then
        raise EEmojiRenderException.CreateFmt('EndDraw failed: HRESULT = 0x%x', [Hr]);
    end;

  finally
    BackgroundBrush := nil;
    Brush := nil;
    TextLayout := nil;
    TextFormat := nil;
    RenderTarget := nil;
  end;
end;

class function TEmojiRenderer.MeasureEmoji(const EmojiText: string;
  FontSize: Single): TSize;
var
  TextFormat: IDWriteTextFormat;
  TextLayout: IDWriteTextLayout;
  Metrics: DWRITE_TEXT_METRICS;
  Hr: HRESULT;
  FontName: string;
begin
  Result := TSize.Create(0, 0);

  if not IsEmojiSupported then Exit;

  InitializeFactories;

  TextFormat := nil;
  TextLayout := nil;

  try
    FontName := FindBestEmojiFont;
    TextFormat := CreateTextFormat(FontName, FontSize);

    Hr := FDWriteFactory.CreateTextLayout(
      PWideChar(EmojiText),
      Length(EmojiText),
      TextFormat,
      10000, // Max width
      10000, // Max height
      TextLayout
    );
    if FAILED(Hr) then Exit;

    Hr := TextLayout.GetMetrics(Metrics);
    if SUCCEEDED(Hr) then
    begin
      Result.Width := Ceil(Metrics.width);
      Result.Height := Ceil(Metrics.height);
    end;

  finally
    TextLayout := nil;
    TextFormat := nil;
  end;
end;

class function TEmojiRenderer.GetAvailableEmojiFonts: TArray<TEmojiFont>;
begin
  Result := FAvailableFonts;
end;

class function TEmojiRenderer.IsEmojiSupported: Boolean;
var
  EmojiFont: TEmojiFont;
begin
  Result := False;
  for EmojiFont in FAvailableFonts do
  begin
    if EmojiFont.IsAvailable then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

class procedure TEmojiRenderer.RefreshFontCache;
begin
  DetectAvailableFonts;
end;

end.
