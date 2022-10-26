unit uModel.Permissao;

interface

uses
  uModel.Interfaces;

type

  TModelPermissao = class(TInterfacedObject, iModelPermissao)
  private
    Conn : iConexao;

    FID: Integer;
    FPERFIL : string;
    FMODULO : string;
    FPERMISSAO : Boolean;

  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelPermissao;

    Function VerificaPermissao(xPerfil: string = '';xModulo : string = '') : Boolean;

    Function ID(Value: Integer) : iModelPermissao; overload;
    Function ID : Integer; overload;
    Function PERFIL(Value: string) : iModelPermissao; overload;
    Function PERFIL : string; overload;
    Function MODULO(Value: string) : iModelPermissao; overload;
    Function MODULO : string; overload;
    Function PERMISSAO(Value: Boolean) : iModelPermissao; overload;
    Function PERMISSAO : Boolean; overload;

  end;

implementation

uses
  uModel.Conexao;

{ TModelPermissao }

constructor TModelPermissao.Create;
begin
  Conn := TConexao.New;
end;

destructor TModelPermissao.Destroy;
begin

  inherited;
end;

class function TModelPermissao.New: iModelPermissao;
begin
  Result:= Self.Create;
end;

function TModelPermissao.ID(Value: Integer): iModelPermissao;
begin
  Result := Self;
  FID := Value;
end;

function TModelPermissao.ID: Integer;
begin
  Result := FID;
end;

function TModelPermissao.MODULO: string;
begin
  Result := FMODULO;
end;

function TModelPermissao.MODULO(Value: string): iModelPermissao;
begin
  Result := Self;
  FMODULO := Value;
end;

function TModelPermissao.PERFIL(Value: string): iModelPermissao;
begin
  Result := Self;
  FPERFIL := Value;
end;

function TModelPermissao.PERFIL: string;
begin
  Result := FPERFIL;
end;

function TModelPermissao.PERMISSAO(Value: Boolean): iModelPermissao;
begin
  Result := Self;
  FPERMISSAO := Value;
end;

function TModelPermissao.PERMISSAO: Boolean;
begin
  Result := FPERMISSAO;
end;

function TModelPermissao.VerificaPermissao(xPerfil, xModulo: string): Boolean;
begin
  Result := Conn.QryOpen('Select Permissao from TB_PERMISSOES where (PERFIL = '''+xPerfil+''') and (MODULO = '''+xModulo+''')').Fields[0].AsBoolean;
end;

end.
