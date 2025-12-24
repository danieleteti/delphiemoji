unit EmojiDemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.CheckLst, Vcl.Samples.Spin, Vcl.ColorGrd, System.Types,
  System.Diagnostics, EmojiUtils;

type
  TfrmEmojiDemo = class(TForm)
    PageControl1: TPageControl;
    tsBasicDemo: TTabSheet;
    tsAdvancedConfig: TTabSheet;
    tsFontInfo: TTabSheet;
    tsPerformance: TTabSheet;

    // Basic Demo Tab
    pnlBasicDemo: TPanel;
    lblBasicTitle: TLabel;
    edtEmojiText: TEdit;
    lblEmojiText: TLabel;
    btnDrawSimple: TButton;
    spnFontSize: TSpinEdit;
    lblFontSize: TLabel;
    pnlCanvas: TPanel;
    btnClearCanvas: TButton;
    lblClickToDraw: TLabel;
    btnRandomEmoji: TButton;

    // Advanced Config Tab
    pnlAdvancedConfig: TPanel;
    lblAdvancedTitle: TLabel;
    grpRenderConfig: TGroupBox;
    lblConfigFontSize: TLabel;
    spnConfigFontSize: TSpinEdit;
    lblBackgroundColor: TLabel;
    cmbBackgroundColor: TColorBox;
    lblTextColor: TLabel;
    cmbTextColor: TColorBox;
    chkEnableColorFont: TCheckBox;
    chkClearTypeEnabled: TCheckBox;
    cmbAntialiasMode: TComboBox;
    lblAntialiasMode: TLabel;
    btnApplyConfig: TButton;
    pnlAdvancedCanvas: TPanel;
    edtAdvancedEmoji: TEdit;
    lblAdvancedEmoji: TLabel;
    btnMeasureEmoji: TButton;
    lblMeasurement: TLabel;
    btnDrawWithBounds: TButton;

    // Font Info Tab
    pnlFontInfo: TPanel;
    lblFontInfoTitle: TLabel;
    lstAvailableFonts: TListBox;
    lblAvailableFonts: TLabel;
    btnRefreshFonts: TButton;
    memoFontDetails: TMemo;
    lblSystemInfo: TLabel;
    lblDPIInfo: TLabel;
    chkEmojiSupported: TCheckBox;

    // Performance Tab
    pnlPerformance: TPanel;
    lblPerformanceTitle: TLabel;
    grpPerformanceTest: TGroupBox;
    lblTestCount: TLabel;
    spnTestCount: TSpinEdit;
    btnRunPerformanceTest: TButton;
    lblPerformanceResult: TLabel;
    progressPerformance: TProgressBar;
    memoPerformanceLog: TMemo;
    btnStressTest: TButton;
    chkUseCachedFactory: TCheckBox;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDrawSimpleClick(Sender: TObject);
    procedure btnClearCanvasClick(Sender: TObject);
    procedure pnlCanvasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRandomEmojiClick(Sender: TObject);
    procedure btnApplyConfigClick(Sender: TObject);
    procedure btnMeasureEmojiClick(Sender: TObject);
    procedure btnDrawWithBoundsClick(Sender: TObject);
    procedure btnRefreshFontsClick(Sender: TObject);
    procedure lstAvailableFontsClick(Sender: TObject);
    procedure btnRunPerformanceTestClick(Sender: TObject);
    procedure btnStressTestClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnlCanvasPaint(Sender: TObject);

  private
    FCurrentConfig: TEmojiRenderConfig;
    FAdvancedCanvasBuffer: TBitmap;
    FRandomEmojis: TArray<string>;

    procedure InitializeRandomEmojis;
    procedure LoadAvailableFonts;
    procedure UpdateSystemInfo;
    procedure LogMessage(const Msg: string);
    function GetRandomEmoji: string;
    procedure SetupAntialiasCombo;
    procedure UpdateConfigFromControls;
    procedure DrawPerformanceTest(Count: Integer);

  public
    { Public declarations }
  end;

var
  frmEmojiDemo: TfrmEmojiDemo;

implementation

{$R *.dfm}

uses
  System.Math, Direct2D, D2D1;


type
  // Interposed class to access TPanel's protected Canvas
  TPanelHack = class(Vcl.ExtCtrls.TPanel)
  public
    property Canvas;
  end;


