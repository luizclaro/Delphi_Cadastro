program Projeto_cadastro;

uses
  Forms,
  Cadastro in 'Cadastro.pas' {CadastroCliente},
  uCliente in 'uCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCadastroCliente, CadastroCliente);
  Application.Run;
end.
