unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCliente, Mask;

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
    procedure ovt_Codigo_ClienteChange(Sender: TObject);
    procedure Linpar();
    procedure ovbGravarClick(Sender: TObject);

  private
    { Private declarations }
      objclasseCliente : TClass_cliente;
  public
    { Public declarations }

  end;

var
  CadastroCliente: TCadastroCliente;

   
implementation

{$R *.dfm}

procedure TCadastroCliente.ovbFecharClick(Sender: TObject);
begin

 Close;

end;

procedure TCadastroCliente.ovbExcluirClick(Sender: TObject);
begin




  objclasseCliente := TClass_cliente.Create;

 objclasseCliente.SetCodigo(StrToInt(Self.ovt_Codigo_Cliente.text));
 objclasseCliente.SetNome(Self.ovtNome.Text);
 objclasseCliente.SetEndereco(Self.ovtEndereco.Text);
 objclasseCliente.SetBairro(Self.ovtBairro.Text);
 objclasseCliente.SetCidade(Self.ovtCidade.Text);
 objclasseCliente.SetTelefone(Self.ovtTelefone.Text);
 objclasseCliente.SetEmail(Self.ovtEmail.Text);
 objclasseCliente.Excluir;
  Linpar;

  objclasseCliente.Free;
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
             if Key = #13 then if(Self.ovt_Codigo_Cliente.Text <> '') then
                begin
                ShowMessage('t1');
                objclasseCliente := TClass_cliente.Create;
                                 ShowMessage('t2');
              objclasseCliente.SetCodigo(StrToInt(Self.ovt_Codigo_Cliente.text));
                                 ShowMessage('t3');
                    Cliente.Consultar;
                    ShowMessage('t4');

                  end
                       else Perform(Wm_NextDlgCtl,0,0);
                                //fechar com esc
                               if Key = #27 then ovbFecharClick(Sender);


end;

procedure TCadastroCliente.ovtEmailKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['A'..'Z','a'..'z','@','!','#','$','%','&','*','.','0'..'9',
   #186,#187,#188,#189,#190,#191,#192,#193,#194,#219,#220,#221,#222,#226,#8,#13,
   #27] ) then
     key := #0;
           //retorna com esc
          if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);
           if Key = #13 then ovbGravarClick(Sender);
end;


procedure TCadastroCliente.ovtNomeKeyPress(Sender: TObject; var Key: Char);
begin
         if not (key in ['A'..'Z','a'..'z',' ',#8,#13,#27] ) then
         key := #0;
             //avança com enter
             if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
                 //retorna com esc
                 if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;



procedure TCadastroCliente.ovtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
      if not (key in ['0'..'9',#8,' ',#13,#27]  ) then
       key := #0;
          //avança com enter
           if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
               //retorna com esc
                if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;

procedure TCadastroCliente.ovbNovoClick(Sender: TObject);
begin





ovbExcluir.Visible:=true;
ovbGravar.Visible:=true;
Linpar;
  
end;





procedure TCadastroCliente.FormShow(Sender: TObject);
begin

    ovt_Codigo_Cliente.SetFocus;
       ovbExcluir.Visible:=false;
         ovbGravar.Visible:=false;



end;

procedure TCadastroCliente.ovt_Codigo_ClienteChange(Sender: TObject);
begin
      
    ovbExcluir.Visible:=true;
       ovbGravar.Visible:=true;
end;

procedure TCadastroCliente.Linpar();
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




procedure TCadastroCliente.ovbGravarClick(Sender: TObject);
begin
 objclasseCliente := TClass_cliente.Create;

 objclasseCliente.SetCodigo(StrToInt(Self.ovt_Codigo_Cliente.text));
 objclasseCliente.SetNome(Self.ovtNome.Text);
 objclasseCliente.SetEndereco(Self.ovtEndereco.Text);
 objclasseCliente.SetBairro(Self.ovtBairro.Text);
 objclasseCliente.SetCidade(Self.ovtCidade.Text);
 objclasseCliente.SetTelefone(Self.ovtTelefone.Text);
 objclasseCliente.SetEmail(Self.ovtEmail.Text);
 objclasseCliente.Gravar;

         ShowMessage('codigo ' + IntToStr(objclasseCliente.GetCodigo) +#13+ 'Nome '+
  objclasseCliente.GetNome + #13+'Endereço ' + objclasseCliente.GetEndereco + #13+
  'Bairro ' + objclasseCliente.GetBairro +#13+ 'Cidade ' +objclasseCliente.GetCidade +
  #13+ 'Telefone '+ objclasseCliente.GetTelefone + #13+'E-mail' + objclasseCliente.GetEmail);
        Linpar;

end;

end.
