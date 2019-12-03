unit CategoriaAudioVideo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAudioVideo = class(TForm)
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
  frmAudioVideo: TfrmAudioVideo;

implementation

{$R *.dfm}

uses Modulo, CadastroObjeto;

procedure TfrmAudioVideo.btnNovoClick(Sender: TObject);
begin
  frmCadastroObjeto:=TfrmCadastroObjeto.Create(self);
  frmCadastroObjeto.ShowModal;
end;

procedure TfrmAudioVideo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DataModule1.FDQObjeto.Active:=false;
   DataModule1.FDQListarAudioVideo.Active:=false;
   DataModule1.FDConnection1.Connected:=false;
end;

procedure TfrmAudioVideo.FormShow(Sender: TObject);
begin
  DataModule1.FDQObjeto.Active:=true;
   DataModule1.FDQListarAudioVideo.Active:=true;
    DataModule1.FDConnection1.Connected:=true;

   DataModule1.FDQListarAudioVideo.Insert;
end;

procedure TfrmAudioVideo.SpeedButton2Click(Sender: TObject);
begin
  DataModule1.FDQListarAudioVideo.Delete;
end;

end.
