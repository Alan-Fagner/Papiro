object FrmBibliotecario: TFrmBibliotecario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmBibliotecario'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnFundo: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 768
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PnFundo'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object PC: TPageControl
      Left = 0
      Top = 0
      Width = 1024
      Height = 768
      ActivePage = TSTabela
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object TSTabela: TTabSheet
        Caption = 'TSTabela'
        TabVisible = False
        object PnDados: TPanel
          AlignWithMargins = True
          Left = 115
          Top = 3
          Width = 898
          Height = 752
          Margins.Left = 5
          Align = alClient
          BevelOuter = bvNone
          Caption = 'PnDados'
          Color = clWhite
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object LV: TListView
            Left = 0
            Top = 71
            Width = 898
            Height = 681
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clWhite
            Columns = <
              item
                Caption = 'ID'
                Width = 0
              end
              item
                AutoSize = True
                Caption = 'Nome'
              end
              item
                Alignment = taCenter
                Caption = 'Ativo'
                Width = 100
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -13
            Font.Name = 'Century Gothic'
            Font.Style = []
            FlatScrollBars = True
            GridLines = True
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            TabOrder = 0
            ViewStyle = vsReport
            OnDblClick = LVDblClick
          end
          object PnPesquisar: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 898
            Height = 61
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 10
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'PnPesquisar'
            ShowCaption = False
            TabOrder = 1
            DesignSize = (
              894
              57)
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 888
              Height = 17
              Align = alTop
              Caption = 'Pesquisar:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 63
            end
            object SBPesquisar: TSpeedButton
              Left = 866
              Top = 26
              Width = 25
              Height = 25
              Anchors = [akTop, akRight]
              OnClick = SBPesquisarClick
            end
            object EdtPesquisar: TEdit
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 856
              Height = 25
              Margins.Right = 35
              Align = alTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object PnMenu: TPanel
          Left = 0
          Top = 0
          Width = 110
          Height = 758
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'PnMenu'
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          object Label18: TLabel
            AlignWithMargins = True
            Left = 20
            Top = 406
            Width = 87
            Height = 322
            Margins.Left = 20
            Margins.Bottom = 30
            Align = alBottom
            Alignment = taCenter
            Caption = 'Bibliotec'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -53
            Font.Name = 'Century Gothic'
            Font.Orientation = 900
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 68
          end
          object BtnRemover: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 89
            Width = 104
            Height = 80
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Remover'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            ShowCaption = False
            TabOrder = 0
            OnClick = BtnRemoverClick
            object Image1: TImage
              AlignWithMargins = True
              Left = 3
              Top = 10
              Width = 98
              Height = 35
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alTop
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
                A94944415478DA63641860C0488AE2FFFFFF339E3B772E0CC8E4C7A1E4A39191
                D12A4646C6FF3471C0D9B3677D808E48065AB01D87033D8172738D8D8DB7D0C4
                01A74F9F5E0CB464929999D9691CF2664C4C4C394007C491E5807DC7CF86FDF9
                FD6FDAF73F0C588310E83B5E4686FFCCF80CFCCFC0F817E8C8CFD8E4B8581919
                9818FE6639DB9AAFC6EA80ED874EDF8C58CDA8F6F12729E1423CE06767605819
                CA70D3C3CE4403AB03F61E3973E7C4D3FF82CC8C8CDCA004474DCB4109131834
                5F2DA419DF3BDB98A86075003091690229E3CB2FFF4F5B759581979A0E08D366
                F8AC2BCE9805B2069846AE637500D411C6DB6FFFDB51B38F5104C457146460B8
                FF1E218FCE4706F8D4B638FD7FE3A9CAE401B4FC2C4AC81072C0E2400686D8F5
                0879743E32C0A776D401A30E1875C0A803461D30EA8051078C3A60D401443BE0
                CC9933467BEE32ECACD8CB20C24045D0E1CCF0C64599C1DDC4C4E41C5E079C38
                7182EFD36FD6DBF3CFFF17F9F917D88FA002606766F89768C8F8868BF1BB8A8D
                8D0D4AA7056BDB1FD80195FFFBF7AF33B09BC5420D07FCFBF7EF0FB05FB007E8
                FB47E87254ED7C9003006D5F0E3F87C5392E0000000049454E44AE426082}
              Proportional = True
              OnClick = BtnRemoverClick
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 100
            end
            object Label2: TLabel
              Left = 0
              Top = 45
              Width = 104
              Height = 35
              Align = alClient
              Alignment = taCenter
              Caption = 'Remover'
              Color = clHotLight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              OnClick = BtnRemoverClick
              ExplicitWidth = 58
              ExplicitHeight = 17
            end
          end
          object BtnAdicionar: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 104
            Height = 80
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Remover'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            ShowCaption = False
            TabOrder = 1
            OnClick = BtnAdicionarClick
            object Image2: TImage
              AlignWithMargins = True
              Left = 3
              Top = 10
              Width = 98
              Height = 35
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alTop
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000004
                004944415478DAED976D4C535718C7FFE7F6B6F485F1325BD9800A16C68B0A4A
                29529D68543212B625635BC6302E260B53B3F865214BB6F06159B6185CCCDE22
                5942C262A641C78C912D3A43A2CB6649900AB330455C9BDA953640A060BBD2DE
                DBDBDEDD760BCED05224B47EF1F976CF7DEE39BFF33CFFF39CE7123C66234F00
                1E3FC0C11B728448695257E5C9343AB5B67F019A072B73D7D0576A0A5303C958
                7BC61BA487C7E77B278E6F695C0068AACEB8DCD5AC51260360D0368F866FCCE7
                EDC736BFF60460D9005EAF170CC3402E97432A95260F80E7791887C730F01783
                9BCE106A0B2894E7676243E1BAE400986D4EB45D9E40E710BF3076E22511F6EF
                D4203D3D2DF1007D43B7517FD20737F360AC3A07F8769F6AC5517824807ED35D
                EC3BE38175F6C1D88B45407B6336F2729F5D189BF172B0BBD8988B2A5369E466
                4A1E1DE0BEDB839F072C38F46330128575E940678318BB74A5108BC5898F4064
                77AE59DCB238C00482504825A828CD874C265BD1E22B02085B201000C7719048
                241089448B21139582F0F9378DDDC3A43B80292F815A484156BA0C65C5F91198
                E518CBB2A0691A1445459EAF8C7AF04687A5CFF565C58E2501DC42FE0D260B8E
                5C0C3E2442BD9AE0B33A1AD59B4BE242F8FD7E5C17849C22A151555E1C89DEE9
                7E170E9EB6597DED5A4D4C807001321847F0FAD9F0CE174FBC3587E0C42BA9C2
                A4458BDED91D13B03A26851DD3826E38BCD3C3A15849D0BA8B460814F86000EF
                F7F24EE347953931013C1E0F7E305870BC2F1873775FD753D85D5DBE4813C611
                33DE3A731F76372012A2EEF9AF863C2DE8D623C8A47123114030DD75A4521513
                209CFB3BF726960C2F2D22D850A07EE83886BF1BBA6546ED490E6C0C765D3670
                5847984DCA40A15EAF1F5FB5DB7078D48261FBDFF8F8170E66D7D2BE357940CB
                364CA789439FAC1AC05DEB383EEC99C2F9517E59FE47F7626E4F011A63020443
                3CFE9C6290B7460299988A3B61B84E5CBDFE07EABE0BC6F55DAB004EBD0A4B5D
                8DAE30BA069810F4C7EECCB87D4113786CBADA52B4B64095B2E4A4E1FC9FFDCD
                8CE60B5C5C00B1A0DB9E37319926F23F17B52975CC71E211E77CFBEC1715AD38
                64AC2FC9927755A8A5519B5696E3C9EF769FE283ED01C9295388BA665B5ECADE
                DB06B6A1149FC66ECB29DE860EDD74DCB69D9054A170A80F6F45D90B9AD08101
                0779AAAD0FF258EE194243D526E45FE86B6EAA14E4DD55FD31110A18E9350C8E
                349DC346972FBACFDEF540EB4E7CBEE7795D4B847F3501C276E9D7C1CE73B7F9
                B785CB939D63C0FF3486145AD0F0812DBCDFCD10B1F6199EADD5A0A9AAAAAA27
                210086FE1BBBBD2CFFB252410DCD78F9FD17C6B0A32C8BB0252ABE434E13AB37
                80B20C2939AAD56A9D0901F8BF7577778B32B3D77F4F2872AD76BBEEAB683EFF
                006DD6205A51D421510000000049454E44AE426082}
              Proportional = True
              OnClick = BtnAdicionarClick
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 100
            end
            object Label3: TLabel
              Left = 0
              Top = 45
              Width = 104
              Height = 35
              Align = alClient
              Alignment = taCenter
              Caption = 'Adicionar'
              Color = clHotLight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              OnClick = BtnAdicionarClick
              ExplicitWidth = 62
              ExplicitHeight = 17
            end
          end
        end
      end
      object TSDados: TTabSheet
        Caption = 'TSDados'
        ImageIndex = 1
        TabVisible = False
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 110
          Height = 758
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'PnMenu'
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object BtnVoltar: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 89
            Width = 104
            Height = 80
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Remover'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            ShowCaption = False
            TabOrder = 0
            OnClick = BtnVoltarClick
            object Image3: TImage
              AlignWithMargins = True
              Left = 3
              Top = 10
              Width = 98
              Height = 35
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alTop
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
                7E4944415478DACD575B485451145DF78E9AA9415A628998F8C847D9478E1A48
                924491E15F18515F628E0915415F51947D05413F16D4981F1111A17FD1830A52
                B00732330AE59483D2034C340D03C5F79CDBBA731D756C9CB9F3B0DC7067F6B9
                F7ECBDD7D9FB3CD691108C54361B9098968C1943BCAB1DE51CC5F0B701B41C75
                06EA4AD2DDD364CD009463807C9CFF497C682B09EDA3225357A80C527F08031E
                E176E197F000A8EDCC831066485236E3C5336E846F03658E7D4621A3074EA916
                4D059F830350698F42FC54131D96B3B539D0D4CEBB1FA1FD538CAE37A165C78C
                7E00559D898814AFA865F189092EF842462619C641E5001A8D23FE0168C12DD4
                52F818420BEEC6002723F553332E07E109C0648D64EF0EBEDE15B6E08B910481
                D8590EE3D2722C0360BB4F00471072DA574431C1C5D20CB3B1EA6F00266B0E7F
                DB11F484D32D2350C43EDC2DB27B02A8B1BCE1522B59C92A6E9D8C9C2DD1B07E
                9FF0E9DDB82D063D8353189F163E12C1819A8DA58B00AA6D99ACF83BA63FD15B
                FF58067F723A134569B1A8B8D58756C79857BF251971787E36131F7F4CE25043
                1FC6A656DC18876150F6A89B9506A0A6F31264718593C4EB26A38EAAF57CB62B
                0BEAC80EDFEC457BEFB8479FBD59717876266BA14FD90D87AF6C71B312975986
                6B1A00938DF550F27CA5D63DBA0DD1064CCC088F4CF8FAE643EC5C923B25D7C1
                129F3EC4179BFC59780B3433A704135CADFE4F24EFDE2A71F6A732F55D9C0D09
                3AAC3C404CCD0A081E4131517280C15D320431675401E4B3F11A012C3F15C4CB
                7359AEC0AA4C330BE50DBD8104D732208BFD6B02402A5B5D7CFE71091496C069
                5C03935095FFB10C25A51BE6C27C0D40ADF50257C2556A91DEFA867F23226B82
                7C118D05D7E73340BEA7E03D976258B6E20FDC8ACB03DA8AB532B411997A4078
                6549613E8CDA781895C123589D259B24F22D744CC6106504422A7593D5E58CE8
                1E7F2BB19A8404A4EC8D05D58BC9F004B07A940CE48590BA311A5DB4322553C5
                4D4A159252295CA4542129957490D2C54CA8DBF20B1A6DA7715C68D15D3CD0C1
                011DD447CBDDA25E4C1226CD34AC40703C51A1F75FBC253DA67A8AC167BDC2F3
                EBE6A42D9787C61D76CD654BBD8CFAB99A91ED805733E0130CA2966BDDE1333F
                BAC7536749E7323D4A8B1364F849F33C5F9EF7A2E932CF78C80FE09C6D4653F1
                573D6EF503582AF5BC0DF7772423C2B0511BB3F337528A07502F89405DFD0131
                6BC080A7248F0F0000000049454E44AE426082}
              Proportional = True
              OnClick = BtnVoltarClick
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 100
            end
            object Label4: TLabel
              Left = 0
              Top = 45
              Width = 104
              Height = 35
              Align = alClient
              Alignment = taCenter
              Caption = 'Voltar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              OnClick = BtnVoltarClick
              ExplicitWidth = 39
              ExplicitHeight = 17
            end
          end
          object BtnSalvar: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 104
            Height = 80
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentFont = False
            ShowCaption = False
            TabOrder = 1
            OnClick = BtnSalvarClick
            object Image4: TImage
              AlignWithMargins = True
              Left = 3
              Top = 10
              Width = 98
              Height = 35
              Margins.Top = 10
              Margins.Bottom = 0
              Align = alTop
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
                4B4944415478DAEDD74F68D3501C07F06FEAE8B46C668C4E37078B280C824E5A
                6361E0147A1354982205871E76D079F0E0CDA167C7C4AB97B9CB74076F9EDCC1
                8B8776820A512F12194E56B55D6A8B3436CDECDAE6F952EAB0D834B6892D85FD
                0A4D9B57DEEFC3FB97FE18B43818E34D14459E5E4EFCD5C8307E424897F159C9
                667B331B3F7B01C25875AAEBBA52D0496C2FBBFBB51C8FCF8742A1A215E0EAD2
                0A997B2757364EFA81019A5ECBE5105E49E0D91A0B425FFF12DD6E1D63832A39
                76606849913F8D9B21B60077C264EE8954D9B8780EE0FB806F6905B3CB4038CE
                D635BCD342148922979D1821918E827A36180C161A04A431130196D77B4C934D
                0C27707C40C117B513B32257BA77F3E867DC7D3384491F4C114D0194A6D304D1
                348019A2A9806A08C700A7B8EFF0793390B39D58F8D06F0A28DD1F231B17785C
                0B04028F6A0216C681C37B80A4F203F75EE878FED51C502D6ED15D30531E8D3F
                E33C3D756E9F64A6044178501370E908706314C8E5F378F5318655651774589E
                43D8A43BDE8522BD3278581E8D860046ECEB06D89D80DBA58375E7697AEB8328
                B309C45517129A1BA4CACFEB02FC8FD806D404ECA70BFDFE991DE870592FB67A
                823E1D71FD69116B690B80B1EF172FF6403874D05180F87E15971FA72125B701
                750224C9DECAE479BECD47A0E58068346A2B31C771F6009AA6D902783C9E369F
                82542A652BB1D7EB6D7340CBA7A06980DFA599518A5D19F560B0BFCF51404C4E
                62FEA5867515F0D17F69A7872B015BC5292D48BB6841EA77347B3968DF6F69DF
                6AF96B840224671FFA0DC42FB56E733F0F1A19AB0000000049454E44AE426082}
              Proportional = True
              OnClick = BtnSalvarClick
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 100
            end
            object Label5: TLabel
              Left = 0
              Top = 45
              Width = 104
              Height = 35
              Align = alClient
              Alignment = taCenter
              Caption = 'Salvar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              OnClick = BtnSalvarClick
              ExplicitWidth = 39
              ExplicitHeight = 17
            end
          end
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 113
          Top = 0
          Width = 903
          Height = 758
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel2'
          Color = clWhite
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          object GridPanel1: TGridPanel
            Left = 0
            Top = 0
            Width = 903
            Height = 505
            Align = alTop
            BevelOuter = bvNone
            Caption = 'GridPanel1'
            Color = clWhite
            ColumnCollection = <
              item
                Value = 25.000625015625390000
              end
              item
                Value = 25.000625015625390000
              end
              item
                Value = 25.000625015625390000
              end
              item
                Value = 24.998124953123830000
              end>
            ControlCollection = <
              item
                Column = 0
                ColumnSpan = 2
                Control = Panel3
                Row = 0
              end
              item
                Column = 2
                ColumnSpan = 2
                Control = GroupBox1
                Row = 0
                RowSpan = 5
              end
              item
                Column = 1
                Control = Panel4
                Row = 4
              end
              item
                Column = 0
                Control = Panel5
                Row = 4
              end
              item
                Column = 0
                ColumnSpan = 2
                Control = Panel7
                Row = 2
              end
              item
                Column = 0
                Control = Panel9
                Row = 3
              end
              item
                Column = 1
                Control = Panel10
                Row = 3
              end
              item
                Column = 0
                ColumnSpan = 2
                Control = Panel11
                Row = 1
              end
              item
                Column = 0
                Control = GroupBox2
                Row = 5
                RowSpan = 3
              end
              item
                Column = 1
                Control = GroupBox3
                Row = 5
                RowSpan = 4
              end
              item
                Column = 0
                Control = RGAtivo
                Row = 8
              end
              item
                Column = 2
                Control = GroupBox6
                Row = 5
                RowSpan = 3
              end
              item
                Column = 3
                Control = GroupBox4
                Row = 5
                RowSpan = 3
              end
              item
                Column = 2
                ColumnSpan = 2
                Control = MmInformacoes
                Row = 8
                RowSpan = 2
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 9.999689305278631000
              end
              item
                Value = 9.999689305278631000
              end
              item
                Value = 9.999689305278631000
              end
              item
                Value = 9.998689336348104000
              end
              item
                Value = 9.999439313045999000
              end
              item
                Value = 9.999439313046000000
              end
              item
                Value = 10.001439200908610000
              end
              item
                Value = 10.002724928815480000
              end
              item
                Value = 10.000100001000010000
              end
              item
                Value = 9.999099990999909000
              end>
            ShowCaption = False
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 450
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 0
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 444
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'Nome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 40
              end
              object EdtNome: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 444
                Height = 25
                Margins.Top = 0
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 453
              Top = 3
              Width = 447
              Height = 244
              Align = alClient
              Caption = 'Foto'
              TabOrder = 1
              object Img: TImage
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 437
                Height = 183
                Align = alClient
                Center = True
                Proportional = True
                Transparent = True
                ExplicitLeft = 136
                ExplicitTop = 72
                ExplicitWidth = 105
                ExplicitHeight = 105
              end
              object Panel13: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 207
                Width = 437
                Height = 32
                Align = alBottom
                BevelKind = bkFlat
                BevelOuter = bvNone
                Caption = 'Panel13'
                ShowCaption = False
                TabOrder = 0
                object LblFoto: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 398
                  Height = 22
                  Align = alClient
                  Caption = 'C:\'
                  Layout = tlCenter
                  ExplicitWidth = 15
                  ExplicitHeight = 13
                end
                object SBAdicionaFoto: TSpeedButton
                  AlignWithMargins = True
                  Left = 407
                  Top = 3
                  Width = 23
                  Height = 22
                  Align = alRight
                  OnClick = SBAdicionaFotoClick
                  ExplicitLeft = 320
                  ExplicitTop = 8
                end
              end
            end
            object Panel4: TPanel
              Left = 225
              Top = 200
              Width = 225
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 2
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 219
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 14
              end
              object CBUF: TComboBox
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 219
                Height = 25
                Margins.Top = 0
                Align = alTop
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Items.Strings = (
                  'MG'
                  'RJ'
                  'SP')
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 200
              Width = 225
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 3
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 219
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'CEP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 26
              end
              object EdtCEP: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 219
                Height = 25
                Margins.Top = 0
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 100
              Width = 450
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 4
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 444
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'Complemento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 96
              end
              object EdtComplemento: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 444
                Height = 25
                Margins.Top = 0
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 150
              Width = 225
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 5
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 219
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'Bairro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 36
              end
              object EdtBairro: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 219
                Height = 25
                Margins.Top = 0
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel10: TPanel
              Left = 225
              Top = 150
              Width = 225
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 6
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 219
                Height = 17
                Margins.Top = 0
                Align = alTop
                Caption = 'Cidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 49
              end
              object EdtCidade: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 219
                Height = 25
                Margins.Top = 0
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel11: TPanel
              Left = 0
              Top = 50
              Width = 450
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              ShowCaption = False
              TabOrder = 7
              DesignSize = (
                450
                50)
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 61
                Height = 17
                Margins.Top = 0
                Caption = 'Endere'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                AlignWithMargins = True
                Left = 368
                Top = 0
                Width = 52
                Height = 17
                Margins.Top = 0
                Anchors = [akTop, akRight]
                Caption = 'N'#250'mero'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
              end
              object EdtEndereco: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 359
                Height = 25
                Margins.Top = 0
                Anchors = [akLeft, akTop, akRight]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object EdtNumero: TEdit
                AlignWithMargins = True
                Left = 368
                Top = 20
                Width = 79
                Height = 25
                Margins.Top = 0
                Anchors = [akTop, akRight]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object GroupBox2: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 253
              Width = 219
              Height = 144
              Align = alClient
              Caption = 'Documentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              object Panel12: TPanel
                Left = 2
                Top = 69
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 0
                object Label16: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'RG'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 19
                end
                object EdtRG: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Panel15: TPanel
                Left = 2
                Top = 19
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 1
                object Label19: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'CPF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 25
                end
                object EdtCPF: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 228
              Top = 253
              Width = 219
              Height = 194
              Align = alClient
              Caption = 'Contato'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              object Panel6: TPanel
                Left = 2
                Top = 69
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 0
                object Label9: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'Telefone 2'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 64
                end
                object EdtTel2: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Panel16: TPanel
                Left = 2
                Top = 19
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 1
                object Label20: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'Telefone 1'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 64
                end
                object EdtTel1: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Panel8: TPanel
                Left = 2
                Top = 119
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 2
                object Label11: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'Email'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 35
                end
                object EdtEmail: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object RGAtivo: TRadioGroup
              AlignWithMargins = True
              Left = 3
              Top = 403
              Width = 219
              Height = 44
              Align = alClient
              Caption = 'Ativo'
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 10
            end
            object GroupBox6: TGroupBox
              AlignWithMargins = True
              Left = 453
              Top = 253
              Width = 219
              Height = 144
              Align = alClient
              Caption = 'Informa'#231#245'es de Acesso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              object Panel14: TPanel
                Left = 2
                Top = 69
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 0
                object LblSenha: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'Senha'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 39
                end
                object EdtSenha: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '*'
                  TabOrder = 0
                end
              end
              object Panel17: TPanel
                Left = 2
                Top = 19
                Width = 215
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Panel3'
                ShowCaption = False
                TabOrder = 1
                object Label21: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 209
                  Height = 17
                  Margins.Top = 0
                  Align = alTop
                  Caption = 'Login'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 35
                end
                object EdtLogin: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 20
                  Width = 209
                  Height = 25
                  Margins.Top = 0
                  Align = alTop
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Century Gothic'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 678
              Top = 253
              Width = 222
              Height = 144
              Align = alClient
              Caption = 'Observa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              object MmObs: TMemo
                AlignWithMargins = True
                Left = 5
                Top = 22
                Width = 212
                Height = 117
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                TabOrder = 0
              end
            end
            object MmInformacoes: TMemo
              AlignWithMargins = True
              Left = 453
              Top = 403
              Width = 447
              Height = 99
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 13
            end
          end
        end
      end
    end
  end
  object OP: TOpenPictureDialog
    Left = 669
    Top = 526
  end
end
