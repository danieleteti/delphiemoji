unit EmojiComponentEditor;

interface

uses
  System.SysUtils, System.Classes, System.TypInfo, DesignIntf, DesignEditors,
  EmojiImage, EmojiButton, EmojiSelectorForm;

type
  TEmojiImageEditor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    procedure Edit; override;
  end;

  TEmojiButtonEditor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    procedure Edit; override;
  end;

implementation

uses
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Graphics,
  EmojiUtils, UnicodeEmoji;

type
  TEmojiPreviewForm = class(TForm)
  private
    FEmojiName: string;
    FHoverEmojiName: string;
    FPreviewPanel: TPanel;
    FEmojiImage: TEmojiImage;
    FInfoLabel: TLabel;
    FBtnSelectEmoji: TButton;
    FBtnSelectHoverEmoji: TButton;
    FBtnClearHoverEmoji: TButton;
    FBtnOK: TButton;
    FBtnCancel: TButton;
    procedure DoSelectEmoji(Sender: TObject);
    procedure DoSelectHoverEmoji(Sender: TObject);
    procedure DoClearHoverEmoji(Sender: TObject);
    procedure UpdatePreview;
    procedure UpdateInfoLabel;
  public
    constructor CreateEditor(AOwner: TComponent; const AEmojiName, AHoverEmojiName: string);
    property EmojiName: string read FEmojiName;
    property HoverEmojiName: string read FHoverEmojiName;
  end;

{ TEmojiPreviewForm }

constructor TEmojiPreviewForm.CreateEditor(AOwner: TComponent; const AEmojiName, AHoverEmojiName: string);
var
  LInstructions: TLabel;
begin
  inherited CreateNew(AOwner);
  FEmojiName := AEmojiName;
  FHoverEmojiName := AHoverEmojiName;

  Caption := 'TEmojiImage Editor';
  Width := 480;
  Height := 340;
  Position := poScreenCenter;
  BorderStyle := bsDialog;

  // Instructions at top
  LInstructions := TLabel.Create(Self);
  LInstructions.Parent := Self;
  LInstructions.Left := 20;
  LInstructions.Top := 12;
  LInstructions.Width := 440;
  LInstructions.Height := 36;
  LInstructions.AutoSize := False;
  LInstructions.WordWrap := True;
  LInstructions.Caption := 'Configure the emoji to display. You can set a different emoji for hover state. ' +
    'Move mouse over the preview to test the hover effect.';

  // Preview panel
  FPreviewPanel := TPanel.Create(Self);
  FPreviewPanel.Parent := Self;
  FPreviewPanel.Left := 20;
  FPreviewPanel.Top := 55;
  FPreviewPanel.Width := 150;
  FPreviewPanel.Height := 150;
  FPreviewPanel.BevelOuter := bvLowered;
  FPreviewPanel.Caption := '';
  FPreviewPanel.Color := clWhite;

  // Emoji preview (with colored emoji like at runtime)
  FEmojiImage := TEmojiImage.Create(Self);
  FEmojiImage.Parent := FPreviewPanel;
  FEmojiImage.Align := alClient;
  FEmojiImage.EmojiName := FEmojiName;
  FEmojiImage.HoverEmojiName := FHoverEmojiName;
  FEmojiImage.UseColoredEmojiAtDesignTime := True;

  // Info label
  FInfoLabel := TLabel.Create(Self);
  FInfoLabel.Parent := Self;
  FInfoLabel.Left := 20;
  FInfoLabel.Top := 215;
  FInfoLabel.Width := 150;
  FInfoLabel.Height := 60;
  FInfoLabel.AutoSize := False;
  FInfoLabel.WordWrap := True;
  FInfoLabel.Font.Size := 9;
  UpdateInfoLabel;

  // Buttons on the right
  FBtnSelectEmoji := TButton.Create(Self);
  FBtnSelectEmoji.Parent := Self;
  FBtnSelectEmoji.Left := 200;
  FBtnSelectEmoji.Top := 55;
  FBtnSelectEmoji.Width := 250;
  FBtnSelectEmoji.Height := 30;
  FBtnSelectEmoji.Caption := 'Select Emoji...';
  FBtnSelectEmoji.OnClick := DoSelectEmoji;

  FBtnSelectHoverEmoji := TButton.Create(Self);
  FBtnSelectHoverEmoji.Parent := Self;
  FBtnSelectHoverEmoji.Left := 200;
  FBtnSelectHoverEmoji.Top := 95;
  FBtnSelectHoverEmoji.Width := 250;
  FBtnSelectHoverEmoji.Height := 30;
  FBtnSelectHoverEmoji.Caption := 'Select Hover Emoji (optional)...';
  FBtnSelectHoverEmoji.OnClick := DoSelectHoverEmoji;

  FBtnClearHoverEmoji := TButton.Create(Self);
  FBtnClearHoverEmoji.Parent := Self;
  FBtnClearHoverEmoji.Left := 200;
  FBtnClearHoverEmoji.Top := 135;
  FBtnClearHoverEmoji.Width := 250;
  FBtnClearHoverEmoji.Height := 30;
  FBtnClearHoverEmoji.Caption := 'Clear Hover Emoji';
  FBtnClearHoverEmoji.OnClick := DoClearHoverEmoji;

  // Hint label
  with TLabel.Create(Self) do
  begin
    Parent := Self;
    Left := 200;
    Top := 180;
    Width := 250;
    Height := 40;
    AutoSize := False;
    WordWrap := True;
    Font.Color := clGray;
    Font.Size := 8;
    Caption := 'Tip: For skin tone variants, search for the emoji name followed by ": light skin tone", ": dark skin tone", etc.';
  end;

  // OK/Cancel buttons
  FBtnOK := TButton.Create(Self);
  FBtnOK.Parent := Self;
  FBtnOK.Left := 260;
  FBtnOK.Top := 260;
  FBtnOK.Width := 90;
  FBtnOK.Height := 30;
  FBtnOK.Caption := 'OK';
  FBtnOK.Default := True;
  FBtnOK.ModalResult := mrOK;

  FBtnCancel := TButton.Create(Self);
  FBtnCancel.Parent := Self;
  FBtnCancel.Left := 360;
  FBtnCancel.Top := 260;
  FBtnCancel.Width := 90;
  FBtnCancel.Height := 30;
  FBtnCancel.Caption := 'Cancel';
  FBtnCancel.Cancel := True;
  FBtnCancel.ModalResult := mrCancel;
