object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Edit1: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 272
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object ProgressBar1: TProgressBar
    Left = 248
    Top = 232
    Width = 150
    Height = 17
    TabOrder = 2
  end
  object Button1: TButton
    Left = 323
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