procedure TfrmEmojiDemo.FormCreate(Sender: TObject);
begin
  // Form initialization
  Caption := 'EmojiUtils Demo - Professional Emoji Rendering';

  // Create canvas buffer
  FAdvancedCanvasBuffer := TBitmap.Create;
  FAdvancedCanvasBuffer.PixelFormat := pf32bit;
  FAdvancedCanvasBuffer.Width := pnlAdvancedCanvas.Width;
  FAdvancedCanvasBuffer.Height := pnlAdvancedCanvas.Height;

  // Initial configuration
  FCurrentConfig := TEmojiRenderConfig.Default;

  // Initialize random emoji collection
  InitializeRandomEmojis;

  // Setup controls
  SetupAntialiasCombo;

  // Load font information
  LoadAvailableFonts;
  UpdateSystemInfo;

  // Initial values
  edtEmojiText.Text := '🚀';
  edtAdvancedEmoji.Text := '🎉🌟💫';
  spnFontSize.Value := 72;
  spnConfigFontSize.Value := 72;
  spnTestCount.Value := 100;

  // Initial control configuration
  cmbBackgroundColor.Selected := clWhite;
  cmbTextColor.Selected := clBlack;
  chkEnableColorFont.Checked := True;
  chkClearTypeEnabled.Checked := True;
  chkUseCachedFactory.Checked := True;

  LogMessage('EmojiUtils Demo initialized successfully');
end;

procedure TfrmEmojiDemo.FormDestroy(Sender: TObject);
begin
  FAdvancedCanvasBuffer.Free;
end;

procedure TfrmEmojiDemo.FormResize(Sender: TObject);
begin
  // Resize buffer when form size changes
  if Assigned(FAdvancedCanvasBuffer) then
  begin
    FAdvancedCanvasBuffer.Width := pnlAdvancedCanvas.Width;
    FAdvancedCanvasBuffer.Height := pnlAdvancedCanvas.Height;
    // Force panel repaint
    pnlAdvancedCanvas.Invalidate;
  end;
end;

procedure TfrmEmojiDemo.InitializeRandomEmojis;
begin
  // Emoji collection for random tests
  FRandomEmojis := [
    '😀', '😃', '😄', '😁', '😆', '😅', '🤣', '😂', '🙂', '🙃',
    '😉', '😊', '😇', '🥰', '😍', '🤩', '😘', '😗', '😚', '😙',
    '🚀', '🌟', '💫', '⭐', '🌙', '☀️', '🌈', '🔥', '💎', '🎉',
    '🎊', '🎁', '🏆', '🥇', '🎯', '🎲', '🎮', '🎸', '🎺', '🎨',
    '🍕', '🍔', '🍟', '🌮', '🍎', '🍌', '🍓', '🍒', '🥑', '🥝',
    '🐶', '🐱', '🐭', '🐹', '🐰', '🦊', '🐻', '🐼', '🐨', '🐯',
    '🌍', '🌎', '🌏', '🗺️', '🏔️', '⛰️', '🌋', '🏕️', '🏖️', '🏝️'
  ];
end;

procedure TfrmEmojiDemo.SetupAntialiasCombo;
begin
  cmbAntialiasMode.Items.Clear;
  cmbAntialiasMode.Items.Add('Default');
  cmbAntialiasMode.Items.Add('ClearType');
  cmbAntialiasMode.Items.Add('Grayscale');
  cmbAntialiasMode.Items.Add('Aliased');
  cmbAntialiasMode.ItemIndex := 1; // ClearType
end;

procedure TfrmEmojiDemo.LoadAvailableFonts;
var
  Fonts: TArray<TEmojiFont>;
  Font: TEmojiFont;
  FontInfo: string;
