unit CadastroColecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmCadastroColecao = class(TForm)
    Fundo: TImage;
    CadastroColecao: TLabel;
    edtNomeColecao: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    AddItens: TLabel;
    Colecao: TImage;
    btnAddItens: TSpeedButton;
    DBGrid2: TDBGrid;
    ItensDisponiveis: TLabel;
    ColecaoFinal: TLabel;
    btnCadastrar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroColecao: TfrmCadastroColecao;

implementation

{$R *.dfm}

uses Modulo;

procedure TfrmCadastroColecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.FDQColecao.Active:=false;
  DataModule1.FDQObjeto.Active:=false;
  DataModule1.FDConnection1.Connected:=false;
end;

procedure TfrmCadastroColecao.FormShow(Sender: TObject);
begin
  DataModule1.FDQColecao.Active:=True;
  DataModule1.FDQObjeto.Active:=True;
  DataModule1.FDConnection1.Connected:=True;
  DataModule1.FDQColecao.Insert;
end;

end.
