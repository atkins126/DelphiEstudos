object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 180
  ClientWidth = 605
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
    Top = 8
    Width = 631
    Height = 48
    Caption = 
      'Dados dois n'#250'meros naturais m e n e duas seq'#252#234'ncias ordenadas co' +
      'm m e n n'#250'meros inteiros, obter uma '#250'nica seq'#252#234'ncia ordenada con' +
      'tendo todos os elementos das seq'#252#234'ncias originais sem repeti'#231#227'o.' +
      ' Sugest'#227'o: Imagine uma situa'#231#227'o real, por exemplo, dois fich'#225'rio' +
      's de uma biblioteca.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '6'
  end
  object Button1: TButton
    Left = 262
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '7'
  end
  object Edit3: TEdit
    Left = 135
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '3,7,9,10,18,19'
  end
  object Edit4: TEdit
    Left = 135
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '1,2,7,11,18,22,36'
  end
  object Edit5: TEdit
    Left = 8
    Top = 144
    Width = 329
    Height = 21
    TabOrder = 5
  end
end