end;

procedure TEmojiPreviewForm.DoSelectEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiPreviewForm.DoSelectHoverEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FHoverEmojiName;
  if LName = '' then
    LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FHoverEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiPreviewForm.DoClearHoverEmoji(Sender: TObject);
begin
  FHoverEmojiName := '';
  UpdatePreview;
end;

procedure TEmojiPreviewForm.UpdatePreview;
begin
  FEmojiImage.EmojiName := FEmojiName;
  FEmojiImage.HoverEmojiName := FHoverEmojiName;
  UpdateInfoLabel;
end;

procedure TEmojiPreviewForm.UpdateInfoLabel;
begin
  if FHoverEmojiName = '' then
    FInfoLabel.Caption := 'Emoji: ' + FEmojiName + #13#10 + 'Hover: (none)'
  else
    FInfoLabel.Caption := 'Emoji: ' + FEmojiName + #13#10 + 'Hover: ' + FHoverEmojiName;
end;

{ TEmojiButtonPreviewForm - Editor form for TEmojiButton }

type
  TEmojiButtonPreviewForm = class(TForm)
  private
    FEmojiName: string;
    FHoverEmojiName: string;
    FPressedEmojiName: string;
    FDisabledEmojiName: string;
    FButtonStyle: TEmojiButtonStyle;
    FButtonCaption: string;
    FPreviewPanel: TPanel;
    FEmojiButton: TEmojiButton;
    FInfoLabel: TLabel;
    FBtnSelectEmoji: TButton;
    FBtnSelectHoverEmoji: TButton;
    FBtnSelectPressedEmoji: TButton;
    FBtnSelectDisabledEmoji: TButton;
    FBtnClearHoverEmoji: TButton;
    FBtnClearPressedEmoji: TButton;
    FBtnClearDisabledEmoji: TButton;
    FStyleButtons: array[TEmojiButtonStyle] of TButton;
    FBtnOK: TButton;
    FBtnCancel: TButton;
    procedure DoSelectEmoji(Sender: TObject);
    procedure DoSelectHoverEmoji(Sender: TObject);
    procedure DoSelectPressedEmoji(Sender: TObject);
    procedure DoSelectDisabledEmoji(Sender: TObject);
    procedure DoClearHoverEmoji(Sender: TObject);
    procedure DoClearPressedEmoji(Sender: TObject);
    procedure DoClearDisabledEmoji(Sender: TObject);
    procedure DoSelectStyle(Sender: TObject);
    procedure UpdatePreview;
    procedure UpdateInfoLabel;
    procedure UpdateStyleButtons;
  public
    constructor CreateEditor(AOwner: TComponent; const AEmojiName, AHoverEmojiName,
      APressedEmojiName, ADisabledEmojiName, ACaption: string; AButtonStyle: TEmojiButtonStyle;
      AFont: TFont);
    property EmojiName: string read FEmojiName;
    property HoverEmojiName: string read FHoverEmojiName;
    property PressedEmojiName: string read FPressedEmojiName;
    property DisabledEmojiName: string read FDisabledEmojiName;
    property ButtonStyle: TEmojiButtonStyle read FButtonStyle;
  end;

