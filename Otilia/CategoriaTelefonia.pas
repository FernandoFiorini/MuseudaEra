unit CategoriaTelefonia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTelefonia = class(TForm)
    Image1: TImage;
    ImagemCima: TImage;
    ImagemBaixo: TImage;
    GridCima: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    CadastroInstituicao: TLabel;
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
  frmTelefonia: TfrmTelefonia;

implementation

{$R *.dfm}

uses Modulo, CadastroObjeto;

procedure TfrmTelefonia.btnNovoClick(Sender: TObject);
begin
  frmCadastroObjeto:=TfrmCadastroObjeto.Create(self);
  frmCadastroObjeto.ShowModal;
end;

procedure TfrmTelefonia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DataModule1.FDQListarTelefonia.Active:=false;
   DataModule1.FDConnection1.Connected:=false;
end;

procedure TfrmTelefonia.FormShow(Sender: TObject);
begin
    DataModule1.FDQListarTelefonia.Active:=true;
    DataModule1.FDConnection1.Connected:=true;
    DataModule1.FDQListarTelefonia.Insert;

end;

procedure TfrmTelefonia.SpeedButton2Click(Sender: TObject);
begin
  DataModule1.FDQListarTelefonia.delete;
end;

end.
