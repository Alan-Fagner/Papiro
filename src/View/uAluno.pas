unit uAluno;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ComCtrls,
  uController.Interfaces, Vcl.ExtDlgs;

type
  TFrmAluno = class(TForm)
    PnFundo: TPanel;
    PC: TPageControl;
    TSTabela: TTabSheet;
    PnDados: TPanel;
    LV: TListView;
    PnMenu: TPanel;
    Label18: TLabel;
    BtnRemover: TPanel;
    Image1: TImage;
    Label2: TLabel;
    BtnAdicionar: TPanel;
    Image2: TImage;
    Label3: TLabel;
    TSDados: TTabSheet;
    Panel1: TPanel;
    BtnVoltar: TPanel;
    Image3: TImage;
    Label4: TLabel;
    BtnSalvar: TPanel;
    Image4: TImage;
    Label5: TLabel;
    Panel2: TPanel;
    GridPanel1: TGridPanel;
    Panel3: TPanel;
    Label6: TLabel;
    EdtNome: TEdit;
    GroupBox1: TGroupBox;
    Img: TImage;
    Panel13: TPanel;
    LblFoto: TLabel;
    SBAdicionaFoto: TSpeedButton;
    Panel4: TPanel;
    Label7: TLabel;
    CBUF: TComboBox;
    Panel5: TPanel;
    Label8: TLabel;
    EdtCEP: TEdit;
    Panel7: TPanel;
    Label10: TLabel;
    EdtComplemento: TEdit;
    Panel9: TPanel;
    Label12: TLabel;
    EdtBairro: TEdit;
    Panel10: TPanel;
    Label13: TLabel;
    EdtCidade: TEdit;
    Panel11: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    EdtEndereco: TEdit;
    EdtNumero: TEdit;
    GroupBox2: TGroupBox;
    Panel12: TPanel;
    Label16: TLabel;
    EdtRG: TEdit;
    Panel15: TPanel;
    Label19: TLabel;
    EdtCPF: TEdit;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    Label9: TLabel;
    EdtTel2: TEdit;
    Panel16: TPanel;
    Label20: TLabel;
    EdtTel1: TEdit;
    Panel8: TPanel;
    Label11: TLabel;
    EdtEmail: TEdit;
    RGAtivo: TRadioGroup;
    GroupBox4: TGroupBox;
    MmObs: TMemo;
    GroupBox5: TGroupBox;
    MmInformacoes: TMemo;
    Panel14: TPanel;
    Label17: TLabel;
    EdtTurma: TEdit;
    GroupBox6: TGroupBox;
    ListView1: TListView;
    OP: TOpenPictureDialog;
    PnPesquisar: TPanel;
    Label1: TLabel;
    SBPesquisar: TSpeedButton;
    EdtPesquisar: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure LVDblClick(Sender: TObject);
    procedure SBAdicionaFotoClick(Sender: TObject);
    procedure SBPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Controller: iController;
    Procedure Lista(Nome: string = '');
    procedure CarregarPessoa(Nome: string);
  public
    { Public declarations }
  end;

var
  FrmAluno: TFrmAluno;

implementation

uses
  uController, uBibliotecario, uUtil;

{$R *.dfm}

procedure TFrmAluno.BtnAdicionarClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
  GridPanel1.Width := Panel1.Width;
end;

