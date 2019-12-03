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
    Connected = True
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
      DisplayLabel = 'Id'
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQObjetotx_nomeobj: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object FDQObjetoid_manutencao: TIntegerField
      FieldName = 'id_manutencao'
      Origin = 'id_manutencao'
    end
    object FDQObjetobl_midia: TBlobField
      FieldName = 'bl_midia'
      Origin = 'bl_midia'
    end
    object FDQObjetoid_inst: TIntegerField
      FieldName = 'id_inst'
      Origin = 'id_inst'
    end
    object FDQObjetoid_cat: TIntegerField
      FieldName = 'id_cat'
      Origin = 'id_cat'
    end
    object FDQObjetoid_col: TIntegerField
      FieldName = 'id_col'
      Origin = 'id_col'
    end
    object FDQObjetoid_stats: TIntegerField
      FieldName = 'id_stats'
      Origin = 'id_stats'
    end
    object FDQObjetoid_mod: TIntegerField
      FieldName = 'id_mod'
      Origin = 'id_mod'
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
  object FDQListarComputacao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto '
      'inner join tb_instituicao on id_inst = id_instituicao'
      'inner join tb_categoria on id_cat = id_categoria'
      'inner join tb_status on id_stats = id_status'
      'inner join tb_modelo on id_mod = id_modelo'
      'where id_categoria = 1')
    Left = 664
    Top = 344
    object FDQListarComputacaoid_objeto: TIntegerField
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'Id'
    end
    object FDQListarComputacaotx_nomeobj: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object FDQListarComputacaotx_nomeinst: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da institui'#231#227'o'
      FieldName = 'tx_nomeinst'
      Origin = 'tx_nomeinst'
      Size = 50
    end
    object FDQListarComputacaotx_cnpj: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ da institui'#231#227'o'
      FieldName = 'tx_cnpj'
      Origin = 'tx_cnpj'
    end
    object FDQListarComputacaotx_telefone: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone da institui'#231#227'o'
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
      Size = 30
    end
    object FDQListarComputacaotx_nomecategoria: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria do objeto'
      FieldName = 'tx_nomecategoria'
      Origin = 'tx_nomecategoria'
      Size = 30
    end
    object FDQListarComputacaotx_status: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status do objeto'
      FieldName = 'tx_status'
      Origin = 'tx_status'
      Size = 30
    end
    object FDQListarComputacaotx_modelo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modelo do objeto'
      FieldName = 'tx_modelo'
      Origin = 'tx_modelo'
      Size = 30
    end
  end
  object DSListagemComputacao: TDataSource
    DataSet = FDQListarComputacao
    Left = 784
    Top = 344
  end
  object FDQListarGames: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto '
      'inner join tb_instituicao on id_inst = id_instituicao'
      'inner join tb_categoria on id_cat = id_categoria'
      'inner join tb_status on id_stats = id_status'
      'inner join tb_modelo on id_mod = id_modelo'
      'where id_categoria = 4')
    Left = 472
    Top = 376
    object IntegerField1: TIntegerField
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'Id'
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object WideStringField2: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da institui'#231#227'o'
      FieldName = 'tx_nomeinst'
      Origin = 'tx_nomeinst'
      Size = 50
    end
    object WideStringField3: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ da institui'#231#227'o'
      FieldName = 'tx_cnpj'
      Origin = 'tx_cnpj'
    end
    object WideStringField4: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone da institui'#231#227'o'
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
      Size = 30
    end
    object WideStringField5: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria do objeto'
      FieldName = 'tx_nomecategoria'
      Origin = 'tx_nomecategoria'
      Size = 30
    end
    object WideStringField6: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status do objeto'
      FieldName = 'tx_status'
      Origin = 'tx_status'
      Size = 30
    end
    object WideStringField7: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modelo do objeto'
      FieldName = 'tx_modelo'
      Origin = 'tx_modelo'
      Size = 30
    end
  end
  object FDQListarAudioVideo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto '
      'inner join tb_instituicao on id_inst = id_instituicao'
      'inner join tb_categoria on id_cat = id_categoria'
      'inner join tb_status on id_stats = id_status'
      'inner join tb_modelo on id_mod = id_modelo'
      'where id_categoria = 3')
    Left = 280
    Top = 400
    object IntegerField2: TIntegerField
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'Id'
    end
    object WideStringField8: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object WideStringField9: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da institui'#231#227'o'
      FieldName = 'tx_nomeinst'
      Origin = 'tx_nomeinst'
      Size = 50
    end
    object WideStringField10: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ da institui'#231#227'o'
      FieldName = 'tx_cnpj'
      Origin = 'tx_cnpj'
    end
    object WideStringField11: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone da institui'#231#227'o'
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
      Size = 30
    end
    object WideStringField12: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria do objeto'
      FieldName = 'tx_nomecategoria'
      Origin = 'tx_nomecategoria'
      Size = 30
    end
    object WideStringField13: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status do objeto'
      FieldName = 'tx_status'
      Origin = 'tx_status'
      Size = 30
    end
    object WideStringField14: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modelo do objeto'
      FieldName = 'tx_modelo'
      Origin = 'tx_modelo'
      Size = 30
    end
  end
  object DSListarGames: TDataSource
    DataSet = FDQListarGames
    Left = 544
    Top = 376
  end
  object DSListarAudioVideo: TDataSource
    DataSet = FDQListarAudioVideo
    Left = 376
    Top = 400
  end
  object FDQListarTelefonia: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_objeto '
      'inner join tb_instituicao on id_inst = id_instituicao'
      'inner join tb_categoria on id_cat = id_categoria'
      'inner join tb_status on id_stats = id_status'
      'inner join tb_modelo on id_mod = id_modelo'
      'where id_categoria = 2')
    Left = 48
    Top = 400
    object IntegerField3: TIntegerField
      FieldName = 'id_objeto'
      Origin = 'id_objeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'Id'
    end
    object WideStringField15: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'tx_nomeobj'
      Origin = 'tx_nomeobj'
      Size = 50
    end
    object WideStringField16: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da institui'#231#227'o'
      FieldName = 'tx_nomeinst'
      Origin = 'tx_nomeinst'
      Size = 50
    end
    object WideStringField17: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ da institui'#231#227'o'
      FieldName = 'tx_cnpj'
      Origin = 'tx_cnpj'
    end
    object WideStringField18: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone da institui'#231#227'o'
      FieldName = 'tx_telefone'
      Origin = 'tx_telefone'
      Size = 30
    end
    object WideStringField19: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria do objeto'
      FieldName = 'tx_nomecategoria'
      Origin = 'tx_nomecategoria'
      Size = 30
    end
    object WideStringField20: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status do objeto'
      FieldName = 'tx_status'
      Origin = 'tx_status'
      Size = 30
    end
    object WideStringField21: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modelo do objeto'
      FieldName = 'tx_modelo'
      Origin = 'tx_modelo'
      Size = 30
    end
  end
  object DSListarTelefonia: TDataSource
    DataSet = FDQListarTelefonia
    Left = 136
    Top = 400
  end
end
