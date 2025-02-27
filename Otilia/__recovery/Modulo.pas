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
    FDQObjetoid_instituicao: TIntegerField;
    FDQObjetoid_categoria: TIntegerField;
    FDQObjetoid_colecao: TIntegerField;
    FDQObjetoid_manutencao: TIntegerField;
    FDQObjetobl_midia: TBlobField;
    FDQObjetoid_status: TIntegerField;
    FDQStatus: TFDQuery;
    DSStatus: TDataSource;
    FDQStatusid_status: TIntegerField;
    FDQStatustx_status: TWideStringField;
    FDQSuperUsuariocount: TLargeintField;
    FDQObjetoid_modelo: TIntegerField;
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
