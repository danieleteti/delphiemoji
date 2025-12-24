object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    624
    441)
  TextHeight = 15
  object PaintBox1: TPaintBox
    Left = 112
    Top = 48
    Width = 313
    Height = 265
    OnPaint = PaintBox1Paint
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 352
    Width = 465
    Height = 81
    AutoComplete = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = 2
    ItemHeight = 15
    TabOrder = 1
  end
end