constructor TEmojiButtonPreviewForm.CreateEditor(AOwner: TComponent;
  const AEmojiName, AHoverEmojiName, APressedEmojiName, ADisabledEmojiName, ACaption: string;
  AButtonStyle: TEmojiButtonStyle; AFont: TFont);
const
  CStyleNames: array[TEmojiButtonStyle] of string = (
    'VCL Style', 'Primary', 'Secondary', 'Success', 'Danger',
    'Warning', 'Info', 'Light', 'Dark',
    // Pastel
    'Pastel Rose', 'Pastel Sky', 'Pastel Mint', 'Pastel Lemon', 'Pastel Lavender',
    // High contrast
    'HC Light', 'HC Dark',
    // Accessible
    'Accessible Blue', 'Accessible Orange', 'Accessible Teal',
    // Famous
    'Material Blue', 'Material Indigo', 'GitHub', 'Outline',
    // Custom
    'Custom'
  );
var
  LInstructions: TLabel;
  LCol2Left: Integer;
  LStyle: TEmojiButtonStyle;
  LStyleLabel: TLabel;
  LBtnLeft, LBtnTop: Integer;
begin
  inherited CreateNew(AOwner);
  FEmojiName := AEmojiName;
  FHoverEmojiName := AHoverEmojiName;
  FPressedEmojiName := APressedEmojiName;
  FDisabledEmojiName := ADisabledEmojiName;
  FButtonStyle := AButtonStyle;
  FButtonCaption := ACaption;

  Caption := 'TEmojiButton Editor';
  Width := 650;
  Height := 620;
  Position := poScreenCenter;
  BorderStyle := bsDialog;

  LCol2Left := 200;

  // Instructions at top
  LInstructions := TLabel.Create(Self);
  LInstructions.Parent := Self;
  LInstructions.Left := 20;
  LInstructions.Top := 12;
  LInstructions.Width := 560;
  LInstructions.Height := 36;
  LInstructions.AutoSize := False;
  LInstructions.WordWrap := True;
  LInstructions.Caption := 'Configure emoji and style for the button. ' +
    'Hover over the preview button to test states.';

  // Preview panel
  FPreviewPanel := TPanel.Create(Self);
  FPreviewPanel.Parent := Self;
  FPreviewPanel.Left := 20;
  FPreviewPanel.Top := 55;
  FPreviewPanel.Width := 160;
  FPreviewPanel.Height := 100;
  FPreviewPanel.BevelOuter := bvLowered;
  FPreviewPanel.Caption := '';
  FPreviewPanel.Color := clWhite;

  // Emoji button preview
  FEmojiButton := TEmojiButton.Create(Self);
  FEmojiButton.Parent := FPreviewPanel;
  FEmojiButton.Left := 10;
  FEmojiButton.Top := 10;
  FEmojiButton.Width := 140;
  FEmojiButton.Height := 80;
  FEmojiButton.EmojiName := FEmojiName;
  FEmojiButton.HoverEmojiName := FHoverEmojiName;
  FEmojiButton.PressedEmojiName := FPressedEmojiName;
  FEmojiButton.DisabledEmojiName := FDisabledEmojiName;
  FEmojiButton.Caption := FButtonCaption;
  FEmojiButton.ButtonStyle := FButtonStyle;
  if Assigned(AFont) then
    FEmojiButton.Font.Assign(AFont);

  // Info label
  FInfoLabel := TLabel.Create(Self);
  FInfoLabel.Parent := Self;
  FInfoLabel.Left := 20;
  FInfoLabel.Top := 165;
  FInfoLabel.Width := 160;
  FInfoLabel.Height := 100;
  FInfoLabel.AutoSize := False;
  FInfoLabel.WordWrap := True;
  FInfoLabel.Font.Size := 8;
  UpdateInfoLabel;

  // Buttons on the right - Emoji selection
  FBtnSelectEmoji := TButton.Create(Self);
  FBtnSelectEmoji.Parent := Self;
  FBtnSelectEmoji.Left := LCol2Left;
  FBtnSelectEmoji.Top := 55;
  FBtnSelectEmoji.Width := 200;
  FBtnSelectEmoji.Height := 28;
  FBtnSelectEmoji.Caption := 'Select Emoji...';
  FBtnSelectEmoji.OnClick := DoSelectEmoji;

  FBtnSelectHoverEmoji := TButton.Create(Self);
  FBtnSelectHoverEmoji.Parent := Self;
  FBtnSelectHoverEmoji.Left := LCol2Left;
  FBtnSelectHoverEmoji.Top := 90;
  FBtnSelectHoverEmoji.Width := 200;
  FBtnSelectHoverEmoji.Height := 28;
  FBtnSelectHoverEmoji.Caption := 'Select Hover Emoji...';
  FBtnSelectHoverEmoji.OnClick := DoSelectHoverEmoji;

  FBtnClearHoverEmoji := TButton.Create(Self);
  FBtnClearHoverEmoji.Parent := Self;
  FBtnClearHoverEmoji.Left := LCol2Left + 210;
  FBtnClearHoverEmoji.Top := 90;
  FBtnClearHoverEmoji.Width := 80;
  FBtnClearHoverEmoji.Height := 28;
  FBtnClearHoverEmoji.Caption := 'Clear';
  FBtnClearHoverEmoji.OnClick := DoClearHoverEmoji;

  FBtnSelectPressedEmoji := TButton.Create(Self);
  FBtnSelectPressedEmoji.Parent := Self;
  FBtnSelectPressedEmoji.Left := LCol2Left;
  FBtnSelectPressedEmoji.Top := 125;
  FBtnSelectPressedEmoji.Width := 200;
  FBtnSelectPressedEmoji.Height := 28;
  FBtnSelectPressedEmoji.Caption := 'Select Pressed Emoji...';
  FBtnSelectPressedEmoji.OnClick := DoSelectPressedEmoji;

  FBtnClearPressedEmoji := TButton.Create(Self);
  FBtnClearPressedEmoji.Parent := Self;
  FBtnClearPressedEmoji.Left := LCol2Left + 210;
  FBtnClearPressedEmoji.Top := 125;
  FBtnClearPressedEmoji.Width := 80;
  FBtnClearPressedEmoji.Height := 28;
  FBtnClearPressedEmoji.Caption := 'Clear';
  FBtnClearPressedEmoji.OnClick := DoClearPressedEmoji;

  FBtnSelectDisabledEmoji := TButton.Create(Self);
  FBtnSelectDisabledEmoji.Parent := Self;
  FBtnSelectDisabledEmoji.Left := LCol2Left;
  FBtnSelectDisabledEmoji.Top := 160;
  FBtnSelectDisabledEmoji.Width := 200;
  FBtnSelectDisabledEmoji.Height := 28;
  FBtnSelectDisabledEmoji.Caption := 'Select Disabled Emoji...';
  FBtnSelectDisabledEmoji.OnClick := DoSelectDisabledEmoji;

  FBtnClearDisabledEmoji := TButton.Create(Self);
  FBtnClearDisabledEmoji.Parent := Self;
  FBtnClearDisabledEmoji.Left := LCol2Left + 210;
  FBtnClearDisabledEmoji.Top := 160;
  FBtnClearDisabledEmoji.Width := 80;
  FBtnClearDisabledEmoji.Height := 28;
  FBtnClearDisabledEmoji.Caption := 'Clear';
  FBtnClearDisabledEmoji.OnClick := DoClearDisabledEmoji;

  // Style section label
  LStyleLabel := TLabel.Create(Self);
  LStyleLabel.Parent := Self;
  LStyleLabel.Left := 20;
  LStyleLabel.Top := 280;
  LStyleLabel.Caption := 'Button Style:';
  LStyleLabel.Font.Style := [fsBold];

  // Style buttons in grid layout (6 columns)
  LBtnTop := 305;
  LBtnLeft := 20;
  for LStyle := Low(TEmojiButtonStyle) to High(TEmojiButtonStyle) do
  begin
    FStyleButtons[LStyle] := TButton.Create(Self);
    FStyleButtons[LStyle].Parent := Self;
    FStyleButtons[LStyle].Left := LBtnLeft;
    FStyleButtons[LStyle].Top := LBtnTop;
    FStyleButtons[LStyle].Width := 95;
    FStyleButtons[LStyle].Height := 28;
    FStyleButtons[LStyle].Caption := CStyleNames[LStyle];
    FStyleButtons[LStyle].Tag := Ord(LStyle);
    FStyleButtons[LStyle].OnClick := DoSelectStyle;

    Inc(LBtnLeft, 100);
    if LBtnLeft > 520 then
    begin
      LBtnLeft := 20;
      Inc(LBtnTop, 32);
    end;
  end;
  UpdateStyleButtons;

  // Hint label
  with TLabel.Create(Self) do
  begin
    Parent := Self;
    Left := 20;
    Top := 500;
    Width := 600;
    Height := 40;
    AutoSize := False;
    WordWrap := True;
    Font.Color := clGray;
    Font.Size := 8;
    Caption := 'Tip: Select a style to apply predefined colors. HC = High Contrast. Accessible styles are colorblind-friendly. Use "Custom" for manual color control.';
  end;

  // OK/Cancel buttons
  FBtnOK := TButton.Create(Self);
  FBtnOK.Parent := Self;
  FBtnOK.Left := 430;
  FBtnOK.Top := 545;
  FBtnOK.Width := 90;
  FBtnOK.Height := 30;
  FBtnOK.Caption := 'OK';
  FBtnOK.Default := True;
  FBtnOK.ModalResult := mrOK;

  FBtnCancel := TButton.Create(Self);
  FBtnCancel.Parent := Self;
  FBtnCancel.Left := 530;
  FBtnCancel.Top := 545;
  FBtnCancel.Width := 90;
  FBtnCancel.Height := 30;
  FBtnCancel.Caption := 'Cancel';
  FBtnCancel.Cancel := True;
  FBtnCancel.ModalResult := mrCancel;
