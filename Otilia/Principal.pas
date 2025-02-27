unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfrmPrincipal = class(TForm)
    Fundo: TImage;
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Objeto: TMenuItem;
    Sobre: TMenuItem;
    Manutencao: TMenuItem;
    Usurio1: TMenuItem;
    btnComputacao: TSpeedButton;
    btnGames: TSpeedButton;
    btnAudioVideo: TSpeedButton;
    ImagemGames: TImage;
    ImagemAudioVideo: TImage;
    Categorias: TLabel;
    Games: TLabel;
    AudioVideo: TLabel;
    Computacao: TLabel;
    Telefonia: TLabel;
    Image2: TImage;
    Image3: TImage;
    btnTelefonia: TSpeedButton;
    Busca: TMenuItem;
    menuTelefonia: TMenuItem;
    menuComputacao: TMenuItem;
    menuGames: TMenuItem;
    menuAudioVideo: TMenuItem;
    Relatorios: TMenuItem;
    FlagSuperusuario: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    User: TLabel;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    BindSourceDB3: TBindSourceDB;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    Colecao: TMenuItem;
    Logout: TMenuItem;
    procedure SobreClick(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure ObjetoClick(Sender: TObject);
    procedure btnComputacaoClick(Sender: TObject);
    procedure btnTelefoniaClick(Sender: TObject);
    procedure btnGamesClick(Sender: TObject);
    procedure btnAudioVideoClick(Sender: TObject);
    procedure menuAudioVideoClick(Sender: TObject);
    procedure menuGamesClick(Sender: TObject);
    procedure menuTelefoniaClick(Sender: TObject);
    procedure menuComputacaoClick(Sender: TObject);
    procedure RelatoriosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LogoutClick(Sender: TObject);
    procedure ColecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

{$R *.dfm}

uses Sobre, Cadastro, CadastroObjeto, CategoriaComputacao, CategoriaAudioVideo,
  CategoriaGames, CategoriaTelefonia, Relatorios, Modulo,FireDAC.Stan.Param,
  Login, CadastroColecao;

procedure TfrmPrincipal.btnAudioVideoClick(Sender: TObject);
begin
  frmAudioVideo := TfrmAudioVideo.Create(self);
  frmAudioVideo.ShowModal;
end;

procedure TfrmPrincipal.btnComputacaoClick(Sender: TObject);
begin

  frmComputacao := TfrmComputacao.Create(self);
  frmComputacao.ShowModal;
end;

procedure TfrmPrincipal.ObjetoClick(Sender: TObject);
begin
    frmCadastroObjeto := TfrmCadastroObjeto.Create(self);
    frmCadastroObjeto.ShowModal;
end;

procedure TfrmPrincipal.RelatoriosClick(Sender: TObject);
begin
  frmRelatorios:= TfrmRelatorios.Create(self);
  frmRelatorios.ShowModal;
end;

procedure TfrmPrincipal.SobreClick(Sender: TObject);
begin
  frmSobre:= TfrmSobre.Create(self);
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.btnGamesClick(Sender: TObject);
begin
  frmGames:= TfrmGames.Create(self);
  frmGames.ShowModal;
end;

procedure TfrmPrincipal.btnTelefoniaClick(Sender: TObject);
begin
  frmTelefonia:= TfrmTelefonia.Create(self);
  frmTelefonia.ShowModal;
end;


procedure TfrmPrincipal.ColecaoClick(Sender: TObject);
begin
  frmCadastroColecao := TfrmCadastroColecao.Create(self);
  frmCadastroColecao.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DataModule1.FDQSuperUsuario.Active:=False;
    DataModule1.FDConnection1.Connected:=False;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  User.Caption := frmLogin.edtLogin.Text;

  DataModule1.FDQSuperUsuario.Active:=True;
  DataModule1.FDConnection1.Connected:=True;

  DataModule1.FDQSuperUsuario.SQL.Clear;
  DataModule1.FDQSuperUsuario.SQL.Add('Select count(*) from tb_usuario where fl_superuser = false and tx_login='+ QuotedStr(User.Caption));
  DataModule1.FDQSuperUsuario.Open;
  if(FlagSuperusuario.Caption = '1')then

  begin
    Cadastro.Visible := false;
    Manutencao.Visible := false;
    Relatorios.Visible := false;
  end;
end;

procedure TfrmPrincipal.LogoutClick(Sender: TObject);
begin
  frmPrincipal.close;
end;

procedure TfrmPrincipal.menuAudioVideoClick(Sender: TObject);
begin
  frmAudioVideo := TfrmAudioVideo.Create(self);
  frmAudioVideo.ShowModal;
end;

procedure TfrmPrincipal.menuComputacaoClick(Sender: TObject);
begin
  frmComputacao := TfrmComputacao.Create(self);
  frmComputacao.ShowModal;
end;

procedure TfrmPrincipal.menuGamesClick(Sender: TObject);
begin
  frmGames:= TfrmGames.Create(self);
  frmGames.ShowModal;
end;

procedure TfrmPrincipal.menuTelefoniaClick(Sender: TObject);
begin
  frmTelefonia:= TfrmTelefonia.Create(self);
  frmTelefonia.ShowModal;
end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  frmCadastro:= TfrmCadastro.Create(self);
  frmCadastro.ShowModal;
end;

end.
