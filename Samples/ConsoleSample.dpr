program ConsoleSample;
{$APPTYPE CONSOLE}
uses
  Windows,
  SysUtils,
  System.Math,
  UnicodeEmoji in '..\UnicodeEmoji.pas';

// la unit autogenerata

begin
  // Set code page UTF8 for Windows Console
  SetConsoleOutputCP(CP_UTF8);

  // Example 1: find a specific emoji by string name
  var emoji := FindEmojiByName('face exhaling');
  Writeln('face exhaling: ', emoji);

  // Example 1: find a specific emoji by string name
  Writeln('TEmoji.MAN_HEALTH_WORKER: ', TEmoji.MAN_HEALTH_WORKER);


  // Esempio 2: Print some emoji randomly
  var lAllEmojis := GetAllEmoji;
  var lAllEmojiNames := GetAllEmojiNames;

  Writeln;
  Writeln('*******************************');
  Writeln('*       30 random emoji       *');
  Writeln('*******************************');
  for var i := 1 to 30 do
  begin
    var lPos := Trunc(Random(High(lAllEmojis)));
    WriteLn(lAllEmojis[lPos], ' ', lAllEmojiNames[lPos]);
  end;

  Writeln(sLineBreak + 'Press RETURN to exit...');
  Readln;
end.

