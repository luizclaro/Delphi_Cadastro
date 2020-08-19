unit uCliente;

interface
  uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls,  Mask;

type
TClass_cliente = class(TObject)

private
  Codigo   : Integer;
  Nome     : String;
  Endereco : String;
  Bairro   : String;
  Cidade   : String;
  Telefone : String;
  Email    : String;

public
     constructor Create();
     destructor Free();
  function  GetCodigo : Integer;
  function  GetNome : String;
  function  GetEndereco : String;
  function  GetBairro : String;
  function  GetCidade : String;
  function  GetTelefone : String;
  function  GetEmail : String;

  procedure SetCodigo (const Value : Integer);
  procedure SetNome (const Value : String);
  procedure SetEndereco (const Value : String);
  procedure SetBairro (const Value : String);
  procedure SetCidade (const Value : String);
  procedure SetTelefone (const Value : String);
  procedure SetEmail (const Value : String);
  procedure Gravar();
  procedure arquivo();
  procedure Consultar();
  procedure Excluir();
end;

var
  Cliente : TClass_cliente;
   var Lista : TStringList;
    var arq : TextFile;
    var cod : String;
    var  i: integer;
implementation

uses VarCmplx;

{ TClass_cliente }

procedure TClass_cliente.arquivo();
begin
    AssignFile(arq,'C:\cadastro\cadastro.txt');
    {$I-}
       Reset(arq);
         {$I+}
           if (IOResult <> 0)
            //arquivo não existe e será criado
              then Rewrite(arq)

                 else begin
                    CloseFile(arq);
                     //o arquivo existe e será aberto para saídas adicionais
                    //Append(arq);
                    end;

end;

procedure TClass_cliente.Consultar;

begin


end;

constructor TClass_cliente.Create;
begin
  codigo   :=0;
  Nome     := '';
  Endereco := '';
  Bairro   := '';
  Cidade   := '';
  Telefone := '';
  Email    := '';
end;

procedure TClass_cliente.Excluir;

begin

       cod:=  IntToStr(Codigo);
     Lista := TStringList.Create;
      try
         Lista.LoadFromFile('C:\cadastro\cadastro.txt');
         Lista.BeginUpdate;
         for i := Lista.Count - 1 downto 0 do
         begin
            if Copy(Lista.Strings[i], 1, 3) = cod then
            ShowMessage(Lista.Text);
               Lista.Delete(i);

         end;
        Lista.EndUpdate;
         Lista.SaveToFile('C:\cadastro\cadastro.txt');
      finally
         FreeAndNil(Lista);
         ShowMessage('O Registro  ' + '  ' + cod + '  ' +
          ' foi excluido com sucesso !');
      end;


end;

destructor TClass_cliente.Free;
begin

end;

function TClass_cliente.GetBairro: String;
begin
     Result := bairro;
end;

function TClass_cliente.GetCidade: String;
begin
     Result := cidade;
end;

function TClass_cliente.GetCodigo: Integer;
begin
       Result := codigo;
end;

function TClass_cliente.GetEmail: String;
begin
       Result := email;
end;

function TClass_cliente.GetEndereco: String;
begin
         Result := endereco;
end;

function TClass_cliente.GetNome: String;
begin
      Result := nome;
end;

function TClass_cliente.GetTelefone: String;
begin
       Result := telefone;
end;



procedure TClass_cliente.Gravar();
  
begin
       arquivo();
      // Cria-se a TStringList
     Lista := TStringList.Create;

     // Carrega as linhas que estão no ficheiro para a TStringList
     Lista.LoadFromFile('C:\cadastro\cadastro.txt');

     Lista.Add( IntToStr(Codigo)+'|'+Nome+'|'+Endereco+'|'+Bairro+'|'+Cidade+'|'+
     Telefone+'|'+Email);

    Lista.SaveToFile('C:\cadastro\cadastro.txt');

    Lista.Free;



end;

procedure TClass_cliente.SetBairro(const Value: String);
begin
      bairro := Value;
end;

procedure TClass_cliente.SetCidade(const Value: String);
begin
    cidade := Value;
end;

procedure TClass_cliente.SetCodigo(const Value: Integer);
begin
      codigo :=  Value;
end;

procedure TClass_cliente.SetEmail(const Value: String);
begin
      email := Value;
end;

procedure TClass_cliente.SetEndereco(const Value: String);
begin
      endereco := Value;
end;

procedure TClass_cliente.SetNome(const Value: String);
begin
    nome := Value;
end;

procedure TClass_cliente.SetTelefone(const Value: String);
begin
      telefone := Value;
end;

end.