end;

procedure TEmojiButtonPreviewForm.DoSelectEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiButtonPreviewForm.DoSelectHoverEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FHoverEmojiName;
  if LName = '' then
    LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FHoverEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiButtonPreviewForm.DoSelectPressedEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FPressedEmojiName;
  if LName = '' then
    LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FPressedEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiButtonPreviewForm.DoSelectDisabledEmoji(Sender: TObject);
var
  LName: string;
begin
  LName := FDisabledEmojiName;
  if LName = '' then
    LName := FEmojiName;
  if TEmojiSelector.SelectEmoji(LName) then
  begin
    FDisabledEmojiName := LName;
    UpdatePreview;
  end;
end;

procedure TEmojiButtonPreviewForm.DoClearHoverEmoji(Sender: TObject);
begin
  FHoverEmojiName := '';
  UpdatePreview;
end;

procedure TEmojiButtonPreviewForm.DoClearPressedEmoji(Sender: TObject);
begin
  FPressedEmojiName := '';
  UpdatePreview;
end;

procedure TEmojiButtonPreviewForm.DoClearDisabledEmoji(Sender: TObject);
begin
  FDisabledEmojiName := '';
  UpdatePreview;
end;

procedure TEmojiButtonPreviewForm.DoSelectStyle(Sender: TObject);
var
  LStyle: TEmojiButtonStyle;
