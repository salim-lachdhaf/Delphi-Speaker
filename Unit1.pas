unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,shellapi, ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    volume: TTrackBar;
    vitesse: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
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
var f:textfile;
function RepertoireTemporaireWindows: String;
var
  lpBuffer : array[0..255] of char;
begin
  GetTempPath(SizeOf (lpBuffer), lpBuffer);
  result := lpBuffer;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AssignFile(F,RepertoireTemporaireWindows+'speak.vbs');
  rewrite(f);
  closefile(f);
end;

procedure TForm1.Button1Click(Sender: TObject);
var ch:string;
i:integer;
msg:string;
begin
ch:='';
for i:=0 to memo1.Lines.Count do
ch:=ch+memo1.Lines[i]+' ';

msg:='volume='+inttostr(volume.Position)+#13#10+'vitesse='+inttostr(vitesse.Position)+#13#10+'strtext="'+ch+'"'+#13#10+memo2.Text;
try
rewrite(f);
writeln(f,msg);
closefile(f);
except
end;
  shellexecute(0,'open','C:\Windows\System32\wscript.exe',pchar(RepertoireTemporaireWindows+'speak.vbs'),nil,sw_show);
end;

end.
