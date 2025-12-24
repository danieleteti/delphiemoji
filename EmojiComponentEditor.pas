unit EmojiComponentEditor;

interface

uses
  System.SysUtils, System.Classes, DesignIntf, DesignEditors, EmojiImage,
  EmojiSelectorForm;

type
  TEmojiImageEditor = class(TComponentEditor)
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
begin
  inherited CreateNew(AOwner);
  FEmojiName := AEmojiName;
  FHoverEmojiName := AHoverEmojiName;

  Caption := 'TEmojiImage Editor';
  Width := 450;
  Height := 350;
  Position := poScreenCenter;
  BorderStyle := bsDialog;

  // Preview panel
  FPreviewPanel := TPanel.Create(Self);
  FPreviewPanel.Parent := Self;
  FPreviewPanel.Left := 20;
  FPreviewPanel.Top := 20;
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
  FInfoLabel.Top := 180;
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
  FBtnSelectEmoji.Top := 20;
  FBtnSelectEmoji.Width := 220;
  FBtnSelectEmoji.Height := 30;
  FBtnSelectEmoji.Caption := 'Select Emoji...';
  FBtnSelectEmoji.OnClick := DoSelectEmoji;

  FBtnSelectHoverEmoji := TButton.Create(Self);
  FBtnSelectHoverEmoji.Parent := Self;
  FBtnSelectHoverEmoji.Left := 200;
  FBtnSelectHoverEmoji.Top := 60;
  FBtnSelectHoverEmoji.Width := 220;
  FBtnSelectHoverEmoji.Height := 30;
  FBtnSelectHoverEmoji.Caption := 'Select Hover Emoji...';
  FBtnSelectHoverEmoji.OnClick := DoSelectHoverEmoji;

  FBtnClearHoverEmoji := TButton.Create(Self);
  FBtnClearHoverEmoji.Parent := Self;
  FBtnClearHoverEmoji.Left := 200;
  FBtnClearHoverEmoji.Top := 100;
  FBtnClearHoverEmoji.Width := 220;
  FBtnClearHoverEmoji.Height := 30;
  FBtnClearHoverEmoji.Caption := 'Clear Hover Emoji';
  FBtnClearHoverEmoji.OnClick := DoClearHoverEmoji;

  // Hint label
  with TLabel.Create(Self) do
  begin
    Parent := Self;
    Left := 200;
    Top := 145;
    Width := 220;
    Height := 40;
    AutoSize := False;
    WordWrap := True;
    Font.Color := clGray;
    Font.Size := 8;
    Caption := 'Move the mouse over the preview to see the hover effect.';
  end;

  // OK/Cancel buttons
  FBtnOK := TButton.Create(Self);
  FBtnOK.Parent := Self;
  FBtnOK.Left := 230;
  FBtnOK.Top := 270;
  FBtnOK.Width := 90;
  FBtnOK.Height := 30;
  FBtnOK.Caption := 'OK';
  FBtnOK.Default := True;
  FBtnOK.ModalResult := mrOK;

  FBtnCancel := TButton.Create(Self);
  FBtnCancel.Parent := Self;
  FBtnCancel.Left := 330;
  FBtnCancel.Top := 270;
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

end.
