program ButtonDemo;

uses
  Vcl.Forms,
  ButtonDemoForm in 'ButtonDemoForm.pas' {frmButtonDemo},
  EmojiButton in '..\EmojiButton.pas',
  EmojiImage in '..\EmojiImage.pas',
  EmojiUtils in '..\EmojiUtils.pas',
  UnicodeEmoji in '..\UnicodeEmoji.pas';

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmButtonDemo, frmButtonDemo);
  Application.Run;
end.
