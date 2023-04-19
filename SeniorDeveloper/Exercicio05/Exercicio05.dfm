object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 262
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 39
    Height = 13
    Caption = 'Valor 01'
  end
  object Label2: TLabel
    Left = 120
    Top = 13
    Width = 39
    Height = 13
    Caption = 'Valor 02'
  end
  object Label3: TLabel
    Left = 84
    Top = 101
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 60
    Top = 59
    Width = 99
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 128
    Width = 220
    Height = 89
    TabOrder = 3
  end
end
