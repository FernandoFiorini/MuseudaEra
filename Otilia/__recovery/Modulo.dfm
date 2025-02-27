object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 471
  Width = 853
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\User\Desktop\Projeto final - Museu FINAL\Projeto final ' +
      '- Museu2\Otilia\Win32\Debug\dll'
    Left = 32
    Top = 16
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=nene7852'
      'DriverID=PG')
    LoginPrompt = False
    Left = 120
    Top = 16
  end
  object FDQUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT COUNT(*) FROM tb_usuario')
    Left = 224
    Top = 16
    object FDQUsuariocount: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'count'
      Origin = 'count'
      ReadOnly = True
    end
  end
  object DSUsuario: TDataSource
    DataSet = FDQUsuario
    Left = 296
    Top = 16
  end
  object FDQCadastro: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_usuario')
    Left = 392
    Top = 16
    object FDQCadastrotx_email: TWideStringField
      FieldName = 'tx_email'
      Origin = 'tx_email'
      Size = 100
    end
    object FDQCadastrotx_login: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tx_login'
      Origin = 'tx_login'
      Size = 30
    end
    object FDQCadastrotx_senha: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tx_senha'
      Origin = 'tx_senha'
      Size = 30
    end
    object FDQCadastrofl_superuser: TBooleanField
      FieldName = 'fl_superuser'
      Origin = 'fl_superuser'
    end
  end
  object DSCadastro: TDataSource
    DataSet = FDQCadastro
    Left = 464
    Top = 16
  end
  object FDQSuperUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select count(*) from tb_usuario')
    Left = 568
    Top = 16
    object FDQSuperUsuariocount: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'count'
      Origin = 'count'
      ReadOnly = True
    end
  end
  object DSSuperUsuario: TDataSource
    DataSet = FDQSuperUsuario
    Left = 656
    Top = 16
  end
  object FDQObjeto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto')
    Left = 40
    Top = 128
    object FDQObjetoid_objeto: TIntegerField
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQObjetotx_nomeobj: TWideStringField
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object FDQObjetoid_instituicao: TIntegerField
      FieldName = 'id_instituicao'
      Origin = 'id_instituicao'
    end
    object FDQObjetoid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Origin = 'id_categoria'
    end
    object FDQObjetoid_colecao: TIntegerField
      FieldName = 'id_colecao'
      Origin = 'id_colecao'
    end
    object FDQObjetoid_manutencao: TIntegerField
      FieldName = 'id_manutencao'
      Origin = 'id_manutencao'
    end
    object FDQObjetobl_midia: TBlobField
      FieldName = 'bl_midia'
      Origin = 'bl_midia'
    end
    object FDQObjetoid_status: TIntegerField
      FieldName = 'id_status'
      Origin = 'id_status'
    end
    object FDQObjetoid_modelo: TIntegerField
      FieldName = 'id_modelo'
      Origin = 'id_modelo'
    end
  end
  object DSObjeto: TDataSource
    DataSet = FDQObjeto
    Left = 104
    Top = 128
  end
  object FDQInstituicao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_instituicao')
    Left = 40
    Top = 192
    object FDQInstituicaoid_instituicao: TIntegerField
      FieldName = 'id_instituicao'
      Origin = 'id_instituicao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQInstituicaotx_nomeinst: TWideStringField
      FieldName = 'tx_nomeinst'
      Origin = 'tx_nomeinst'
      Size = 50
    end
    object FDQInstituicaotx_cnpj: TWideStringField
      FieldName = 'tx_cnpj'
      Origin = 'tx_cnpj'
    end
    object FDQInstituicaotx_telefone: TWideStringField
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
      Size = 30
    end
  end
  object FDQColecao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_colecao')
    Left = 40
    Top = 256
    object FDQColecaoid_colecao: TIntegerField
      FieldName = 'id_colecao'
      Origin = 'id_colecao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQColecaotx_nomecol: TWideStringField
      FieldName = 'tx_nomecol'
      Origin = 'tx_nomecol'
      Size = 30
    end
    object FDQColecaodt_colecao: TDateField
      FieldName = 'dt_colecao'
      Origin = 'dt_colecao'
    end
  end
  object DSInstituicao: TDataSource
    DataSet = FDQInstituicao
    Left = 112
    Top = 192
  end
  object DSColecao: TDataSource
    DataSet = FDQColecao
    Left = 104
    Top = 256
  end
  object FDQCategoria: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_categoria')
    Left = 40
    Top = 320
    object FDQCategoriaid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Origin = 'id_categoria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCategoriatx_nomecategoria: TWideStringField
      FieldName = 'tx_nomecategoria'
      Origin = 'tx_nomecategoria'
      Size = 30
    end
  end
  object DSCategoria: TDataSource
    DataSet = FDQCategoria
    Left = 104
    Top = 320
  end
  object FDQManutencao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_manutencao')
    Left = 216
    Top = 128
    object FDQManutencaoid_manutencao: TIntegerField
      FieldName = 'id_manutencao'
      Origin = 'id_manutencao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQManutencaodt_inicio: TDateField
      FieldName = 'dt_inicio'
      Origin = 'dt_inicio'
    end
    object FDQManutencaodt_fim: TDateField
      FieldName = 'dt_fim'
      Origin = 'dt_fim'
    end
  end
  object DSManutencao: TDataSource
    DataSet = FDQManutencao
    Left = 296
    Top = 128
  end
  object FDQStatus: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_status')
    Left = 216
    Top = 192
    object FDQStatusid_status: TIntegerField
      FieldName = 'id_status'
      Origin = 'id_status'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQStatustx_status: TWideStringField
      FieldName = 'tx_status'
      Origin = 'tx_status'
      Size = 30
    end
  end
  object DSStatus: TDataSource
    Left = 296
    Top = 192
  end
  object FDQModelo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_modelo')
    Left = 216
    Top = 264
    object FDQModeloid_modelo: TIntegerField
      FieldName = 'id_modelo'
      Origin = 'id_modelo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQModelotx_modelo: TWideStringField
      FieldName = 'tx_modelo'
      Origin = 'tx_modelo'
      Size = 30
    end
  end
  object DSModelo: TDataSource
    DataSet = FDQModelo
    Left = 296
    Top = 264
  end
  object DSRelatorioFuncionario: TDataSource
    Left = 648
    Top = 136
  end
  object FDRelatorioFuncionario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_pessoa'
      'inner join tb_usuario on id_pessoa = id_usuario'
      'inner join tb_estado on id_cidade = id_estado'
      '')
    Left = 528
    Top = 136
    object FDRelatorioFuncionariotx_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nome'
      Origin = 'tx_nome'
      Size = 100
    end
    object FDRelatorioFuncionarionr_idade: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'nr_idade'
      Origin = 'nr_idade'
    end
    object FDRelatorioFuncionariotx_cargo: TWideStringField
      DisplayLabel = 'Cargo'
      FieldName = 'tx_cargo'
      Origin = 'tx_cargo'
      Size = 50
    end
    object FDRelatorioFuncionariotx_telefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
    end
    object FDRelatorioFuncionariotx_login: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Login'
      FieldName = 'tx_login'
      Origin = 'tx_login'
      Size = 30
    end
    object FDRelatorioFuncionariotx_email: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FlagSuperUser'
      FieldName = 'tx_email'
      Origin = 'tx_email'
      Size = 100
    end
    object FDRelatorioFuncionariofl_superuser: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fl_superuser'
      Origin = 'fl_superuser'
    end
    object FDRelatorioFuncionariotx_estado: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tx_estado'
      Origin = 'tx_estado'
      Size = 30
    end
    object FDRelatorioFuncionariotx_sigla: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Silgla do estado'
      FieldName = 'tx_sigla'
      Origin = 'tx_sigla'
      Size = 2
    end
  end
  object FDRelatorioObjeto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto')
    Left = 528
    Top = 248
  end
  object DSRelatorioObjeto: TDataSource
    Left = 632
    Top = 248
  end
end
