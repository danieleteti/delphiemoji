unit EmojiComponentEditor;

interface

uses
  System.SysUtils, System.Classes, DesignIntf, DesignEditors, EmojiPaintBox,
  EmojiSelectorForm;

type
  TEmojiPaintBoxEditor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    procedure Edit; override;
  end;

implementation

{ TEmojiPaintBoxEditor }

procedure TEmojiPaintBoxEditor.Edit;
var
  LEmojiName: string;
begin
  LEmojiName := (Component as TEmojiPaintBox).EmojiName;
  if TEmojiSelector.SelectEmoji(LEmojiName) then
  begin
    (Component as TEmojiPaintBox).EmojiName := LEmojiName;
    Designer.Modified;
  end;
end;

procedure TEmojiPaintBoxEditor.ExecuteVerb(Index: Integer);
begin
  if Index = 0 then
    Edit;
end;

function TEmojiPaintBoxEditor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then
    Result := 'Select Emoji...'
  else
    Result := '';
end;

function TEmojiPaintBoxEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

end.