begin
  LStyle := TEmojiButtonStyle((Sender as TButton).Tag);
  FButtonStyle := LStyle;
  FEmojiButton.ButtonStyle := LStyle;
  UpdateStyleButtons;
  UpdateInfoLabel;
end;

procedure TEmojiButtonPreviewForm.UpdateStyleButtons;
var
  LStyle: TEmojiButtonStyle;
begin
  for LStyle := Low(TEmojiButtonStyle) to High(TEmojiButtonStyle) do
  begin
    if LStyle = FButtonStyle then
      FStyleButtons[LStyle].Font.Style := [fsBold]
    else
      FStyleButtons[LStyle].Font.Style := [];
  end;
end;

procedure TEmojiButtonPreviewForm.UpdatePreview;
begin
  FEmojiButton.EmojiName := FEmojiName;
  FEmojiButton.HoverEmojiName := FHoverEmojiName;
  FEmojiButton.PressedEmojiName := FPressedEmojiName;
  FEmojiButton.DisabledEmojiName := FDisabledEmojiName;
  UpdateInfoLabel;
end;

procedure TEmojiButtonPreviewForm.UpdateInfoLabel;
const
  CStyleNames: array[TEmojiButtonStyle] of string = (
    'VCL Style', 'Primary', 'Secondary', 'Success', 'Danger',
    'Warning', 'Info', 'Light', 'Dark',
    'Pastel Rose', 'Pastel Sky', 'Pastel Mint', 'Pastel Lemon', 'Pastel Lavender',
    'HC Light', 'HC Dark',
    'Accessible Blue', 'Accessible Orange', 'Accessible Teal',
    'Material Blue', 'Material Indigo', 'GitHub', 'Outline',
    'Custom'
  );
