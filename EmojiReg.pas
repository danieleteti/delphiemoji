unit EmojiReg;

interface

uses
  System.Classes, DesignIntf, EmojiPaintBox, EmojiEditor,
  EmojiComponentEditor, EmojiSelectorForm;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TEmojiPaintBox]);
  RegisterComponentEditor(TEmojiPaintBox, TEmojiPaintBoxEditor);
  RegisterPropertyEditor(TypeInfo(string), TEmojiPaintBox, 'EmojiName', TEmojiProperty);
end;

end.
