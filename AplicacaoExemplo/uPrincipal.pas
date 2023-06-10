unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, SearchMore,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmPrincipal = class(TForm)
    SearchMore1: TSearchMore;
    dtsCategoriaFirebird: TDataSource;
    FirebirdConexao: TFDConnection;
    QryCategoriaFirebird: TFDQuery;
    QryCategoriaFirebirdCATEGORIAID: TIntegerField;
    QryCategoriaFirebirdDESCRICAO: TStringField;
    DBGridMSSQL: TDBGrid;
    SQLServerConexao: TZConnection;
    QryCategoriaMSSQL: TZQuery;
    dtsCategoriaMSSQL: TDataSource;
    QryCategoriaMSSQLcategoriaId: TIntegerField;
    QryCategoriaMSSQLdescricao: TWideStringField;
    DBGridFirebird: TDBGrid;
    procedure SearchMore1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FirebirdConexao.Connected := true;
  SQLServerConexao.Connected := true;

  QryCategoriaFirebird.Active := true;
  QryCategoriaMSSQL.Active := true;
end;

procedure TfrmPrincipal.SearchMore1Click(Sender: TObject);
begin
  ShowMessage('Mensagem dentro da aplicação');
end;

end.
