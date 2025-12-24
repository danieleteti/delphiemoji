unit EmojiSelectorForm;

interface

uses
  System.SysUtils, System.Classes, System.Types, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, UnicodeEmoji, Vcl.Graphics,
  EmojiUtils;

const
  PAGE_SIZE = 50;

type
  TEmojiSelector = class(TForm)
  private
    FListView: TListView;
    FedtSearch: TEdit;
    FpnlBottom: TPanel;
    FpnlPaging: TPanel;
    FbtnOK: TButton;
    FbtnCancel: TButton;
    FbtnPrev: TButton;
    FbtnNext: TButton;
    FlblPage: TLabel;
    FOriginalEmojiNames: TStringList;
    FFilteredEmojiNames: TStringList;
    FSelectedEmojiName: string;
    FCurrentPage: Integer;
    FTotalPages: Integer;
    procedure edtSearchChange(Sender: TObject);
    procedure ListViewCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure ListViewDblClick(Sender: TObject);
    procedure SetupControls;
    procedure LoadEmojis;
    procedure FilterEmojis;
    procedure ShowPage(APage: Integer);
    procedure UpdatePagingControls;
  public
    class function SelectEmoji(var AEmojiName: string): Boolean;
  end;

implementation

uses
  System.Math, Winapi.Windows;

{ TEmojiSelector }

class function TEmojiSelector.SelectEmoji(var AEmojiName: string): Boolean;
var
  LForm: TEmojiSelector;
  I, LPageForEmoji: Integer;
begin
  LForm := TEmojiSelector.CreateNew(nil);
  try
    LForm.SetupControls;
    LForm.FOriginalEmojiNames := TStringList.Create;
    LForm.FFilteredEmojiNames := TStringList.Create;
    LForm.FCurrentPage := 0;
    LForm.LoadEmojis;

    // Try to find and show the page containing current emoji
    if AEmojiName <> '' then
    begin
      I := LForm.FFilteredEmojiNames.IndexOf(AEmojiName);
      if I >= 0 then
      begin
        LPageForEmoji := I div PAGE_SIZE;
        LForm.ShowPage(LPageForEmoji);
        // Select the item
        for I := 0 to LForm.FListView.Items.Count - 1 do
        begin
          if LForm.FListView.Items[I].SubItems[0] = AEmojiName then
          begin
            LForm.FListView.Items[I].Selected := True;
            LForm.FListView.Items[I].MakeVisible(False);
            Break;
          end;
        end;
      end;
    end;

    if LForm.ShowModal = mrOk then
    begin
      AEmojiName := LForm.FSelectedEmojiName;
      Result := True;
    end
    else
      Result := False;
  finally
    LForm.FFilteredEmojiNames.Free;
    LForm.FOriginalEmojiNames.Free;
    LForm.Free;
  end;
end;

