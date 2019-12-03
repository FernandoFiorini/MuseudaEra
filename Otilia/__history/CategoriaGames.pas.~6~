unit CategoriaGames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmGames = class(TForm)
    Image1: TImage;
    CadastroInstituicao: TLabel;
    groupBoxPesquisa: TGroupBox;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    edtPesquisaBanco: TEdit;
    GridCima: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGames: TfrmGames;

implementation

{$R *.dfm}

uses Modulo;

procedure TfrmGames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DataModule1.FDQObjeto.Active:=false;
   DataModule1.FDConnection1.Connected:=false;
end;

procedure TfrmGames.FormShow(Sender: TObject);
begin
    DataModule1.FDQObjeto.Active:=true;
    DataModule1.FDConnection1.Connected:=true;


    DataModule1.FDQObjeto.SQL.Clear;
    DataModule1.FDQObjeto.SQL.Add('Select * from tb_objeto where id_categoria = 4');
    DataModule1.FDQObjeto.Open;
end;

end.
