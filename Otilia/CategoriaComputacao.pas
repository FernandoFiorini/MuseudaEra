unit CategoriaComputacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmComputacao = class(TForm)
    Image1: TImage;
    CadastroInstituicao: TLabel;
    GridCima: TDBGrid;
    btnNovo: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComputacao: TfrmComputacao;

implementation

{$R *.dfm}

uses Modulo, CadastroObjeto;

procedure TfrmComputacao.btnNovoClick(Sender: TObject);
begin
  frmCadastroObjeto:=TfrmCadastroObjeto.Create(self);
  frmCadastroObjeto.ShowModal;
end;

procedure TfrmComputacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DataModule1.FDQListarComputacao.Active:=false;
    DataModule1.FDConnection1.Connected:=false;
end;

procedure TfrmComputacao.FormShow(Sender: TObject);
begin
    DataModule1.FDQListarComputacao.Active:=true;
    DataModule1.FDConnection1.Connected:=true;
    DataModule1.FDQListarComputacao.Insert;
end;

procedure TfrmComputacao.SpeedButton2Click(Sender: TObject);
begin
    DataModule1.FDQListarComputacao.Delete;
end;

end.
