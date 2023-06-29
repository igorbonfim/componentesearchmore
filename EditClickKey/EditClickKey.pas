unit EditClickKey;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, Winapi.Windows;

type
  TEditClickKey = class(TEdit)
  private
    { Private declarations }
    FClickKey: TShortCut;
    FBitBtnClickKey: TBitBtn;
    procedure KeyDown(var key: word; Shift: TShiftState); override;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property OnKeyDown;
    property ClickKey: TShortCut read FClickKey write FClickKey default VK_F3;
    property BitBtnClickKey: TBitBtn read FBitBtnClickKey write FBitBtnClickKey;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('CursoComponenteDelphi', [TEditClickKey]);
end;

{ TEditClickKey }

constructor TEditClickKey.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FClickKey := VK_F3;
end;

destructor TEditClickKey.Destroy;
begin

  inherited Destroy;
end;

procedure TEditClickKey.KeyDown(var key: word; Shift: TShiftState);
begin
  inherited KeyDown(key, Shift);

  if (FClickKey = ShortCut(key, Shift)) then
  begin
    FBitBtnClickKey.Click;
    key := 0;
  end;
end;

end.
