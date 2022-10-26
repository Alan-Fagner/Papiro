unit uUtil;

interface

uses
  Vcl.Forms;


var
  UsLogadoID: integer;
  UsLogadoLogin: String;
  UsLogadoPerfil: String;


  procedure LimpaCampo(Self: TForm);

implementation

uses
  Vcl.StdCtrls;

procedure LimpaCampo(Self: TForm);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount -1 do begin
    if Self.Components[i] is TEdit then
      TEdit(self.Components[i]).Clear;

    if Self.Components[i] is TComboBox then
      TComboBox(self.Components[i]).ItemIndex := 0;

    if Self.Components[i] is TMemo then
      TMemo(self.Components[i]).Lines.Clear;
  end;
end;


end.
