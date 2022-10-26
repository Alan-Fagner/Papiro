unit uModel.Interfaces;

interface

uses
  FireDAC.Comp.Client,
  System.Generics.Collections;

type

  iConexao = interface
    ['{11A7EF6D-73B7-4D8A-A192-E6A57D5C1BF3}']
    function Conexao : TFDConnection;
    Function QryOpen(SQL: string): TFDQuery;
    Function QryExecute(SQL: string): TFDQuery;
  end;

  iModelLivro = interface
    ['{9411B8D0-D220-44E0-81AB-80C056650FB7}']

    Function List(Titulo: string = '') : TList<iModelLivro>; overload;
    Function List(xID: integer) : iModelLivro; overload;
    Function insert : Boolean;
    Function Delete(ID: string) : Boolean;
    Function Total:string;

    Function ID(Value: Integer) : iModelLivro; overload;
    Function ID : Integer; overload;
    Function TITULO(Value: string) : iModelLivro; overload;
    Function TITULO : string; overload;
    Function SUBTITULO(Value: string) : iModelLivro; overload;
    Function SUBTITULO : string; overload;
    Function DESCRICAO(Value: string) : iModelLivro; overload;
    Function DESCRICAO : string; overload;
    Function VOLUME(Value: string) : iModelLivro; overload;
    Function VOLUME : string; overload;
    Function EDICAO(Value: string) : iModelLivro; overload;
    Function EDICAO : string; overload;
    Function PAGINAS(Value: string) : iModelLivro; overload;
    Function PAGINAS : string; overload;
    Function ANO(Value: string) : iModelLivro; overload;
    Function ANO : string; overload;
    Function EDITORA(Value: Integer) : iModelLivro; overload;
    Function EDITORA : Integer; overload;
    Function CLASSIFICACAO(Value: Integer) : iModelLivro; overload;
    Function CLASSIFICACAO : Integer; overload;
    Function TIPO(Value: Integer) : iModelLivro; overload;
    Function TIPO : Integer; overload;
    Function AUTOR(Value: Integer) : iModelLivro; overload;
    Function AUTOR : Integer; overload;
    Function IDIOMA(Value: Integer) : iModelLivro; overload;
    Function IDIOMA : Integer; overload;
    Function DISPONIVEL(Value: Boolean) : iModelLivro; overload;
    Function DISPONIVEL : Boolean; overload;
    Function CAPA(Value: string) : iModelLivro; overload;
    Function CAPA : string; overload;
    Function ISBN(Value: string) : iModelLivro; overload;
    Function ISBN : string; overload;
    Function CUTTER(Value: string) : iModelLivro; overload;
    Function CUTTER : string; overload;
    Function CDD(Value: string) : iModelLivro; overload;
    Function CDD : string; overload;
    Function CDU(Value: string) : iModelLivro; overload;
    Function CDU : string; overload;
    Function DT_CADASTRO(Value: TDateTime) : iModelLivro; overload;
    Function DT_CADASTRO : TDateTime; overload;
    Function US_CADASTRO(Value: Integer) : iModelLivro; overload;
    Function US_CADASTRO : Integer; overload;
    Function DT_ALTERACAO(Value: TDateTime) : iModelLivro; overload;
    Function DT_ALTERACAO : TDateTime; overload;
    Function US_ALTERACAO(Value: Integer) : iModelLivro; overload;
    Function US_ALTERACAO : Integer; overload;
    Function OBS(Value: string) : iModelLivro; overload;
    Function OBS : string; overload;
  end;

  iModelPessoa = interface
    ['{577B964B-D485-4D69-893A-6C576E618FA6}']
    Function List(xNome: string = ''; xPerfil: string = '') : TList<iModelPessoa>; overload;
    Function List(xID: Integer) : iModelPessoa; overload;
    Function insert : Boolean;
    Function Delete(ID: string) : Boolean;
    Function Acesso(xUsuario, xSenha: string): iModelPessoa;
    Function Total(xPerfil:string = ''):Integer;

    Function ID(Value: Integer) : iModelPessoa; overload;
    Function ID : Integer; overload;
    Function NOME(Value: string) : iModelPessoa; overload;
    Function NOME : string; overload;
    Function ENDERECO(Value: string) : iModelPessoa; overload;
    Function ENDERECO : string; overload;
    Function NUMERO(Value: string) : iModelPessoa; overload;
    Function NUMERO : string; overload;
    Function COMPLEMENTO(Value: string) : iModelPessoa; overload;
    Function COMPLEMENTO : string; overload;
    Function BAIRRO(Value: string) : iModelPessoa; overload;
    Function BAIRRO : string; overload;
    Function CIDADE(Value: string) : iModelPessoa; overload;
    Function CIDADE : string; overload;
    Function CEP(Value: string) : iModelPessoa; overload;
    Function CEP : string; overload;
    Function UF(Value: string) : iModelPessoa; overload;
    Function UF : string; overload;
    Function RG(Value: string) : iModelPessoa; overload;
    Function RG : string; overload;
    Function CPF(Value: string) : iModelPessoa; overload;
    Function CPF : string; overload;
    Function TEL1(Value: string) : iModelPessoa; overload;
    Function TEL1 : string; overload;
    Function TEL2(Value: string) : iModelPessoa; overload;
    Function TEL2 : string; overload;
    Function EMAIL(Value: string) : iModelPessoa; overload;
    Function EMAIL : string; overload;
    Function DT_NASC(Value: TDate) : iModelPessoa; overload;
    Function DT_NASC : TDate; overload;
    Function TURMA(Value: string) : iModelPessoa; overload;
    Function TURMA : string; overload;
    Function ATIVO(Value: Boolean) : iModelPessoa; overload;
    Function ATIVO : Boolean; overload;
    Function PERFIL(Value: string) : iModelPessoa; overload;
    Function PERFIL : string; overload;
    Function LOGIN(Value: string) : iModelPessoa; overload;
    Function LOGIN : string; overload;
    Function SENHA(Value: string) : iModelPessoa; overload;
    Function SENHA : string; overload;
    Function DT_CADASTRO(Value: TDateTime) : iModelPessoa; overload;
    Function DT_CADASTRO : TDateTime; overload;
    Function US_CADASTRO(Value: Integer) : iModelPessoa; overload;
    Function US_CADASTRO : Integer; overload;
    Function DT_ALTERACAO(Value: TDateTime) : iModelPessoa; overload;
    Function DT_ALTERACAO : TDateTime; overload;
    Function US_ALTERACAO(Value: Integer) : iModelPessoa; overload;
    Function US_ALTERACAO : Integer; overload;
    Function OBS(Value: string) : iModelPessoa; overload;
    Function OBS : string; overload;
    Function FOTO(Value: string) : iModelPessoa; overload;
    Function FOTO : string; overload;
  end;

  iModelPermissao = interface
    ['{FC021492-4364-43C3-A336-BBF03CD824C0}']

    Function VerificaPermissao(Perfil: string = '';Modulo : string = '') : Boolean;

    Function ID(Value: Integer) : iModelPermissao; overload;
    Function ID : Integer; overload;
    Function PERFIL(Value: string) : iModelPermissao; overload;
    Function PERFIL : string; overload;
    Function MODULO(Value: string) : iModelPermissao; overload;
    Function MODULO : string; overload;
    Function PERMISSAO(Value: Boolean) : iModelPermissao; overload;
    Function PERMISSAO : Boolean; overload;
  end;

  iModelEmprestimos = interface
    ['{3B3D374F-B93C-428C-A322-F6F6DF4725B9}']

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

end.
