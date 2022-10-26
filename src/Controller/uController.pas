unit uController;

interface

uses
  uController.Interfaces,
  uModel.Interfaces;

type

  TController = class(TInterfacedObject, iController)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New : iController;

    Function Livro : iModelLivro;
    Function Pessoa : iModelPessoa;
    Function Permissao : iModelPermissao;
    Function Emprestimo : iModelEmprestimos;

  end;

implementation

uses
  uModel.Livro, uModel.Pessoa, uModel.Permissao, uModel.Emprestimos;

{ TController }

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Emprestimo: iModelEmprestimos;
begin
  Result := TModelEmprestimos.New;
end;

function TController.Livro: iModelLivro;
begin
  Result := TModelLivro.New;
end;

class function TController.New: iController;
begin
  Result:= Self.Create;
end;

function TController.Permissao: iModelPermissao;
begin
  Result := TModelPermissao.New;
end;

function TController.Pessoa: iModelPessoa;
begin
  Result := TModelPessoa.New;
end;

end.
