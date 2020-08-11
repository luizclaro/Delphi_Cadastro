program Projeto_cadastro;

uses
  Forms,
  Cadastro in 'Cadastro.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
