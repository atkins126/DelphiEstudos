object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 296
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LbResultado: TLabel
    Left = 136
    Top = 99
    Width = 82
    Height = 22
    Caption = 'Resultado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbInsiraNumero: TLabel
    Left = 62
    Top = 27
    Width = 100
    Height = 15
    Caption = 'Insira um Numero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 22
    Top = 127
    Width = 323
    Height = 161
    TabOrder = 0
  end
  object btnCalcularFator: TButton
    Left = 194
    Top = 48
    Width = 95
    Height = 33
    Caption = 'Calcular Fator'
    TabOrder = 1
    OnClick = btnCalcularFatorClick
  end
  object Edit1: TEdit
    Left = 57
    Top = 48
    Width = 121
    Height = 33
    TabOrder = 2
  end
end
