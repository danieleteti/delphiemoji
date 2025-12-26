program VCLStyleSupport;

uses
  Vcl.Forms,
  MainVCLStyleFormU in 'MainVCLStyleFormU.pas' {Form14},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
