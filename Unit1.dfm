object Form1: TForm1
  Left = 192
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 498
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 216
    Width = 57
    Height = 22
    Caption = 'Vitesse '
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 368
    Top = 214
    Width = 59
    Height = 22
    Caption = 'Volume'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 481
    Height = 177
    TabOrder = 0
  end
  object Button1: TButton
    Left = 208
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 72
    Top = 32
    Width = 385
    Height = 129
    Lines.Strings = (
      'Set objVoice = CreateObject("SAPI.SpVoice")'
      ' with objvoice'
      '       .Volume = volume'
      '       .Rate = vitesse'
      '   end with'
      'objVoice.Speak strText')
    TabOrder = 2
    Visible = False
  end
  object volume: TTrackBar
    Left = 320
    Top = 192
    Width = 150
    Height = 25
    Max = 100
    ParentShowHint = False
    Position = 100
    ShowHint = False
    TabOrder = 3
  end
  object vitesse: TTrackBar
    Left = 24
    Top = 192
    Width = 150
    Height = 25
    Min = -10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
  end
end