procedure TFrmAluno.BtnRemoverClick(Sender: TObject);
begin
  if LV.ItemIndex >= 0 then begin
    case application.MessageBox(PWIDECHAR('Confirma a exclusão do Aluno?'+#13+LV.ItemFocused.SubItems[0]), 'Confirmação', MB_yesno + MB_iconInformation) of
      mrYes, mrOk: begin
        if Controller.Pessoa.Delete(LV.ItemFocused.Caption) then
          Lista;
      end;

      mrNo, mrCancel: exit;
    end;
  end;
end;

procedure TFrmAluno.BtnSalvarClick(Sender: TObject);
begin
  with Controller.Pessoa do begin

    if LV.ItemIndex >= 0 then begin
      ID(List(LV.ItemFocused.SubItems[0]).Items[0].ID);
      DT_CADASTRO(List(LV.ItemFocused.SubItems[0]).Items[0].DT_CADASTRO);
      US_CADASTRO(List(LV.ItemFocused.SubItems[0]).Items[0].US_CADASTRO);
      DT_ALTERACAO(now);
      US_ALTERACAO(1);
    end else begin
      DT_CADASTRO(now);
      US_CADASTRO(1);
    end;

    NOME(EdtNome.Text);
    ENDERECO(EdtEndereco.Text);
    NUMERO(EdtNumero.Text);
    COMPLEMENTO(EdtComplemento.Text);
    BAIRRO(EdtBairro.Text);
    CIDADE(EdtCidade.Text);
    CEP(EdtCEP.Text);
    UF(CBUF.Text);
    RG(EdtRG.Text);
    CPF(EdtCPF.Text);
    TEL1(EdtTel1.Text);
    TEL2(EdtTel2.Text);
    EMAIL(EdtEmail.Text);
    OBS(MmObs.Lines.Text);
    FOTO(LblFoto.Caption);
    PERFIL('ALUNO');

    case RGAtivo.ItemIndex of
      0: ATIVO(True);
      1: ATIVO(false);
    end;

    if insert then begin
      LimpaCampo(Self);
      LblFoto.Caption := 'C:\';
      Img.Picture := nil;
      PC.ActivePage := TSTabela;
      Lista;
    end else begin
      ShowMessage('Erro ao Adicionar Bibliotecário');
    end;
  end;
end;

procedure TFrmAluno.BtnVoltarClick(Sender: TObject);
begin
  LimpaCampo(Self);
  LblFoto.Caption := 'C:\';
  Img.Picture := nil;
  PC.ActivePage := TSTabela;
end;

procedure TFrmAluno.CarregarPessoa(Nome: string);
begin
  with Controller.Pessoa.List(Nome).Items[0] do begin
    EdtNome.Text          := NOME;
    EdtEndereco.Text      := ENDERECO;
    EdtNumero.Text        := NUMERO;
    EdtComplemento.Text   := COMPLEMENTO;
    EdtBairro.Text        := BAIRRO;
    EdtCidade.Text        := CIDADE;
    EdtCEP.Text           := CEP;
    CBUF.Items.IndexOf(UF);
    EdtCPF.Text           := CPF;
    EdtRG.Text            := RG;
    EdtTel1.Text          := TEL1;
    EdtTel2.Text          := TEL2;
    EdtEmail.Text         := EMAIL;
    MmOBS.Lines.Add(OBS);

    if ATIVO then
      RGAtivo.ItemIndex := 0
    else
      RGAtivo.ItemIndex := 1;

    MmInformacoes.Lines.Add('Data do cadastrado: '+ DateTimeToStr(DT_CADASTRO));
    MmInformacoes.Lines.Add('Usuário do Cadastrado: ');
    MmInformacoes.Lines.Add('-------------------------------------------------');
    MmInformacoes.Lines.Add('Data da última Alteração: '+ DateTimeToStr(DT_ALTERACAO));
    MmInformacoes.Lines.Add('Usuário da última Alteração: ');

  end;
end;
procedure TFrmAluno.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
  PC.ActivePage := TSTabela;
end;

procedure TFrmAluno.FormShow(Sender: TObject);
begin
  Lista;
end;

procedure TFrmAluno.Lista(Nome: string);
var
  i: integer;
  item: TListItem;
begin
  LV.Clear;

  with Controller.Pessoa.List(Nome,'ALUNO') do begin
    for i := 0 to pred(Count) do begin
      Item := LV.Items.Add;
      item.Caption := IntToStr(Items[i].ID);
      Item.SubItems.Add( Items[i].NOME );
        TrueBoolStrs := ['Sim'];
        FalseBoolStrs := ['Não'];
      Item.SubItems.Add( BoolToStr(Items[i].ATIVO,true));
    end;
  end;
end;

procedure TFrmAluno.LVDblClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
  GridPanel1.Width := Panel1.Width;

  if LV.ItemIndex >= 0 then
    CarregarPessoa(LV.ItemFocused.SubItems[0]);
end;

procedure TFrmAluno.SBAdicionaFotoClick(Sender: TObject);
begin
  if OP.Execute then begin
    LblFoto.Caption := OP.FileName;
    Img.Picture.LoadFromFile(OP.FileName);
  end;
end;

procedure TFrmAluno.SBPesquisarClick(Sender: TObject);
begin
  Lista(EdtPesquisar.Text);
end;

end.
