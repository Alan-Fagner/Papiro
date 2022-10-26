unit uModel.Emprestimos;

interface

uses
  uModel.Interfaces,
  System.Generics.Collections;

type

  TModelEmprestimos = class(TInterfacedObject, iModelEmprestimos)
  private
    Conn : iConexao;
    Lista: TList<iModelEmprestimos>;

    FID: Integer;
    FID_ALUNO : Integer;
    FID_LIVRO : Integer;
    FDT_EMPRESTIMO : TDate;
    FDT_DEVOLUCAO : TDate;
    FATIVO : Boolean;

  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelEmprestimos;

    Function List(xAluno: Integer = 0; xLivro: Integer = 0) : TList<iModelEmprestimos>;
    Function insert : Boolean;
    Function Delete(ID: string) : Boolean;
    Function Total:Integer;

    Function ID(Value: Integer) : iModelEmprestimos; overload;
    Function ID : Integer; overload;
    Function ALUNO(Value: Integer) : iModelEmprestimos; overload;
    Function ALUNO : Integer; overload;
    Function LIVRO(Value: Integer) : iModelEmprestimos; overload;
    Function LIVRO : Integer; overload;
    Function EMPRESTIMO(Value: TDateTime) : iModelEmprestimos; overload;
    Function EMPRESTIMO : TDate; overload;
    Function DEVOLUCAO(Value: TDateTime) : iModelEmprestimos; overload;
    Function DEVOLUCAO : TDate; overload;
    Function ATIVO(Value: Boolean) : iModelEmprestimos; overload;
    Function ATIVO : Boolean; overload;
  end;

implementation

uses
  uModel.Conexao, System.SysUtils, System.Classes;

{ TModelEmprestimos }

function TModelEmprestimos.ALUNO: Integer;
begin
  Result := FID_ALUNO
end;

function TModelEmprestimos.ALUNO(Value: Integer): iModelEmprestimos;
begin
  Result := Self;
  FID_ALUNO := Value;
end;

function TModelEmprestimos.ATIVO: Boolean;
begin
  Result := FATIVO;
end;

function TModelEmprestimos.ATIVO(Value: Boolean): iModelEmprestimos;
begin
  Result := Self;
  FATIVO := Value;
end;

constructor TModelEmprestimos.Create;
begin
  Conn := TConexao.New;
  Lista := TList<iModelEmprestimos>.Create;
end;

function TModelEmprestimos.Delete(ID: string): Boolean;
begin

end;

destructor TModelEmprestimos.Destroy;
begin
  FreeAndNil(lista);
  inherited;
end;

function TModelEmprestimos.DEVOLUCAO(Value: TDateTime): iModelEmprestimos;
begin
  Result := Self;
  FDT_DEVOLUCAO := Value;
end;

function TModelEmprestimos.DEVOLUCAO: TDate;
begin
  Result := FDT_DEVOLUCAO;
end;

function TModelEmprestimos.EMPRESTIMO(Value: TDateTime): iModelEmprestimos;
begin
  Result := Self;
  FDT_EMPRESTIMO := Value;
end;

function TModelEmprestimos.EMPRESTIMO: TDate;
begin
  Result := FDT_EMPRESTIMO;
end;

function TModelEmprestimos.ID: Integer;
begin
  Result := FID;
end;

function TModelEmprestimos.insert: Boolean;
begin

end;

function TModelEmprestimos.ID(Value: Integer): iModelEmprestimos;
begin
  Result := Self;
  FID := Value;
end;

function TModelEmprestimos.LIVRO(Value: Integer): iModelEmprestimos;
begin
  Result := Self;
  FID_LIVRO := Value;
end;

function TModelEmprestimos.List(xAluno, xLivro: Integer): TList<iModelEmprestimos>;
var
  item: TModelEmprestimos;
  SQL: TStringList;
begin

  SQL := TStringList.Create;
  try
    SQL.Add('Select * from TB_EMPRESTIMOS');

    if xAluno <> 0 then begin
      if SQl.Count = 1 then SQL.Add(' Where ') else SQL.Add(' and ');
      SQL.Add('(ID_ALUNO = '''+IntToStr(xAluno)+''')')
    end;

    if xLivro <> 0 then begin
      if SQl.Count = 1 then SQL.Add(' Where ') else SQL.Add(' and ');
      SQL.Add('(ID_LIVRO = '''+IntToStr(xLivro)+''')')
    end;

    SQL.Add(' order by ID');

    with Conn.QryOpen(SQL.Text) do begin
      while not Eof do begin
        item := TModelEmprestimos.Create;
        item.ID             ( FieldByName('ID').AsInteger );
        item.ALUNO          ( FieldByName('ID_ALUNO').AsInteger );
        item.LIVRO          ( FieldByName('ID_LIVRO').AsInteger );
        item.EMPRESTIMO     ( FieldByName('DT_EMPRESTIMO').AsDateTime );
        item.DEVOLUCAO      ( FieldByName('DT_DEVOLUCAO').AsDateTime );
        item.ATIVO          ( FieldByName('ATIVO').AsBoolean );

        Lista.Add(item);
        Next;
      end;
    end;
    Result := Lista;

  finally
    FreeAndNil(SQL);
  end;

end;

function TModelEmprestimos.LIVRO: Integer;
begin
  Result := FID_LIVRO;
end;

class function TModelEmprestimos.New: iModelEmprestimos;
begin
  Result:= Self.Create;
end;

function TModelEmprestimos.Total: Integer;
begin

end;

end.
