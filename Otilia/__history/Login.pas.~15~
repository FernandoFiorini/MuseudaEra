unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TfrmLogin = class(TForm)
    btnLogin: TSpeedButton;
    btnCadastro: TSpeedButton;
    btnEntrar: TSpeedButton;
    btnVoltar: TSpeedButton;
    LogoUnoesc: TImage;
    lblLogin: TLabel;
    lblSenha: TLabel;
    edtSenha: TEdit;
    edtLogin: TEdit;
    lblNomeMuseu: TLabel;
    Fundo: TImage;
    lblCountBanco: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    procedure btnLoginClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure efetuarLogin();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses Cadastro, Principal, Modulo,FireDAC.Stan.Param;

procedure TfrmLogin.btnCadastroClick(Sender: TObject);
begin
     frmCadastro := TfrmCadastro.Create(self);
     frmCadastro.ShowModal;
end;

procedure TfrmLogin.efetuarLogin;
begin
   if((edtLogin.Text = '')OR(edtSenha.Text=''))then
   begin
     showmessage('Favor preencher os campos');
     edtLogin.SetFocus;
   end
   else
   begin

       DataModule1.FDQUsuario.SQL.Clear;
       DataModule1.FDQUsuario.SQL.Add('Select count(*) from tb_usuario where tx_login =:pLogin AND tx_senha =:pSenha');
       DataModule1.FDQUsuario.ParamByName('pLogin').AsString := edtLogin.Text;
       DataModule1.FDQUsuario.ParamByName('pSenha').AsString := edtSenha.Text;
       DataModule1.FDQUsuario.Open;

        if(lblCountBanco.Caption = '1')then
        begin
          showmessage('Login efetuado');
          frmPrincipal := TFrmPrincipal.Create(self);
          frmPrincipal.ShowModal;
          frmLogin.Close;
        end
        else
        begin
          showmessage('Usuário ou senha inválidos');
          edtLogin.Clear;
          edtSenha.Clear;
          edtLogin.SetFocus;
        end;
   end;
end;


procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  efetuarLogin();
end;

procedure TfrmLogin.btnVoltarClick(Sender: TObject);
begin
   edtLogin.Visible:=false;
   edtSenha.Visible:=false;
   edtSenha.Clear;
   edtLogin.Clear;
   lblLogin.Visible:=false;
   lblSenha.Visible:=false;
   btnVoltar.Visible:=false;
   btnEntrar.Visible:=false;
   btnCadastro.Visible:=true;
   btnLogin.Visible:=true;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  edtLogin.Visible:=true;
  edtSenha.Visible:=true;
  lblLogin.Visible:=true;
  lblSenha.Visible:=true;
  btnEntrar.Visible:=true;
  btnVoltar.Visible:=true;
  btnCadastro.Visible:=false;
  btnLogin.Visible:=false;

end;

end.
