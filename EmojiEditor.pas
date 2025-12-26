unit EmojiEditor;

interface

uses
  System.SysUtils, System.Classes, DesignIntf, DesignEditors, UnicodeEmoji;

type
  TEmojiProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

implementation

uses
  EmojiSelectorForm;

{ TEmojiProperty }

function TEmojiProperty.GetAttributes: TPropertyAttributes;
begin
  // paDialog: show "..." button to open selector
  Result := [paDialog];
end;

procedure TEmojiProperty.Edit;
var
  LName: string;
begin
  LName := GetValue;
  if TEmojiSelector.SelectEmoji(LName) then
    SetValue(LName);
end;

end.