var
  LText: string;
begin
  LText := 'Emoji: ' + FEmojiName;
  if FHoverEmojiName <> '' then
    LText := LText + #13#10 + 'Hover: ' + FHoverEmojiName
  else
    LText := LText + #13#10 + 'Hover: (none)';
  if FPressedEmojiName <> '' then
    LText := LText + #13#10 + 'Pressed: ' + FPressedEmojiName
  else
    LText := LText + #13#10 + 'Pressed: (none)';
  if FDisabledEmojiName <> '' then
    LText := LText + #13#10 + 'Disabled: ' + FDisabledEmojiName
  else
    LText := LText + #13#10 + 'Disabled: (none)';
  LText := LText + #13#10 + 'Style: ' + CStyleNames[FButtonStyle];
  FInfoLabel.Caption := LText;
end;

{ TEmojiImageEditor }

procedure TEmojiImageEditor.Edit;
var
  LForm: TEmojiPreviewForm;
  LImage: TEmojiImage;
begin
  LImage := Component as TEmojiImage;
  LForm := TEmojiPreviewForm.CreateEditor(Application, LImage.EmojiName, LImage.HoverEmojiName);
  try
    if LForm.ShowModal = mrOK then
    begin
      LImage.EmojiName := LForm.EmojiName;
      LImage.HoverEmojiName := LForm.HoverEmojiName;
      Designer.Modified;
    end;
  finally
    LForm.Free;
  end;
end;

procedure TEmojiImageEditor.ExecuteVerb(Index: Integer);
begin
  if Index = 0 then
    Edit;
end;

function TEmojiImageEditor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then
    Result := 'Edit Emoji...'
  else
    Result := '';
end;

function TEmojiImageEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

{ TEmojiButtonEditor }

procedure TEmojiButtonEditor.Edit;
var
  Prop: PPropInfo;
  Method: TMethod;
  MethodName: string;
begin
  // Double-click creates OnClick event handler (like TButton)
  Prop := GetPropInfo(Component, 'OnClick');
  if Prop = nil then Exit;

  Method := GetMethodProp(Component, Prop);

  if Method.Code = nil then
  begin
    // Create new method with default name
    MethodName := Component.Name + 'Click';
    Method := Designer.CreateMethod(MethodName, GetTypeData(Prop^.PropType^));
    SetMethodProp(Component, Prop, Method);
  end
  else
  begin
    // Get existing method name
    MethodName := Designer.GetMethodName(Method);
  end;

  Designer.ShowMethod(MethodName);
end;

procedure TEmojiButtonEditor.ExecuteVerb(Index: Integer);
var
  LForm: TEmojiButtonPreviewForm;
  LButton: TEmojiButton;
begin
  if Index = 0 then
  begin
    // Open emoji editor from context menu
    LButton := Component as TEmojiButton;
    LForm := TEmojiButtonPreviewForm.CreateEditor(Application,
      LButton.EmojiName, LButton.HoverEmojiName,
      LButton.PressedEmojiName, LButton.DisabledEmojiName,
      LButton.Caption, LButton.ButtonStyle, LButton.Font);
    try
      if LForm.ShowModal = mrOK then
      begin
        LButton.EmojiName := LForm.EmojiName;
        LButton.HoverEmojiName := LForm.HoverEmojiName;
        LButton.PressedEmojiName := LForm.PressedEmojiName;
        LButton.DisabledEmojiName := LForm.DisabledEmojiName;
        LButton.ButtonStyle := LForm.ButtonStyle;
        Designer.Modified;
      end;
    finally
      LForm.Free;
    end;
  end;
end;

function TEmojiButtonEditor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then
    Result := 'Edit Emoji Button...'
  else
    Result := '';
end;

function TEmojiButtonEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

end.
