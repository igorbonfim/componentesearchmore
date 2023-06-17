unit SearchMore;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Dialogs, Vcl.Forms, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Graphics, Vcl.Mask, Vcl.DBCtrls;

type
  TSearchMore = class(TBitBtn)
  private
    FPesquisaCaption: string;
    FPesquisaWidth: integer;
    FPesquisaHeight: integer;
    FPesquisaTextHintMaskEdit: string;
    FPesquisaCaptionMaskEdit: string;
    FPesquisaCaptionBotaoIncluir: string;
    FDataLink: TFieldDataLink;

    { Private declarations }
    procedure Click; override;
    procedure CriarTelaDePesquisa;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    procedure OnDblClickDbGrid(Sender: TObject);
    procedure OnChangeEdt(Sender: TObject);
    function GetPesquisaIndexConsulta: string;
    procedure SetPesquisaIndexConsulta(const Value: string);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property onClick;
    property PesquisaCaption: string    read FPesquisaCaption   write FPesquisaCaption;
    property PesquisaWidth:   integer   read FPesquisaWidth     write FPesquisaWidth;
    property PesquisaHeight:  integer   read FPesquisaHeight    write FPesquisaHeight;
    property PesquisaTextHintMaskEdit: string read FPesquisaTextHintMaskEdit write FPesquisaTextHintMaskEdit;
    property PesquisaCaptionMaskEdit: string read FPesquisaCaptionMaskEdit write FPesquisaCaptionMaskEdit;
    property PesquisaCaptionBotaoIncluir: string read FPesquisaCaptionBotaoIncluir write FPesquisaCaptionBotaoIncluir;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property PesquisaIndexConsulta: string read GetPesquisaIndexConsulta write SetPesquisaIndexConsulta;
  end;

implementation

{$R 'SearchMore.dcr'}
{$R *.res}

{ TSearchMore }

constructor TSearchMore.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Caption := '...';
  Width := 25;
  Height := 25;
  FPesquisaWidth := 640;
  FPesquisaHeight := 480;
  FPesquisaCaption := 'Consulta';
  FPesquisaTextHintMaskEdit := 'Digite a pesquisa';
  FPesquisaCaptionMaskEdit  := 'Pesquisar por ...';
  FPesquisaCaptionBotaoIncluir := '&Incluir';
  FDataLink := TFieldDataLink.Create;
end;

destructor TSearchMore.Destroy;
begin
  if Assigned(FDataLink) then
    FDataLink.Free;

  inherited Destroy;
end;

function TSearchMore.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TSearchMore.GetPesquisaIndexConsulta: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TSearchMore.SetPesquisaIndexConsulta(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TSearchMore.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TSearchMore.Click;
begin
  inherited Click;
  CriarTelaDePesquisa;
end;

procedure TSearchMore.CriarTelaDePesquisa;
var
  aForm: TForm;
  aPnlTop, aPnlBottom: TPanel;
  aDbGrid: TDBGrid;
  aEdt: TMaskEdit;
  aLbl: TLabel;
  aBtnConfirmar, aBtnCancelar, aBtnIncluir: TBitBtn;
begin
  try
    aForm             := TForm.Create(nil);
    aForm.BorderStyle := bsDialog;
    aForm.Position    := poScreenCenter;
    aForm.Font.Name   := 'Tahoma';
    aForm.Font.Size   := 08;
    aForm.Caption     := PesquisaCaption;
    aForm.Width       := FPesquisaWidth;
    aForm.Height      := FPesquisaHeight;

    aPnlTop           := TPanel.Create(aForm);
    aPnlBottom        := TPanel.Create(aForm);
    aDbGrid           := TDBGrid.Create(aForm);
    aEdt              := TMaskEdit.Create(aForm);
    aLbl              := TLabel.Create(aForm);
    aBtnConfirmar     := TBitBtn.Create(aForm);
    aBtnCancelar      := TBitBtn.Create(aForm);
    aBtnIncluir       := TBitBtn.Create(aForm);

    aPnlTop.Parent    := aForm;
    aPnlTop.Align     := alTop;
    aPnlTop.Height    := 50;

    aPnlBottom.Parent := aForm;
    aPnlBottom.Align  := alBottom;
    aPnlBottom.Height := 35;

    aDBGrid.Parent    := aForm;
    aDBGrid.Align     := alClient;
    aDBGrid.TabOrder  := 0;
    aDBGrid.DataSource := GetDataSource;
    aDBGrid.Options   := [dgTitles, dgIndicator, dgColumnResize, dgColLines,
                          dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection,
                          dgConfirmDelete, dgCancelOnExit, dgTitleClick,
                          dgTitleHotTrack];
    aDBGrid.OnDblClick := OnDblClickDbGrid;
    aDBGrid.Name       := 'grdPesquisa';

    aEdt.Parent       := aPnlTop;
    aEdt.Top          := 20;
    aEdt.Left         := 5;
    aEdt.Width        := aForm.Width - 15;
    aEdt.Hint         := FPesquisaTextHintMaskEdit;
    aEdt.OnChange     := OnChangeEdt;

    aLbl.Parent       := aPnlTop;
    aLbl.Top          := 5;
    aLbl.Left         := 5;
    aLbl.Caption      := FPesquisaCaptionMaskEdit;

    aBtnConfirmar.Parent  := aPnlBottom;
    aBtnCancelar.Parent   := aPnlBottom;
    aBtnIncluir.Parent    := aPnlBottom;

    aBtnConfirmar.Left    := (aForm.Width - (aBtnConfirmar.Width + aBtnCancelar.Width) - 15);
    aBtnCancelar.Left     := (aForm.Width - aBtnConfirmar.Width - 15);

    aBtnConfirmar.Top     := 4;
    aBtnCancelar.Top      := 4;

    aBtnConfirmar.Name    := 'aBtnConfirmar';

    aBtnConfirmar.Kind    := bkOK;
    aBtnCancelar.Kind     := bkCancel;

    aBtnIncluir.Caption   := FPesquisaCaptionBotaoIncluir;
    aBtnIncluir.Top       := 4;
    aBtnIncluir.Left      := 5;

    aForm.ShowModal;
  finally
    aForm.Release;
  end;
end;

procedure TSearchMore.OnDblClickDbGrid(Sender: TObject);
var
  aForm: TCustomForm;
  i: Integer;
begin
  aForm := GetParentForm(TForm(TDBGrid(Sender).Parent));

  for i := 0 to aForm.ComponentCount - 1 do
  begin
    if (aForm.Components[i] is TBitBtn) then
    begin
      if (aForm.Components[i].Name = 'aBtnConfirmar') then
      begin
        TBitBtn(aForm.Components[i]).Click;
        break;
      end;
    end;
  end;
end;

procedure TSearchMore.OnChangeEdt(Sender: TObject);
var
  aForm: TCustomForm;
  i: Integer;
begin
  aForm := GetParentForm(TForm(TPanel(TMaskEdit(Sender).Parent).Parent));

  for i := 0 to aForm.ComponentCount - 1 do
  begin
    if (aForm.Components[i] is TDBGrid) then
    begin
      if (aForm.Components[i].Name = 'grdPesquisa') then
      begin
        TDBGrid(aForm.Components[i]).DataSource.DataSet.Locate(GetPesquisaIndexConsulta, TMaskEdit(Sender).Text, [loCaseInsensitive, loPartialKey]);
        Break;
      end;
    end;
  end;
end;

end.
