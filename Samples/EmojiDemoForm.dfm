object frmEmojiDemo: TfrmEmojiDemo
  Left = 0
  Top = 0
  Caption = 'EmojiUtils Demo - Professional Emoji Rendering'
  ClientHeight = 700
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 700
    ActivePage = tsBasicDemo
    Align = alClient
    TabOrder = 0
    object tsBasicDemo: TTabSheet
      Caption = 'Basic Demo'
      object pnlBasicDemo: TPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 672
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          992
          672)
        object lblBasicTitle: TLabel
          Left = 16
          Top = 16
          Width = 234
          Height = 19
          Caption = 'Basic Emoji Rendering Demo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEmojiText: TLabel
          Left = 16
          Top = 56
          Width = 54
          Height = 13
          Caption = 'Emoji Text:'
        end
        object lblFontSize: TLabel
          Left = 16
          Top = 88
          Width = 48
          Height = 13
          Caption = 'Font Size:'
        end
        object lblClickToDraw: TLabel
          Left = 16
          Top = 160
          Width = 271
          Height = 13
          Caption = 'Click on the canvas below to draw emoji at that position:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtEmojiText: TEdit
          Left = 96
          Top = 53
          Width = 100
          Height = 21
          TabOrder = 0
          Text = #55357#56320
        end
        object spnFontSize: TSpinEdit
          Left = 96
          Top = 85
          Width = 100
          Height = 22
          MaxValue = 200
          MinValue = 12
          TabOrder = 1
          Value = 72
        end
        object btnDrawSimple: TButton
          Left = 216
          Top = 53
          Width = 100
          Height = 25
          Caption = 'Draw Emoji'
          TabOrder = 2
          OnClick = btnDrawSimpleClick
        end
        object btnRandomEmoji: TButton
          Left = 216
          Top = 84
          Width = 100
          Height = 25
          Caption = 'Random Emoji'
          TabOrder = 3
          OnClick = btnRandomEmojiClick
        end
        object btnClearCanvas: TButton
          Left = 216
          Top = 115
          Width = 100
          Height = 25
          Caption = 'Clear Canvas'
          TabOrder = 4
          OnClick = btnClearCanvasClick
        end
        object pnlCanvas: TPanel
          Left = 16
          Top = 184
          Width = 960
          Height = 472
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          OnMouseDown = pnlCanvasMouseDown
        end
      end
    end
    object tsAdvancedConfig: TTabSheet
      Caption = 'Advanced Config'
      ImageIndex = 1
      object pnlAdvancedConfig: TPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 672
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          992
          672)
        object lblAdvancedTitle: TLabel
          Left = 16
          Top = 16
          Width = 247
          Height = 19
          Caption = 'Advanced Configuration Demo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAdvancedEmoji: TLabel
          Left = 360
          Top = 56
          Width = 54
          Height = 13
          Caption = 'Emoji Text:'
        end
        object lblMeasurement: TLabel
          Left = 360
          Top = 88
          Width = 93
          Height = 13
          Caption = 'Size: Not measured'
        end
        object grpRenderConfig: TGroupBox
          Left = 16
          Top = 48
          Width = 320
          Height = 280
          Caption = ' Rendering Configuration '
          TabOrder = 0
          object lblConfigFontSize: TLabel
            Left = 16
            Top = 24
            Width = 48
            Height = 13
            Caption = 'Font Size:'
          end
          object lblBackgroundColor: TLabel
            Left = 16
            Top = 56
            Width = 88
            Height = 13
            Caption = 'Background Color:'
          end
          object lblTextColor: TLabel
            Left = 16
            Top = 88
            Width = 54
            Height = 13
            Caption = 'Text Color:'
          end
          object lblAntialiasMode: TLabel
            Left = 16
            Top = 120
            Width = 73
            Height = 13
            Caption = 'Antialias Mode:'
          end
          object spnConfigFontSize: TSpinEdit
            Left = 120
            Top = 21
            Width = 100
            Height = 22
            MaxValue = 200
            MinValue = 12
            TabOrder = 0
            Value = 72
          end
          object cmbBackgroundColor: TColorBox
            Left = 120
            Top = 53
            Width = 100
            Height = 22
            DefaultColorColor = clDefault
            Selected = clDefault
            Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeDefault, cbCustomColor, cbPrettyNames]
            TabOrder = 1
          end
          object cmbTextColor: TColorBox
            Left = 120
            Top = 85
            Width = 100
            Height = 22
            Selected = clDefault
            Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeDefault, cbCustomColor, cbPrettyNames]
            TabOrder = 2
          end
          object cmbAntialiasMode: TComboBox
            Left = 120
            Top = 117
            Width = 100
            Height = 21
            Style = csDropDownList
            TabOrder = 3
          end
          object chkEnableColorFont: TCheckBox
            Left = 16
            Top = 152
            Width = 200
            Height = 17
            Caption = 'Enable Color Fonts (for emoji)'
            Checked = True
            State = cbChecked
            TabOrder = 4
          end
          object chkClearTypeEnabled: TCheckBox
            Left = 16
            Top = 175
            Width = 200
            Height = 17
            Caption = 'Enable ClearType'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object btnApplyConfig: TButton
            Left = 16
            Top = 208
            Width = 100
            Height = 25
            Caption = 'Apply Config'
            TabOrder = 6
            OnClick = btnApplyConfigClick
          end
          object btnMeasureEmoji: TButton
            Left = 136
            Top = 208
            Width = 100
            Height = 25
            Caption = 'Measure Emoji'
            TabOrder = 7
            OnClick = btnMeasureEmojiClick
          end
          object btnDrawWithBounds: TButton
            Left = 16
            Top = 239
            Width = 220
            Height = 25
            Caption = 'Draw with Specific Bounds'
            TabOrder = 8
            OnClick = btnDrawWithBoundsClick
          end
        end
        object edtAdvancedEmoji: TEdit
          Left = 440
          Top = 53
          Width = 150
          Height = 21
          TabOrder = 1
          Text = #55357#56649#62239#62635
        end
        object pnlAdvancedCanvas: TPanel
          Left = 360
          Top = 120
          Width = 616
          Height = 536
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
        end
      end
    end
    object tsFontInfo: TTabSheet
      Caption = 'Font Info'
      ImageIndex = 2
      object pnlFontInfo: TPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 672
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          992
          672)
        object lblFontInfoTitle: TLabel
          Left = 16
          Top = 16
          Width = 202
          Height = 19
          Caption = 'System Font Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAvailableFonts: TLabel
          Left = 16
          Top = 56
          Width = 105
          Height = 13
          Caption = 'Available Emoji Fonts:'
        end
        object lblSystemInfo: TLabel
          Left = 16
          Top = 120
          Width = 62
          Height = 13
          Caption = 'System Info:'
        end
        object lblDPIInfo: TLabel
          Left = 16
          Top = 144
          Width = 44
          Height = 13
          Caption = 'DPI Info:'
        end
        object lstAvailableFonts: TListBox
          Left = 16
          Top = 75
          Width = 300
          Height = 150
          ItemHeight = 13
          TabOrder = 0
          OnClick = lstAvailableFontsClick
        end
        object btnRefreshFonts: TButton
          Left = 16
          Top = 231
          Width = 100
          Height = 25
          Caption = 'Refresh Fonts'
          TabOrder = 1
          OnClick = btnRefreshFontsClick
        end
        object memoFontDetails: TMemo
          Left = 360
          Top = 75
          Width = 616
          Height = 581
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object chkEmojiSupported: TCheckBox
          Left = 16
          Top = 168
          Width = 200
          Height = 17
          Caption = 'Emoji Support Available'
          Enabled = False
          TabOrder = 3
        end
      end
    end
    object tsPerformance: TTabSheet
      Caption = 'Performance'
      ImageIndex = 3
      object pnlPerformance: TPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 672
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          992
          672)
        object lblPerformanceTitle: TLabel
          Left = 16
          Top = 16
          Width = 170
          Height = 19
          Caption = 'Performance Testing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPerformanceResult: TLabel
          Left = 16
          Top = 200
          Width = 73
          Height = 13
          Caption = 'No test run yet'
        end
        object grpPerformanceTest: TGroupBox
          Left = 16
          Top = 48
          Width = 320
          Height = 128
          Caption = ' Performance Test Configuration '
          TabOrder = 0
          object lblTestCount: TLabel
            Left = 16
            Top = 24
            Width = 82
            Height = 13
            Caption = 'Number of Emoji:'
          end
          object spnTestCount: TSpinEdit
            Left = 120
            Top = 21
            Width = 100
            Height = 22
            MaxValue = 10000
            MinValue = 1
            TabOrder = 0
            Value = 100
          end
          object btnRunPerformanceTest: TButton
            Left = 16
            Top = 56
            Width = 120
            Height = 25
            Caption = 'Run Performance Test'
            TabOrder = 1
            OnClick = btnRunPerformanceTestClick
          end
          object btnStressTest: TButton
            Left = 160
            Top = 56
            Width = 120
            Height = 25
            Caption = 'Stress Test (1000x)'
            TabOrder = 2
            OnClick = btnStressTestClick
          end
          object chkUseCachedFactory: TCheckBox
            Left = 16
            Top = 96
            Width = 200
            Height = 17
            Caption = 'Use Cached Factory (faster)'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
        end
        object progressPerformance: TProgressBar
          Left = 16
          Top = 224
          Width = 320
          Height = 17
          TabOrder = 1
        end
        object memoPerformanceLog: TMemo
          Left = 360
          Top = 48
          Width = 616
          Height = 608
          Anchors = [akLeft, akTop, akRight, akBottom]
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
    end
  end
end
