unit EmojiReg;

interface

uses
  System.Classes, DesignIntf, EmojiImage, EmojiEditor,
  EmojiComponentEditor, EmojiSelectorForm;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Emoji', [TEmojiImage]);
  RegisterComponentEditor(TEmojiImage, TEmojiImageEditor);
  RegisterPropertyEditor(TypeInfo(string), TEmojiImage, 'EmojiName', TEmojiProperty);
  RegisterPropertyEditor(TypeInfo(string), TEmojiImage, 'HoverEmojiName', TEmojiProperty);
end;

end.
