unit uInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Grids, Vcl.Outline, uController.Interfaces;

type
  TFrmInicio = class(TForm)
    PnFundo: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    LblLivros: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    LblAlunos: TLabel;
    Image2: TImage;
    Panel7: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Controller: iController;

  public
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;

implementation

uses
  uController;

{$R *.dfm}

procedure TFrmInicio.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
end;

procedure TFrmInicio.FormShow(Sender: TObject);
begin
  LblLivros.Caption := 'Total: '+ Controller.Livro.Total;
  LblAlunos.Caption := 'Total: '+ IntToStr(Controller.Pessoa.Total('Aluno'));
end;

end.
