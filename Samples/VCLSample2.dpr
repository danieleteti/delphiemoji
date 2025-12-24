program VCLSample2;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Dialogs,
  EmojiDemoForm in 'EmojiDemoForm.pas',
  EmojiUtils in '..\EmojiUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'EmojiUtils Professional Demo';

  try
    // Verifica il supporto emoji all'avvio
    if not TEmojiRenderer.IsEmojiSupported then
    begin
      ShowMessage('Warning: No emoji fonts detected on this system. ' +
                  'Some features may not work correctly.' + sLineBreak + sLineBreak +
                  'For best results, ensure "Segoe UI Emoji" font is installed (Windows 8.1+).');
    end;

    Application.CreateForm(TfrmEmojiDemo, frmEmojiDemo);
  Application.Run;

  except
    on E: Exception do
    begin
      ShowMessage('Critical error during startup: ' + E.Message + sLineBreak + sLineBreak +
                  'The application will now close.');
    end;
  end;
end.
