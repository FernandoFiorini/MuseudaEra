program ProjetoFinal;

uses
  Vcl.Forms,
  Login in 'Login.pas' {frmLogin},
  Cadastro in 'Cadastro.pas' {frmCadastro},
  Principal in 'Principal.pas' {frmPrincipal},
  Sobre in 'Sobre.pas' {frmSobre},
  CadastroObjeto in 'CadastroObjeto.pas' {frmCadastroObjeto},
  CategoriaComputacao in 'CategoriaComputacao.pas' {frmComputacao},
  CategoriaTelefonia in 'CategoriaTelefonia.pas' {frmTelefonia},
  CategoriaGames in 'CategoriaGames.pas' {frmGames},
  CategoriaAudioVideo in 'CategoriaAudioVideo.pas' {frmAudioVideo},
  Modulo in 'Modulo.pas' {DataModule1: TDataModule},
  Relatorios in 'Relatorios.pas' {frmRelatorios},
  CadastroInstituicao in 'CadastroInstituicao.pas' {frmCadastroInstituicao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmCadastroObjeto, frmCadastroObjeto);
  Application.CreateForm(TfrmTelefonia, frmTelefonia);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmComputacao, frmComputacao);
  Application.CreateForm(TfrmGames, frmGames);
  Application.CreateForm(TfrmAudioVideo, frmAudioVideo);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TfrmCadastroInstituicao, frmCadastroInstituicao);
  Application.Run;
end.