procedure TEmojiSelector.SetupControls;
begin
  Caption := 'Select Emoji';
  ClientWidth := 500;
  ClientHeight := 550;
  Position := poScreenCenter;

  // Search box at top
  FedtSearch := TEdit.Create(Self);
  FedtSearch.Parent := Self;
  FedtSearch.Align := alTop;
  FedtSearch.TextHint := 'Search emoji...';
  FedtSearch.OnChange := edtSearchChange;

  // Bottom panel with OK/Cancel
  FpnlBottom := TPanel.Create(Self);
  FpnlBottom.Parent := Self;
  FpnlBottom.Align := alBottom;
  FpnlBottom.BevelOuter := bvNone;
  FpnlBottom.Height := 40;

  FbtnCancel := TButton.Create(FpnlBottom);
  FbtnCancel.Parent := FpnlBottom;
  FbtnCancel.Caption := 'Cancel';
  FbtnCancel.ModalResult := mrCancel;
  FbtnCancel.Cancel := True;
  FbtnCancel.Width := 80;
  FbtnCancel.Top := 8;
  FbtnCancel.Left := FpnlBottom.ClientWidth - FbtnCancel.Width - 10;
  FbtnCancel.Anchors := [akTop, akRight];

  FbtnOK := TButton.Create(FpnlBottom);
  FbtnOK.Parent := FpnlBottom;
  FbtnOK.Caption := 'OK';
  FbtnOK.ModalResult := mrOk;
  FbtnOK.Default := True;
  FbtnOK.Width := 80;
  FbtnOK.Top := 8;
  FbtnOK.Left := FbtnCancel.Left - FbtnOK.Width - 8;
  FbtnOK.Anchors := [akTop, akRight];
  FbtnOK.OnClick := btnOKClick;

  // Paging panel
  FpnlPaging := TPanel.Create(Self);
  FpnlPaging.Parent := Self;
  FpnlPaging.Align := alBottom;
  FpnlPaging.BevelOuter := bvNone;
  FpnlPaging.Height := 36;

  FbtnPrev := TButton.Create(FpnlPaging);
  FbtnPrev.Parent := FpnlPaging;
  FbtnPrev.Caption := '< Prev';
  FbtnPrev.Width := 70;
  FbtnPrev.Top := 6;
  FbtnPrev.Left := 8;
  FbtnPrev.OnClick := btnPrevClick;

  FlblPage := TLabel.Create(FpnlPaging);
  FlblPage.Parent := FpnlPaging;
  FlblPage.AutoSize := False;
  FlblPage.Width := 200;
  FlblPage.Alignment := taCenter;
  FlblPage.Top := 10;
  FlblPage.Left := (FpnlPaging.ClientWidth - FlblPage.Width) div 2;
  FlblPage.Anchors := [akTop];
  FlblPage.Caption := '';

  FbtnNext := TButton.Create(FpnlPaging);
  FbtnNext.Parent := FpnlPaging;
  FbtnNext.Caption := 'Next >';
  FbtnNext.Width := 70;
  FbtnNext.Top := 6;
  FbtnNext.Left := FpnlPaging.ClientWidth - FbtnNext.Width - 8;
  FbtnNext.Anchors := [akTop, akRight];
  FbtnNext.OnClick := btnNextClick;

  // ListView
  FListView := TListView.Create(Self);
  FListView.Parent := Self;
  FListView.Align := alClient;
  FListView.ViewStyle := vsReport;
  FListView.RowSelect := True;
  FListView.ReadOnly := True;
  FListView.HideSelection := False;
  FListView.OwnerDraw := True;
  FListView.Columns.Add.Caption := 'Emoji';
  FListView.Columns.Add.Caption := 'Name';
  FListView.Columns[0].Width := 50;
  FListView.Columns[1].Width := 400;
  FListView.OnCustomDrawItem := ListViewCustomDrawItem;
  FListView.OnDblClick := ListViewDblClick;

  // Set row height
  FListView.SmallImages := TImageList.Create(Self);
  FListView.SmallImages.Width := 1;
  FListView.SmallImages.Height := 40;
end;

procedure TEmojiSelector.LoadEmojis;
var
  LEmojiNames: TArray<string>;
  LName: string;
begin
  LEmojiNames := GetAllEmojiNames;
  for LName in LEmojiNames do
    FOriginalEmojiNames.Add(LName);
  FOriginalEmojiNames.Sort;
  FilterEmojis;
end;

procedure TEmojiSelector.FilterEmojis;
var
  LName: string;
  LSearchText: string;
begin
  FFilteredEmojiNames.Clear;
  LSearchText := LowerCase(Trim(FedtSearch.Text));

  for LName in FOriginalEmojiNames do
  begin
    if (LSearchText = '') or LowerCase(LName).Contains(LSearchText) then
      FFilteredEmojiNames.Add(LName);
  end;

  // Calculate total pages
  if FFilteredEmojiNames.Count > 0 then
    FTotalPages := ((FFilteredEmojiNames.Count - 1) div PAGE_SIZE) + 1
  else
    FTotalPages := 1;

  // Show first page
  ShowPage(0);
end;

procedure TEmojiSelector.ShowPage(APage: Integer);
var
  LStartIndex, LEndIndex, I: Integer;
  LItem: TListItem;
