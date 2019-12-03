unit Modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDConnection1: TFDConnection;
    FDQUsuario: TFDQuery;
    DSUsuario: TDataSource;
    FDQUsuariocount: TLargeintField;
    FDQCadastro: TFDQuery;
    DSCadastro: TDataSource;
    FDQCadastrotx_email: TWideStringField;
    FDQCadastrotx_login: TWideStringField;
    FDQCadastrotx_senha: TWideStringField;
    FDQCadastrofl_superuser: TBooleanField;
    FDQSuperUsuario: TFDQuery;
    DSSuperUsuario: TDataSource;
    FDQObjeto: TFDQuery;
    DSObjeto: TDataSource;
    FDQInstituicao: TFDQuery;
    FDQColecao: TFDQuery;
    DSInstituicao: TDataSource;
    DSColecao: TDataSource;
    FDQCategoria: TFDQuery;
    DSCategoria: TDataSource;
    FDQManutencao: TFDQuery;
    DSManutencao: TDataSource;
    FDQInstituicaoid_instituicao: TIntegerField;
    FDQInstituicaotx_nomeinst: TWideStringField;
    FDQInstituicaotx_cnpj: TWideStringField;
    FDQInstituicaotx_telefone: TWideStringField;
    FDQColecaoid_colecao: TIntegerField;
    FDQColecaotx_nomecol: TWideStringField;
    FDQColecaodt_colecao: TDateField;
    FDQCategoriaid_categoria: TIntegerField;
    FDQCategoriatx_nomecategoria: TWideStringField;
    FDQManutencaoid_manutencao: TIntegerField;
    FDQManutencaodt_inicio: TDateField;
    FDQManutencaodt_fim: TDateField;
    FDQObjetoid_objeto: TIntegerField;
    FDQObjetotx_nomeobj: TWideStringField;
    FDQObjetoid_manutencao: TIntegerField;
    FDQObjetobl_midia: TBlobField;
    FDQStatus: TFDQuery;
    DSStatus: TDataSource;
    FDQStatusid_status: TIntegerField;
    FDQStatustx_status: TWideStringField;
    FDQSuperUsuariocount: TLargeintField;
    FDQModelo: TFDQuery;
    DSModelo: TDataSource;
    FDQModeloid_modelo: TIntegerField;
    FDQModelotx_modelo: TWideStringField;
    DSRelatorioFuncionario: TDataSource;
    FDRelatorioFuncionario: TFDQuery;
    FDRelatorioObjeto: TFDQuery;
    DSRelatorioObjeto: TDataSource;
    FDRelatorioFuncionariotx_nome: TWideStringField;
    FDRelatorioFuncionarionr_idade: TIntegerField;
    FDRelatorioFuncionariotx_cargo: TWideStringField;
    FDRelatorioFuncionariotx_telefone: TWideStringField;
    FDRelatorioFuncionariotx_login: TWideStringField;
    FDRelatorioFuncionariotx_email: TWideStringField;
    FDRelatorioFuncionariofl_superuser: TBooleanField;
    FDRelatorioFuncionariotx_estado: TWideStringField;
    FDRelatorioFuncionariotx_sigla: TWideStringField;
    FDQObjetoid_inst: TIntegerField;
    FDQObjetoid_cat: TIntegerField;
    FDQObjetoid_col: TIntegerField;
    FDQObjetoid_stats: TIntegerField;
    FDQObjetoid_mod: TIntegerField;
    FDQListarComputacao: TFDQuery;
    DSListagemComputacao: TDataSource;
    FDQListarComputacaoid_objeto: TIntegerField;
    FDQListarComputacaotx_nomeobj: TWideStringField;
    FDQListarComputacaotx_nomeinst: TWideStringField;
    FDQListarComputacaotx_cnpj: TWideStringField;
    FDQListarComputacaotx_telefone: TWideStringField;
    FDQListarComputacaotx_nomecategoria: TWideStringField;
    FDQListarComputacaotx_status: TWideStringField;
    FDQListarComputacaotx_modelo: TWideStringField;
    FDQListarGames: TFDQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    FDQListarAudioVideo: TFDQuery;
    IntegerField2: TIntegerField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    DSListarGames: TDataSource;
    DSListarAudioVideo: TDataSource;
    FDQListarTelefonia: TFDQuery;
    IntegerField3: TIntegerField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    DSListarTelefonia: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
