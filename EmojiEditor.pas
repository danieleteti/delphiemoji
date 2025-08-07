unit EmojiEditor;

interface

uses
  System.SysUtils, System.Classes, DesignIntf, DesignEditors, UnicodeEmoji;

type
  TEmojiProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

implementation

{ TEmojiProperty }

function TEmojiProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paValueList, paSortList, paAutoUpdate];
end;

procedure TEmojiProperty.GetValues(Proc: TGetStrProc);
var
  LEmojiNames: TArray<string>;
  LName: string;
begin
  LEmojiNames := GetAllEmojiNames;
  for LName in LEmojiNames do
    Proc(LName);
end;

end.
