program ComponentDemo;

uses
  Vcl.Forms,
  ComponentDemoForm in 'ComponentDemoForm.pas' {frmComponentDemo};

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmComponentDemo, frmComponentDemo);
  Application.Run;
end.
