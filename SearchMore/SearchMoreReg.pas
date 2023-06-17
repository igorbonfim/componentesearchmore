unit SearchMoreReg;

interface

uses  DesignIntf, DBReg;

procedure Register;

implementation

uses SearchMore, System.SysUtils, System.Classes;

procedure Register;
begin
  RegisterComponents('CursoComponenteDelphi', [TSearchMore]);

  RegisterPropertyEditor(TypeInfo(string), TSearchMore, 'PesquisaIndexConsulta', TDataFieldProperty);
end;

end.
