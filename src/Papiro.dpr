program Papiro;

uses
  Vcl.Forms,
  uPrincipal in 'View\uPrincipal.pas' {FrmPrincipal},
  uInicio in 'View\uInicio.pas' {FrmInicio},
  uLivro in 'View\uLivro.pas' {FrmLivros},
  uBibliotecario in 'View\uBibliotecario.pas' {FrmBibliotecario},
  uModel.Interfaces in 'Model\uModel.Interfaces.pas',
  uModel.Conexao in 'Model\uModel.Conexao.pas',
  uModel.Livro in 'Model\uModel.Livro.pas',
  uController.Interfaces in 'Controller\uController.Interfaces.pas',
  uController in 'Controller\uController.pas',
  uModel.Pessoa in 'Model\uModel.Pessoa.pas',
  uUtil in 'Util\uUtil.pas',
  uAluno in 'View\uAluno.pas' {FrmAluno},
  uUsuario in 'View\uUsuario.pas' {FrmUsuario},
  uLogin in 'View\uLogin.pas' {FrmLogin},
  uModel.Permissao in 'Model\uModel.Permissao.pas',
  uEmprestimo in 'View\uEmprestimo.pas' {FrmEmprestimo},
  uModel.Emprestimos in 'Model\uModel.Emprestimos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;

  FrmLogin := TFrmLogin.Create(nil);
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmEmprestimo, FrmEmprestimo);
  FrmLogin.Hide;
  FrmLogin.Free;

  Application.Run;
end.
