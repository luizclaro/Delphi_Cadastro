unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TCadastroCliente = class(TForm)
    ovbNovo: TButton;
    ovbGravar: TButton;
    ovbExcluir: TButton;
    ovbFechar: TButton;
    ovt_Codigo_Cliente: TEdit;
    lblCodigoCliente: TLabel;
    ovtNome: TEdit;
    ovtEndereco: TEdit;
    ovtBairro: TEdit;
    ovtCidade: TEdit;
    ovtEmail: TEdit;
    lblNome: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ovtTelefone: TMaskEdit;
    procedure ovbFecharClick(Sender: TObject);
    procedure ovbExcluirClick(Sender: TObject);
    procedure ovt_Codigo_ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ovtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure ovtNomeKeyPress(Sender: TObject; var Key: Char);

    procedure ovtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure ovbNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ovbGravarClick(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCliente: TCadastroCliente;
   var arq: TextFile;
   var Lista : tstringlist;
implementation

{$R *.dfm}

procedure TCadastroCliente.ovbFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TCadastroCliente.ovbExcluirClick(Sender: TObject);
begin
ovt_Codigo_Cliente.Clear;
ovtNome.Clear;
ovtEndereco.Clear;
ovtBairro.Clear;
ovtCidade.Clear;
ovtTelefone.Clear;
ovtEmail.Clear;
ovt_Codigo_Cliente.SetFocus;
end;



procedure TCadastroCliente.ovt_Codigo_ClienteKeyPress(Sender: TObject; var Key:
Char);

begin
              if (Key in ['.', ','])
                   then if (pos(',', (Sender as TEdit).Text) = 0)
                       then Key := ','
                         else Key := #7
                            else if (not(Key in ['0'..'9',#8,#13,#27]))
                                then Key := #7;

              //avança com enter
             if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
                 if Key = #27 then Close;
end;

procedure TCadastroCliente.ovtEmailKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['A'..'Z','a'..'z','@','!','#','$','%','&','*','0'..'9',#186,
   #187,#188,#189,#190,#191,#192,#193,#194,#219,#220,#221,#222,#226,#8,#13,
   #27] ) then
     key := #0;
           //retorna com esc
          if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);
end;


procedure TCadastroCliente.ovtNomeKeyPress(Sender: TObject; var Key: Char);
begin
         if not (key in ['A'..'Z','a'..'z',#8,#13,#27] ) then
         key := #0;
             //avança com enter
             if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
                 //retorna com esc
                 if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;



procedure TCadastroCliente.ovtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
      if not (key in ['0'..'9',#8,#13,#27]  ) then
       key := #0;
          //avança com enter
           if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
               //retorna com esc
                if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;

procedure TCadastroCliente.ovbNovoClick(Sender: TObject);
begin
ovt_Codigo_Cliente.Clear;
ovtNome.Clear;
ovtEndereco.Clear;
ovtBairro.Clear;
ovtCidade.Clear;
ovtTelefone.Clear;
ovtEmail.Clear;
ovt_Codigo_Cliente.SetFocus;

end;



procedure TCadastroCliente.FormShow(Sender: TObject);
begin
  AssignFile(arq, 'C:\Users\luiz.souza\Desktop\Nova pasta\cadastro.txt');
  {$I-}
    Reset(arq);
    {$I+}
       if (IOResult <> 0)
        // arquivo não existe e será criado
        then Rewrite(arq)
          else begin
             CloseFile(arq);
                    //o arquivo existe e será aberto para saídas adicionais
                   Append(arq);
end;
end;

procedure TCadastroCliente.ovbGravarClick(Sender: TObject);

begin
     Lista := TStringList.Create;
       Lista.Add(ovt_Codigo_Cliente.Text);
         Lista.Add(ovtNome.Text);
           Lista.Add(ovtEndereco.Text);
             Lista.Add(ovtBairro.Text);
              Lista.Add(ovtCidade.Text);
                Lista.Add(ovtTelefone.Text);
                  Lista.Add(ovtEmail.Text);
                  ShowMessage(Lista.Text);




end;

end.
