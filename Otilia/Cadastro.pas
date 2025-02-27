unit Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfrmCadastro = class(TForm)
    edtEmail: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblNomeMuseu: TLabel;
    lblLogin: TLabel;
    lblSenha: TLabel;
    lblEmail: TLabel;
    Fundo: TImage;
    btnCadastrar: TSpeedButton;
    LogoUnoesc: TImage;
    btnVoltar: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure desabilita();
    procedure habilita();
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses Modulo;

procedure TfrmCadastro.habilita;
begin
  edtLogin.Visible:=true;
  edtSenha.Visible:=true;
  edtEmail.Visible:=true;
  lblLogin.Visible:=true;
  lblSenha.Visible:=true;
  lblEmail.Visible:=true;
end;

procedure TfrmCadastro.btnVoltarClick(Sender: TObject);
begin
   frmCadastro.Close;
end;

procedure TfrmCadastro.desabilita;
begin
  edtLogin.Visible:=false;
  edtSenha.Visible:=false;
  edtEmail.Visible:=false;
  lblLogin.Visible:=false;
  lblSenha.Visible:=false;
  lblEmail.Visible:=false;
end;




procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FDQCadastro.Active:=False;
  DataModule1.FDConnection1.Connected:=False;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  DataModule1.FDQCadastro.Active:=True;
  DataModule1.FDConnection1.Connected:=true;
  DataModule1.FDQCadastro.Insert;
end;

procedure TfrmCadastro.btnCadastrarClick(Sender: TObject);
begin

  if((edtLogin.Text = '')or(edtSenha.Text = '')or(edtSenha.Text = ''))then
  begin
    ShowMessage('Informe todos os dados');
    edtLogin.SetFocus;
  end
  else
  begin
     DataModule1.FDQCadastro.Post;
     DataModule1.FDQCadastro.Refresh;
     ShowMessage('Cadastro efetuado com sucesso');
     frmCadastro.Close;
  end;



end;

end.
