unit Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmSobre = class(TForm)
    Fundo: TImage;
    lblNomeMuseu: TLabel;
    Label1: TLabel;
    lblVersao: TLabel;
    Label2: TLabel;
    LogoUnoesc: TImage;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

end.
