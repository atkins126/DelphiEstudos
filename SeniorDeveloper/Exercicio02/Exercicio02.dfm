object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 175
  ClientWidth = 216
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
    Left = 11
    Top = 14
    Width = 50
    Height = 13
    Caption = 'Numero X:'
  end
  object Label2: TLabel
    Left = 11
    Top = 39
    Width = 51
    Height = 13
    Caption = 'Numero N:'
  end
  object btnCalcularX: TButton
    Left = 64
    Top = 70
    Width = 81
    Height = 25
    Caption = 'Calcular X'#170
    TabOrder = 0
    OnClick = btnCalcularXClick
  end
  object edtX: TEdit
    Left = 63
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtN: TEdit
    Left = 64
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 64
    Top = 126
    Width = 121
    Height = 41
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end
