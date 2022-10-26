unit uLivro;

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
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Grids,
  uController.Interfaces, Vcl.Buttons, uUtil;

type
  TFrmLivros = class(TForm)
    PnMenu: TPanel;
    PnFundo: TPanel;
    BtnRemover: TPanel;
    PnDados: TPanel;
    PnPesquisar: TPanel;
    Label1: TLabel;
    EdtPesquisar: TEdit;
    PC: TPageControl;
    TSTabela: TTabSheet;
    TSDados: TTabSheet;
    Image1: TImage;
    Label2: TLabel;
    BtnAdicionar: TPanel;
    Image2: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    BtnVoltar: TPanel;
    Image3: TImage;
    Label4: TLabel;
    BtnSalvar: TPanel;
    Image4: TImage;
    Label5: TLabel;
    LV: TListView;
    Panel2: TPanel;
    GridPanel1: TGridPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Label6: TLabel;
    EdtTitulo: TEdit;
    Label7: TLabel;
    EdtSubTitulo: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    Label8: TLabel;
    EdtVolume: TEdit;
    Panel5: TPanel;
    Label9: TLabel;
    EdtEdicao: TEdit;
    Panel6: TPanel;
    Label10: TLabel;
    EdtPaginas: TEdit;
    Panel8: TPanel;
    Label11: TLabel;
    EdtAno: TEdit;
    Panel11: TPanel;
    Label14: TLabel;
    CBEditora: TComboBox;
    Panel9: TPanel;
    Label12: TLabel;
    CBAutor: TComboBox;
    Panel10: TPanel;
    Label13: TLabel;
    CBClassificacao: TComboBox;
    Panel12: TPanel;
    Label15: TLabel;
    CBTipo: TComboBox;
    Panel13: TPanel;
    Label16: TLabel;
    CBIdioma: TComboBox;
    Panel14: TPanel;
    Label17: TLabel;
    EdtCDU: TEdit;
    Panel15: TPanel;
    Label18: TLabel;
    EdtCDD: TEdit;
    Panel16: TPanel;
    Label19: TLabel;
    EdtISBN: TEdit;
    Panel17: TPanel;
    Label20: TLabel;
    EdtCutter: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    LblDisponivel: TLabel;
    MmOBS: TMemo;
    MmInforma��es: TMemo;
    MmDescricao: TMemo;
    Label21: TLabel;
    SBPesquisar: TSpeedButton;
    procedure LVDblClick(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure SBPesquisarClick(Sender: TObject);
    procedure EdtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Controller: iController;
    Thread: TThread;

    Procedure Lista(Titulo: string = '');
    procedure CarregarLivro(Titulo: string);


  public
    { Public declarations }
  end;

var
  FrmLivros: TFrmLivros;

implementation

uses
  uController;

{$R *.dfm}

procedure TFrmLivros.BtnAdicionarClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
  GridPanel1.Width := Panel1.Width;
end;

procedure TFrmLivros.BtnRemoverClick(Sender: TObject);
begin
  if LV.ItemIndex >= 0 then begin
    case application.MessageBox(PWIDECHAR('Confirma a exclus�o do livro?'+#13+LV.ItemFocused.SubItems[2]), 'Confirma��o', MB_yesno + MB_iconInformation) of
      mrYes, mrOk: begin
        if Controller.Livro.Delete(LV.ItemFocused.SubItems[0]) then
          Lista;
      end;

      mrNo, mrCancel: exit;
    end;
  end;
end;

procedure TFrmLivros.BtnSalvarClick(Sender: TObject);
begin
  with Controller.Livro do begin
    if LV.ItemIndex >= 0 then
      ID(StrToInt(LV.ItemFocused.Caption));

    TITULO(EdtTitulo.Text);
    SUBTITULO(EdtSubTitulo.Text);
    AUTOR(CBAutor.ItemIndex);
    EDITORA(CBEditora.ItemIndex);
    VOLUME(EdtVolume.Text);
    EDICAO(EdtEdicao.Text);
    PAGINAS(EdtPaginas.Text);
    ANO(EdtAno.Text);
    CLASSIFICACAO(CBClassificacao.ItemIndex);
    TIPO(CBTipo.ItemIndex);
    IDIOMA(CBIdioma.ItemIndex);
    ISBN(EdtISBN.Text);
    CUTTER(EdtCutter.Text);
    CDD(EdtCDD.Text);
    CDU(EdtCDU.Text);
    DISPONIVEL(True);
    OBS(MmOBS.Lines.Text);
    DESCRICAO(MmDescricao.Lines.Text);

    if insert then begin
      LimpaCampo(Self);
      PC.ActivePage := TSTabela;
      Lista;
    end else begin
      ShowMessage('Erro ao Adicionar Livro');
    end;
  end;
end;

procedure TFrmLivros.BtnVoltarClick(Sender: TObject);
begin
  LimpaCampo(Self);
  PC.ActivePage := TSTabela;
end;

procedure TFrmLivros.CarregarLivro(Titulo: string);
begin
  TrueBoolStrs := ['Sim'];
  FalseBoolStrs := ['N�o'];
  with Controller.Livro.List(Titulo).Items[0] do begin
    EdtTitulo.Text              := TITULO;
    EdtSubTitulo.Text           := SUBTITULO;
    CBAutor.ItemIndex           := AUTOR;
    CBEditora.ItemIndex         := EDITORA;
    EdtVolume.Text              := VOLUME;
    EdtEdicao.Text              := EDICAO;
    EdtPaginas.Text             := PAGINAS;
    EdtAno.Text                 := ANO;
    CBClassificacao.ItemIndex   := CLASSIFICACAO;
    CBTipo.ItemIndex            := TIPO;
    CBIdioma.ItemIndex          := IDIOMA;
    EdtISBN.Text                := ISBN;
    EdtCutter.Text              := CUTTER;
    EdtCDD.Text                 := CDD;
    EdtCDU.Text                 := CDU;
    LblDisponivel.Caption       := BoolToStr(DISPONIVEL,true);
    MmOBS.Lines.Add(OBS);
    MmDescricao.Lines.Add(DESCRICAO);
  end;
end;

procedure TFrmLivros.EdtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SBPesquisar.OnClick(Sender);
end;

procedure TFrmLivros.FormCreate(Sender: TObject);
begin
  Controller := TController.New;
  PC.ActivePage := TSTabela;
   Lista;
end;

procedure TFrmLivros.Lista(Titulo: string);
var
  i: integer;
  Item: TListItem;
begin
  LV.Clear;
  TrueBoolStrs := ['Sim'];
  FalseBoolStrs := ['N�o'];

  with Controller.Livro.List(Titulo) do begin
    for i := 0 to pred(Count) do begin
      Item := LV.Items.Add;
      item.Caption := IntToStr(Items[i].ID);
      Item.SubItems.Add( Items[i].TITULO );
      Item.SubItems.Add( BoolToStr(Items[i].DISPONIVEL,true));
    end;
  end;

end;

procedure TFrmLivros.ListView1DblClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;

  if LV.ItemIndex >= 0 then
    CarregarLivro(LV.ItemFocused.SubItems[0]);
end;

procedure TFrmLivros.LVDblClick(Sender: TObject);
begin
  PC.ActivePage := TSDados;
end;

procedure TFrmLivros.Panel5Click(Sender: TObject);
begin
  PC.ActivePage := TSTabela;
end;

procedure TFrmLivros.SBPesquisarClick(Sender: TObject);
begin
  Lista(EdtPesquisar.Text);
end;

end.