begin
  // Clamp page number
  if APage < 0 then APage := 0;
  if APage >= FTotalPages then APage := FTotalPages - 1;
  FCurrentPage := APage;

  FListView.Items.BeginUpdate;
  try
    FListView.Items.Clear;

    if FFilteredEmojiNames.Count = 0 then
    begin
      UpdatePagingControls;
      Exit;
    end;

    LStartIndex := FCurrentPage * PAGE_SIZE;
    LEndIndex := Min(LStartIndex + PAGE_SIZE - 1, FFilteredEmojiNames.Count - 1);

    for I := LStartIndex to LEndIndex do
    begin
      LItem := FListView.Items.Add;
      LItem.Caption := '';
      LItem.SubItems.Add(FFilteredEmojiNames[I]);
    end;
  finally
    FListView.Items.EndUpdate;
  end;

  UpdatePagingControls;
end;

procedure TEmojiSelector.UpdatePagingControls;
begin
  FlblPage.Caption := Format('Page %d of %d  (%d emoji)',
    [FCurrentPage + 1, FTotalPages, FFilteredEmojiNames.Count]);

  FbtnPrev.Enabled := FCurrentPage > 0;
  FbtnNext.Enabled := FCurrentPage < FTotalPages - 1;
end;

procedure TEmojiSelector.btnPrevClick(Sender: TObject);
begin
  if FCurrentPage > 0 then
    ShowPage(FCurrentPage - 1);
end;

procedure TEmojiSelector.btnNextClick(Sender: TObject);
begin
  if FCurrentPage < FTotalPages - 1 then
    ShowPage(FCurrentPage + 1);
end;

procedure TEmojiSelector.edtSearchChange(Sender: TObject);
begin
  FilterEmojis;
end;

procedure TEmojiSelector.ListViewCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  LRect, LTextRect: TRect;
  LEmojiName, LEmoji: string;
  LIsSelected: Boolean;
  LEmojiX, LEmojiY: Integer;
begin
  DefaultDraw := False;
  LIsSelected := Item.Selected;

  LRect := Item.DisplayRect(drBounds);

  // Draw background
  if LIsSelected then
    Sender.Canvas.Brush.Color := clHighlight
  else
    Sender.Canvas.Brush.Color := clWindow;
  Sender.Canvas.FillRect(LRect);

  if Item.SubItems.Count = 0 then Exit;
  LEmojiName := Item.SubItems[0];

  // Draw Emoji directly on canvas
  LEmoji := FindEmojiByName(LEmojiName);
  if LEmoji <> '' then
  begin
    LEmojiX := LRect.Left + 6;
    LEmojiY := LRect.Top + (LRect.Height - 30) div 2;
    if TEmojiRenderer.IsEmojiSupported then
      TEmojiRenderer.DrawEmoji(Sender.Canvas, LEmoji, LEmojiX, LEmojiY, 28)
    else
    begin
      Sender.Canvas.Font.Name := 'Segoe UI Emoji';
      Sender.Canvas.Font.Size := 14;
      Sender.Canvas.Brush.Style := bsClear;
      Sender.Canvas.TextOut(LEmojiX, LEmojiY, LEmoji);
    end;
  end;

  // Draw Name
  LTextRect := LRect;
  LTextRect.Left := Sender.Column[0].Width + 8;
  LTextRect.Right := LRect.Right - 4;

  if LIsSelected then
    Sender.Canvas.Font.Color := clHighlightText
  else
    Sender.Canvas.Font.Color := clWindowText;
  Sender.Canvas.Font.Name := 'Segoe UI';
  Sender.Canvas.Font.Size := 9;
  Sender.Canvas.Brush.Style := bsClear;
  DrawText(Sender.Canvas.Handle, PChar(LEmojiName), -1, LTextRect,
    DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_END_ELLIPSIS);
  Sender.Canvas.Brush.Style := bsSolid;
end;

procedure TEmojiSelector.btnOKClick(Sender: TObject);
begin
  if FListView.Selected <> nil then
    FSelectedEmojiName := FListView.Selected.SubItems[0];
end;

procedure TEmojiSelector.ListViewDblClick(Sender: TObject);
begin
  if FListView.Selected <> nil then
  begin
    FSelectedEmojiName := FListView.Selected.SubItems[0];
    ModalResult := mrOk;
  end;
end;

end.
