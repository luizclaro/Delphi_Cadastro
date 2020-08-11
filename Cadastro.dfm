object Form1: TForm1
  Left = 1914
  Top = 188
  Width = 579
  Height = 480
  Caption = 'Cadstro de Clientes'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 64
    Width = 107
    Height = 16
    Caption = 'Codigo Cliente '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 128
    Width = 42
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 192
    Width = 68
    Height = 16
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 264
    Width = 43
    Height = 16
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 232
    Top = 264
    Width = 51
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 368
    Top = 264
    Width = 63
    Height = 16
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 80
    Top = 320
    Width = 45
    Height = 16
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 72
    Top = 88
    Width = 7
    Height = 16
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 72
    Top = 152
    Width = 7
    Height = 16
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 80
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 8
  end
  object Button3: TButton
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 88
    Width = 121
    Height = 21
    MaxLength = 3
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 80
    Top = 152
    Width = 409
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 80
    Top = 224
    Width = 409
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 80
    Top = 288
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 4
    OnKeyPress = Edit2KeyPress
  end
  object Edit5: TEdit
    Left = 224
    Top = 288
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object Edit7: TEdit
    Left = 80
    Top = 344
    Width = 409
    Height = 21
    MaxLength = 50
    TabOrder = 7
    OnKeyPress = Edit7KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 368
    Top = 288
    Width = 107
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '(  )     -    '
    OnKeyPress = MaskEdit1KeyPress
  end
end
