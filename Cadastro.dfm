object CadastroCliente: TCadastroCliente
  Left = 500
  Top = 120
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigoCliente: TLabel
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
  object lblNome: TLabel
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
  object lblEndereco: TLabel
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
  object lblBairro: TLabel
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
  object lblCidade: TLabel
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
  object lblTelefone: TLabel
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
  object lblEmail: TLabel
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
  object ovbNovo: TButton
    Left = 80
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = ovbNovoClick
  end
  object ovbGravar: TButton
    Left = 168
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 8
    OnClick = ovbGravarClick
  end
  object ovbExcluir: TButton
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = ovbExcluirClick
  end
  object ovbFechar: TButton
    Left = 344
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = ovbFecharClick
  end
  object ovt_Codigo_Cliente: TEdit
    Left = 80
    Top = 88
    Width = 121
    Height = 21
    MaxLength = 3
    TabOrder = 1
    OnKeyPress = ovt_Codigo_ClienteKeyPress
  end
  object ovtNome: TEdit
    Left = 80
    Top = 152
    Width = 409
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
    OnKeyPress = ovtNomeKeyPress
  end
  object ovtEndereco: TEdit
    Left = 80
    Top = 224
    Width = 409
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 3
    OnKeyPress = ovtNomeKeyPress
  end
  object ovtBairro: TEdit
    Left = 80
    Top = 288
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 4
    OnKeyPress = ovtNomeKeyPress
  end
  object ovtCidade: TEdit
    Left = 224
    Top = 288
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 5
    OnKeyPress = ovtNomeKeyPress
  end
  object ovtEmail: TEdit
    Left = 80
    Top = 344
    Width = 409
    Height = 21
    MaxLength = 50
    TabOrder = 7
    OnKeyPress = ovtEmailKeyPress
  end
  object ovtTelefone: TMaskEdit
    Left = 368
    Top = 288
    Width = 107
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '(  )     -    '
    OnKeyPress = ovtTelefoneKeyPress
  end
end