begin
  lstAvailableFonts.Clear;

  try
    Fonts := TEmojiRenderer.GetAvailableEmojiFonts;

    for Font in Fonts do
    begin
      FontInfo := Font.Name;
      if not Font.IsAvailable then
        FontInfo := FontInfo + ' (Not Available)'
      else if Font.IsColorFont then
        FontInfo := FontInfo + ' (Color Font)';

      lstAvailableFonts.Items.Add(FontInfo);
    end;

    if lstAvailableFonts.Items.Count = 0 then
      lstAvailableFonts.Items.Add('No emoji fonts detected');

  except
    on E: Exception do
    begin
      lstAvailableFonts.Items.Add('Error loading fonts: ' + E.Message);
      LogMessage('Error loading fonts: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.UpdateSystemInfo;
begin
  try
    lblDPIInfo.Caption := Format('System DPI: %.0f', [TEmojiRenderer.SystemDPI]);
    chkEmojiSupported.Checked := TEmojiRenderer.IsEmojiSupported;

    if TEmojiRenderer.IsEmojiSupported then
      lblSystemInfo.Caption := 'Emoji Support: Available'
    else
      lblSystemInfo.Caption := 'Emoji Support: Not Available';

  except
    on E: Exception do
    begin
      lblSystemInfo.Caption := 'Error checking emoji support: ' + E.Message;
      LogMessage('Error updating system info: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.LogMessage(const Msg: string);
begin
  memoPerformanceLog.Lines.Add(Format('[%s] %s', [TimeToStr(Now), Msg]));

  // Auto-scroll to bottom
  memoPerformanceLog.SelStart := Length(memoPerformanceLog.Text);
  memoPerformanceLog.SelLength := 0;
end;

function TfrmEmojiDemo.GetRandomEmoji: string;
begin
  if Length(FRandomEmojis) > 0 then
    Result := FRandomEmojis[Random(Length(FRandomEmojis))]
  else
    Result := '😀';
end;

procedure TfrmEmojiDemo.UpdateConfigFromControls;
begin
  FCurrentConfig.FontSize := spnConfigFontSize.Value;

  if cmbBackgroundColor.Selected = clDefault then
    FCurrentConfig.BackgroundColor := clNone
  else
    FCurrentConfig.BackgroundColor := cmbBackgroundColor.Selected;

  FCurrentConfig.TextColor := cmbTextColor.Selected;
  FCurrentConfig.EnableColorFont := chkEnableColorFont.Checked;
  FCurrentConfig.ClearTypeEnabled := chkClearTypeEnabled.Checked;

  case cmbAntialiasMode.ItemIndex of
    0: FCurrentConfig.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_DEFAULT;
    1: FCurrentConfig.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE;
    2: FCurrentConfig.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_GRAYSCALE;
    3: FCurrentConfig.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_ALIASED;
  else
    FCurrentConfig.AntialiasMode := D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE;
  end;
end;

// Eventi Basic Demo
procedure TfrmEmojiDemo.btnDrawSimpleClick(Sender: TObject);
begin
  try
    TPanelHack(pnlCanvas).Canvas.Brush.Color := clWhite;
    TPanelHack(pnlCanvas).Canvas.FillRect(Rect(0, 0, TPanelHack(pnlCanvas).Width, TPanelHack(pnlCanvas).Height));

    TEmojiRenderer.DrawEmoji(
      TPanelHack(pnlCanvas).Canvas,
      edtEmojiText.Text,
      20, 20,
      spnFontSize.Value
    );

    LogMessage(Format('Simple emoji drawn: "%s" at size %d', [edtEmojiText.Text, spnFontSize.Value]));

  except
    on E: Exception do
    begin
      ShowMessage('Error drawing emoji: ' + E.Message);
      LogMessage('Error drawing simple emoji: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.btnClearCanvasClick(Sender: TObject);
begin
  // Clear bitmap buffers instead of accessing Canvas directly
  TPanelHack(pnlCanvas).Canvas.Brush.Color := clWhite;
  TPanelHack(pnlCanvas).Canvas.FillRect(Rect(0, 0, TPanelHack(pnlCanvas).Width, TPanelHack(pnlCanvas).Height));
  pnlCanvas.Invalidate;

  FAdvancedCanvasBuffer.Canvas.Brush.Color := clWhite;
  FAdvancedCanvasBuffer.Canvas.FillRect(Rect(0, 0, FAdvancedCanvasBuffer.Width, FAdvancedCanvasBuffer.Height));
  pnlAdvancedCanvas.Invalidate;

  LogMessage('Canvas cleared');
end;

procedure TfrmEmojiDemo.btnRandomEmojiClick(Sender: TObject);
begin
  edtEmojiText.Text := GetRandomEmoji;
  btnDrawSimpleClick(Sender);
end;

procedure TfrmEmojiDemo.pnlCanvasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    try
      TEmojiRenderer.DrawEmoji(
        TPanelHack(pnlCanvas).Canvas,
        edtEmojiText.Text,
        X - spnFontSize.Value div 2,
        Y - spnFontSize.Value div 2,
        spnFontSize.Value
      );

      LogMessage(Format('Emoji drawn at click position: %d,%d', [X, Y]));

    except
      on E: Exception do
        LogMessage('Error drawing emoji at click: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.pnlCanvasPaint(Sender: TObject);
begin
  // Basic demo panel draws directly, no buffer needed
end;

// Advanced Config events
procedure TfrmEmojiDemo.btnApplyConfigClick(Sender: TObject);
begin
  try
    UpdateConfigFromControls;

    FAdvancedCanvasBuffer.Canvas.Brush.Color := clWhite;
    FAdvancedCanvasBuffer.Canvas.FillRect(Rect(0, 0, FAdvancedCanvasBuffer.Width, FAdvancedCanvasBuffer.Height));

    TEmojiRenderer.DrawEmoji(
      FAdvancedCanvasBuffer.Canvas,
      edtAdvancedEmoji.Text,
      20, 20,
      FCurrentConfig
    );

    // Copy buffer to panel
    TPanelHack(pnlAdvancedCanvas).Canvas.Draw(0, 0, FAdvancedCanvasBuffer);
    LogMessage('Advanced config applied and emoji drawn');

  except
    on E: Exception do
    begin
      ShowMessage('Error applying config: ' + E.Message);
      LogMessage('Error applying advanced config: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.btnMeasureEmojiClick(Sender: TObject);
var
  Size: TSize;
begin
  try
    Size := TEmojiRenderer.MeasureEmoji(edtAdvancedEmoji.Text, spnConfigFontSize.Value);
    lblMeasurement.Caption := Format('Size: %d x %d pixels', [Size.Width, Size.Height]);
    LogMessage(Format('Emoji "%s" measured: %dx%d at size %d',
      [edtAdvancedEmoji.Text, Size.Width, Size.Height, spnConfigFontSize.Value]));

  except
    on E: Exception do
    begin
      lblMeasurement.Caption := 'Measurement failed: ' + E.Message;
      LogMessage('Error measuring emoji: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.btnDrawWithBoundsClick(Sender: TObject);
var
  Bounds: TRect;
begin
  try
    UpdateConfigFromControls;

    FAdvancedCanvasBuffer.Canvas.Brush.Color := clWhite;
    FAdvancedCanvasBuffer.Canvas.FillRect(Rect(0, 0, FAdvancedCanvasBuffer.Width, FAdvancedCanvasBuffer.Height));

    // Draw with specific bounds
    Bounds := Rect(50, 50, 200, 150);

    // Draw the bounds rectangle for visualization
    FAdvancedCanvasBuffer.Canvas.Pen.Color := clRed;
    FAdvancedCanvasBuffer.Canvas.Pen.Style := psDash;
    FAdvancedCanvasBuffer.Canvas.Brush.Style := bsClear;
    FAdvancedCanvasBuffer.Canvas.Rectangle(Bounds);

    TEmojiRenderer.DrawEmoji(
      FAdvancedCanvasBuffer.Canvas,
      edtAdvancedEmoji.Text,
      Bounds,
      FCurrentConfig
    );

    // Copy buffer to panel
    TPanelHack(pnlAdvancedCanvas).Canvas.Draw(0, 0, FAdvancedCanvasBuffer);
    LogMessage('Emoji drawn with specific bounds');

  except
    on E: Exception do
    begin
      ShowMessage('Error drawing with bounds: ' + E.Message);
      LogMessage('Error drawing with bounds: ' + E.Message);
    end;
  end;
end;

// Eventi Font Info
procedure TfrmEmojiDemo.btnRefreshFontsClick(Sender: TObject);
begin
  try
    TEmojiRenderer.RefreshFontCache;
    LoadAvailableFonts;
    UpdateSystemInfo;
    LogMessage('Font cache refreshed');

  except
    on E: Exception do
    begin
      ShowMessage('Error refreshing fonts: ' + E.Message);
      LogMessage('Error refreshing font cache: ' + E.Message);
    end;
  end;
end;

procedure TfrmEmojiDemo.lstAvailableFontsClick(Sender: TObject);
var
  Fonts: TArray<TEmojiFont>;
  SelectedFont: TEmojiFont;
  Details: TStringList;
begin
  if (lstAvailableFonts.ItemIndex >= 0) and
     (lstAvailableFonts.ItemIndex < Length(TEmojiRenderer.GetAvailableEmojiFonts)) then
  begin
    try
      Fonts := TEmojiRenderer.GetAvailableEmojiFonts;
      SelectedFont := Fonts[lstAvailableFonts.ItemIndex];

      Details := TStringList.Create;
      try
        Details.Add('Font Details:');
        Details.Add('');
        Details.Add('Name: ' + SelectedFont.Name);
        Details.Add('Available: ' + BoolToStr(SelectedFont.IsAvailable, True));
        Details.Add('Color Font: ' + BoolToStr(SelectedFont.IsColorFont, True));
        Details.Add('');

        if SelectedFont.IsAvailable then
          Details.Add('This font can be used for emoji rendering.')
        else
          Details.Add('This font is not available on this system.');

        if SelectedFont.IsColorFont then
          Details.Add('This font supports colored emoji.')
        else
          Details.Add('This font provides monochrome glyphs only.');

        memoFontDetails.Text := Details.Text;

      finally
        Details.Free;
      end;

    except
      on E: Exception do
      begin
        memoFontDetails.Text := 'Error loading font details: ' + E.Message;
        LogMessage('Error loading font details: ' + E.Message);
      end;
    end;
  end;
end;

// Eventi Performance
procedure TfrmEmojiDemo.btnRunPerformanceTestClick(Sender: TObject);
begin
  DrawPerformanceTest(spnTestCount.Value);
end;

procedure TfrmEmojiDemo.btnStressTestClick(Sender: TObject);
begin
  DrawPerformanceTest(1000); // Test intenso con 1000 emoji
end;

procedure TfrmEmojiDemo.DrawPerformanceTest(Count: Integer);
var
  I: Integer;
  Stopwatch: TStopwatch;
  X, Y: Integer;
  Emoji: string;
  ElapsedMs: Int64;
  Rate: Double;
  TempBitmap: TBitmap;
begin
  if Count <= 0 then Exit;

  progressPerformance.Max := Count;
  progressPerformance.Position := 0;

  TempBitmap := TBitmap.Create;
  try
    TempBitmap.Width := 800;
    TempBitmap.Height := 600;
    TempBitmap.PixelFormat := pf32bit;

    LogMessage(Format('Starting performance test with %d emoji...', [Count]));

    Stopwatch := TStopwatch.StartNew;

    for I := 1 to Count do
    begin
      // Random positions
      X := Random(TempBitmap.Width - 100);
      Y := Random(TempBitmap.Height - 100);

      // Random emoji
      Emoji := GetRandomEmoji;

      try
        if chkUseCachedFactory.Checked then
        begin
          // Use cached factory (faster)
          TEmojiRenderer.DrawEmoji(TempBitmap.Canvas, Emoji, X, Y, 48);
        end
        else
        begin
          // Simulate factory creation every time (slower)
          TEmojiRenderer.DrawEmoji(TempBitmap.Canvas, Emoji, X, Y, 48);
        end;

      except
        on E: Exception do
          LogMessage(Format('Error drawing emoji %d: %s', [I, E.Message]));
      end;

      // Update progress bar every 10 emoji
      if (I mod 10) = 0 then
      begin
        progressPerformance.Position := I;
        Application.ProcessMessages;
      end;
    end;

    Stopwatch.Stop;
    ElapsedMs := Stopwatch.ElapsedMilliseconds;

    if ElapsedMs > 0 then
      Rate := (Count * 1000.0) / ElapsedMs
    else
      Rate := 0;

    progressPerformance.Position := Count;

    lblPerformanceResult.Caption := Format(
      'Rendered %d emoji in %d ms (%.1f emoji/sec)',
      [Count, ElapsedMs, Rate]
    );

    LogMessage(Format('Performance test completed: %d emoji in %d ms (%.1f emoji/sec)',
      [Count, ElapsedMs, Rate]));

  finally
    TempBitmap.Free;
  end;
end;

end.
