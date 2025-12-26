unit EmojiReg;

interface

uses
  System.Classes, DesignIntf, EmojiImage, EmojiButton, EmojiEditor,
  EmojiComponentEditor;

procedure Register;

implementation

procedure Register;
begin
  // Register components
  RegisterComponents('Emoji', [TEmojiImage, TEmojiButton]);

  // TEmojiImage editors
  RegisterComponentEditor(TEmojiImage, TEmojiImageEditor);
  RegisterPropertyEditor(TypeInfo(string), TEmojiImage, 'EmojiName', TEmojiProperty);
  RegisterPropertyEditor(TypeInfo(string), TEmojiImage, 'HoverEmojiName', TEmojiProperty);

  // TEmojiButton editors
  RegisterComponentEditor(TEmojiButton, TEmojiButtonEditor);
  RegisterPropertyEditor(TypeInfo(string), TEmojiButton, 'EmojiName', TEmojiProperty);
  RegisterPropertyEditor(TypeInfo(string), TEmojiButton, 'HoverEmojiName', TEmojiProperty);
  RegisterPropertyEditor(TypeInfo(string), TEmojiButton, 'PressedEmojiName', TEmojiProperty);
  RegisterPropertyEditor(TypeInfo(string), TEmojiButton, 'DisabledEmojiName', TEmojiProperty);
end;

end.
