unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);

    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.SetFocus;
end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);

begin
   
     if not (key in ['0'..'9',#8,#13,#27] ) then
     key := #0;
     {avança com enter}
     if Key = #13 then Perform(Wm_NextDlgCtl,0,0);






end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['A'..'Z','a'..'z',#8,#13,#27] ) then
   key := #0;

    {retorna com esc}
    if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);



end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['A'..'Z','a'..'z',#8,#13,#27] ) then
   key := #0;
{avança com enter}
    if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
{retorna com esc}
    if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;






procedure TForm1.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13,#27] ) then
key := #0;
    {avança com enter}
    if Key = #13 then Perform(Wm_NextDlgCtl,0,0);
    {retorna com esc}
    if Key = #27 then Perform(WM_NEXTDLGCTL,1,0);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
maskedit1.Clear;
edit7.Clear;
edit1.SetFocus;

end;

end.
