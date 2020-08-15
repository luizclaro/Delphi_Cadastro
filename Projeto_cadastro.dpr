program Projeto_cadastro;

uses
  Forms,
  Cadastro in 'Cadastro.pas' {CadastroCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCadastroCliente, CadastroCliente);
  Application.Run;
end.
