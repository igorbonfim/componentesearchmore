unit uCadCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZSqlUpdate, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadastroCategoria = class(TForm)
    QryCadastro: TZQuery;
    QryCadastrocategoriaId: TIntegerField;
    QryCadastrodescricao: TWideStringField;
    updCadastro: TZUpdateSQL;
    DBNavigator1: TDBNavigator;
    dtsCadastro: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCategoria: TfrmCadastroCategoria;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmCadastroCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryCadastro.Close;
end;

procedure TfrmCadastroCategoria.FormShow(Sender: TObject);
begin
  QryCadastro.Open;
end;

end.
