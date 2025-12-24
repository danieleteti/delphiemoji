object frmComponentDemo: TfrmComponentDemo
  Left = 0
  Top = 0
  Caption = 'TEmojiImage Component Demo'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = 20
      Top = 12
      Width = 310
      Height = 25
      Caption = 'TEmojiImage Component Demo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlControls: TPanel
    Left = 0
    Top = 50
    Width = 800
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblEmojiName: TLabel
      Left = 20
      Top = 20
      Width = 68
      Height = 15
      Caption = 'Emoji Name:'
    end
    object lblPadding: TLabel
      Left = 400
      Top = 20
      Width = 109
      Height = 15
      Caption = 'Padding Percentage:'
    end
    object lblPaddingValue: TLabel
      Left = 680
      Top = 20
      Width = 17
      Height = 15
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtEmojiName: TEdit
      Left = 100
      Top = 17
      Width = 160
      Height = 23
      TabOrder = 0
      Text = 'waving hand'
      OnChange = edtEmojiNameChange
    end
    object btnSelectEmoji: TButton
      Left = 270
      Top = 16
      Width = 100
      Height = 25
      Caption = 'Select Emoji...'
      TabOrder = 1
      OnClick = btnSelectEmojiClick
    end
    object trkPadding: TTrackBar
      Left = 520
      Top = 14
      Width = 150
      Height = 30
      Max = 50
      Frequency = 2
      TabOrder = 2
      OnChange = trkPaddingChange
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 130
    Width = 200
    Height = 200
    BevelOuter = bvLowered
    TabOrder = 2
    object lblMainEmoji: TLabel
      Left = 10
      Top = 8
      Width = 60
      Height = 15
      Caption = 'Main Emoji'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MainEmoji: TEmojiImage
      Left = 25
      Top = 35
      Width = 150
      Height = 150
      EmojiName = 'artist'
    end
  end
  object pnlSizes: TPanel
    Left = 210
    Top = 130
    Width = 290
    Height = 200
    BevelOuter = bvLowered
    TabOrder = 3
    object lblSizes: TLabel
      Left = 10
      Top = 8
      Width = 91
      Height = 15
      Caption = 'Size Comparison'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSmall: TLabel
      Left = 20
      Top = 85
      Width = 29
      Height = 15
      Caption = '32x32'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblMedium: TLabel
      Left = 85
      Top = 115
      Width = 29
      Height = 15
      Caption = '64x64'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblLarge: TLabel
      Left = 175
      Top = 135
      Width = 29
      Height = 15
      Caption = '96x96'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SmallEmoji: TEmojiImage
      Left = 20
      Top = 45
      Width = 32
      Height = 32
      EmojiName = 'artist'
    end
    object MediumEmoji: TEmojiImage
      Left = 75
      Top = 45
      Width = 64
      Height = 64
      EmojiName = 'artist'
    end
    object LargeEmoji: TEmojiImage
      Left = 165
      Top = 35
      Width = 96
      Height = 96
      EmojiName = 'artist'
    end
  end
  object pnlGallery: TPanel
    Left = 0
    Top = 340
    Width = 500
    Height = 250
    BevelOuter = bvLowered
    TabOrder = 4
    object lblGallery: TLabel
      Left = 10
      Top = 8
      Width = 72
      Height = 15
      Caption = 'Emoji Gallery'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Emoji1: TEmojiImage
      Left = 20
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'astronaut'
    end
    object Emoji2: TEmojiImage
      Left = 90
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'cook'
    end
    object Emoji3: TEmojiImage
      Left = 160
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'farmer'
    end
    object Emoji4: TEmojiImage
      Left = 230
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'firefighter'
    end
    object Emoji5: TEmojiImage
      Left = 300
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'judge'
    end
    object Emoji6: TEmojiImage
      Left = 370
      Top = 35
      Width = 60
      Height = 60
      EmojiName = 'mechanic'
    end
    object Emoji7: TEmojiImage
      Left = 20
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'mermaid'
    end
    object Emoji8: TEmojiImage
      Left = 90
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'rocket'
    end
    object Emoji9: TEmojiImage
      Left = 160
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'pizza'
    end
    object Emoji10: TEmojiImage
      Left = 230
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'soccer ball'
    end
    object Emoji11: TEmojiImage
      Left = 300
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'musical note'
    end
    object Emoji12: TEmojiImage
      Left = 370
      Top = 105
      Width = 60
      Height = 60
      EmojiName = 'wrapped gift'
    end
    object btnRandomize: TButton
      Left = 380
      Top = 4
      Width = 110
      Height = 22
      Caption = 'Randomize'
      TabOrder = 0
      OnClick = btnRandomizeClick
    end
  end
  object pnlPaddingDemo: TPanel
    Left = 510
    Top = 130
    Width = 280
    Height = 200
    BevelOuter = bvLowered
    TabOrder = 5
    object lblPaddingDemo: TLabel
      Left = 10
      Top = 8
      Width = 81
      Height = 15
      Caption = 'Padding Demo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPad0: TLabel
      Left = 20
      Top = 115
      Width = 16
      Height = 15
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblPad15: TLabel
      Left = 90
      Top = 115
      Width = 22
      Height = 15
      Caption = '15%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblPad30: TLabel
      Left = 160
      Top = 115
      Width = 22
      Height = 15
      Caption = '30%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object EmojiPad0: TEmojiImage
      Left = 10
      Top = 35
      Width = 70
      Height = 70
      EmojiName = 'partying face'
    end
    object EmojiPad15: TEmojiImage
      Left = 90
      Top = 35
      Width = 70
      Height = 70
      EmojiName = 'partying face'
      PaddingPercentage = 15
    end
    object EmojiPad30: TEmojiImage
      Left = 170
      Top = 35
      Width = 70
      Height = 70
      EmojiName = 'partying face'
      PaddingPercentage = 30
    end
  end
end
