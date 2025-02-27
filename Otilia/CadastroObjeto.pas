unit CadastroObjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ExtDlgs;

type
  TfrmCadastroObjeto = class(TForm)
    Image1: TImage;
    ImagemAddFoto: TImage;
    Nome: TLabel;
    Instituicao: TLabel;
    cmbCategoria: TComboBox;
    btnNovoInstituicao: TButton;
    Categoria: TLabel;
    Midia: TLabel;
    Status: TLabel;
    edtNome: TEdit;
    cmbInstituicao: TComboBox;
    btnAdicionarFoto: TSpeedButton;
    Link: TLabel;
    btnCancelar: TSpeedButton;
    btnCadastradar: TSpeedButton;
    CadastroObjeto: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    ImagemSelecionada: TImage;
    FotoSelecionada: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    cmbStatus: TComboBox;
    LinkControlToField2: TLinkControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField4: TLinkFillControlToField;
    BindSourceDB5: TBindSourceDB;
    Modelo: TLabel;
    BindSourceDB6: TBindSourceDB;
    btnModelo: TSpeedButton;
    cmbModelo: TComboBox;
    LinkFillControlToField5: TLinkFillControlToField;
    procedure btnAdicionarFotoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastradarClick(Sender: TObject);
    procedure btnNovoInstituicaoClick(Sender: TObject);
    procedure btnModeloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroObjeto: TfrmCadastroObjeto;
  Dir: string;



implementation

{$R *.dfm}

uses FileCtrl, Modulo, CadastroInstituicao,Jpeg, CadastroModelo;

procedure TfrmCadastroObjeto.btnAdicionarFotoClick(Sender: TObject);
begin
  if(OpenPictureDialog1.Execute())then
  begin
    link.Caption :=  OpenPictureDialog1.Filename;
    ImagemSelecionada.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;


end;

procedure TfrmCadastroObjeto.btnCadastradarClick(Sender: TObject);
begin

  if((edtNome.Text = '')or(cmbStatus.Text = '')or(Instituicao.Caption = '')or(cmbInstituicao.Text = '')or(cmbCategoria.Text = '')or(cmbModelo.Text = ''))then
  begin
    ShowMessage('Informe todos os dados');
    edtNome.SetFocus;
  end
  else
  begin
     DataModule1.FDQObjeto.Post;
     DataModule1.FDQObjeto.Refresh;
     ShowMessage('Cadastro efetuado com sucesso');
     edtNome.Clear;
     cmbCategoria.Clear;
     cmbStatus.Clear;
     cmbInstituicao.Clear;
     cmbModelo.Clear;
  end;
end;


procedure TfrmCadastroObjeto.btnModeloClick(Sender: TObject);
begin
  frmCadastroModelo:= TfrmCadastroModelo.Create(self);
  frmCadastroModelo.ShowModal;
end;

procedure TfrmCadastroObjeto.btnNovoInstituicaoClick(Sender: TObject);
begin
  frmCadastroInstituicao:= TfrmCadastroInstituicao.Create(self);
  frmCadastroInstituicao.ShowModal;
end;



procedure TfrmCadastroObjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.FDQObjeto.Active:=False;

  DataModule1.FDQInstituicao.Active:=False;
  DataModule1.FDQCategoria.Active:=False;
  DataModule1.FDQModelo.Active:=False;
  DataModule1.FDQStatus.Active:=false;

  DataModule1.FDConnection1.Connected:=False;
end;

procedure TfrmCadastroObjeto.FormShow(Sender: TObject);
begin
  DataModule1.FDQObjeto.Active:=True;
  DataModule1.FDQModelo.Active:=True;
  DataModule1.FDQInstituicao.Active:=True;
  DataModule1.FDQCategoria.Active:=True;
  DataModule1.FDQStatus.Active:=True;


  DataModule1.FDConnection1.Connected:=True;
  DataModule1.FDQObjeto.Insert;
  DataModule1.FDQModelo.Insert;
end;



end.
