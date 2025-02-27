unit CadastroInstituicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfrmCadastroInstituicao = class(TForm)
    Image1: TImage;
    CadastroInstituicao: TLabel;
    NomeInstituicao: TLabel;
    CNPJ: TLabel;
    Telefone: TLabel;
    edtNomeInstituicao: TEdit;
    edtCnpj: TEdit;
    edtTelefone: TEdit;
    btnVoltar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroInstituicao: TfrmCadastroInstituicao;

implementation

{$R *.dfm}

uses Modulo, CadastroModelo;

procedure TfrmCadastroInstituicao.btnCadastrarClick(Sender: TObject);
begin
    if((edtNomeInstituicao.Text = '')or(edtCnpj.Text = '')or(edtCnpj.text = '')or(edtTelefone.Text = ''))then
    begin
      ShowMessage('Preencha todos os campos');
    end
    else
    begin
     DataModule1.FDQInstituicao.Post;
     DataModule1.FDQInstituicao.Refresh;
     DataModule1.FDQObjeto.Refresh;
     DataModule1.FDQModelo.Refresh;
     edtNomeInstituicao.Clear;
     edtCnpj.Clear;
     edtTelefone.Clear;
     ShowMessage('Nova instituição criada com sucesso');
     frmCadastroInstituicao.Close;
    end;
end;

procedure TfrmCadastroInstituicao.btnVoltarClick(Sender: TObject);
begin
  frmCadastroInstituicao.Close;
end;

procedure TfrmCadastroInstituicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.FDQObjeto.Active:=false;
  DataModule1.FDConnection1.Connected:=false;

  DataModule1.FDQObjeto.Active:=True;
  DataModule1.FDQInstituicao.Active:=True;
  DataModule1.FDQCategoria.Active:=True;
  DataModule1.FDQStatus.Active:=true;

end;

procedure TfrmCadastroInstituicao.FormShow(Sender: TObject);
begin
  DataModule1.FDQInstituicao.Active:=True;
  DataModule1.FDConnection1.Connected:=True;
  DataModule1.FDQInstituicao.Insert;
  DataModule1.FDQModelo.Insert;
end;

end.
