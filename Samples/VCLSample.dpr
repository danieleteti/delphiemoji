program VCLSample;

uses
  Vcl.Forms,
  MainFormU in 'MainFormU.pas' {Form9},
  UnicodeEmoji in '..\UnicodeEmoji.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
