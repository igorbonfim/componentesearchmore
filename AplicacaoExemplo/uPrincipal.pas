unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, SearchMore,
  Data.DB;

type
  TfrmPrincipal = class(TForm)
    SearchMore1: TSearchMore;
    dtsCategoria: TDataSource;
    procedure SearchMore1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.SearchMore1Click(Sender: TObject);
begin
  ShowMessage('Mensagem dentro da aplicação');
end;

end.
