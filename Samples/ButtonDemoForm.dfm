object frmButtonDemo: TfrmButtonDemo
  Left = 0
  Top = 0
  Caption = 'TEmojiButton Component Demo'
  ClientHeight = 850
  ClientWidth = 900
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
    Width = 900
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = 20
      Top = 12
      Width = 320
      Height = 25
      Caption = 'TEmojiButton Component Demo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlBasic: TPanel
    Left = 10
    Top = 60
    Width = 280
    Height = 180
    BevelOuter = bvLowered
    TabOrder = 1
    object lblBasic: TLabel
      Left = 10
      Top = 8
      Width = 74
      Height = 15
      Caption = 'Basic Buttons'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnOK: TEmojiButton
      Left = 20
      Top = 35
      Width = 120
      Height = 40
      Caption = 'OK'
      EmojiName = 'check mark button'
      EmojiSize = 24
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TEmojiButton
      Left = 150
      Top = 35
      Width = 120
      Height = 40
      Caption = 'Cancel'
      EmojiName = 'cross mark'
      EmojiSize = 24
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnSave: TEmojiButton
      Left = 20
      Top = 85
      Width = 250
      Height = 45
      Caption = 'Save Document'
      EmojiName = 'floppy disk'
      EmojiSize = 28
      TabOrder = 2
      OnClick = btnSaveClick
    end
  end
  object pnlPositions: TPanel
    Left = 300
    Top = 60
    Width = 290
    Height = 180
    BevelOuter = bvNone
    TabOrder = 2
    object lblPositions: TLabel
      Left = 10
      Top = 8
      Width = 86
      Height = 15
      Caption = 'Emoji Positions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLeft: TEmojiButton
      Left = 10
      Top = 30
      Width = 130
      Height = 35
      Caption = 'Left (default)'
      EmojiName = 'star'
      EmojiPosition = epLeft
      EmojiSize = 20
      TabOrder = 0
    end
    object btnRight: TEmojiButton
      Left = 150
      Top = 30
      Width = 130
      Height = 35
      Caption = 'Right'
      EmojiName = 'star'
      EmojiPosition = epRight
      EmojiSize = 20
      TabOrder = 1
    end
    object btnTop: TEmojiButton
      Left = 10
      Top = 75
      Width = 130
      Height = 95
      Caption = 'Top'
      EmojiName = 'rocket'
      EmojiPosition = epTop
      EmojiSize = 32
      TabOrder = 2
    end
    object btnBottom: TEmojiButton
      Left = 150
      Top = 75
      Width = 130
      Height = 95
      Caption = 'Bottom'
      EmojiName = 'rocket'
      EmojiPosition = epBottom
      EmojiSize = 32
      TabOrder = 3
    end
  end
  object pnlShapes: TPanel
    Left = 600
    Top = 60
    Width = 290
    Height = 180
    BevelOuter = bvLowered
    TabOrder = 3
    object lblShapes: TLabel
      Left = 10
      Top = 8
      Width = 78
      Height = 15
      Caption = 'Button Shapes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRect: TEmojiButton
      Left = 10
      Top = 35
      Width = 130
      Height = 40
      Caption = 'Rectangle'
      EmojiName = 'stop button'
      Shape = bsRect
      BorderRadius = 0
      EmojiSize = 20
      TabOrder = 0
    end
    object btnRound: TEmojiButton
      Left = 150
      Top = 35
      Width = 130
      Height = 40
      Caption = 'Rounded'
      EmojiName = 'play button'
      Shape = bsRoundRect
      BorderRadius = 12
      EmojiSize = 20
      TabOrder = 1
    end
    object btnCircle: TEmojiButton
      Left = 80
      Top = 90
      Width = 80
      Height = 80
      EmojiName = 'plus'
      Shape = bsCircle
      EmojiSize = 40
      TabOrder = 2
    end
  end
  object pnlColors: TPanel
    Left = 10
    Top = 250
    Width = 280
    Height = 180
    BevelOuter = bvLowered
    TabOrder = 4
    object lblColors: TLabel
      Left = 10
      Top = 8
      Width = 100
      Height = 15
      Caption = 'Bootstrap Styles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnGreen: TEmojiButton
      Left = 20
      Top = 35
      Width = 240
      Height = 40
      Caption = 'Confirm'
      ButtonStyle = ebsSuccess
      EmojiName = 'check mark'
      EmojiSize = 24
      TabOrder = 0
    end
    object btnRed: TEmojiButton
      Left = 20
      Top = 85
      Width = 240
      Height = 40
      Caption = 'Delete'
      ButtonStyle = ebsDanger
      EmojiName = 'wastebasket'
      EmojiSize = 24
      TabOrder = 1
    end
    object btnBlue: TEmojiButton
      Left = 20
      Top = 135
      Width = 240
      Height = 40
      Caption = 'Download'
      ButtonStyle = ebsPrimary
      EmojiName = 'down arrow'
      EmojiSize = 24
      TabOrder = 2
    end
  end
  object pnlStates: TPanel
    Left = 300
    Top = 250
    Width = 290
    Height = 180
    BevelOuter = bvLowered
    TabOrder = 5
    object lblStates: TLabel
      Left = 10
      Top = 8
      Width = 71
      Height = 15
      Caption = 'Emoji States'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblStatesHint: TLabel
      Left = 10
      Top = 150
      Width = 270
      Height = 30
      AutoSize = False
      Caption = 'Hover and click to see different emoji states'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object btnHover: TEmojiButton
      Left = 10
      Top = 35
      Width = 130
      Height = 50
      Caption = 'Hover me'
      EmojiName = 'slightly smiling face'
      HoverEmojiName = 'grinning face'
      EmojiSize = 28
      TabOrder = 0
    end
    object btnPressed: TEmojiButton
      Left = 150
      Top = 35
      Width = 130
      Height = 50
      Caption = 'Press me'
      EmojiName = 'waving hand'
      HoverEmojiName = 'raised hand'
      PressedEmojiName = 'clapping hands'
      EmojiSize = 28
      TabOrder = 1
    end
    object btnDisabled: TEmojiButton
      Left = 10
      Top = 95
      Width = 270
      Height = 45
      Enabled = False
      Caption = 'Disabled Button'
      EmojiName = 'prohibited'
      DisabledEmojiName = 'sleeping face'
      EmojiSize = 24
      TabOrder = 2
    end
  end
  object pnlShadow: TPanel
    Left = 600
    Top = 250
    Width = 290
    Height = 180
    BevelOuter = bvLowered
    TabOrder = 6
    object lblShadow: TLabel
      Left = 10
      Top = 8
      Width = 46
      Height = 15
      Caption = 'Shadow'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnShadow: TEmojiButton
      Left = 20
      Top = 40
      Width = 250
      Height = 50
      Caption = 'With Shadow'
      Shadow = True
      ShadowOffsetX = 3
      ShadowOffsetY = 3
      EmojiName = 'sun'
      EmojiSize = 28
      TabOrder = 0
    end
    object btnNoShadow: TEmojiButton
      Left = 20
      Top = 110
      Width = 250
      Height = 50
      Caption = 'Without Shadow'
      EmojiName = 'cloud'
      EmojiSize = 28
      TabOrder = 1
    end
  end
  object pnlAllStyles: TPanel
    Left = 10
    Top = 440
    Width = 880
    Height = 200
    BevelOuter = bvLowered
    TabOrder = 7
    object lblAllStyles: TLabel
      Left = 10
      Top = 8
      Width = 138
      Height = 15
      Caption = 'All Bootstrap-like Styles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnStyleVCL: TEmojiButton
      Left = 10
      Top = 35
      Width = 130
      Height = 35
      Caption = 'VCL Style'
      ButtonStyle = ebsVCLStyle
      EmojiName = 'desktop computer'
      EmojiSize = 20
      TabOrder = 0
    end
    object btnStylePrimary: TEmojiButton
      Left = 150
      Top = 35
      Width = 130
      Height = 35
      Caption = 'Primary'
      ButtonStyle = ebsPrimary
      EmojiName = 'blue circle'
      EmojiSize = 20
      TabOrder = 1
    end
    object btnStyleSecondary: TEmojiButton
      Left = 290
      Top = 35
      Width = 130
      Height = 35
      Caption = 'Secondary'
      ButtonStyle = ebsSecondary
      EmojiName = 'white circle'
      EmojiSize = 20
      TabOrder = 2
    end
    object btnStyleSuccess: TEmojiButton
      Left = 430
      Top = 35
      Width = 130
      Height = 35
      Caption = 'Success'
      ButtonStyle = ebsSuccess
      EmojiName = 'check mark button'
      EmojiSize = 20
      TabOrder = 3
    end
    object btnStyleDanger: TEmojiButton
      Left = 570
      Top = 35
      Width = 130
      Height = 35
      Caption = 'Danger'
      ButtonStyle = ebsDanger
      EmojiName = 'cross mark'
      EmojiSize = 20
      TabOrder = 4
    end
    object btnStyleWarning: TEmojiButton
      Left = 710
      Top = 35
      Width = 130
      Height = 35
      Caption = 'Warning'
      ButtonStyle = ebsWarning
      EmojiName = 'warning'
      EmojiSize = 20
      TabOrder = 5
    end
    object btnStyleInfo: TEmojiButton
      Left = 10
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Info'
      ButtonStyle = ebsInfo
      EmojiName = 'information'
      EmojiSize = 20
      TabOrder = 6
    end
    object btnStyleLight: TEmojiButton
      Left = 150
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Light'
      ButtonStyle = ebsLight
      EmojiName = 'sun'
      EmojiSize = 20
      TabOrder = 7
    end
    object btnStyleDark: TEmojiButton
      Left = 290
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Dark'
      ButtonStyle = ebsDark
      EmojiName = 'new moon'
      EmojiSize = 20
      TabOrder = 8
    end
    object btnStyleCustom: TEmojiButton
      Left = 430
      Top = 80
      Width = 270
      Height = 35
      Caption = 'Custom (Purple)'
      ButtonStyle = ebsCustom
      Colors.Color = 10040268
      Colors.HoverColor = 13395558
      Colors.PressedColor = 6684774
      Colors.FontColor = clWhite
      Colors.FontHoverColor = clWhite
      Colors.FontPressedColor = clWhite
      Colors.BorderColor = 10040268
      Colors.BorderHoverColor = 13395558
      Colors.BorderPressedColor = 6684774
      EmojiName = 'purple heart'
      EmojiSize = 20
      TabOrder = 9
    end
    object lblStylesHint: TLabel
      Left = 10
      Top = 130
      Width = 850
      Height = 60
      AutoSize = False
      Caption =
        'ButtonStyle property lets you choose predefined color schemes. U' +
        'se ebsVCLStyle to follow the active VCL theme, or choose a Boots' +
        'trap-like style (Primary, Success, Danger, etc.). For full custo' +
        'mization, set ButtonStyle = ebsCustom and configure the Colors p' +
        'roperty.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object pnlNewStyles: TPanel
    Left = 10
    Top = 650
    Width = 880
    Height = 190
    BevelOuter = bvLowered
    TabOrder = 8
    object lblNewStyles: TLabel
      Left = 10
      Top = 8
      Width = 305
      Height = 15
      Caption = 'New Styles: Pastel, Accessibility, Material, GitHub'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnPastelRose: TEmojiButton
      Left = 10
      Top = 35
      Width = 100
      Height = 35
      Caption = 'Rose'
      ButtonStyle = ebsPastelRose
      EmojiName = 'cherry blossom'
      EmojiSize = 18
      TabOrder = 0
    end
    object btnPastelSky: TEmojiButton
      Left = 115
      Top = 35
      Width = 100
      Height = 35
      Caption = 'Sky'
      ButtonStyle = ebsPastelSky
      EmojiName = 'cloud'
      EmojiSize = 18
      TabOrder = 1
    end
    object btnPastelMint: TEmojiButton
      Left = 220
      Top = 35
      Width = 100
      Height = 35
      Caption = 'Mint'
      ButtonStyle = ebsPastelMint
      EmojiName = 'four leaf clover'
      EmojiSize = 18
      TabOrder = 2
    end
    object btnHCLight: TEmojiButton
      Left = 325
      Top = 35
      Width = 130
      Height = 35
      Caption = 'HC Light'
      ButtonStyle = ebsHighContrastLight
      EmojiName = 'eyes'
      EmojiSize = 18
      TabOrder = 3
    end
    object btnHCDark: TEmojiButton
      Left = 460
      Top = 35
      Width = 130
      Height = 35
      Caption = 'HC Dark'
      ButtonStyle = ebsHighContrastDark
      EmojiName = 'eyes'
      EmojiSize = 18
      TabOrder = 4
    end
    object btnAccessBlue: TEmojiButton
      Left = 10
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Access Blue'
      ButtonStyle = ebsAccessibleBlue
      EmojiName = 'accessibility symbol'
      EmojiSize = 18
      TabOrder = 5
    end
    object btnAccessOrange: TEmojiButton
      Left = 145
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Access Orange'
      ButtonStyle = ebsAccessibleOrange
      EmojiName = 'accessibility symbol'
      EmojiSize = 18
      TabOrder = 6
    end
    object btnMaterialBlue: TEmojiButton
      Left = 280
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Material'
      ButtonStyle = ebsMaterialBlue
      EmojiName = 'mobile phone'
      EmojiSize = 18
      TabOrder = 7
    end
    object btnGitHub: TEmojiButton
      Left = 415
      Top = 80
      Width = 130
      Height = 35
      Caption = 'GitHub'
      ButtonStyle = ebsGitHub
      EmojiName = 'octopus'
      EmojiSize = 18
      TabOrder = 8
    end
    object btnOutline: TEmojiButton
      Left = 550
      Top = 80
      Width = 130
      Height = 35
      Caption = 'Outline'
      ButtonStyle = ebsOutline
      EmojiName = 'sparkles'
      EmojiSize = 18
      TabOrder = 9
    end
    object lblNewStylesHint: TLabel
      Left = 10
      Top = 130
      Width = 850
      Height = 50
      AutoSize = False
      Caption =
        'New styles include: Pastel (soft colors), High Contrast (accessi' +
        'bility), Accessible (colorblind-friendly), Material Design (Goog' +
        'le), GitHub, and Outline (ghost button).'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
end
