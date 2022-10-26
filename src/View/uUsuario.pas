unit uUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.ComCtrls, uController.Interfaces;

type
  TFrmUsuario = class(TForm)
    PnFundo: TPanel;
    PC: TPageControl;
    TSTabela: TTabSheet;
    PnDados: TPanel;
    LV: TListView;
    EdtPesquisar: TEdit;
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
    Panel14: TPanel;
    Label17: TLabel;
    EdtTurma: TEdit;
    OP: TOpenPictureDialog;
    MmInformacoes: TMemo;
    GroupBox6: TGroupBox;
    Panel17: TPanel;
    LblSenha: TLabel;
    EdtSenha: TEdit;
    Panel18: TPanel;
    Label21: TLabel;
    EdtLogin: TEdit;
    Panel19: TPanel;
    Label22: TLabel;
    CBPerfil: TComboBox;
    RGPesquisar: TRadioGroup;
    BtnPesquisar: TButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LVDblClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure SBAdicionaFotoClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure RGPesquisarClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure EdtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     Controller: iController;
     Procedure Lista(Nome: string = ''; Perfil: string = '');
     procedure CarregarPessoa(Nome: string);
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

uses
  uController, uAluno, uUtil;

{$R *.dfm}

procedure TFrmUsuario.BtnAdicionarClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
  GridPanel1.Width := Panel1.Width;
end;

procedure TFrmUsuario.BtnRemoverClick(Sender: TObject);
begin
  if LV.ItemIndex >= 0 then begin
    case application.MessageBox(PWIDECHAR('Confirma a exclus�o do usu�rio?'+#13+LV.ItemFocused.SubItems[0]), 'Confirma��o', MB_yesno + MB_iconInformation) of
      mrYes, mrOk: begin
        if Controller.Pessoa.Delete(LV.ItemFocused.Caption) then
          Lista;
      end;

      mrNo, mrCancel: exit;
    end;
  end;
end;

procedure TFrmUsuario.BtnSalvarClick(Sender: TObject);
begin
  with Controller.Pessoa do begin

    if LV.ItemIndex >= 0 then begin
      ID(List(LV.ItemFocused.Caption).Items[0].ID);
      DT_CADASTRO(List(LV.ItemFocused.Caption).Items[0].DT_CADASTRO);
      US_CADASTRO(List(LV.ItemFocused.Caption).Items[0].US_CADASTRO);
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
    PERFIL(CBPerfil.Text);
    LOGIN(EdtLogin.Text);
    SENHA(EdtSenha.Text);

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
      ShowMessage('Erro ao Adicionar Bibliotec�rio');
    end;
  end;
end;

procedure TFrmUsuario.BtnVoltarClick(Sender: TObject);
begin
  LimpaCampo(Self);
  LblFoto.Caption := 'C:\';
  Img.Picture := nil;
  PC.ActivePage := TSTabela;
end;

procedure TFrmUsuario.CarregarPessoa(Nome: string);
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
    CBPerfil.ItemIndex    := CBPerfil.Items.IndexOf(PERFIL);
    EdtLogin.Text         := LOGIN;
    EdtSenha.Text         := SENHA;

    MmOBS.Lines.Add(OBS);

    if ATIVO then
      RGAtivo.ItemIndex := 0
    else
      RGAtivo.ItemIndex := 1;

    MmInformacoes.Lines.Add('Data do cadastrado: '+ DateTimeToStr(DT_CADASTRO));
    MmInformacoes.Lines.Add('Usu�rio do Cadastrado: ');
    MmInformacoes.Lines.Add('-------------------------------------------------');
    MmInformacoes.Lines.Add('Data da �ltima Altera��o: '+ DateTimeToStr(DT_ALTERACAO));
    MmInformacoes.Lines.Add('Usu�rio da �ltima Altera��o: ');

  end;
end;


procedure TFrmUsuario.EdtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnPesquisar.OnClick(Sender);
end;

procedure TFrmUsuario.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
  PC.ActivePage := TSTabela;
  Lista;
end;

procedure TFrmUsuario.Lista(Nome,Perfil: string);
var
  i, Total: integer;
  item: TListItem;
begin
  LV.Clear;
  TrueBoolStrs := ['Sim'];
  FalseBoolStrs := ['N�o'];

  Total:= Controller.Pessoa.Total(Perfil);

  with Controller.Pessoa.List(Nome,Perfil) do begin
    for i := 0 to pred(total) do begin
      Item := LV.Items.Add;
      item.Caption := Items[i].NOME;
      Item.SubItems.Add( BoolToStr(Items[i].ATIVO,true));
      Item.SubItems.Add( Items[i].PERFIL );
    end;
  end;
end;


procedure TFrmUsuario.LVDblClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
  GridPanel1.Width := Panel1.Width;

  if LV.ItemIndex >= 0 then
    CarregarPessoa(LV.ItemFocused.Caption);
end;

procedure TFrmUsuario.RGPesquisarClick(Sender: TObject);
begin
  case RGPesquisar.ItemIndex of
    0: Lista;
    1: Lista('','Administrador');
    2: Lista('','Operador');
    3: Lista('','Aluno');
  end;
end;

procedure TFrmUsuario.BtnPesquisarClick(Sender: TObject);
begin
  case RGPesquisar.ItemIndex of
    0: Lista(EdtPesquisar.Text);
    1: Lista(EdtPesquisar.Text,'Administrador');
    2: Lista(EdtPesquisar.Text,'Operador');
    3: Lista(EdtPesquisar.Text,'Aluno');
  end;
end;

procedure TFrmUsuario.SBAdicionaFotoClick(Sender: TObject);
begin
  if OP.Execute then begin
    LblFoto.Caption := OP.FileName;
    Img.Picture.LoadFromFile(OP.FileName);
  end;
end;

end.
