object Form14: TForm14
  Left = 0
  Top = 0
  Caption = 'TEmojiButton Styles Demo'
  ClientHeight = 520
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15

  object lblTitle: TLabel
    Left = 20
    Top = 12
    Width = 810
    Height = 25
    Caption = 'TEmojiButton - Bootstrap-like Styles Demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end

  object lblRow1: TLabel
    Left = 20
    Top = 50
    Width = 810
    Height = 15
    Caption = 'Row 1: VCL Style (default) vs Standard TButton'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnStandard: TButton
    Left = 20
    Top = 70
    Width = 150
    Height = 45
    Caption = 'TButton'
    TabOrder = 0
  end
  object btnVCLStyle: TEmojiButton
    Left = 180
    Top = 70
    Width = 180
    Height = 45
    Caption = 'VCL Style (default)'
    TabOrder = 1
  end

  object lblRow2: TLabel
    Left = 20
    Top = 130
    Width = 810
    Height = 15
    Caption = 'Row 2: Primary, Secondary, Success, Danger'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPrimary: TEmojiButton
    Left = 20
    Top = 150
    Width = 150
    Height = 50
    Caption = 'Primary'
    EmojiName = 'check mark'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsPrimary
    TabOrder = 2
  end
  object btnSecondary: TEmojiButton
    Left = 180
    Top = 150
    Width = 150
    Height = 50
    Caption = 'Secondary'
    EmojiName = 'gear'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsSecondary
    TabOrder = 3
  end
  object btnSuccess: TEmojiButton
    Left = 340
    Top = 150
    Width = 150
    Height = 50
    Caption = 'Success'
    EmojiName = 'thumbs up'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsSuccess
    TabOrder = 4
  end
  object btnDanger: TEmojiButton
    Left = 500
    Top = 150
    Width = 150
    Height = 50
    Caption = 'Danger'
    EmojiName = 'warning'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsDanger
    TabOrder = 5
  end

  object lblRow3: TLabel
    Left = 20
    Top = 215
    Width = 810
    Height = 15
    Caption = 'Row 3: Warning, Info, Light, Dark'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnWarning: TEmojiButton
    Left = 20
    Top = 235
    Width = 150
    Height = 50
    Caption = 'Warning'
    EmojiName = 'bell'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsWarning
    TabOrder = 6
  end
  object btnInfo: TEmojiButton
    Left = 180
    Top = 235
    Width = 150
    Height = 50
    Caption = 'Info'
    EmojiName = 'information'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsInfo
    TabOrder = 7
  end
  object btnLight: TEmojiButton
    Left = 340
    Top = 235
    Width = 150
    Height = 50
    Caption = 'Light'
    EmojiName = 'sun'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsLight
    TabOrder = 8
  end
  object btnDark: TEmojiButton
    Left = 500
    Top = 235
    Width = 150
    Height = 50
    Caption = 'Dark'
    EmojiName = 'new moon'
    EmojiSize = 24
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsDark
    TabOrder = 9
  end

  object lblRow4: TLabel
    Left = 20
    Top = 300
    Width = 810
    Height = 15
    Caption = 'Row 4: Custom Style (Colors can be edited in Object Inspector)'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCustom1: TEmojiButton
    Left = 20
    Top = 320
    Width = 180
    Height = 55
    Caption = 'Custom Purple'
    EmojiName = 'sparkles'
    EmojiSize = 28
    EmojiPosition = epLeft
    Spacing = 10
    BorderRadius = 20
    ButtonStyle = ebsCustom
    Colors.Color = 10040268
    Colors.HoverColor = 13395660
    Colors.PressedColor = 6693980
    Colors.FocusColor = 10040268
    Colors.BorderColor = 10040268
    Colors.BorderHoverColor = 13395660
    Colors.BorderPressedColor = 6693980
    Colors.FontColor = clWhite
    Colors.FontHoverColor = clWhite
    Colors.FontPressedColor = clWhite
    TabOrder = 10
  end
  object btnCustom2: TEmojiButton
    Left = 210
    Top = 320
    Width = 180
    Height = 55
    Caption = 'Custom Teal'
    EmojiName = 'ocean'
    HoverEmojiName = 'water wave'
    EmojiSize = 28
    EmojiPosition = epLeft
    Spacing = 10
    ButtonStyle = ebsCustom
    Colors.Color = 8421376
    Colors.HoverColor = 11184640
    Colors.PressedColor = 5592405
    Colors.FocusColor = 8421376
    Colors.BorderColor = 8421376
    Colors.BorderHoverColor = 11184640
    Colors.BorderPressedColor = 5592405
    Colors.FontColor = clWhite
    Colors.FontHoverColor = clWhite
    Colors.FontPressedColor = clWhite
    TabOrder = 11
  end

  object lblRow5: TLabel
    Left = 20
    Top = 390
    Width = 810
    Height = 15
    Caption = 'Row 5: Disabled buttons (various styles)'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnDisabledVCL: TEmojiButton
    Left = 20
    Top = 410
    Width = 150
    Height = 45
    Caption = 'Disabled VCL'
    Enabled = False
    EmojiName = 'lock'
    EmojiSize = 22
    EmojiPosition = epLeft
    Spacing = 8
    TabOrder = 12
  end
  object btnDisabledPrimary: TEmojiButton
    Left = 180
    Top = 410
    Width = 150
    Height = 45
    Caption = 'Disabled Primary'
    Enabled = False
    EmojiName = 'lock'
    EmojiSize = 22
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsPrimary
    TabOrder = 13
  end
  object btnDisabledDanger: TEmojiButton
    Left = 340
    Top = 410
    Width = 150
    Height = 45
    Caption = 'Disabled Danger'
    Enabled = False
    EmojiName = 'lock'
    EmojiSize = 22
    EmojiPosition = epLeft
    Spacing = 8
    ButtonStyle = ebsDanger
    TabOrder = 14
  end

  object lblStyleInfo: TLabel
    Left = 20
    Top = 475
    Width = 810
    Height = 30
    Caption = 'ButtonStyle property: ebsVCLStyle (uses active VCL theme), ebsPrimary, ebsSecondary, ebsSuccess, ebsDanger, ebsWarning, ebsInfo, ebsLight, ebsDark, ebsCustom'
    Font.Color = clGray
    ParentFont = False
    WordWrap = True
  end
end
