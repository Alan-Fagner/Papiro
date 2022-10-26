unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, uController.Interfaces, uUtil;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    EdtUsuario: TEdit;
    Label6: TLabel;
    EdtSenha: TEdit;
    Panel3: TPanel;
    BtnConfirma: TPanel;
    BtnCancelar: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    PnAviso: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure EdtUsuarioChange(Sender: TObject);
    procedure EdtSenhaChange(Sender: TObject);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Controller: iController;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses
  uController, uPrincipal;

{$R *.dfm}

procedure TFrmLogin.EdtSenhaChange(Sender: TObject);
begin
  PnAviso.Visible := False;
end;

procedure TFrmLogin.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnConfirma.OnClick(Sender);
end;

procedure TFrmLogin.EdtUsuarioChange(Sender: TObject);
begin
  PnAviso.Visible := False;
end;

procedure TFrmLogin.EdtUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnConfirma.OnClick(Sender);
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
  PnAviso.Visible := False;
end;

procedure TFrmLogin.BtnConfirmaClick(Sender: TObject);
var ID: integer;
begin
  with Controller.Pessoa.Acesso(EdtUsuario.Text,EdtSenha.Text) do begin
    if (ID <> 0) and ATIVO then begin
      UsLogadoID := ID;
      UsLogadoLogin := LOGIN;
      UsLogadoPerfil := PERFIL;
      close;
    end else begin
      PnAviso.Visible := True;
    end;
  end;
end;

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
