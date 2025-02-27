unit CadastroModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfrmCadastroModelo = class(TForm)
    CadastroInstituicao: TLabel;
    NomeInstituicao: TLabel;
    edtModelo: TEdit;
    Image1: TImage;
    btnCadastrar: TButton;
    btnVoltar: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroModelo: TfrmCadastroModelo;

implementation

{$R *.dfm}

uses Modulo;

procedure TfrmCadastroModelo.btnCadastrarClick(Sender: TObject);
begin
   if(edtModelo.Text = '')then
   begin
     ShowMessage('Preencha o nome do modelo');
   end
   else
   begin
    DataModule1.FDQModelo.Post;
     DataModule1.FDQInstituicao.Refresh;
     DataModule1.FDQObjeto.Refresh;
     DataModule1.FDQModelo.Refresh;
     ShowMessage('Novo modelo criado com sucesso');
     frmCadastroModelo.Close;
   end;

end;

procedure TfrmCadastroModelo.btnVoltarClick(Sender: TObject);
begin
  frmCadastroModelo.Close;
end;

procedure TfrmCadastroModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.FDQModelo.Active:=false;
  DataModule1.FDConnection1.Connected:=false;

  DataModule1.FDQObjeto.Active:=True;
  DataModule1.FDQInstituicao.Active:=True;
  DataModule1.FDQCategoria.Active:=True;
  DataModule1.FDQStatus.Active:=true;
  DataModule1.FDQModelo.Active:=true;
end;

procedure TfrmCadastroModelo.FormShow(Sender: TObject);
begin
  DataModule1.FDQModelo.Active:=true;
  DataModule1.FDConnection1.Connected:=true;

  DataModule1.FDQModelo.Insert;
end;

end.
