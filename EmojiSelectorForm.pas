unit EmojiSelectorForm;

interface

uses
  System.SysUtils, System.Classes, System.Types, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, UnicodeEmoji, Vcl.Graphics;

type
  TEmojiSelector = class(TForm)
  private
    FListView: TListView;
    F edtSearch: TEdit;
    FpnlBottom: TPanel;
    FbtnOK: TButton;
    FbtnCancel: TButton;
    FOriginalEmojiNames: TStringList;
    FSelectedEmojiName: string;
    procedure edtSearchChange(Sender: TObject);
    procedure ListViewCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure ListViewDblClick(Sender: TObject);
    procedure SetupControls;
    procedure LoadEmojis;
    procedure FilterEmojis;
  public
    class function SelectEmoji(var AEmojiName: string): Boolean;
  end;

implementation

{$R *.dfm}

{ TEmojiSelector }

class function TEmojiSelector.SelectEmoji(var AEmojiName: string): Boolean;
var
  LForm: TEmojiSelector;
begin
  LForm := TEmojiSelector.Create(nil);
  try
    LForm.FListView.ItemIndex := LForm.FListView.Items.IndexOf(LForm.FListView.FindCaption(0, AEmojiName, False, True, False));
    if LForm.ShowModal = mrOk then
    begin
      AEmojiName := LForm.FSelectedEmojiName;
      Result := True;
    end
    else
      Result := False;
  finally
    LForm.Free;
  end;
end;

procedure TEmojiSelector.FormCreate(Sender: TObject);
begin
  SetupControls;
  FOriginalEmojiNames := TStringList.Create;
  LoadEmojis;
end;

procedure TEmojiSelector.FormDestroy(Sender: TObject);
begin
  FOriginalEmojiNames.Free;
end;

procedure TEmojiSelector.SetupControls;
begin
  Caption := 'Select Emoji';
  ClientWidth := 400;
  ClientHeight := 500;
  Position := poScreenCenter;

  F edtSearch := TEdit.Create(Self);
  F edtSearch.Parent := Self;
  F edtSearch.Align := alTop;
  F edtSearch.OnChange := edtSearchChange;

  FpnlBottom := TPanel.Create(Self);
  FpnlBottom.Parent := Self;
  FpnlBottom.Align := alBottom;
  FpnlBottom.BevelOuter := bvNone;
  FpnlBottom.Height := 40;

  FbtnOK := TButton.Create(FpnlBottom);
  FbtnOK.Parent := FpnlBottom;
  FbtnOK.Caption := 'OK';
  FbtnOK.ModalResult := mrOk;
  FbtnOK.Default := True;
  FbtnOK.Top := 8;
  FbtnOK.Left := ClientWidth - FbtnOK.Width - 10;
  FbtnOK.AnchorToNeighbour(akRight, 8, FpnlBottom);
  FbtnOK.OnClick := btnOKClick;

  FbtnCancel := TButton.Create(FpnlBottom);
  FbtnCancel.Parent := FpnlBottom;
  FbtnCancel.Caption := 'Cancel';
  FbtnCancel.ModalResult := mrCancel;
  FbtnCancel.Cancel := True;
  FbtnCancel.Top := 8;
  FbtnCancel.Left := FbtnOK.Left - FbtnCancel.Width - 8;
  FbtnCancel.AnchorToNeighbour(akRight, 8, FbtnOK);

  FListView := TListView.Create(Self);
  FListView.Parent := Self;
  FListView.Align := alClient;
  FListView.ViewStyle := vsReport;
  FListView.OwnerDraw := True;
  FListView.Columns.Add.Caption := 'Emoji';
  FListView.Columns.Add.Caption := 'Name';
  FListView.Columns[0].Width := 50;
  FListView.Columns[1].Width := 300;
  FListView.OnCustomDrawItem := ListViewCustomDrawItem;
  FListView.OnDblClick := ListViewDblClick;
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
  LItem: TListItem;
begin
  FListView.Items.BeginUpdate;
  try
    FListView.Items.Clear;
    for LName in FOriginalEmojiNames do
    begin
      if (F edtSearch.Text = '') or ContainsText(LName, F edtSearch.Text) then
      begin
        LItem := FListView.Items.Add;
        LItem.Caption := ''; // We draw the emoji in OnCustomDrawItem
        LItem.SubItems.Add(LName);
      end;
    end;
  finally
    FListView.Items.EndUpdate;
  end;
end;

procedure TEmojiSelector.edtSearchChange(Sender: TObject);
begin
  FilterEmojis;
end;

procedure TEmojiSelector.ListViewCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  LEmoji: string;
  LRect: TRect;
begin
  DefaultDraw := False;
  Sender.Canvas.FillRect(Item.DisplayRect(drBounds));

  // Draw Emoji
  LRect := Item.DisplayRect(drBounds);
  LRect.Right := Sender.Columns[0].Width;
  Sender.Canvas.Font.Name := 'Segoe UI Emoji';
  Sender.Canvas.Font.Size := 12;
  LEmoji := FindEmojiByName(Item.SubItems[0]);
  DrawText(Sender.Canvas.Handle, LEmoji, Length(LEmoji), LRect,
    DT_CENTER or DT_VCENTER or DT_SINGLELINE);

  // Draw Name
  LRect := Item.DisplayRect(drBounds);
  LRect.Left := Sender.Columns[0].Width + 4;
  Sender.Canvas.Font.Name := 'Tahoma';
  Sender.Canvas.Font.Size := 8;
  DrawText(Sender.Canvas.Handle, PChar(Item.SubItems[0]), -1, LRect,
    DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_END_ELLIPSIS);
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
