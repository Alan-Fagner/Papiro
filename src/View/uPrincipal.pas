unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uController.Interfaces, uUtil, uEmprestimo;

type
  TFrmPrincipal = class(TForm)
    PnConteudo: TPanel;
    PnMenu: TPanel;
    BtnInicio: TPanel;
    Image1: TImage;
    BtnUsuarios: TPanel;
    LblUsuarios: TLabel;
    Image2: TImage;
    BtnFechar: TPanel;
    LblFechar: TLabel;
    Image3: TImage;
    BtnConfiguracoes: TPanel;
    BtnLivros: TPanel;
    LblLivros: TLabel;
    Image6: TImage;
    PnTop: TPanel;
    LblInicio: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LblPerfil: TLabel;
    Image7: TImage;
    Image8: TImage;
    BtnEmprestimos: TPanel;
    LblEmprestimos: TLabel;
    Image9: TImage;
    Panel1: TPanel;
    LblUsuario: TLabel;
    PnAdm: TPanel;
    PnAluno: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label21: TLabel;
    BtnFechar1: TPanel;
    Image5: TImage;
    Label5: TLabel;
    Panel3: TPanel;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnInicioClick(Sender: TObject);
    procedure BtnLivrosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnEmprestimosClick(Sender: TObject);
  private
    { Private declarations }
    Controller: iController;
    FormAtivo: TForm;
    procedure Abrir_Form(xForm: TComponentClass);
    Procedure Reset_Menu;

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uInicio, uLivro, uBibliotecario, uAluno, uController, uUsuario, uLogin;

{ TFrmPrincipal }


procedure TFrmPrincipal.Abrir_Form(xForm: TComponentClass);
begin
  if Assigned(FormAtivo) then begin
    if FormAtivo.ClassType = xForm then begin
      exit
    end else begin
      FormAtivo.DisposeOf;
      FormAtivo := nil;
    end;
  end;

  Application.CreateForm(xForm, FormAtivo);

  with FormAtivo do begin
    Align := alClient;
    BorderStyle := bsNone;
    Parent := PnConteudo;
    Visible := True;
  end;
  Reset_Menu;
end;

procedure TFrmPrincipal.BtnEmprestimosClick(Sender: TObject);
begin
  Abrir_Form(TFrmEmprestimo);
  BtnEmprestimos.Color := clHotLight;
  LblEmprestimos.Font.Color := clBtnFace;
end;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.BtnInicioClick(Sender: TObject);
begin
  Abrir_Form(TFrmInicio);
  BtnInicio.Color := clHotLight;
  LblInicio.Font.Color := clBtnFace;
end;

procedure TFrmPrincipal.BtnLivrosClick(Sender: TObject);
begin
  Abrir_Form(TFrmLivros);
  BtnLivros.Color := clHotLight;
  LblLivros.Font.Color := clBtnFace;
end;

procedure TFrmPrincipal.BtnUsuariosClick(Sender: TObject);
begin
  Abrir_Form(TFrmUsuario);
  BtnUsuarios.Color := clHotLight;
  LblUsuarios.Font.Color := clBtnFace;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var
  i: integer;
begin
  LblUsuario.Caption := UsLogadoLogin;
  LblPerfil.Caption := UsLogadoPerfil;

  if UsLogadoPerfil = 'Aluno' then begin
    PnAdm.Visible := False;
    PnAluno.Visible := True;
  end else begin
    PnAluno.Visible := False;
    PnAdm.Visible := True;

    for i := 0 to ComponentCount -1 do begin

      if Components[i].Name = Tpanel(BtnUsuarios).Name then
        BtnUsuarios.Visible := Controller.Permissao.VerificaPermissao(UsLogadoPerfil,'Usuarios');

      if Components[i].Name = Tpanel(BtnLivros).Name then
        BtnLivros.Visible := Controller.Permissao.VerificaPermissao(UsLogadoPerfil,'Livros');

      if Components[i].Name = Tpanel(BtnEmprestimos).Name then
        BtnEmprestimos.Visible := Controller.Permissao.VerificaPermissao(UsLogadoPerfil,'Emprestimos');
    end;

    BtnInicio.OnClick(Sender);
  end;
end;

procedure TFrmPrincipal.Reset_Menu;
begin
  BtnInicio.Color := clBtnFace;
  LblInicio.Font.Color := clHotLight;

  BtnLivros.Color := clBtnFace;
  LblLivros.Font.Color := clHotLight;

  BtnUsuarios.Color := clBtnFace;
  LblUsuarios.Font.Color := clHotLight;

  BtnFechar.Color := clBtnFace;
  LblFechar.Font.Color := clHotLight;
end;

end.
