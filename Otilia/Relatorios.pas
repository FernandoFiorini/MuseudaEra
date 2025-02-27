unit Relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, frxClass, frxDBSet;

type
  TfrmRelatorios = class(TForm)
    Image1: TImage;
    Relatorios: TLabel;
    Label1: TLabel;
    btnRelatoriosFuncionario: TSpeedButton;
    btnRelatorioObjetos: TSpeedButton;
    Label2: TLabel;
    ImagemRelatorioFuncionarios: TImage;
    ImagemRelatorioObjetos: TImage;
    frxFuncionarios: TfrxReport;
    frxDBFuncionario: TfrxDBDataset;
    frxObjetos: TfrxReport;
    frxDBObjetos: TfrxDBDataset;
    procedure btnRelatoriosFuncionarioClick(Sender: TObject);
    procedure btnRelatorioObjetosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses Modulo;

procedure TfrmRelatorios.btnRelatorioObjetosClick(Sender: TObject);
begin
  frxObjetos.ShowReport();
end;

procedure TfrmRelatorios.btnRelatoriosFuncionarioClick(Sender: TObject);
begin
  frxFuncionarios.ShowReport()
end;

end.
