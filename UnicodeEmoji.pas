unit UnicodeEmoji;

interface

uses
  System.SysUtils, System.Generics.Collections;

type
  TEmoji = record
  public
    const
      MRS_CLAUS_DARK_SKIN_TONE: string = #$D83E#$DD36#$D83C#$DFFF;  // Mrs. Claus: dark skin tone
      MRS_CLAUS_LIGHT_SKIN_TONE: string = #$D83E#$DD36#$D83C#$DFFB;  // Mrs. Claus: light skin tone
      MRS_CLAUS_MEDIUM_SKIN_TONE: string = #$D83E#$DD36#$D83C#$DFFD;  // Mrs. Claus: medium skin tone
      MRS_CLAUS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD36#$D83C#$DFFE;  // Mrs. Claus: medium-dark skin tone
      MRS_CLAUS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD36#$D83C#$DFFC;  // Mrs. Claus: medium-light skin tone
      MX_CLAUS: string = #$D83E#$DDD1#$200D#$D83C#$DF84;  // Mx Claus
      MX_CLAUS_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DF84;  // Mx Claus: dark skin tone
      MX_CLAUS_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DF84;  // Mx Claus: light skin tone
      MX_CLAUS_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DF84;  // Mx Claus: medium skin tone
      MX_CLAUS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DF84;  // Mx Claus: medium-dark skin tone
      MX_CLAUS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DF84;  // Mx Claus: medium-light skin tone
      OK_HAND_DARK_SKIN_TONE: string = #$D83D#$DC4C#$D83C#$DFFF;  // OK hand: dark skin tone
      OK_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DC4C#$D83C#$DFFB;  // OK hand: light skin tone
      OK_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DC4C#$D83C#$DFFD;  // OK hand: medium skin tone
      OK_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4C#$D83C#$DFFE;  // OK hand: medium-dark skin tone
      OK_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4C#$D83C#$DFFC;  // OK hand: medium-light skin tone
      SANTA_CLAUS_DARK_SKIN_TONE: string = #$D83C#$DF85#$D83C#$DFFF;  // Santa Claus: dark skin tone
      SANTA_CLAUS_LIGHT_SKIN_TONE: string = #$D83C#$DF85#$D83C#$DFFB;  // Santa Claus: light skin tone
      SANTA_CLAUS_MEDIUM_SKIN_TONE: string = #$D83C#$DF85#$D83C#$DFFD;  // Santa Claus: medium skin tone
      SANTA_CLAUS_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DF85#$D83C#$DFFE;  // Santa Claus: medium-dark skin tone
      SANTA_CLAUS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DF85#$D83C#$DFFC;  // Santa Claus: medium-light skin tone
      ARTIST: string = #$D83E#$DDD1#$200D#$D83C#$DFA8;  // artist
      ARTIST_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DFA8;  // artist: dark skin tone
      ARTIST_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DFA8;  // artist: light skin tone
      ARTIST_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DFA8;  // artist: medium skin tone
      ARTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DFA8;  // artist: medium-dark skin tone
      ARTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DFA8;  // artist: medium-light skin tone
      ASTRONAUT: string = #$D83E#$DDD1#$200D#$D83D#$DE80;  // astronaut
      ASTRONAUT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DE80;  // astronaut: dark skin tone
      ASTRONAUT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DE80;  // astronaut: light skin tone
      ASTRONAUT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DE80;  // astronaut: medium skin tone
      ASTRONAUT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DE80;  // astronaut: medium-dark skin tone
      ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DE80;  // astronaut: medium-light skin tone
      BABY_ANGEL_DARK_SKIN_TONE: string = #$D83D#$DC7C#$D83C#$DFFF;  // baby angel: dark skin tone
      BABY_ANGEL_LIGHT_SKIN_TONE: string = #$D83D#$DC7C#$D83C#$DFFB;  // baby angel: light skin tone
      BABY_ANGEL_MEDIUM_SKIN_TONE: string = #$D83D#$DC7C#$D83C#$DFFD;  // baby angel: medium skin tone
      BABY_ANGEL_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC7C#$D83C#$DFFE;  // baby angel: medium-dark skin tone
      BABY_ANGEL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC7C#$D83C#$DFFC;  // baby angel: medium-light skin tone
      BABY_DARK_SKIN_TONE: string = #$D83D#$DC76#$D83C#$DFFF;  // baby: dark skin tone
      BABY_LIGHT_SKIN_TONE: string = #$D83D#$DC76#$D83C#$DFFB;  // baby: light skin tone
      BABY_MEDIUM_SKIN_TONE: string = #$D83D#$DC76#$D83C#$DFFD;  // baby: medium skin tone
      BABY_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC76#$D83C#$DFFE;  // baby: medium-dark skin tone
      BABY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC76#$D83C#$DFFC;  // baby: medium-light skin tone
      BACKHAND_INDEX_POINTING_DOWN_DARK_SKIN_TONE: string = #$D83D#$DC47#$D83C#$DFFF;  // backhand index pointing down: dark skin tone
      BACKHAND_INDEX_POINTING_DOWN_LIGHT_SKIN_TONE: string = #$D83D#$DC47#$D83C#$DFFB;  // backhand index pointing down: light skin tone
      BACKHAND_INDEX_POINTING_DOWN_MEDIUM_SKIN_TONE: string = #$D83D#$DC47#$D83C#$DFFD;  // backhand index pointing down: medium skin tone
      BACKHAND_INDEX_POINTING_DOWN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC47#$D83C#$DFFE;  // backhand index pointing down: medium-dark skin tone
      BACKHAND_INDEX_POINTING_DOWN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC47#$D83C#$DFFC;  // backhand index pointing down: medium-light skin tone
      BACKHAND_INDEX_POINTING_LEFT_DARK_SKIN_TONE: string = #$D83D#$DC48#$D83C#$DFFF;  // backhand index pointing left: dark skin tone
      BACKHAND_INDEX_POINTING_LEFT_LIGHT_SKIN_TONE: string = #$D83D#$DC48#$D83C#$DFFB;  // backhand index pointing left: light skin tone
      BACKHAND_INDEX_POINTING_LEFT_MEDIUM_SKIN_TONE: string = #$D83D#$DC48#$D83C#$DFFD;  // backhand index pointing left: medium skin tone
      BACKHAND_INDEX_POINTING_LEFT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC48#$D83C#$DFFE;  // backhand index pointing left: medium-dark skin tone
      BACKHAND_INDEX_POINTING_LEFT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC48#$D83C#$DFFC;  // backhand index pointing left: medium-light skin tone
      BACKHAND_INDEX_POINTING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC49#$D83C#$DFFF;  // backhand index pointing right: dark skin tone
      BACKHAND_INDEX_POINTING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC49#$D83C#$DFFB;  // backhand index pointing right: light skin tone
      BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC49#$D83C#$DFFD;  // backhand index pointing right: medium skin tone
      BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC49#$D83C#$DFFE;  // backhand index pointing right: medium-dark skin tone
      BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC49#$D83C#$DFFC;  // backhand index pointing right: medium-light skin tone
      BACKHAND_INDEX_POINTING_UP_DARK_SKIN_TONE: string = #$D83D#$DC46#$D83C#$DFFF;  // backhand index pointing up: dark skin tone
      BACKHAND_INDEX_POINTING_UP_LIGHT_SKIN_TONE: string = #$D83D#$DC46#$D83C#$DFFB;  // backhand index pointing up: light skin tone
      BACKHAND_INDEX_POINTING_UP_MEDIUM_SKIN_TONE: string = #$D83D#$DC46#$D83C#$DFFD;  // backhand index pointing up: medium skin tone
      BACKHAND_INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC46#$D83C#$DFFE;  // backhand index pointing up: medium-dark skin tone
      BACKHAND_INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC46#$D83C#$DFFC;  // backhand index pointing up: medium-light skin tone
      BLACK_BIRD: string = #$D83D#$DC26#$200D#$2B1B;  // black bird
      BLACK_CAT: string = #$D83D#$DC08#$200D#$2B1B;  // black cat
      BOY_DARK_SKIN_TONE: string = #$D83D#$DC66#$D83C#$DFFF;  // boy: dark skin tone
      BOY_LIGHT_SKIN_TONE: string = #$D83D#$DC66#$D83C#$DFFB;  // boy: light skin tone
      BOY_MEDIUM_SKIN_TONE: string = #$D83D#$DC66#$D83C#$DFFD;  // boy: medium skin tone
      BOY_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC66#$D83C#$DFFE;  // boy: medium-dark skin tone
      BOY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC66#$D83C#$DFFC;  // boy: medium-light skin tone
      BREAST_FEEDING_DARK_SKIN_TONE: string = #$D83E#$DD31#$D83C#$DFFF;  // breast-feeding: dark skin tone
      BREAST_FEEDING_LIGHT_SKIN_TONE: string = #$D83E#$DD31#$D83C#$DFFB;  // breast-feeding: light skin tone
      BREAST_FEEDING_MEDIUM_SKIN_TONE: string = #$D83E#$DD31#$D83C#$DFFD;  // breast-feeding: medium skin tone
      BREAST_FEEDING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD31#$D83C#$DFFE;  // breast-feeding: medium-dark skin tone
      BREAST_FEEDING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD31#$D83C#$DFFC;  // breast-feeding: medium-light skin tone
      BROKEN_CHAIN: string = #$26D3#$FE0F#$200D#$D83D#$DCA5;  // broken chain
      BROWN_MUSHROOM: string = #$D83C#$DF44#$200D#$D83D#$DFEB;  // brown mushroom
      CALL_ME_HAND_DARK_SKIN_TONE: string = #$D83E#$DD19#$D83C#$DFFF;  // call me hand: dark skin tone
      CALL_ME_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DD19#$D83C#$DFFB;  // call me hand: light skin tone
      CALL_ME_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DD19#$D83C#$DFFD;  // call me hand: medium skin tone
      CALL_ME_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD19#$D83C#$DFFE;  // call me hand: medium-dark skin tone
      CALL_ME_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD19#$D83C#$DFFC;  // call me hand: medium-light skin tone
      CHILD_DARK_SKIN_TONE: string = #$D83E#$DDD2#$D83C#$DFFF;  // child: dark skin tone
      CHILD_LIGHT_SKIN_TONE: string = #$D83E#$DDD2#$D83C#$DFFB;  // child: light skin tone
      CHILD_MEDIUM_SKIN_TONE: string = #$D83E#$DDD2#$D83C#$DFFD;  // child: medium skin tone
      CHILD_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD2#$D83C#$DFFE;  // child: medium-dark skin tone
      CHILD_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD2#$D83C#$DFFC;  // child: medium-light skin tone
      CLAPPING_HANDS_DARK_SKIN_TONE: string = #$D83D#$DC4F#$D83C#$DFFF;  // clapping hands: dark skin tone
      CLAPPING_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DC4F#$D83C#$DFFB;  // clapping hands: light skin tone
      CLAPPING_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DC4F#$D83C#$DFFD;  // clapping hands: medium skin tone
      CLAPPING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4F#$D83C#$DFFE;  // clapping hands: medium-dark skin tone
      CLAPPING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4F#$D83C#$DFFC;  // clapping hands: medium-light skin tone
      CONSTRUCTION_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFF;  // construction worker: dark skin tone
      CONSTRUCTION_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFB;  // construction worker: light skin tone
      CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFD;  // construction worker: medium skin tone
      CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFE;  // construction worker: medium-dark skin tone
      CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFC;  // construction worker: medium-light skin tone
      COOK: string = #$D83E#$DDD1#$200D#$D83C#$DF73;  // cook
      COOK_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DF73;  // cook: dark skin tone
      COOK_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DF73;  // cook: light skin tone
      COOK_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DF73;  // cook: medium skin tone
      COOK_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DF73;  // cook: medium-dark skin tone
      COOK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DF73;  // cook: medium-light skin tone
      COUPLE_WITH_HEART_DARK_SKIN_TONE: string = #$D83D#$DC91#$D83C#$DFFF;  // couple with heart: dark skin tone
      COUPLE_WITH_HEART_LIGHT_SKIN_TONE: string = #$D83D#$DC91#$D83C#$DFFB;  // couple with heart: light skin tone
      COUPLE_WITH_HEART_MAN_MAN: string = #$D83D#$DC68#$200D#$2764#$FE0F#$200D#$D83D#$DC68;  // couple with heart: man, man
      COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: man, man, dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: man, man, dark skin tone, light skin tone
      COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: man, man, dark skin tone, medium skin tone
      COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: man, man, dark skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: man, man, dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: man, man, light skin tone
      COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: man, man, light skin tone, dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: man, man, light skin tone, medium skin tone
      COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: man, man, light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: man, man, light skin tone, medium-light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: man, man, medium skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: man, man, medium skin tone, dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: man, man, medium skin tone, light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: man, man, medium skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: man, man, medium skin tone, medium-light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: man, man, medium-dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: man, man, medium-dark skin tone, dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: man, man, medium-dark skin tone, light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: man, man, medium-dark skin tone, medium skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: man, man, medium-dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: man, man, medium-light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: man, man, medium-light skin tone, dark skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: man, man, medium-light skin tone, light skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: man, man, medium-light skin tone, medium skin tone
      COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: man, man, medium-light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_MEDIUM_SKIN_TONE: string = #$D83D#$DC91#$D83C#$DFFD;  // couple with heart: medium skin tone
      COUPLE_WITH_HEART_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC91#$D83C#$DFFE;  // couple with heart: medium-dark skin tone
      COUPLE_WITH_HEART_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC91#$D83C#$DFFC;  // couple with heart: medium-light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFB;  // couple with heart: person, person, dark skin tone, light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFD;  // couple with heart: person, person, dark skin tone, medium skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFE;  // couple with heart: person, person, dark skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFC;  // couple with heart: person, person, dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFF;  // couple with heart: person, person, light skin tone, dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFD;  // couple with heart: person, person, light skin tone, medium skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFE;  // couple with heart: person, person, light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFC;  // couple with heart: person, person, light skin tone, medium-light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFF;  // couple with heart: person, person, medium skin tone, dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFB;  // couple with heart: person, person, medium skin tone, light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFE;  // couple with heart: person, person, medium skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFC;  // couple with heart: person, person, medium skin tone, medium-light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFF;  // couple with heart: person, person, medium-dark skin tone, dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFB;  // couple with heart: person, person, medium-dark skin tone, light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFD;  // couple with heart: person, person, medium-dark skin tone, medium skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFC;  // couple with heart: person, person, medium-dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFF;  // couple with heart: person, person, medium-light skin tone, dark skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFB;  // couple with heart: person, person, medium-light skin tone, light skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFD;  // couple with heart: person, person, medium-light skin tone, medium skin tone
      COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83E#$DDD1#$D83C#$DFFE;  // couple with heart: person, person, medium-light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN: string = #$D83D#$DC69#$200D#$2764#$FE0F#$200D#$D83D#$DC68;  // couple with heart: woman, man
      COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: woman, man, dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: woman, man, dark skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: woman, man, dark skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: woman, man, dark skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: woman, man, dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: woman, man, light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: woman, man, light skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: woman, man, light skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: woman, man, light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: woman, man, light skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: woman, man, medium skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: woman, man, medium skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: woman, man, medium skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: woman, man, medium skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: woman, man, medium skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: woman, man, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: woman, man, medium-dark skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: woman, man, medium-dark skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: woman, man, medium-dark skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: woman, man, medium-dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFC;  // couple with heart: woman, man, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFF;  // couple with heart: woman, man, medium-light skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFB;  // couple with heart: woman, man, medium-light skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFD;  // couple with heart: woman, man, medium-light skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC68#$D83C#$DFFE;  // couple with heart: woman, man, medium-light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN: string = #$D83D#$DC69#$200D#$2764#$FE0F#$200D#$D83D#$DC69;  // couple with heart: woman, woman
      COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFF;  // couple with heart: woman, woman, dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFB;  // couple with heart: woman, woman, dark skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFD;  // couple with heart: woman, woman, dark skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFE;  // couple with heart: woman, woman, dark skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFC;  // couple with heart: woman, woman, dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFB;  // couple with heart: woman, woman, light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFF;  // couple with heart: woman, woman, light skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFD;  // couple with heart: woman, woman, light skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFE;  // couple with heart: woman, woman, light skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFC;  // couple with heart: woman, woman, light skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFD;  // couple with heart: woman, woman, medium skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFF;  // couple with heart: woman, woman, medium skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFB;  // couple with heart: woman, woman, medium skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFE;  // couple with heart: woman, woman, medium skin tone, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFC;  // couple with heart: woman, woman, medium skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFE;  // couple with heart: woman, woman, medium-dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFF;  // couple with heart: woman, woman, medium-dark skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFB;  // couple with heart: woman, woman, medium-dark skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFD;  // couple with heart: woman, woman, medium-dark skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFC;  // couple with heart: woman, woman, medium-dark skin tone, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFC;  // couple with heart: woman, woman, medium-light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFF;  // couple with heart: woman, woman, medium-light skin tone, dark skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFB;  // couple with heart: woman, woman, medium-light skin tone, light skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFD;  // couple with heart: woman, woman, medium-light skin tone, medium skin tone
      COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC69#$D83C#$DFFE;  // couple with heart: woman, woman, medium-light skin tone, medium-dark skin tone
      CROSSED_FINGERS_DARK_SKIN_TONE: string = #$D83E#$DD1E#$D83C#$DFFF;  // crossed fingers: dark skin tone
      CROSSED_FINGERS_LIGHT_SKIN_TONE: string = #$D83E#$DD1E#$D83C#$DFFB;  // crossed fingers: light skin tone
      CROSSED_FINGERS_MEDIUM_SKIN_TONE: string = #$D83E#$DD1E#$D83C#$DFFD;  // crossed fingers: medium skin tone
      CROSSED_FINGERS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1E#$D83C#$DFFE;  // crossed fingers: medium-dark skin tone
      CROSSED_FINGERS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1E#$D83C#$DFFC;  // crossed fingers: medium-light skin tone
      DEAF_MAN: string = #$D83E#$DDCF#$200D#$2642#$FE0F;  // deaf man
      DEAF_MAN_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFF#$200D#$2642#$FE0F;  // deaf man: dark skin tone
      DEAF_MAN_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFB#$200D#$2642#$FE0F;  // deaf man: light skin tone
      DEAF_MAN_MEDIUM_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFD#$200D#$2642#$FE0F;  // deaf man: medium skin tone
      DEAF_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFE#$200D#$2642#$FE0F;  // deaf man: medium-dark skin tone
      DEAF_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFC#$200D#$2642#$FE0F;  // deaf man: medium-light skin tone
      DEAF_PERSON_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFF;  // deaf person: dark skin tone
      DEAF_PERSON_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFB;  // deaf person: light skin tone
      DEAF_PERSON_MEDIUM_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFD;  // deaf person: medium skin tone
      DEAF_PERSON_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFE;  // deaf person: medium-dark skin tone
      DEAF_PERSON_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFC;  // deaf person: medium-light skin tone
      DEAF_WOMAN: string = #$D83E#$DDCF#$200D#$2640#$FE0F;  // deaf woman
      DEAF_WOMAN_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFF#$200D#$2640#$FE0F;  // deaf woman: dark skin tone
      DEAF_WOMAN_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFB#$200D#$2640#$FE0F;  // deaf woman: light skin tone
      DEAF_WOMAN_MEDIUM_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFD#$200D#$2640#$FE0F;  // deaf woman: medium skin tone
      DEAF_WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFE#$200D#$2640#$FE0F;  // deaf woman: medium-dark skin tone
      DEAF_WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCF#$D83C#$DFFC#$200D#$2640#$FE0F;  // deaf woman: medium-light skin tone
      DETECTIVE_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFF;  // detective: dark skin tone
      DETECTIVE_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFB;  // detective: light skin tone
      DETECTIVE_MEDIUM_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFD;  // detective: medium skin tone
      DETECTIVE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFE;  // detective: medium-dark skin tone
      DETECTIVE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFC;  // detective: medium-light skin tone
      EAR_WITH_HEARING_AID_DARK_SKIN_TONE: string = #$D83E#$DDBB#$D83C#$DFFF;  // ear with hearing aid: dark skin tone
      EAR_WITH_HEARING_AID_LIGHT_SKIN_TONE: string = #$D83E#$DDBB#$D83C#$DFFB;  // ear with hearing aid: light skin tone
      EAR_WITH_HEARING_AID_MEDIUM_SKIN_TONE: string = #$D83E#$DDBB#$D83C#$DFFD;  // ear with hearing aid: medium skin tone
      EAR_WITH_HEARING_AID_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDBB#$D83C#$DFFE;  // ear with hearing aid: medium-dark skin tone
      EAR_WITH_HEARING_AID_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDBB#$D83C#$DFFC;  // ear with hearing aid: medium-light skin tone
      EAR_DARK_SKIN_TONE: string = #$D83D#$DC42#$D83C#$DFFF;  // ear: dark skin tone
      EAR_LIGHT_SKIN_TONE: string = #$D83D#$DC42#$D83C#$DFFB;  // ear: light skin tone
      EAR_MEDIUM_SKIN_TONE: string = #$D83D#$DC42#$D83C#$DFFD;  // ear: medium skin tone
      EAR_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC42#$D83C#$DFFE;  // ear: medium-dark skin tone
      EAR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC42#$D83C#$DFFC;  // ear: medium-light skin tone
      ELF_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFF;  // elf: dark skin tone
      ELF_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFB;  // elf: light skin tone
      ELF_MEDIUM_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFD;  // elf: medium skin tone
      ELF_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFE;  // elf: medium-dark skin tone
      ELF_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFC;  // elf: medium-light skin tone
      EYE_IN_SPEECH_BUBBLE: string = #$D83D#$DC41#$FE0F#$200D#$D83D#$DDE8#$FE0F;  // eye in speech bubble
      FACE_EXHALING: string = #$D83D#$DE2E#$200D#$D83D#$DCA8;  // face exhaling
      FACE_IN_CLOUDS: string = #$D83D#$DE36#$200D#$D83C#$DF2B#$FE0F;  // face in clouds
      FACE_WITH_SPIRAL_EYES: string = #$D83D#$DE35#$200D#$D83D#$DCAB;  // face with spiral eyes
      FACTORY_WORKER: string = #$D83E#$DDD1#$200D#$D83C#$DFED;  // factory worker
      FACTORY_WORKER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DFED;  // factory worker: dark skin tone
      FACTORY_WORKER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DFED;  // factory worker: light skin tone
      FACTORY_WORKER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DFED;  // factory worker: medium skin tone
      FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DFED;  // factory worker: medium-dark skin tone
      FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DFED;  // factory worker: medium-light skin tone
      FAIRY_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFF;  // fairy: dark skin tone
      FAIRY_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFB;  // fairy: light skin tone
      FAIRY_MEDIUM_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFD;  // fairy: medium skin tone
      FAIRY_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFE;  // fairy: medium-dark skin tone
      FAIRY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFC;  // fairy: medium-light skin tone
      FAMILY_ADULT_ADULT_CHILD: string = #$D83E#$DDD1#$200D#$D83E#$DDD1#$200D#$D83E#$DDD2;  // family: adult, adult, child
      FAMILY_ADULT_ADULT_CHILD_CHILD: string = #$D83E#$DDD1#$200D#$D83E#$DDD1#$200D#$D83E#$DDD2#$200D#$D83E#$DDD2;  // family: adult, adult, child, child
      FAMILY_ADULT_CHILD: string = #$D83E#$DDD1#$200D#$D83E#$DDD2;  // family: adult, child
      FAMILY_ADULT_CHILD_CHILD: string = #$D83E#$DDD1#$200D#$D83E#$DDD2#$200D#$D83E#$DDD2;  // family: adult, child, child
      FAMILY_MAN_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC66;  // family: man, boy
      FAMILY_MAN_BOY_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC66#$200D#$D83D#$DC66;  // family: man, boy, boy
      FAMILY_MAN_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC67;  // family: man, girl
      FAMILY_MAN_GIRL_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC67#$200D#$D83D#$DC66;  // family: man, girl, boy
      FAMILY_MAN_GIRL_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC67#$200D#$D83D#$DC67;  // family: man, girl, girl
      FAMILY_MAN_MAN_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC68#$200D#$D83D#$DC66;  // family: man, man, boy
      FAMILY_MAN_MAN_BOY_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC68#$200D#$D83D#$DC66#$200D#$D83D#$DC66;  // family: man, man, boy, boy
      FAMILY_MAN_MAN_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC68#$200D#$D83D#$DC67;  // family: man, man, girl
      FAMILY_MAN_MAN_GIRL_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC68#$200D#$D83D#$DC67#$200D#$D83D#$DC66;  // family: man, man, girl, boy
      FAMILY_MAN_MAN_GIRL_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC68#$200D#$D83D#$DC67#$200D#$D83D#$DC67;  // family: man, man, girl, girl
      FAMILY_MAN_WOMAN_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC69#$200D#$D83D#$DC66;  // family: man, woman, boy
      FAMILY_MAN_WOMAN_BOY_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC69#$200D#$D83D#$DC66#$200D#$D83D#$DC66;  // family: man, woman, boy, boy
      FAMILY_MAN_WOMAN_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC69#$200D#$D83D#$DC67;  // family: man, woman, girl
      FAMILY_MAN_WOMAN_GIRL_BOY: string = #$D83D#$DC68#$200D#$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC66;  // family: man, woman, girl, boy
      FAMILY_MAN_WOMAN_GIRL_GIRL: string = #$D83D#$DC68#$200D#$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC67;  // family: man, woman, girl, girl
      FAMILY_WOMAN_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC66;  // family: woman, boy
      FAMILY_WOMAN_BOY_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC66#$200D#$D83D#$DC66;  // family: woman, boy, boy
      FAMILY_WOMAN_GIRL: string = #$D83D#$DC69#$200D#$D83D#$DC67;  // family: woman, girl
      FAMILY_WOMAN_GIRL_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC66;  // family: woman, girl, boy
      FAMILY_WOMAN_GIRL_GIRL: string = #$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC67;  // family: woman, girl, girl
      FAMILY_WOMAN_WOMAN_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC69#$200D#$D83D#$DC66;  // family: woman, woman, boy
      FAMILY_WOMAN_WOMAN_BOY_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC69#$200D#$D83D#$DC66#$200D#$D83D#$DC66;  // family: woman, woman, boy, boy
      FAMILY_WOMAN_WOMAN_GIRL: string = #$D83D#$DC69#$200D#$D83D#$DC69#$200D#$D83D#$DC67;  // family: woman, woman, girl
      FAMILY_WOMAN_WOMAN_GIRL_BOY: string = #$D83D#$DC69#$200D#$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC66;  // family: woman, woman, girl, boy
      FAMILY_WOMAN_WOMAN_GIRL_GIRL: string = #$D83D#$DC69#$200D#$D83D#$DC69#$200D#$D83D#$DC67#$200D#$D83D#$DC67;  // family: woman, woman, girl, girl
      FARMER: string = #$D83E#$DDD1#$200D#$D83C#$DF3E;  // farmer
      FARMER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DF3E;  // farmer: dark skin tone
      FARMER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DF3E;  // farmer: light skin tone
      FARMER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DF3E;  // farmer: medium skin tone
      FARMER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DF3E;  // farmer: medium-dark skin tone
      FARMER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DF3E;  // farmer: medium-light skin tone
      FIREFIGHTER: string = #$D83E#$DDD1#$200D#$D83D#$DE92;  // firefighter
      FIREFIGHTER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DE92;  // firefighter: dark skin tone
      FIREFIGHTER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DE92;  // firefighter: light skin tone
      FIREFIGHTER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DE92;  // firefighter: medium skin tone
      FIREFIGHTER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DE92;  // firefighter: medium-dark skin tone
      FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DE92;  // firefighter: medium-light skin tone
      FLAG_AFGHANISTAN: string = #$D83C#$DDE6#$D83C#$DDEB;  // flag: Afghanistan
      FLAG_ALBANIA: string = #$D83C#$DDE6#$D83C#$DDF1;  // flag: Albania
      FLAG_ALGERIA: string = #$D83C#$DDE9#$D83C#$DDFF;  // flag: Algeria
      FLAG_AMERICAN_SAMOA: string = #$D83C#$DDE6#$D83C#$DDF8;  // flag: American Samoa
      FLAG_ANDORRA: string = #$D83C#$DDE6#$D83C#$DDE9;  // flag: Andorra
      FLAG_ANGOLA: string = #$D83C#$DDE6#$D83C#$DDF4;  // flag: Angola
      FLAG_ANGUILLA: string = #$D83C#$DDE6#$D83C#$DDEE;  // flag: Anguilla
      FLAG_ANTARCTICA: string = #$D83C#$DDE6#$D83C#$DDF6;  // flag: Antarctica
      FLAG_ANTIGUA_BARBUDA: string = #$D83C#$DDE6#$D83C#$DDEC;  // flag: Antigua & Barbuda
      FLAG_ARGENTINA: string = #$D83C#$DDE6#$D83C#$DDF7;  // flag: Argentina
      FLAG_ARMENIA: string = #$D83C#$DDE6#$D83C#$DDF2;  // flag: Armenia
      FLAG_ARUBA: string = #$D83C#$DDE6#$D83C#$DDFC;  // flag: Aruba
      FLAG_ASCENSION_ISLAND: string = #$D83C#$DDE6#$D83C#$DDE8;  // flag: Ascension Island
      FLAG_AUSTRALIA: string = #$D83C#$DDE6#$D83C#$DDFA;  // flag: Australia
      FLAG_AUSTRIA: string = #$D83C#$DDE6#$D83C#$DDF9;  // flag: Austria
      FLAG_AZERBAIJAN: string = #$D83C#$DDE6#$D83C#$DDFF;  // flag: Azerbaijan
      FLAG_BAHAMAS: string = #$D83C#$DDE7#$D83C#$DDF8;  // flag: Bahamas
      FLAG_BAHRAIN: string = #$D83C#$DDE7#$D83C#$DDED;  // flag: Bahrain
      FLAG_BANGLADESH: string = #$D83C#$DDE7#$D83C#$DDE9;  // flag: Bangladesh
      FLAG_BARBADOS: string = #$D83C#$DDE7#$D83C#$DDE7;  // flag: Barbados
      FLAG_BELARUS: string = #$D83C#$DDE7#$D83C#$DDFE;  // flag: Belarus
      FLAG_BELGIUM: string = #$D83C#$DDE7#$D83C#$DDEA;  // flag: Belgium
      FLAG_BELIZE: string = #$D83C#$DDE7#$D83C#$DDFF;  // flag: Belize
      FLAG_BENIN: string = #$D83C#$DDE7#$D83C#$DDEF;  // flag: Benin
      FLAG_BERMUDA: string = #$D83C#$DDE7#$D83C#$DDF2;  // flag: Bermuda
      FLAG_BHUTAN: string = #$D83C#$DDE7#$D83C#$DDF9;  // flag: Bhutan
      FLAG_BOLIVIA: string = #$D83C#$DDE7#$D83C#$DDF4;  // flag: Bolivia
      FLAG_BOSNIA_HERZEGOVINA: string = #$D83C#$DDE7#$D83C#$DDE6;  // flag: Bosnia & Herzegovina
      FLAG_BOTSWANA: string = #$D83C#$DDE7#$D83C#$DDFC;  // flag: Botswana
      FLAG_BOUVET_ISLAND: string = #$D83C#$DDE7#$D83C#$DDFB;  // flag: Bouvet Island
      FLAG_BRAZIL: string = #$D83C#$DDE7#$D83C#$DDF7;  // flag: Brazil
      FLAG_BRITISH_INDIAN_OCEAN_TERRITORY: string = #$D83C#$DDEE#$D83C#$DDF4;  // flag: British Indian Ocean Territory
      FLAG_BRITISH_VIRGIN_ISLANDS: string = #$D83C#$DDFB#$D83C#$DDEC;  // flag: British Virgin Islands
      FLAG_BRUNEI: string = #$D83C#$DDE7#$D83C#$DDF3;  // flag: Brunei
      FLAG_BULGARIA: string = #$D83C#$DDE7#$D83C#$DDEC;  // flag: Bulgaria
      FLAG_BURKINA_FASO: string = #$D83C#$DDE7#$D83C#$DDEB;  // flag: Burkina Faso
      FLAG_BURUNDI: string = #$D83C#$DDE7#$D83C#$DDEE;  // flag: Burundi
      FLAG_CAMBODIA: string = #$D83C#$DDF0#$D83C#$DDED;  // flag: Cambodia
      FLAG_CAMEROON: string = #$D83C#$DDE8#$D83C#$DDF2;  // flag: Cameroon
      FLAG_CANADA: string = #$D83C#$DDE8#$D83C#$DDE6;  // flag: Canada
      FLAG_CANARY_ISLANDS: string = #$D83C#$DDEE#$D83C#$DDE8;  // flag: Canary Islands
      FLAG_CAPE_VERDE: string = #$D83C#$DDE8#$D83C#$DDFB;  // flag: Cape Verde
      FLAG_CARIBBEAN_NETHERLANDS: string = #$D83C#$DDE7#$D83C#$DDF6;  // flag: Caribbean Netherlands
      FLAG_CAYMAN_ISLANDS: string = #$D83C#$DDF0#$D83C#$DDFE;  // flag: Cayman Islands
      FLAG_CENTRAL_AFRICAN_REPUBLIC: string = #$D83C#$DDE8#$D83C#$DDEB;  // flag: Central African Republic
      FLAG_CEUTA_MELILLA: string = #$D83C#$DDEA#$D83C#$DDE6;  // flag: Ceuta & Melilla
      FLAG_CHAD: string = #$D83C#$DDF9#$D83C#$DDE9;  // flag: Chad
      FLAG_CHILE: string = #$D83C#$DDE8#$D83C#$DDF1;  // flag: Chile
      FLAG_CHINA: string = #$D83C#$DDE8#$D83C#$DDF3;  // flag: China
      FLAG_CHRISTMAS_ISLAND: string = #$D83C#$DDE8#$D83C#$DDFD;  // flag: Christmas Island
      FLAG_CLIPPERTON_ISLAND: string = #$D83C#$DDE8#$D83C#$DDF5;  // flag: Clipperton Island
      FLAG_COCOS_KEELING_ISLANDS: string = #$D83C#$DDE8#$D83C#$DDE8;  // flag: Cocos (Keeling) Islands
      FLAG_COLOMBIA: string = #$D83C#$DDE8#$D83C#$DDF4;  // flag: Colombia
      FLAG_COMOROS: string = #$D83C#$DDF0#$D83C#$DDF2;  // flag: Comoros
      FLAG_CONGO_BRAZZAVILLE: string = #$D83C#$DDE8#$D83C#$DDEC;  // flag: Congo - Brazzaville
      FLAG_CONGO_KINSHASA: string = #$D83C#$DDE8#$D83C#$DDE9;  // flag: Congo - Kinshasa
      FLAG_COOK_ISLANDS: string = #$D83C#$DDE8#$D83C#$DDF0;  // flag: Cook Islands
      FLAG_COSTA_RICA: string = #$D83C#$DDE8#$D83C#$DDF7;  // flag: Costa Rica
      FLAG_CROATIA: string = #$D83C#$DDED#$D83C#$DDF7;  // flag: Croatia
      FLAG_CUBA: string = #$D83C#$DDE8#$D83C#$DDFA;  // flag: Cuba
      FLAG_CURA_AO: string = #$D83C#$DDE8#$D83C#$DDFC;  // flag: Curaçao
      FLAG_CYPRUS: string = #$D83C#$DDE8#$D83C#$DDFE;  // flag: Cyprus
      FLAG_CZECHIA: string = #$D83C#$DDE8#$D83C#$DDFF;  // flag: Czechia
      FLAG_C_TE_D_IVOIRE: string = #$D83C#$DDE8#$D83C#$DDEE;  // flag: Côte d’Ivoire
      FLAG_DENMARK: string = #$D83C#$DDE9#$D83C#$DDF0;  // flag: Denmark
      FLAG_DIEGO_GARCIA: string = #$D83C#$DDE9#$D83C#$DDEC;  // flag: Diego Garcia
      FLAG_DJIBOUTI: string = #$D83C#$DDE9#$D83C#$DDEF;  // flag: Djibouti
      FLAG_DOMINICA: string = #$D83C#$DDE9#$D83C#$DDF2;  // flag: Dominica
      FLAG_DOMINICAN_REPUBLIC: string = #$D83C#$DDE9#$D83C#$DDF4;  // flag: Dominican Republic
      FLAG_ECUADOR: string = #$D83C#$DDEA#$D83C#$DDE8;  // flag: Ecuador
      FLAG_EGYPT: string = #$D83C#$DDEA#$D83C#$DDEC;  // flag: Egypt
      FLAG_EL_SALVADOR: string = #$D83C#$DDF8#$D83C#$DDFB;  // flag: El Salvador
      FLAG_ENGLAND: string = #$D83C#$DFF4#$DB40#$DC67#$DB40#$DC62#$DB40#$DC65#$DB40#$DC6E#$DB40#$DC67#$DB40#$DC7F;  // flag: England
      FLAG_EQUATORIAL_GUINEA: string = #$D83C#$DDEC#$D83C#$DDF6;  // flag: Equatorial Guinea
      FLAG_ERITREA: string = #$D83C#$DDEA#$D83C#$DDF7;  // flag: Eritrea
      FLAG_ESTONIA: string = #$D83C#$DDEA#$D83C#$DDEA;  // flag: Estonia
      FLAG_ESWATINI: string = #$D83C#$DDF8#$D83C#$DDFF;  // flag: Eswatini
      FLAG_ETHIOPIA: string = #$D83C#$DDEA#$D83C#$DDF9;  // flag: Ethiopia
      FLAG_EUROPEAN_UNION: string = #$D83C#$DDEA#$D83C#$DDFA;  // flag: European Union
      FLAG_FALKLAND_ISLANDS: string = #$D83C#$DDEB#$D83C#$DDF0;  // flag: Falkland Islands
      FLAG_FAROE_ISLANDS: string = #$D83C#$DDEB#$D83C#$DDF4;  // flag: Faroe Islands
      FLAG_FIJI: string = #$D83C#$DDEB#$D83C#$DDEF;  // flag: Fiji
      FLAG_FINLAND: string = #$D83C#$DDEB#$D83C#$DDEE;  // flag: Finland
      FLAG_FRANCE: string = #$D83C#$DDEB#$D83C#$DDF7;  // flag: France
      FLAG_FRENCH_GUIANA: string = #$D83C#$DDEC#$D83C#$DDEB;  // flag: French Guiana
      FLAG_FRENCH_POLYNESIA: string = #$D83C#$DDF5#$D83C#$DDEB;  // flag: French Polynesia
      FLAG_FRENCH_SOUTHERN_TERRITORIES: string = #$D83C#$DDF9#$D83C#$DDEB;  // flag: French Southern Territories
      FLAG_GABON: string = #$D83C#$DDEC#$D83C#$DDE6;  // flag: Gabon
      FLAG_GAMBIA: string = #$D83C#$DDEC#$D83C#$DDF2;  // flag: Gambia
      FLAG_GEORGIA: string = #$D83C#$DDEC#$D83C#$DDEA;  // flag: Georgia
      FLAG_GERMANY: string = #$D83C#$DDE9#$D83C#$DDEA;  // flag: Germany
      FLAG_GHANA: string = #$D83C#$DDEC#$D83C#$DDED;  // flag: Ghana
      FLAG_GIBRALTAR: string = #$D83C#$DDEC#$D83C#$DDEE;  // flag: Gibraltar
      FLAG_GREECE: string = #$D83C#$DDEC#$D83C#$DDF7;  // flag: Greece
      FLAG_GREENLAND: string = #$D83C#$DDEC#$D83C#$DDF1;  // flag: Greenland
      FLAG_GRENADA: string = #$D83C#$DDEC#$D83C#$DDE9;  // flag: Grenada
      FLAG_GUADELOUPE: string = #$D83C#$DDEC#$D83C#$DDF5;  // flag: Guadeloupe
      FLAG_GUAM: string = #$D83C#$DDEC#$D83C#$DDFA;  // flag: Guam
      FLAG_GUATEMALA: string = #$D83C#$DDEC#$D83C#$DDF9;  // flag: Guatemala
      FLAG_GUERNSEY: string = #$D83C#$DDEC#$D83C#$DDEC;  // flag: Guernsey
      FLAG_GUINEA: string = #$D83C#$DDEC#$D83C#$DDF3;  // flag: Guinea
      FLAG_GUINEA_BISSAU: string = #$D83C#$DDEC#$D83C#$DDFC;  // flag: Guinea-Bissau
      FLAG_GUYANA: string = #$D83C#$DDEC#$D83C#$DDFE;  // flag: Guyana
      FLAG_HAITI: string = #$D83C#$DDED#$D83C#$DDF9;  // flag: Haiti
      FLAG_HEARD_MCDONALD_ISLANDS: string = #$D83C#$DDED#$D83C#$DDF2;  // flag: Heard & McDonald Islands
      FLAG_HONDURAS: string = #$D83C#$DDED#$D83C#$DDF3;  // flag: Honduras
      FLAG_HONG_KONG_SAR_CHINA: string = #$D83C#$DDED#$D83C#$DDF0;  // flag: Hong Kong SAR China
      FLAG_HUNGARY: string = #$D83C#$DDED#$D83C#$DDFA;  // flag: Hungary
      FLAG_ICELAND: string = #$D83C#$DDEE#$D83C#$DDF8;  // flag: Iceland
      FLAG_INDIA: string = #$D83C#$DDEE#$D83C#$DDF3;  // flag: India
      FLAG_INDONESIA: string = #$D83C#$DDEE#$D83C#$DDE9;  // flag: Indonesia
      FLAG_IRAN: string = #$D83C#$DDEE#$D83C#$DDF7;  // flag: Iran
      FLAG_IRAQ: string = #$D83C#$DDEE#$D83C#$DDF6;  // flag: Iraq
      FLAG_IRELAND: string = #$D83C#$DDEE#$D83C#$DDEA;  // flag: Ireland
      FLAG_ISLE_OF_MAN: string = #$D83C#$DDEE#$D83C#$DDF2;  // flag: Isle of Man
      FLAG_ISRAEL: string = #$D83C#$DDEE#$D83C#$DDF1;  // flag: Israel
      FLAG_ITALY: string = #$D83C#$DDEE#$D83C#$DDF9;  // flag: Italy
      FLAG_JAMAICA: string = #$D83C#$DDEF#$D83C#$DDF2;  // flag: Jamaica
      FLAG_JAPAN: string = #$D83C#$DDEF#$D83C#$DDF5;  // flag: Japan
      FLAG_JERSEY: string = #$D83C#$DDEF#$D83C#$DDEA;  // flag: Jersey
      FLAG_JORDAN: string = #$D83C#$DDEF#$D83C#$DDF4;  // flag: Jordan
      FLAG_KAZAKHSTAN: string = #$D83C#$DDF0#$D83C#$DDFF;  // flag: Kazakhstan
      FLAG_KENYA: string = #$D83C#$DDF0#$D83C#$DDEA;  // flag: Kenya
      FLAG_KIRIBATI: string = #$D83C#$DDF0#$D83C#$DDEE;  // flag: Kiribati
      FLAG_KOSOVO: string = #$D83C#$DDFD#$D83C#$DDF0;  // flag: Kosovo
      FLAG_KUWAIT: string = #$D83C#$DDF0#$D83C#$DDFC;  // flag: Kuwait
      FLAG_KYRGYZSTAN: string = #$D83C#$DDF0#$D83C#$DDEC;  // flag: Kyrgyzstan
      FLAG_LAOS: string = #$D83C#$DDF1#$D83C#$DDE6;  // flag: Laos
      FLAG_LATVIA: string = #$D83C#$DDF1#$D83C#$DDFB;  // flag: Latvia
      FLAG_LEBANON: string = #$D83C#$DDF1#$D83C#$DDE7;  // flag: Lebanon
      FLAG_LESOTHO: string = #$D83C#$DDF1#$D83C#$DDF8;  // flag: Lesotho
      FLAG_LIBERIA: string = #$D83C#$DDF1#$D83C#$DDF7;  // flag: Liberia
      FLAG_LIBYA: string = #$D83C#$DDF1#$D83C#$DDFE;  // flag: Libya
      FLAG_LIECHTENSTEIN: string = #$D83C#$DDF1#$D83C#$DDEE;  // flag: Liechtenstein
      FLAG_LITHUANIA: string = #$D83C#$DDF1#$D83C#$DDF9;  // flag: Lithuania
      FLAG_LUXEMBOURG: string = #$D83C#$DDF1#$D83C#$DDFA;  // flag: Luxembourg
      FLAG_MACAO_SAR_CHINA: string = #$D83C#$DDF2#$D83C#$DDF4;  // flag: Macao SAR China
      FLAG_MADAGASCAR: string = #$D83C#$DDF2#$D83C#$DDEC;  // flag: Madagascar
      FLAG_MALAWI: string = #$D83C#$DDF2#$D83C#$DDFC;  // flag: Malawi
      FLAG_MALAYSIA: string = #$D83C#$DDF2#$D83C#$DDFE;  // flag: Malaysia
      FLAG_MALDIVES: string = #$D83C#$DDF2#$D83C#$DDFB;  // flag: Maldives
      FLAG_MALI: string = #$D83C#$DDF2#$D83C#$DDF1;  // flag: Mali
      FLAG_MALTA: string = #$D83C#$DDF2#$D83C#$DDF9;  // flag: Malta
      FLAG_MARSHALL_ISLANDS: string = #$D83C#$DDF2#$D83C#$DDED;  // flag: Marshall Islands
      FLAG_MARTINIQUE: string = #$D83C#$DDF2#$D83C#$DDF6;  // flag: Martinique
      FLAG_MAURITANIA: string = #$D83C#$DDF2#$D83C#$DDF7;  // flag: Mauritania
      FLAG_MAURITIUS: string = #$D83C#$DDF2#$D83C#$DDFA;  // flag: Mauritius
      FLAG_MAYOTTE: string = #$D83C#$DDFE#$D83C#$DDF9;  // flag: Mayotte
      FLAG_MEXICO: string = #$D83C#$DDF2#$D83C#$DDFD;  // flag: Mexico
      FLAG_MICRONESIA: string = #$D83C#$DDEB#$D83C#$DDF2;  // flag: Micronesia
      FLAG_MOLDOVA: string = #$D83C#$DDF2#$D83C#$DDE9;  // flag: Moldova
      FLAG_MONACO: string = #$D83C#$DDF2#$D83C#$DDE8;  // flag: Monaco
      FLAG_MONGOLIA: string = #$D83C#$DDF2#$D83C#$DDF3;  // flag: Mongolia
      FLAG_MONTENEGRO: string = #$D83C#$DDF2#$D83C#$DDEA;  // flag: Montenegro
      FLAG_MONTSERRAT: string = #$D83C#$DDF2#$D83C#$DDF8;  // flag: Montserrat
      FLAG_MOROCCO: string = #$D83C#$DDF2#$D83C#$DDE6;  // flag: Morocco
      FLAG_MOZAMBIQUE: string = #$D83C#$DDF2#$D83C#$DDFF;  // flag: Mozambique
      FLAG_MYANMAR_BURMA: string = #$D83C#$DDF2#$D83C#$DDF2;  // flag: Myanmar (Burma)
      FLAG_NAMIBIA: string = #$D83C#$DDF3#$D83C#$DDE6;  // flag: Namibia
      FLAG_NAURU: string = #$D83C#$DDF3#$D83C#$DDF7;  // flag: Nauru
      FLAG_NEPAL: string = #$D83C#$DDF3#$D83C#$DDF5;  // flag: Nepal
      FLAG_NETHERLANDS: string = #$D83C#$DDF3#$D83C#$DDF1;  // flag: Netherlands
      FLAG_NEW_CALEDONIA: string = #$D83C#$DDF3#$D83C#$DDE8;  // flag: New Caledonia
      FLAG_NEW_ZEALAND: string = #$D83C#$DDF3#$D83C#$DDFF;  // flag: New Zealand
      FLAG_NICARAGUA: string = #$D83C#$DDF3#$D83C#$DDEE;  // flag: Nicaragua
      FLAG_NIGER: string = #$D83C#$DDF3#$D83C#$DDEA;  // flag: Niger
      FLAG_NIGERIA: string = #$D83C#$DDF3#$D83C#$DDEC;  // flag: Nigeria
      FLAG_NIUE: string = #$D83C#$DDF3#$D83C#$DDFA;  // flag: Niue
      FLAG_NORFOLK_ISLAND: string = #$D83C#$DDF3#$D83C#$DDEB;  // flag: Norfolk Island
      FLAG_NORTH_KOREA: string = #$D83C#$DDF0#$D83C#$DDF5;  // flag: North Korea
      FLAG_NORTH_MACEDONIA: string = #$D83C#$DDF2#$D83C#$DDF0;  // flag: North Macedonia
      FLAG_NORTHERN_MARIANA_ISLANDS: string = #$D83C#$DDF2#$D83C#$DDF5;  // flag: Northern Mariana Islands
      FLAG_NORWAY: string = #$D83C#$DDF3#$D83C#$DDF4;  // flag: Norway
      FLAG_OMAN: string = #$D83C#$DDF4#$D83C#$DDF2;  // flag: Oman
      FLAG_PAKISTAN: string = #$D83C#$DDF5#$D83C#$DDF0;  // flag: Pakistan
      FLAG_PALAU: string = #$D83C#$DDF5#$D83C#$DDFC;  // flag: Palau
      FLAG_PALESTINIAN_TERRITORIES: string = #$D83C#$DDF5#$D83C#$DDF8;  // flag: Palestinian Territories
      FLAG_PANAMA: string = #$D83C#$DDF5#$D83C#$DDE6;  // flag: Panama
      FLAG_PAPUA_NEW_GUINEA: string = #$D83C#$DDF5#$D83C#$DDEC;  // flag: Papua New Guinea
      FLAG_PARAGUAY: string = #$D83C#$DDF5#$D83C#$DDFE;  // flag: Paraguay
      FLAG_PERU: string = #$D83C#$DDF5#$D83C#$DDEA;  // flag: Peru
      FLAG_PHILIPPINES: string = #$D83C#$DDF5#$D83C#$DDED;  // flag: Philippines
      FLAG_PITCAIRN_ISLANDS: string = #$D83C#$DDF5#$D83C#$DDF3;  // flag: Pitcairn Islands
      FLAG_POLAND: string = #$D83C#$DDF5#$D83C#$DDF1;  // flag: Poland
      FLAG_PORTUGAL: string = #$D83C#$DDF5#$D83C#$DDF9;  // flag: Portugal
      FLAG_PUERTO_RICO: string = #$D83C#$DDF5#$D83C#$DDF7;  // flag: Puerto Rico
      FLAG_QATAR: string = #$D83C#$DDF6#$D83C#$DDE6;  // flag: Qatar
      FLAG_ROMANIA: string = #$D83C#$DDF7#$D83C#$DDF4;  // flag: Romania
      FLAG_RUSSIA: string = #$D83C#$DDF7#$D83C#$DDFA;  // flag: Russia
      FLAG_RWANDA: string = #$D83C#$DDF7#$D83C#$DDFC;  // flag: Rwanda
      FLAG_R_UNION: string = #$D83C#$DDF7#$D83C#$DDEA;  // flag: Réunion
      FLAG_SAMOA: string = #$D83C#$DDFC#$D83C#$DDF8;  // flag: Samoa
      FLAG_SAN_MARINO: string = #$D83C#$DDF8#$D83C#$DDF2;  // flag: San Marino
      FLAG_SARK: string = #$D83C#$DDE8#$D83C#$DDF6;  // flag: Sark
      FLAG_SAUDI_ARABIA: string = #$D83C#$DDF8#$D83C#$DDE6;  // flag: Saudi Arabia
      FLAG_SCOTLAND: string = #$D83C#$DFF4#$DB40#$DC67#$DB40#$DC62#$DB40#$DC73#$DB40#$DC63#$DB40#$DC74#$DB40#$DC7F;  // flag: Scotland
      FLAG_SENEGAL: string = #$D83C#$DDF8#$D83C#$DDF3;  // flag: Senegal
      FLAG_SERBIA: string = #$D83C#$DDF7#$D83C#$DDF8;  // flag: Serbia
      FLAG_SEYCHELLES: string = #$D83C#$DDF8#$D83C#$DDE8;  // flag: Seychelles
      FLAG_SIERRA_LEONE: string = #$D83C#$DDF8#$D83C#$DDF1;  // flag: Sierra Leone
      FLAG_SINGAPORE: string = #$D83C#$DDF8#$D83C#$DDEC;  // flag: Singapore
      FLAG_SINT_MAARTEN: string = #$D83C#$DDF8#$D83C#$DDFD;  // flag: Sint Maarten
      FLAG_SLOVAKIA: string = #$D83C#$DDF8#$D83C#$DDF0;  // flag: Slovakia
      FLAG_SLOVENIA: string = #$D83C#$DDF8#$D83C#$DDEE;  // flag: Slovenia
      FLAG_SOLOMON_ISLANDS: string = #$D83C#$DDF8#$D83C#$DDE7;  // flag: Solomon Islands
      FLAG_SOMALIA: string = #$D83C#$DDF8#$D83C#$DDF4;  // flag: Somalia
      FLAG_SOUTH_AFRICA: string = #$D83C#$DDFF#$D83C#$DDE6;  // flag: South Africa
      FLAG_SOUTH_GEORGIA_SOUTH_SANDWICH_ISLANDS: string = #$D83C#$DDEC#$D83C#$DDF8;  // flag: South Georgia & South Sandwich Islands
      FLAG_SOUTH_KOREA: string = #$D83C#$DDF0#$D83C#$DDF7;  // flag: South Korea
      FLAG_SOUTH_SUDAN: string = #$D83C#$DDF8#$D83C#$DDF8;  // flag: South Sudan
      FLAG_SPAIN: string = #$D83C#$DDEA#$D83C#$DDF8;  // flag: Spain
      FLAG_SRI_LANKA: string = #$D83C#$DDF1#$D83C#$DDF0;  // flag: Sri Lanka
      FLAG_ST_BARTH_LEMY: string = #$D83C#$DDE7#$D83C#$DDF1;  // flag: St. Barthélemy
      FLAG_ST_HELENA: string = #$D83C#$DDF8#$D83C#$DDED;  // flag: St. Helena
      FLAG_ST_KITTS_NEVIS: string = #$D83C#$DDF0#$D83C#$DDF3;  // flag: St. Kitts & Nevis
      FLAG_ST_LUCIA: string = #$D83C#$DDF1#$D83C#$DDE8;  // flag: St. Lucia
      FLAG_ST_MARTIN: string = #$D83C#$DDF2#$D83C#$DDEB;  // flag: St. Martin
      FLAG_ST_PIERRE_MIQUELON: string = #$D83C#$DDF5#$D83C#$DDF2;  // flag: St. Pierre & Miquelon
      FLAG_ST_VINCENT_GRENADINES: string = #$D83C#$DDFB#$D83C#$DDE8;  // flag: St. Vincent & Grenadines
      FLAG_SUDAN: string = #$D83C#$DDF8#$D83C#$DDE9;  // flag: Sudan
      FLAG_SURINAME: string = #$D83C#$DDF8#$D83C#$DDF7;  // flag: Suriname
      FLAG_SVALBARD_JAN_MAYEN: string = #$D83C#$DDF8#$D83C#$DDEF;  // flag: Svalbard & Jan Mayen
      FLAG_SWEDEN: string = #$D83C#$DDF8#$D83C#$DDEA;  // flag: Sweden
      FLAG_SWITZERLAND: string = #$D83C#$DDE8#$D83C#$DDED;  // flag: Switzerland
      FLAG_SYRIA: string = #$D83C#$DDF8#$D83C#$DDFE;  // flag: Syria
      FLAG_S_O_TOM_PR_NCIPE: string = #$D83C#$DDF8#$D83C#$DDF9;  // flag: São Tomé & Príncipe
      FLAG_TAIWAN: string = #$D83C#$DDF9#$D83C#$DDFC;  // flag: Taiwan
      FLAG_TAJIKISTAN: string = #$D83C#$DDF9#$D83C#$DDEF;  // flag: Tajikistan
      FLAG_TANZANIA: string = #$D83C#$DDF9#$D83C#$DDFF;  // flag: Tanzania
      FLAG_THAILAND: string = #$D83C#$DDF9#$D83C#$DDED;  // flag: Thailand
      FLAG_TIMOR_LESTE: string = #$D83C#$DDF9#$D83C#$DDF1;  // flag: Timor-Leste
      FLAG_TOGO: string = #$D83C#$DDF9#$D83C#$DDEC;  // flag: Togo
      FLAG_TOKELAU: string = #$D83C#$DDF9#$D83C#$DDF0;  // flag: Tokelau
      FLAG_TONGA: string = #$D83C#$DDF9#$D83C#$DDF4;  // flag: Tonga
      FLAG_TRINIDAD_TOBAGO: string = #$D83C#$DDF9#$D83C#$DDF9;  // flag: Trinidad & Tobago
      FLAG_TRISTAN_DA_CUNHA: string = #$D83C#$DDF9#$D83C#$DDE6;  // flag: Tristan da Cunha
      FLAG_TUNISIA: string = #$D83C#$DDF9#$D83C#$DDF3;  // flag: Tunisia
      FLAG_TURKMENISTAN: string = #$D83C#$DDF9#$D83C#$DDF2;  // flag: Turkmenistan
      FLAG_TURKS_CAICOS_ISLANDS: string = #$D83C#$DDF9#$D83C#$DDE8;  // flag: Turks & Caicos Islands
      FLAG_TUVALU: string = #$D83C#$DDF9#$D83C#$DDFB;  // flag: Tuvalu
      FLAG_T_RKIYE: string = #$D83C#$DDF9#$D83C#$DDF7;  // flag: Türkiye
      FLAG_U_S_OUTLYING_ISLANDS: string = #$D83C#$DDFA#$D83C#$DDF2;  // flag: U.S. Outlying Islands
      FLAG_U_S_VIRGIN_ISLANDS: string = #$D83C#$DDFB#$D83C#$DDEE;  // flag: U.S. Virgin Islands
      FLAG_UGANDA: string = #$D83C#$DDFA#$D83C#$DDEC;  // flag: Uganda
      FLAG_UKRAINE: string = #$D83C#$DDFA#$D83C#$DDE6;  // flag: Ukraine
      FLAG_UNITED_ARAB_EMIRATES: string = #$D83C#$DDE6#$D83C#$DDEA;  // flag: United Arab Emirates
      FLAG_UNITED_KINGDOM: string = #$D83C#$DDEC#$D83C#$DDE7;  // flag: United Kingdom
      FLAG_UNITED_NATIONS: string = #$D83C#$DDFA#$D83C#$DDF3;  // flag: United Nations
      FLAG_UNITED_STATES: string = #$D83C#$DDFA#$D83C#$DDF8;  // flag: United States
      FLAG_URUGUAY: string = #$D83C#$DDFA#$D83C#$DDFE;  // flag: Uruguay
      FLAG_UZBEKISTAN: string = #$D83C#$DDFA#$D83C#$DDFF;  // flag: Uzbekistan
      FLAG_VANUATU: string = #$D83C#$DDFB#$D83C#$DDFA;  // flag: Vanuatu
      FLAG_VATICAN_CITY: string = #$D83C#$DDFB#$D83C#$DDE6;  // flag: Vatican City
      FLAG_VENEZUELA: string = #$D83C#$DDFB#$D83C#$DDEA;  // flag: Venezuela
      FLAG_VIETNAM: string = #$D83C#$DDFB#$D83C#$DDF3;  // flag: Vietnam
      FLAG_WALES: string = #$D83C#$DFF4#$DB40#$DC67#$DB40#$DC62#$DB40#$DC77#$DB40#$DC6C#$DB40#$DC73#$DB40#$DC7F;  // flag: Wales
      FLAG_WALLIS_FUTUNA: string = #$D83C#$DDFC#$D83C#$DDEB;  // flag: Wallis & Futuna
      FLAG_WESTERN_SAHARA: string = #$D83C#$DDEA#$D83C#$DDED;  // flag: Western Sahara
      FLAG_YEMEN: string = #$D83C#$DDFE#$D83C#$DDEA;  // flag: Yemen
      FLAG_ZAMBIA: string = #$D83C#$DDFF#$D83C#$DDF2;  // flag: Zambia
      FLAG_ZIMBABWE: string = #$D83C#$DDFF#$D83C#$DDFC;  // flag: Zimbabwe
      FLAG_LAND_ISLANDS: string = #$D83C#$DDE6#$D83C#$DDFD;  // flag: Åland Islands
      FLEXED_BICEPS_DARK_SKIN_TONE: string = #$D83D#$DCAA#$D83C#$DFFF;  // flexed biceps: dark skin tone
      FLEXED_BICEPS_LIGHT_SKIN_TONE: string = #$D83D#$DCAA#$D83C#$DFFB;  // flexed biceps: light skin tone
      FLEXED_BICEPS_MEDIUM_SKIN_TONE: string = #$D83D#$DCAA#$D83C#$DFFD;  // flexed biceps: medium skin tone
      FLEXED_BICEPS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DCAA#$D83C#$DFFE;  // flexed biceps: medium-dark skin tone
      FLEXED_BICEPS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DCAA#$D83C#$DFFC;  // flexed biceps: medium-light skin tone
      FOLDED_HANDS_DARK_SKIN_TONE: string = #$D83D#$DE4F#$D83C#$DFFF;  // folded hands: dark skin tone
      FOLDED_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DE4F#$D83C#$DFFB;  // folded hands: light skin tone
      FOLDED_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DE4F#$D83C#$DFFD;  // folded hands: medium skin tone
      FOLDED_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4F#$D83C#$DFFE;  // folded hands: medium-dark skin tone
      FOLDED_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4F#$D83C#$DFFC;  // folded hands: medium-light skin tone
      FOOT_DARK_SKIN_TONE: string = #$D83E#$DDB6#$D83C#$DFFF;  // foot: dark skin tone
      FOOT_LIGHT_SKIN_TONE: string = #$D83E#$DDB6#$D83C#$DFFB;  // foot: light skin tone
      FOOT_MEDIUM_SKIN_TONE: string = #$D83E#$DDB6#$D83C#$DFFD;  // foot: medium skin tone
      FOOT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB6#$D83C#$DFFE;  // foot: medium-dark skin tone
      FOOT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB6#$D83C#$DFFC;  // foot: medium-light skin tone
      GIRL_DARK_SKIN_TONE: string = #$D83D#$DC67#$D83C#$DFFF;  // girl: dark skin tone
      GIRL_LIGHT_SKIN_TONE: string = #$D83D#$DC67#$D83C#$DFFB;  // girl: light skin tone
      GIRL_MEDIUM_SKIN_TONE: string = #$D83D#$DC67#$D83C#$DFFD;  // girl: medium skin tone
      GIRL_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC67#$D83C#$DFFE;  // girl: medium-dark skin tone
      GIRL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC67#$D83C#$DFFC;  // girl: medium-light skin tone
      GUARD_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFF;  // guard: dark skin tone
      GUARD_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFB;  // guard: light skin tone
      GUARD_MEDIUM_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFD;  // guard: medium skin tone
      GUARD_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFE;  // guard: medium-dark skin tone
      GUARD_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFC;  // guard: medium-light skin tone
      HAND_WITH_FINGERS_SPLAYED_DARK_SKIN_TONE: string = #$D83D#$DD90#$D83C#$DFFF;  // hand with fingers splayed: dark skin tone
      HAND_WITH_FINGERS_SPLAYED_LIGHT_SKIN_TONE: string = #$D83D#$DD90#$D83C#$DFFB;  // hand with fingers splayed: light skin tone
      HAND_WITH_FINGERS_SPLAYED_MEDIUM_SKIN_TONE: string = #$D83D#$DD90#$D83C#$DFFD;  // hand with fingers splayed: medium skin tone
      HAND_WITH_FINGERS_SPLAYED_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD90#$D83C#$DFFE;  // hand with fingers splayed: medium-dark skin tone
      HAND_WITH_FINGERS_SPLAYED_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD90#$D83C#$DFFC;  // hand with fingers splayed: medium-light skin tone
      HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_DARK_SKIN_TONE: string = #$D83E#$DEF0#$D83C#$DFFF;  // hand with index finger and thumb crossed: dark skin tone
      HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_LIGHT_SKIN_TONE: string = #$D83E#$DEF0#$D83C#$DFFB;  // hand with index finger and thumb crossed: light skin tone
      HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_SKIN_TONE: string = #$D83E#$DEF0#$D83C#$DFFD;  // hand with index finger and thumb crossed: medium skin tone
      HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF0#$D83C#$DFFE;  // hand with index finger and thumb crossed: medium-dark skin tone
      HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF0#$D83C#$DFFC;  // hand with index finger and thumb crossed: medium-light skin tone
      HANDSHAKE_DARK_SKIN_TONE: string = #$D83E#$DD1D#$D83C#$DFFF;  // handshake: dark skin tone
      HANDSHAKE_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFF#$200D#$D83E#$DEF2#$D83C#$DFFB;  // handshake: dark skin tone, light skin tone
      HANDSHAKE_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFF#$200D#$D83E#$DEF2#$D83C#$DFFD;  // handshake: dark skin tone, medium skin tone
      HANDSHAKE_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFF#$200D#$D83E#$DEF2#$D83C#$DFFE;  // handshake: dark skin tone, medium-dark skin tone
      HANDSHAKE_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFF#$200D#$D83E#$DEF2#$D83C#$DFFC;  // handshake: dark skin tone, medium-light skin tone
      HANDSHAKE_LIGHT_SKIN_TONE: string = #$D83E#$DD1D#$D83C#$DFFB;  // handshake: light skin tone
      HANDSHAKE_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFB#$200D#$D83E#$DEF2#$D83C#$DFFF;  // handshake: light skin tone, dark skin tone
      HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFB#$200D#$D83E#$DEF2#$D83C#$DFFD;  // handshake: light skin tone, medium skin tone
      HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFB#$200D#$D83E#$DEF2#$D83C#$DFFE;  // handshake: light skin tone, medium-dark skin tone
      HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFB#$200D#$D83E#$DEF2#$D83C#$DFFC;  // handshake: light skin tone, medium-light skin tone
      HANDSHAKE_MEDIUM_SKIN_TONE: string = #$D83E#$DD1D#$D83C#$DFFD;  // handshake: medium skin tone
      HANDSHAKE_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFD#$200D#$D83E#$DEF2#$D83C#$DFFF;  // handshake: medium skin tone, dark skin tone
      HANDSHAKE_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFD#$200D#$D83E#$DEF2#$D83C#$DFFB;  // handshake: medium skin tone, light skin tone
      HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFD#$200D#$D83E#$DEF2#$D83C#$DFFE;  // handshake: medium skin tone, medium-dark skin tone
      HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFD#$200D#$D83E#$DEF2#$D83C#$DFFC;  // handshake: medium skin tone, medium-light skin tone
      HANDSHAKE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1D#$D83C#$DFFE;  // handshake: medium-dark skin tone
      HANDSHAKE_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFE#$200D#$D83E#$DEF2#$D83C#$DFFF;  // handshake: medium-dark skin tone, dark skin tone
      HANDSHAKE_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFE#$200D#$D83E#$DEF2#$D83C#$DFFB;  // handshake: medium-dark skin tone, light skin tone
      HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFE#$200D#$D83E#$DEF2#$D83C#$DFFD;  // handshake: medium-dark skin tone, medium skin tone
      HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFE#$200D#$D83E#$DEF2#$D83C#$DFFC;  // handshake: medium-dark skin tone, medium-light skin tone
      HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1D#$D83C#$DFFC;  // handshake: medium-light skin tone
      HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFC#$200D#$D83E#$DEF2#$D83C#$DFFF;  // handshake: medium-light skin tone, dark skin tone
      HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFC#$200D#$D83E#$DEF2#$D83C#$DFFB;  // handshake: medium-light skin tone, light skin tone
      HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFC#$200D#$D83E#$DEF2#$D83C#$DFFD;  // handshake: medium-light skin tone, medium skin tone
      HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFC#$200D#$D83E#$DEF2#$D83C#$DFFE;  // handshake: medium-light skin tone, medium-dark skin tone
      HEAD_SHAKING_HORIZONTALLY: string = #$D83D#$DE42#$200D#$2194#$FE0F;  // head shaking horizontally
      HEAD_SHAKING_VERTICALLY: string = #$D83D#$DE42#$200D#$2195#$FE0F;  // head shaking vertically
      HEALTH_WORKER: string = #$D83E#$DDD1#$200D#$2695#$FE0F;  // health worker
      HEALTH_WORKER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2695#$FE0F;  // health worker: dark skin tone
      HEALTH_WORKER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2695#$FE0F;  // health worker: light skin tone
      HEALTH_WORKER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2695#$FE0F;  // health worker: medium skin tone
      HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2695#$FE0F;  // health worker: medium-dark skin tone
      HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2695#$FE0F;  // health worker: medium-light skin tone
      HEART_HANDS_DARK_SKIN_TONE: string = #$D83E#$DEF6#$D83C#$DFFF;  // heart hands: dark skin tone
      HEART_HANDS_LIGHT_SKIN_TONE: string = #$D83E#$DEF6#$D83C#$DFFB;  // heart hands: light skin tone
      HEART_HANDS_MEDIUM_SKIN_TONE: string = #$D83E#$DEF6#$D83C#$DFFD;  // heart hands: medium skin tone
      HEART_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF6#$D83C#$DFFE;  // heart hands: medium-dark skin tone
      HEART_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF6#$D83C#$DFFC;  // heart hands: medium-light skin tone
      HEART_ON_FIRE: string = #$2764#$FE0F#$200D#$D83D#$DD25;  // heart on fire
      HORSE_RACING_DARK_SKIN_TONE: string = #$D83C#$DFC7#$D83C#$DFFF;  // horse racing: dark skin tone
      HORSE_RACING_LIGHT_SKIN_TONE: string = #$D83C#$DFC7#$D83C#$DFFB;  // horse racing: light skin tone
      HORSE_RACING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC7#$D83C#$DFFD;  // horse racing: medium skin tone
      HORSE_RACING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC7#$D83C#$DFFE;  // horse racing: medium-dark skin tone
      HORSE_RACING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC7#$D83C#$DFFC;  // horse racing: medium-light skin tone
      INDEX_POINTING_AT_THE_VIEWER_DARK_SKIN_TONE: string = #$D83E#$DEF5#$D83C#$DFFF;  // index pointing at the viewer: dark skin tone
      INDEX_POINTING_AT_THE_VIEWER_LIGHT_SKIN_TONE: string = #$D83E#$DEF5#$D83C#$DFFB;  // index pointing at the viewer: light skin tone
      INDEX_POINTING_AT_THE_VIEWER_MEDIUM_SKIN_TONE: string = #$D83E#$DEF5#$D83C#$DFFD;  // index pointing at the viewer: medium skin tone
      INDEX_POINTING_AT_THE_VIEWER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF5#$D83C#$DFFE;  // index pointing at the viewer: medium-dark skin tone
      INDEX_POINTING_AT_THE_VIEWER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF5#$D83C#$DFFC;  // index pointing at the viewer: medium-light skin tone
      INDEX_POINTING_UP_DARK_SKIN_TONE: string = #$261D#$D83C#$DFFF;  // index pointing up: dark skin tone
      INDEX_POINTING_UP_LIGHT_SKIN_TONE: string = #$261D#$D83C#$DFFB;  // index pointing up: light skin tone
      INDEX_POINTING_UP_MEDIUM_SKIN_TONE: string = #$261D#$D83C#$DFFD;  // index pointing up: medium skin tone
      INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE: string = #$261D#$D83C#$DFFE;  // index pointing up: medium-dark skin tone
      INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE: string = #$261D#$D83C#$DFFC;  // index pointing up: medium-light skin tone
      JUDGE: string = #$D83E#$DDD1#$200D#$2696#$FE0F;  // judge
      JUDGE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2696#$FE0F;  // judge: dark skin tone
      JUDGE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2696#$FE0F;  // judge: light skin tone
      JUDGE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2696#$FE0F;  // judge: medium skin tone
      JUDGE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2696#$FE0F;  // judge: medium-dark skin tone
      JUDGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2696#$FE0F;  // judge: medium-light skin tone
      KISS_DARK_SKIN_TONE: string = #$D83D#$DC8F#$D83C#$DFFF;  // kiss: dark skin tone
      KISS_LIGHT_SKIN_TONE: string = #$D83D#$DC8F#$D83C#$DFFB;  // kiss: light skin tone
      KISS_MAN_MAN: string = #$D83D#$DC68#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68;  // kiss: man, man
      KISS_MAN_MAN_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: man, man, dark skin tone
      KISS_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: man, man, dark skin tone, light skin tone
      KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: man, man, dark skin tone, medium skin tone
      KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: man, man, dark skin tone, medium-dark skin tone
      KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: man, man, dark skin tone, medium-light skin tone
      KISS_MAN_MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: man, man, light skin tone
      KISS_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: man, man, light skin tone, dark skin tone
      KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: man, man, light skin tone, medium skin tone
      KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: man, man, light skin tone, medium-dark skin tone
      KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: man, man, light skin tone, medium-light skin tone
      KISS_MAN_MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: man, man, medium skin tone
      KISS_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: man, man, medium skin tone, dark skin tone
      KISS_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: man, man, medium skin tone, light skin tone
      KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: man, man, medium skin tone, medium-dark skin tone
      KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: man, man, medium skin tone, medium-light skin tone
      KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: man, man, medium-dark skin tone
      KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: man, man, medium-dark skin tone, dark skin tone
      KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: man, man, medium-dark skin tone, light skin tone
      KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: man, man, medium-dark skin tone, medium skin tone
      KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: man, man, medium-dark skin tone, medium-light skin tone
      KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: man, man, medium-light skin tone
      KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: man, man, medium-light skin tone, dark skin tone
      KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: man, man, medium-light skin tone, light skin tone
      KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: man, man, medium-light skin tone, medium skin tone
      KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: man, man, medium-light skin tone, medium-dark skin tone
      KISS_MEDIUM_SKIN_TONE: string = #$D83D#$DC8F#$D83C#$DFFD;  // kiss: medium skin tone
      KISS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC8F#$D83C#$DFFE;  // kiss: medium-dark skin tone
      KISS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC8F#$D83C#$DFFC;  // kiss: medium-light skin tone
      KISS_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFB;  // kiss: person, person, dark skin tone, light skin tone
      KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFD;  // kiss: person, person, dark skin tone, medium skin tone
      KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFE;  // kiss: person, person, dark skin tone, medium-dark skin tone
      KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFC;  // kiss: person, person, dark skin tone, medium-light skin tone
      KISS_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFF;  // kiss: person, person, light skin tone, dark skin tone
      KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFD;  // kiss: person, person, light skin tone, medium skin tone
      KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFE;  // kiss: person, person, light skin tone, medium-dark skin tone
      KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFC;  // kiss: person, person, light skin tone, medium-light skin tone
      KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFF;  // kiss: person, person, medium skin tone, dark skin tone
      KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFB;  // kiss: person, person, medium skin tone, light skin tone
      KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFE;  // kiss: person, person, medium skin tone, medium-dark skin tone
      KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFC;  // kiss: person, person, medium skin tone, medium-light skin tone
      KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFF;  // kiss: person, person, medium-dark skin tone, dark skin tone
      KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFB;  // kiss: person, person, medium-dark skin tone, light skin tone
      KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFD;  // kiss: person, person, medium-dark skin tone, medium skin tone
      KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFC;  // kiss: person, person, medium-dark skin tone, medium-light skin tone
      KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFF;  // kiss: person, person, medium-light skin tone, dark skin tone
      KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFB;  // kiss: person, person, medium-light skin tone, light skin tone
      KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFD;  // kiss: person, person, medium-light skin tone, medium skin tone
      KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83E#$DDD1#$D83C#$DFFE;  // kiss: person, person, medium-light skin tone, medium-dark skin tone
      KISS_WOMAN_MAN: string = #$D83D#$DC69#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68;  // kiss: woman, man
      KISS_WOMAN_MAN_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: woman, man, dark skin tone
      KISS_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: woman, man, dark skin tone, light skin tone
      KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: woman, man, dark skin tone, medium skin tone
      KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: woman, man, dark skin tone, medium-dark skin tone
      KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: woman, man, dark skin tone, medium-light skin tone
      KISS_WOMAN_MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: woman, man, light skin tone
      KISS_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: woman, man, light skin tone, dark skin tone
      KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: woman, man, light skin tone, medium skin tone
      KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: woman, man, light skin tone, medium-dark skin tone
      KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: woman, man, light skin tone, medium-light skin tone
      KISS_WOMAN_MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: woman, man, medium skin tone
      KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: woman, man, medium skin tone, dark skin tone
      KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: woman, man, medium skin tone, light skin tone
      KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: woman, man, medium skin tone, medium-dark skin tone
      KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: woman, man, medium skin tone, medium-light skin tone
      KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: woman, man, medium-dark skin tone
      KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: woman, man, medium-dark skin tone, dark skin tone
      KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: woman, man, medium-dark skin tone, light skin tone
      KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: woman, man, medium-dark skin tone, medium skin tone
      KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: woman, man, medium-dark skin tone, medium-light skin tone
      KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFC;  // kiss: woman, man, medium-light skin tone
      KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFF;  // kiss: woman, man, medium-light skin tone, dark skin tone
      KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFB;  // kiss: woman, man, medium-light skin tone, light skin tone
      KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFD;  // kiss: woman, man, medium-light skin tone, medium skin tone
      KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC68#$D83C#$DFFE;  // kiss: woman, man, medium-light skin tone, medium-dark skin tone
      KISS_WOMAN_WOMAN: string = #$D83D#$DC69#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69;  // kiss: woman, woman
      KISS_WOMAN_WOMAN_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFF;  // kiss: woman, woman, dark skin tone
      KISS_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFB;  // kiss: woman, woman, dark skin tone, light skin tone
      KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFD;  // kiss: woman, woman, dark skin tone, medium skin tone
      KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFE;  // kiss: woman, woman, dark skin tone, medium-dark skin tone
      KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFC;  // kiss: woman, woman, dark skin tone, medium-light skin tone
      KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFB;  // kiss: woman, woman, light skin tone
      KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFF;  // kiss: woman, woman, light skin tone, dark skin tone
      KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFD;  // kiss: woman, woman, light skin tone, medium skin tone
      KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFE;  // kiss: woman, woman, light skin tone, medium-dark skin tone
      KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFC;  // kiss: woman, woman, light skin tone, medium-light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFD;  // kiss: woman, woman, medium skin tone
      KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFF;  // kiss: woman, woman, medium skin tone, dark skin tone
      KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFB;  // kiss: woman, woman, medium skin tone, light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFE;  // kiss: woman, woman, medium skin tone, medium-dark skin tone
      KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFC;  // kiss: woman, woman, medium skin tone, medium-light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFE;  // kiss: woman, woman, medium-dark skin tone
      KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFF;  // kiss: woman, woman, medium-dark skin tone, dark skin tone
      KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFB;  // kiss: woman, woman, medium-dark skin tone, light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFD;  // kiss: woman, woman, medium-dark skin tone, medium skin tone
      KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFC;  // kiss: woman, woman, medium-dark skin tone, medium-light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFC;  // kiss: woman, woman, medium-light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFF;  // kiss: woman, woman, medium-light skin tone, dark skin tone
      KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFB;  // kiss: woman, woman, medium-light skin tone, light skin tone
      KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFD;  // kiss: woman, woman, medium-light skin tone, medium skin tone
      KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2764#$FE0F#$200D#$D83D#$DC8B#$200D#$D83D#$DC69#$D83C#$DFFE;  // kiss: woman, woman, medium-light skin tone, medium-dark skin tone
      LEFT_FACING_FIST_DARK_SKIN_TONE: string = #$D83E#$DD1B#$D83C#$DFFF;  // left-facing fist: dark skin tone
      LEFT_FACING_FIST_LIGHT_SKIN_TONE: string = #$D83E#$DD1B#$D83C#$DFFB;  // left-facing fist: light skin tone
      LEFT_FACING_FIST_MEDIUM_SKIN_TONE: string = #$D83E#$DD1B#$D83C#$DFFD;  // left-facing fist: medium skin tone
      LEFT_FACING_FIST_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1B#$D83C#$DFFE;  // left-facing fist: medium-dark skin tone
      LEFT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1B#$D83C#$DFFC;  // left-facing fist: medium-light skin tone
      LEFTWARDS_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF2#$D83C#$DFFF;  // leftwards hand: dark skin tone
      LEFTWARDS_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF2#$D83C#$DFFB;  // leftwards hand: light skin tone
      LEFTWARDS_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF2#$D83C#$DFFD;  // leftwards hand: medium skin tone
      LEFTWARDS_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF2#$D83C#$DFFE;  // leftwards hand: medium-dark skin tone
      LEFTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF2#$D83C#$DFFC;  // leftwards hand: medium-light skin tone
      LEFTWARDS_PUSHING_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF7#$D83C#$DFFF;  // leftwards pushing hand: dark skin tone
      LEFTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF7#$D83C#$DFFB;  // leftwards pushing hand: light skin tone
      LEFTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF7#$D83C#$DFFD;  // leftwards pushing hand: medium skin tone
      LEFTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF7#$D83C#$DFFE;  // leftwards pushing hand: medium-dark skin tone
      LEFTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF7#$D83C#$DFFC;  // leftwards pushing hand: medium-light skin tone
      LEG_DARK_SKIN_TONE: string = #$D83E#$DDB5#$D83C#$DFFF;  // leg: dark skin tone
      LEG_LIGHT_SKIN_TONE: string = #$D83E#$DDB5#$D83C#$DFFB;  // leg: light skin tone
      LEG_MEDIUM_SKIN_TONE: string = #$D83E#$DDB5#$D83C#$DFFD;  // leg: medium skin tone
      LEG_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB5#$D83C#$DFFE;  // leg: medium-dark skin tone
      LEG_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB5#$D83C#$DFFC;  // leg: medium-light skin tone
      LIME: string = #$D83C#$DF4B#$200D#$D83D#$DFE9;  // lime
      LOVE_YOU_GESTURE_DARK_SKIN_TONE: string = #$D83E#$DD1F#$D83C#$DFFF;  // love-you gesture: dark skin tone
      LOVE_YOU_GESTURE_LIGHT_SKIN_TONE: string = #$D83E#$DD1F#$D83C#$DFFB;  // love-you gesture: light skin tone
      LOVE_YOU_GESTURE_MEDIUM_SKIN_TONE: string = #$D83E#$DD1F#$D83C#$DFFD;  // love-you gesture: medium skin tone
      LOVE_YOU_GESTURE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1F#$D83C#$DFFE;  // love-you gesture: medium-dark skin tone
      LOVE_YOU_GESTURE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1F#$D83C#$DFFC;  // love-you gesture: medium-light skin tone
      MAGE_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFF;  // mage: dark skin tone
      MAGE_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFB;  // mage: light skin tone
      MAGE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFD;  // mage: medium skin tone
      MAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFE;  // mage: medium-dark skin tone
      MAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFC;  // mage: medium-light skin tone
      MAN_ARTIST: string = #$D83D#$DC68#$200D#$D83C#$DFA8;  // man artist
      MAN_ARTIST_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DFA8;  // man artist: dark skin tone
      MAN_ARTIST_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DFA8;  // man artist: light skin tone
      MAN_ARTIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DFA8;  // man artist: medium skin tone
      MAN_ARTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DFA8;  // man artist: medium-dark skin tone
      MAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DFA8;  // man artist: medium-light skin tone
      MAN_ASTRONAUT: string = #$D83D#$DC68#$200D#$D83D#$DE80;  // man astronaut
      MAN_ASTRONAUT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DE80;  // man astronaut: dark skin tone
      MAN_ASTRONAUT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DE80;  // man astronaut: light skin tone
      MAN_ASTRONAUT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DE80;  // man astronaut: medium skin tone
      MAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DE80;  // man astronaut: medium-dark skin tone
      MAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DE80;  // man astronaut: medium-light skin tone
      MAN_BIKING: string = #$D83D#$DEB4#$200D#$2642#$FE0F;  // man biking
      MAN_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFF#$200D#$2642#$FE0F;  // man biking: dark skin tone
      MAN_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFB#$200D#$2642#$FE0F;  // man biking: light skin tone
      MAN_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFD#$200D#$2642#$FE0F;  // man biking: medium skin tone
      MAN_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFE#$200D#$2642#$FE0F;  // man biking: medium-dark skin tone
      MAN_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFC#$200D#$2642#$FE0F;  // man biking: medium-light skin tone
      MAN_BOUNCING_BALL: string = #$26F9#$FE0F#$200D#$2642#$FE0F;  // man bouncing ball
      MAN_BOUNCING_BALL_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFF#$200D#$2642#$FE0F;  // man bouncing ball: dark skin tone
      MAN_BOUNCING_BALL_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFB#$200D#$2642#$FE0F;  // man bouncing ball: light skin tone
      MAN_BOUNCING_BALL_MEDIUM_SKIN_TONE: string = #$26F9#$D83C#$DFFD#$200D#$2642#$FE0F;  // man bouncing ball: medium skin tone
      MAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFE#$200D#$2642#$FE0F;  // man bouncing ball: medium-dark skin tone
      MAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFC#$200D#$2642#$FE0F;  // man bouncing ball: medium-light skin tone
      MAN_BOWING: string = #$D83D#$DE47#$200D#$2642#$FE0F;  // man bowing
      MAN_BOWING_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFF#$200D#$2642#$FE0F;  // man bowing: dark skin tone
      MAN_BOWING_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFB#$200D#$2642#$FE0F;  // man bowing: light skin tone
      MAN_BOWING_MEDIUM_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFD#$200D#$2642#$FE0F;  // man bowing: medium skin tone
      MAN_BOWING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFE#$200D#$2642#$FE0F;  // man bowing: medium-dark skin tone
      MAN_BOWING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFC#$200D#$2642#$FE0F;  // man bowing: medium-light skin tone
      MAN_CARTWHEELING: string = #$D83E#$DD38#$200D#$2642#$FE0F;  // man cartwheeling
      MAN_CARTWHEELING_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFF#$200D#$2642#$FE0F;  // man cartwheeling: dark skin tone
      MAN_CARTWHEELING_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFB#$200D#$2642#$FE0F;  // man cartwheeling: light skin tone
      MAN_CARTWHEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFD#$200D#$2642#$FE0F;  // man cartwheeling: medium skin tone
      MAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFE#$200D#$2642#$FE0F;  // man cartwheeling: medium-dark skin tone
      MAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFC#$200D#$2642#$FE0F;  // man cartwheeling: medium-light skin tone
      MAN_CLIMBING: string = #$D83E#$DDD7#$200D#$2642#$FE0F;  // man climbing
      MAN_CLIMBING_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFF#$200D#$2642#$FE0F;  // man climbing: dark skin tone
      MAN_CLIMBING_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFB#$200D#$2642#$FE0F;  // man climbing: light skin tone
      MAN_CLIMBING_MEDIUM_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFD#$200D#$2642#$FE0F;  // man climbing: medium skin tone
      MAN_CLIMBING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFE#$200D#$2642#$FE0F;  // man climbing: medium-dark skin tone
      MAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFC#$200D#$2642#$FE0F;  // man climbing: medium-light skin tone
      MAN_CONSTRUCTION_WORKER: string = #$D83D#$DC77#$200D#$2642#$FE0F;  // man construction worker
      MAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFF#$200D#$2642#$FE0F;  // man construction worker: dark skin tone
      MAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFB#$200D#$2642#$FE0F;  // man construction worker: light skin tone
      MAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFD#$200D#$2642#$FE0F;  // man construction worker: medium skin tone
      MAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFE#$200D#$2642#$FE0F;  // man construction worker: medium-dark skin tone
      MAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFC#$200D#$2642#$FE0F;  // man construction worker: medium-light skin tone
      MAN_COOK: string = #$D83D#$DC68#$200D#$D83C#$DF73;  // man cook
      MAN_COOK_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DF73;  // man cook: dark skin tone
      MAN_COOK_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DF73;  // man cook: light skin tone
      MAN_COOK_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DF73;  // man cook: medium skin tone
      MAN_COOK_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DF73;  // man cook: medium-dark skin tone
      MAN_COOK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DF73;  // man cook: medium-light skin tone
      MAN_DANCING_DARK_SKIN_TONE: string = #$D83D#$DD7A#$D83C#$DFFF;  // man dancing: dark skin tone
      MAN_DANCING_LIGHT_SKIN_TONE: string = #$D83D#$DD7A#$D83C#$DFFB;  // man dancing: light skin tone
      MAN_DANCING_MEDIUM_SKIN_TONE: string = #$D83D#$DD7A#$D83C#$DFFD;  // man dancing: medium skin tone
      MAN_DANCING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD7A#$D83C#$DFFE;  // man dancing: medium-dark skin tone
      MAN_DANCING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD7A#$D83C#$DFFC;  // man dancing: medium-light skin tone
      MAN_DETECTIVE: string = #$D83D#$DD75#$FE0F#$200D#$2642#$FE0F;  // man detective
      MAN_DETECTIVE_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFF#$200D#$2642#$FE0F;  // man detective: dark skin tone
      MAN_DETECTIVE_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFB#$200D#$2642#$FE0F;  // man detective: light skin tone
      MAN_DETECTIVE_MEDIUM_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFD#$200D#$2642#$FE0F;  // man detective: medium skin tone
      MAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFE#$200D#$2642#$FE0F;  // man detective: medium-dark skin tone
      MAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFC#$200D#$2642#$FE0F;  // man detective: medium-light skin tone
      MAN_ELF: string = #$D83E#$DDDD#$200D#$2642#$FE0F;  // man elf
      MAN_ELF_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFF#$200D#$2642#$FE0F;  // man elf: dark skin tone
      MAN_ELF_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFB#$200D#$2642#$FE0F;  // man elf: light skin tone
      MAN_ELF_MEDIUM_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFD#$200D#$2642#$FE0F;  // man elf: medium skin tone
      MAN_ELF_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFE#$200D#$2642#$FE0F;  // man elf: medium-dark skin tone
      MAN_ELF_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFC#$200D#$2642#$FE0F;  // man elf: medium-light skin tone
      MAN_FACEPALMING: string = #$D83E#$DD26#$200D#$2642#$FE0F;  // man facepalming
      MAN_FACEPALMING_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFF#$200D#$2642#$FE0F;  // man facepalming: dark skin tone
      MAN_FACEPALMING_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFB#$200D#$2642#$FE0F;  // man facepalming: light skin tone
      MAN_FACEPALMING_MEDIUM_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFD#$200D#$2642#$FE0F;  // man facepalming: medium skin tone
      MAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFE#$200D#$2642#$FE0F;  // man facepalming: medium-dark skin tone
      MAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFC#$200D#$2642#$FE0F;  // man facepalming: medium-light skin tone
      MAN_FACTORY_WORKER: string = #$D83D#$DC68#$200D#$D83C#$DFED;  // man factory worker
      MAN_FACTORY_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DFED;  // man factory worker: dark skin tone
      MAN_FACTORY_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DFED;  // man factory worker: light skin tone
      MAN_FACTORY_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DFED;  // man factory worker: medium skin tone
      MAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DFED;  // man factory worker: medium-dark skin tone
      MAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DFED;  // man factory worker: medium-light skin tone
      MAN_FAIRY: string = #$D83E#$DDDA#$200D#$2642#$FE0F;  // man fairy
      MAN_FAIRY_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFF#$200D#$2642#$FE0F;  // man fairy: dark skin tone
      MAN_FAIRY_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFB#$200D#$2642#$FE0F;  // man fairy: light skin tone
      MAN_FAIRY_MEDIUM_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFD#$200D#$2642#$FE0F;  // man fairy: medium skin tone
      MAN_FAIRY_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFE#$200D#$2642#$FE0F;  // man fairy: medium-dark skin tone
      MAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFC#$200D#$2642#$FE0F;  // man fairy: medium-light skin tone
      MAN_FARMER: string = #$D83D#$DC68#$200D#$D83C#$DF3E;  // man farmer
      MAN_FARMER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DF3E;  // man farmer: dark skin tone
      MAN_FARMER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DF3E;  // man farmer: light skin tone
      MAN_FARMER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DF3E;  // man farmer: medium skin tone
      MAN_FARMER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DF3E;  // man farmer: medium-dark skin tone
      MAN_FARMER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DF3E;  // man farmer: medium-light skin tone
      MAN_FEEDING_BABY: string = #$D83D#$DC68#$200D#$D83C#$DF7C;  // man feeding baby
      MAN_FEEDING_BABY_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DF7C;  // man feeding baby: dark skin tone
      MAN_FEEDING_BABY_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DF7C;  // man feeding baby: light skin tone
      MAN_FEEDING_BABY_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DF7C;  // man feeding baby: medium skin tone
      MAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DF7C;  // man feeding baby: medium-dark skin tone
      MAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DF7C;  // man feeding baby: medium-light skin tone
      MAN_FIREFIGHTER: string = #$D83D#$DC68#$200D#$D83D#$DE92;  // man firefighter
      MAN_FIREFIGHTER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DE92;  // man firefighter: dark skin tone
      MAN_FIREFIGHTER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DE92;  // man firefighter: light skin tone
      MAN_FIREFIGHTER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DE92;  // man firefighter: medium skin tone
      MAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DE92;  // man firefighter: medium-dark skin tone
      MAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DE92;  // man firefighter: medium-light skin tone
      MAN_FROWNING: string = #$D83D#$DE4D#$200D#$2642#$FE0F;  // man frowning
      MAN_FROWNING_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFF#$200D#$2642#$FE0F;  // man frowning: dark skin tone
      MAN_FROWNING_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFB#$200D#$2642#$FE0F;  // man frowning: light skin tone
      MAN_FROWNING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFD#$200D#$2642#$FE0F;  // man frowning: medium skin tone
      MAN_FROWNING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFE#$200D#$2642#$FE0F;  // man frowning: medium-dark skin tone
      MAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFC#$200D#$2642#$FE0F;  // man frowning: medium-light skin tone
      MAN_GENIE: string = #$D83E#$DDDE#$200D#$2642#$FE0F;  // man genie
      MAN_GESTURING_NO: string = #$D83D#$DE45#$200D#$2642#$FE0F;  // man gesturing NO
      MAN_GESTURING_NO_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFF#$200D#$2642#$FE0F;  // man gesturing NO: dark skin tone
      MAN_GESTURING_NO_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFB#$200D#$2642#$FE0F;  // man gesturing NO: light skin tone
      MAN_GESTURING_NO_MEDIUM_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFD#$200D#$2642#$FE0F;  // man gesturing NO: medium skin tone
      MAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFE#$200D#$2642#$FE0F;  // man gesturing NO: medium-dark skin tone
      MAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFC#$200D#$2642#$FE0F;  // man gesturing NO: medium-light skin tone
      MAN_GESTURING_OK: string = #$D83D#$DE46#$200D#$2642#$FE0F;  // man gesturing OK
      MAN_GESTURING_OK_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFF#$200D#$2642#$FE0F;  // man gesturing OK: dark skin tone
      MAN_GESTURING_OK_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFB#$200D#$2642#$FE0F;  // man gesturing OK: light skin tone
      MAN_GESTURING_OK_MEDIUM_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFD#$200D#$2642#$FE0F;  // man gesturing OK: medium skin tone
      MAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFE#$200D#$2642#$FE0F;  // man gesturing OK: medium-dark skin tone
      MAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFC#$200D#$2642#$FE0F;  // man gesturing OK: medium-light skin tone
      MAN_GETTING_HAIRCUT: string = #$D83D#$DC87#$200D#$2642#$FE0F;  // man getting haircut
      MAN_GETTING_HAIRCUT_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFF#$200D#$2642#$FE0F;  // man getting haircut: dark skin tone
      MAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFB#$200D#$2642#$FE0F;  // man getting haircut: light skin tone
      MAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFD#$200D#$2642#$FE0F;  // man getting haircut: medium skin tone
      MAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFE#$200D#$2642#$FE0F;  // man getting haircut: medium-dark skin tone
      MAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFC#$200D#$2642#$FE0F;  // man getting haircut: medium-light skin tone
      MAN_GETTING_MASSAGE: string = #$D83D#$DC86#$200D#$2642#$FE0F;  // man getting massage
      MAN_GETTING_MASSAGE_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFF#$200D#$2642#$FE0F;  // man getting massage: dark skin tone
      MAN_GETTING_MASSAGE_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFB#$200D#$2642#$FE0F;  // man getting massage: light skin tone
      MAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFD#$200D#$2642#$FE0F;  // man getting massage: medium skin tone
      MAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFE#$200D#$2642#$FE0F;  // man getting massage: medium-dark skin tone
      MAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFC#$200D#$2642#$FE0F;  // man getting massage: medium-light skin tone
      MAN_GOLFING: string = #$D83C#$DFCC#$FE0F#$200D#$2642#$FE0F;  // man golfing
      MAN_GOLFING_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFF#$200D#$2642#$FE0F;  // man golfing: dark skin tone
      MAN_GOLFING_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFB#$200D#$2642#$FE0F;  // man golfing: light skin tone
      MAN_GOLFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFD#$200D#$2642#$FE0F;  // man golfing: medium skin tone
      MAN_GOLFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFE#$200D#$2642#$FE0F;  // man golfing: medium-dark skin tone
      MAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFC#$200D#$2642#$FE0F;  // man golfing: medium-light skin tone
      MAN_GUARD: string = #$D83D#$DC82#$200D#$2642#$FE0F;  // man guard
      MAN_GUARD_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFF#$200D#$2642#$FE0F;  // man guard: dark skin tone
      MAN_GUARD_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFB#$200D#$2642#$FE0F;  // man guard: light skin tone
      MAN_GUARD_MEDIUM_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFD#$200D#$2642#$FE0F;  // man guard: medium skin tone
      MAN_GUARD_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFE#$200D#$2642#$FE0F;  // man guard: medium-dark skin tone
      MAN_GUARD_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFC#$200D#$2642#$FE0F;  // man guard: medium-light skin tone
      MAN_HEALTH_WORKER: string = #$D83D#$DC68#$200D#$2695#$FE0F;  // man health worker
      MAN_HEALTH_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2695#$FE0F;  // man health worker: dark skin tone
      MAN_HEALTH_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2695#$FE0F;  // man health worker: light skin tone
      MAN_HEALTH_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2695#$FE0F;  // man health worker: medium skin tone
      MAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2695#$FE0F;  // man health worker: medium-dark skin tone
      MAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2695#$FE0F;  // man health worker: medium-light skin tone
      MAN_IN_LOTUS_POSITION: string = #$D83E#$DDD8#$200D#$2642#$FE0F;  // man in lotus position
      MAN_IN_LOTUS_POSITION_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFF#$200D#$2642#$FE0F;  // man in lotus position: dark skin tone
      MAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFB#$200D#$2642#$FE0F;  // man in lotus position: light skin tone
      MAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFD#$200D#$2642#$FE0F;  // man in lotus position: medium skin tone
      MAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFE#$200D#$2642#$FE0F;  // man in lotus position: medium-dark skin tone
      MAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFC#$200D#$2642#$FE0F;  // man in lotus position: medium-light skin tone
      MAN_IN_MANUAL_WHEELCHAIR: string = #$D83D#$DC68#$200D#$D83E#$DDBD;  // man in manual wheelchair
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT: string = #$D83D#$DC68#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right: dark skin tone
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right: light skin tone
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right: medium skin tone
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right: medium-dark skin tone
      MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // man in manual wheelchair facing right: medium-light skin tone
      MAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDBD;  // man in manual wheelchair: dark skin tone
      MAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDBD;  // man in manual wheelchair: light skin tone
      MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDBD;  // man in manual wheelchair: medium skin tone
      MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDBD;  // man in manual wheelchair: medium-dark skin tone
      MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDBD;  // man in manual wheelchair: medium-light skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR: string = #$D83D#$DC68#$200D#$D83E#$DDBC;  // man in motorized wheelchair
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT: string = #$D83D#$DC68#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right: dark skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right: light skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right: medium skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right: medium-dark skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // man in motorized wheelchair facing right: medium-light skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDBC;  // man in motorized wheelchair: dark skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDBC;  // man in motorized wheelchair: light skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDBC;  // man in motorized wheelchair: medium skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDBC;  // man in motorized wheelchair: medium-dark skin tone
      MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDBC;  // man in motorized wheelchair: medium-light skin tone
      MAN_IN_STEAMY_ROOM: string = #$D83E#$DDD6#$200D#$2642#$FE0F;  // man in steamy room
      MAN_IN_STEAMY_ROOM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFF#$200D#$2642#$FE0F;  // man in steamy room: dark skin tone
      MAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFB#$200D#$2642#$FE0F;  // man in steamy room: light skin tone
      MAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFD#$200D#$2642#$FE0F;  // man in steamy room: medium skin tone
      MAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFE#$200D#$2642#$FE0F;  // man in steamy room: medium-dark skin tone
      MAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFC#$200D#$2642#$FE0F;  // man in steamy room: medium-light skin tone
      MAN_IN_TUXEDO: string = #$D83E#$DD35#$200D#$2642#$FE0F;  // man in tuxedo
      MAN_IN_TUXEDO_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFF#$200D#$2642#$FE0F;  // man in tuxedo: dark skin tone
      MAN_IN_TUXEDO_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFB#$200D#$2642#$FE0F;  // man in tuxedo: light skin tone
      MAN_IN_TUXEDO_MEDIUM_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFD#$200D#$2642#$FE0F;  // man in tuxedo: medium skin tone
      MAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFE#$200D#$2642#$FE0F;  // man in tuxedo: medium-dark skin tone
      MAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFC#$200D#$2642#$FE0F;  // man in tuxedo: medium-light skin tone
      MAN_JUDGE: string = #$D83D#$DC68#$200D#$2696#$FE0F;  // man judge
      MAN_JUDGE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2696#$FE0F;  // man judge: dark skin tone
      MAN_JUDGE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2696#$FE0F;  // man judge: light skin tone
      MAN_JUDGE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2696#$FE0F;  // man judge: medium skin tone
      MAN_JUDGE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2696#$FE0F;  // man judge: medium-dark skin tone
      MAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2696#$FE0F;  // man judge: medium-light skin tone
      MAN_JUGGLING: string = #$D83E#$DD39#$200D#$2642#$FE0F;  // man juggling
      MAN_JUGGLING_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFF#$200D#$2642#$FE0F;  // man juggling: dark skin tone
      MAN_JUGGLING_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFB#$200D#$2642#$FE0F;  // man juggling: light skin tone
      MAN_JUGGLING_MEDIUM_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFD#$200D#$2642#$FE0F;  // man juggling: medium skin tone
      MAN_JUGGLING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFE#$200D#$2642#$FE0F;  // man juggling: medium-dark skin tone
      MAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFC#$200D#$2642#$FE0F;  // man juggling: medium-light skin tone
      MAN_KNEELING: string = #$D83E#$DDCE#$200D#$2642#$FE0F;  // man kneeling
      MAN_KNEELING_FACING_RIGHT: string = #$D83E#$DDCE#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right
      MAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right: dark skin tone
      MAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right: light skin tone
      MAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right: medium skin tone
      MAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right: medium-dark skin tone
      MAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man kneeling facing right: medium-light skin tone
      MAN_KNEELING_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF#$200D#$2642#$FE0F;  // man kneeling: dark skin tone
      MAN_KNEELING_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB#$200D#$2642#$FE0F;  // man kneeling: light skin tone
      MAN_KNEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD#$200D#$2642#$FE0F;  // man kneeling: medium skin tone
      MAN_KNEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE#$200D#$2642#$FE0F;  // man kneeling: medium-dark skin tone
      MAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC#$200D#$2642#$FE0F;  // man kneeling: medium-light skin tone
      MAN_LIFTING_WEIGHTS: string = #$D83C#$DFCB#$FE0F#$200D#$2642#$FE0F;  // man lifting weights
      MAN_LIFTING_WEIGHTS_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFF#$200D#$2642#$FE0F;  // man lifting weights: dark skin tone
      MAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFB#$200D#$2642#$FE0F;  // man lifting weights: light skin tone
      MAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFD#$200D#$2642#$FE0F;  // man lifting weights: medium skin tone
      MAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFE#$200D#$2642#$FE0F;  // man lifting weights: medium-dark skin tone
      MAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFC#$200D#$2642#$FE0F;  // man lifting weights: medium-light skin tone
      MAN_MAGE: string = #$D83E#$DDD9#$200D#$2642#$FE0F;  // man mage
      MAN_MAGE_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFF#$200D#$2642#$FE0F;  // man mage: dark skin tone
      MAN_MAGE_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFB#$200D#$2642#$FE0F;  // man mage: light skin tone
      MAN_MAGE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFD#$200D#$2642#$FE0F;  // man mage: medium skin tone
      MAN_MAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFE#$200D#$2642#$FE0F;  // man mage: medium-dark skin tone
      MAN_MAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFC#$200D#$2642#$FE0F;  // man mage: medium-light skin tone
      MAN_MECHANIC: string = #$D83D#$DC68#$200D#$D83D#$DD27;  // man mechanic
      MAN_MECHANIC_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DD27;  // man mechanic: dark skin tone
      MAN_MECHANIC_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DD27;  // man mechanic: light skin tone
      MAN_MECHANIC_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DD27;  // man mechanic: medium skin tone
      MAN_MECHANIC_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DD27;  // man mechanic: medium-dark skin tone
      MAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DD27;  // man mechanic: medium-light skin tone
      MAN_MOUNTAIN_BIKING: string = #$D83D#$DEB5#$200D#$2642#$FE0F;  // man mountain biking
      MAN_MOUNTAIN_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFF#$200D#$2642#$FE0F;  // man mountain biking: dark skin tone
      MAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFB#$200D#$2642#$FE0F;  // man mountain biking: light skin tone
      MAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFD#$200D#$2642#$FE0F;  // man mountain biking: medium skin tone
      MAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFE#$200D#$2642#$FE0F;  // man mountain biking: medium-dark skin tone
      MAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFC#$200D#$2642#$FE0F;  // man mountain biking: medium-light skin tone
      MAN_OFFICE_WORKER: string = #$D83D#$DC68#$200D#$D83D#$DCBC;  // man office worker
      MAN_OFFICE_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DCBC;  // man office worker: dark skin tone
      MAN_OFFICE_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DCBC;  // man office worker: light skin tone
      MAN_OFFICE_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DCBC;  // man office worker: medium skin tone
      MAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DCBC;  // man office worker: medium-dark skin tone
      MAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DCBC;  // man office worker: medium-light skin tone
      MAN_PILOT: string = #$D83D#$DC68#$200D#$2708#$FE0F;  // man pilot
      MAN_PILOT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$2708#$FE0F;  // man pilot: dark skin tone
      MAN_PILOT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$2708#$FE0F;  // man pilot: light skin tone
      MAN_PILOT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$2708#$FE0F;  // man pilot: medium skin tone
      MAN_PILOT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$2708#$FE0F;  // man pilot: medium-dark skin tone
      MAN_PILOT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$2708#$FE0F;  // man pilot: medium-light skin tone
      MAN_PLAYING_HANDBALL: string = #$D83E#$DD3E#$200D#$2642#$FE0F;  // man playing handball
      MAN_PLAYING_HANDBALL_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFF#$200D#$2642#$FE0F;  // man playing handball: dark skin tone
      MAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFB#$200D#$2642#$FE0F;  // man playing handball: light skin tone
      MAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFD#$200D#$2642#$FE0F;  // man playing handball: medium skin tone
      MAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFE#$200D#$2642#$FE0F;  // man playing handball: medium-dark skin tone
      MAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFC#$200D#$2642#$FE0F;  // man playing handball: medium-light skin tone
      MAN_PLAYING_WATER_POLO: string = #$D83E#$DD3D#$200D#$2642#$FE0F;  // man playing water polo
      MAN_PLAYING_WATER_POLO_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFF#$200D#$2642#$FE0F;  // man playing water polo: dark skin tone
      MAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFB#$200D#$2642#$FE0F;  // man playing water polo: light skin tone
      MAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFD#$200D#$2642#$FE0F;  // man playing water polo: medium skin tone
      MAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFE#$200D#$2642#$FE0F;  // man playing water polo: medium-dark skin tone
      MAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFC#$200D#$2642#$FE0F;  // man playing water polo: medium-light skin tone
      MAN_POLICE_OFFICER: string = #$D83D#$DC6E#$200D#$2642#$FE0F;  // man police officer
      MAN_POLICE_OFFICER_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFF#$200D#$2642#$FE0F;  // man police officer: dark skin tone
      MAN_POLICE_OFFICER_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFB#$200D#$2642#$FE0F;  // man police officer: light skin tone
      MAN_POLICE_OFFICER_MEDIUM_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFD#$200D#$2642#$FE0F;  // man police officer: medium skin tone
      MAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFE#$200D#$2642#$FE0F;  // man police officer: medium-dark skin tone
      MAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFC#$200D#$2642#$FE0F;  // man police officer: medium-light skin tone
      MAN_POUTING: string = #$D83D#$DE4E#$200D#$2642#$FE0F;  // man pouting
      MAN_POUTING_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFF#$200D#$2642#$FE0F;  // man pouting: dark skin tone
      MAN_POUTING_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFB#$200D#$2642#$FE0F;  // man pouting: light skin tone
      MAN_POUTING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFD#$200D#$2642#$FE0F;  // man pouting: medium skin tone
      MAN_POUTING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFE#$200D#$2642#$FE0F;  // man pouting: medium-dark skin tone
      MAN_POUTING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFC#$200D#$2642#$FE0F;  // man pouting: medium-light skin tone
      MAN_RAISING_HAND: string = #$D83D#$DE4B#$200D#$2642#$FE0F;  // man raising hand
      MAN_RAISING_HAND_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFF#$200D#$2642#$FE0F;  // man raising hand: dark skin tone
      MAN_RAISING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFB#$200D#$2642#$FE0F;  // man raising hand: light skin tone
      MAN_RAISING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFD#$200D#$2642#$FE0F;  // man raising hand: medium skin tone
      MAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFE#$200D#$2642#$FE0F;  // man raising hand: medium-dark skin tone
      MAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFC#$200D#$2642#$FE0F;  // man raising hand: medium-light skin tone
      MAN_ROWING_BOAT: string = #$D83D#$DEA3#$200D#$2642#$FE0F;  // man rowing boat
      MAN_ROWING_BOAT_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFF#$200D#$2642#$FE0F;  // man rowing boat: dark skin tone
      MAN_ROWING_BOAT_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFB#$200D#$2642#$FE0F;  // man rowing boat: light skin tone
      MAN_ROWING_BOAT_MEDIUM_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFD#$200D#$2642#$FE0F;  // man rowing boat: medium skin tone
      MAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFE#$200D#$2642#$FE0F;  // man rowing boat: medium-dark skin tone
      MAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFC#$200D#$2642#$FE0F;  // man rowing boat: medium-light skin tone
      MAN_RUNNING: string = #$D83C#$DFC3#$200D#$2642#$FE0F;  // man running
      MAN_RUNNING_FACING_RIGHT: string = #$D83C#$DFC3#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right
      MAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right: dark skin tone
      MAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right: light skin tone
      MAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right: medium skin tone
      MAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right: medium-dark skin tone
      MAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man running facing right: medium-light skin tone
      MAN_RUNNING_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF#$200D#$2642#$FE0F;  // man running: dark skin tone
      MAN_RUNNING_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB#$200D#$2642#$FE0F;  // man running: light skin tone
      MAN_RUNNING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD#$200D#$2642#$FE0F;  // man running: medium skin tone
      MAN_RUNNING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE#$200D#$2642#$FE0F;  // man running: medium-dark skin tone
      MAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC#$200D#$2642#$FE0F;  // man running: medium-light skin tone
      MAN_SCIENTIST: string = #$D83D#$DC68#$200D#$D83D#$DD2C;  // man scientist
      MAN_SCIENTIST_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DD2C;  // man scientist: dark skin tone
      MAN_SCIENTIST_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DD2C;  // man scientist: light skin tone
      MAN_SCIENTIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DD2C;  // man scientist: medium skin tone
      MAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DD2C;  // man scientist: medium-dark skin tone
      MAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DD2C;  // man scientist: medium-light skin tone
      MAN_SHRUGGING: string = #$D83E#$DD37#$200D#$2642#$FE0F;  // man shrugging
      MAN_SHRUGGING_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFF#$200D#$2642#$FE0F;  // man shrugging: dark skin tone
      MAN_SHRUGGING_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFB#$200D#$2642#$FE0F;  // man shrugging: light skin tone
      MAN_SHRUGGING_MEDIUM_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFD#$200D#$2642#$FE0F;  // man shrugging: medium skin tone
      MAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFE#$200D#$2642#$FE0F;  // man shrugging: medium-dark skin tone
      MAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFC#$200D#$2642#$FE0F;  // man shrugging: medium-light skin tone
      MAN_SINGER: string = #$D83D#$DC68#$200D#$D83C#$DFA4;  // man singer
      MAN_SINGER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DFA4;  // man singer: dark skin tone
      MAN_SINGER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DFA4;  // man singer: light skin tone
      MAN_SINGER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DFA4;  // man singer: medium skin tone
      MAN_SINGER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DFA4;  // man singer: medium-dark skin tone
      MAN_SINGER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DFA4;  // man singer: medium-light skin tone
      MAN_STANDING: string = #$D83E#$DDCD#$200D#$2642#$FE0F;  // man standing
      MAN_STANDING_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFF#$200D#$2642#$FE0F;  // man standing: dark skin tone
      MAN_STANDING_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFB#$200D#$2642#$FE0F;  // man standing: light skin tone
      MAN_STANDING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFD#$200D#$2642#$FE0F;  // man standing: medium skin tone
      MAN_STANDING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFE#$200D#$2642#$FE0F;  // man standing: medium-dark skin tone
      MAN_STANDING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFC#$200D#$2642#$FE0F;  // man standing: medium-light skin tone
      MAN_STUDENT: string = #$D83D#$DC68#$200D#$D83C#$DF93;  // man student
      MAN_STUDENT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DF93;  // man student: dark skin tone
      MAN_STUDENT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DF93;  // man student: light skin tone
      MAN_STUDENT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DF93;  // man student: medium skin tone
      MAN_STUDENT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DF93;  // man student: medium-dark skin tone
      MAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DF93;  // man student: medium-light skin tone
      MAN_SUPERHERO: string = #$D83E#$DDB8#$200D#$2642#$FE0F;  // man superhero
      MAN_SUPERHERO_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFF#$200D#$2642#$FE0F;  // man superhero: dark skin tone
      MAN_SUPERHERO_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFB#$200D#$2642#$FE0F;  // man superhero: light skin tone
      MAN_SUPERHERO_MEDIUM_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFD#$200D#$2642#$FE0F;  // man superhero: medium skin tone
      MAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFE#$200D#$2642#$FE0F;  // man superhero: medium-dark skin tone
      MAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFC#$200D#$2642#$FE0F;  // man superhero: medium-light skin tone
      MAN_SUPERVILLAIN: string = #$D83E#$DDB9#$200D#$2642#$FE0F;  // man supervillain
      MAN_SUPERVILLAIN_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFF#$200D#$2642#$FE0F;  // man supervillain: dark skin tone
      MAN_SUPERVILLAIN_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFB#$200D#$2642#$FE0F;  // man supervillain: light skin tone
      MAN_SUPERVILLAIN_MEDIUM_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFD#$200D#$2642#$FE0F;  // man supervillain: medium skin tone
      MAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFE#$200D#$2642#$FE0F;  // man supervillain: medium-dark skin tone
      MAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFC#$200D#$2642#$FE0F;  // man supervillain: medium-light skin tone
      MAN_SURFING: string = #$D83C#$DFC4#$200D#$2642#$FE0F;  // man surfing
      MAN_SURFING_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFF#$200D#$2642#$FE0F;  // man surfing: dark skin tone
      MAN_SURFING_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFB#$200D#$2642#$FE0F;  // man surfing: light skin tone
      MAN_SURFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFD#$200D#$2642#$FE0F;  // man surfing: medium skin tone
      MAN_SURFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFE#$200D#$2642#$FE0F;  // man surfing: medium-dark skin tone
      MAN_SURFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFC#$200D#$2642#$FE0F;  // man surfing: medium-light skin tone
      MAN_SWIMMING: string = #$D83C#$DFCA#$200D#$2642#$FE0F;  // man swimming
      MAN_SWIMMING_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFF#$200D#$2642#$FE0F;  // man swimming: dark skin tone
      MAN_SWIMMING_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFB#$200D#$2642#$FE0F;  // man swimming: light skin tone
      MAN_SWIMMING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFD#$200D#$2642#$FE0F;  // man swimming: medium skin tone
      MAN_SWIMMING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFE#$200D#$2642#$FE0F;  // man swimming: medium-dark skin tone
      MAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFC#$200D#$2642#$FE0F;  // man swimming: medium-light skin tone
      MAN_TEACHER: string = #$D83D#$DC68#$200D#$D83C#$DFEB;  // man teacher
      MAN_TEACHER_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83C#$DFEB;  // man teacher: dark skin tone
      MAN_TEACHER_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83C#$DFEB;  // man teacher: light skin tone
      MAN_TEACHER_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83C#$DFEB;  // man teacher: medium skin tone
      MAN_TEACHER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83C#$DFEB;  // man teacher: medium-dark skin tone
      MAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83C#$DFEB;  // man teacher: medium-light skin tone
      MAN_TECHNOLOGIST: string = #$D83D#$DC68#$200D#$D83D#$DCBB;  // man technologist
      MAN_TECHNOLOGIST_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83D#$DCBB;  // man technologist: dark skin tone
      MAN_TECHNOLOGIST_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83D#$DCBB;  // man technologist: light skin tone
      MAN_TECHNOLOGIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83D#$DCBB;  // man technologist: medium skin tone
      MAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83D#$DCBB;  // man technologist: medium-dark skin tone
      MAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83D#$DCBB;  // man technologist: medium-light skin tone
      MAN_TIPPING_HAND: string = #$D83D#$DC81#$200D#$2642#$FE0F;  // man tipping hand
      MAN_TIPPING_HAND_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFF#$200D#$2642#$FE0F;  // man tipping hand: dark skin tone
      MAN_TIPPING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFB#$200D#$2642#$FE0F;  // man tipping hand: light skin tone
      MAN_TIPPING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFD#$200D#$2642#$FE0F;  // man tipping hand: medium skin tone
      MAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFE#$200D#$2642#$FE0F;  // man tipping hand: medium-dark skin tone
      MAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFC#$200D#$2642#$FE0F;  // man tipping hand: medium-light skin tone
      MAN_VAMPIRE: string = #$D83E#$DDDB#$200D#$2642#$FE0F;  // man vampire
      MAN_VAMPIRE_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFF#$200D#$2642#$FE0F;  // man vampire: dark skin tone
      MAN_VAMPIRE_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFB#$200D#$2642#$FE0F;  // man vampire: light skin tone
      MAN_VAMPIRE_MEDIUM_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFD#$200D#$2642#$FE0F;  // man vampire: medium skin tone
      MAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFE#$200D#$2642#$FE0F;  // man vampire: medium-dark skin tone
      MAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFC#$200D#$2642#$FE0F;  // man vampire: medium-light skin tone
      MAN_WALKING: string = #$D83D#$DEB6#$200D#$2642#$FE0F;  // man walking
      MAN_WALKING_FACING_RIGHT: string = #$D83D#$DEB6#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right
      MAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right: dark skin tone
      MAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right: light skin tone
      MAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right: medium skin tone
      MAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right: medium-dark skin tone
      MAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC#$200D#$2642#$FE0F#$200D#$27A1#$FE0F;  // man walking facing right: medium-light skin tone
      MAN_WALKING_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF#$200D#$2642#$FE0F;  // man walking: dark skin tone
      MAN_WALKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB#$200D#$2642#$FE0F;  // man walking: light skin tone
      MAN_WALKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD#$200D#$2642#$FE0F;  // man walking: medium skin tone
      MAN_WALKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE#$200D#$2642#$FE0F;  // man walking: medium-dark skin tone
      MAN_WALKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC#$200D#$2642#$FE0F;  // man walking: medium-light skin tone
      MAN_WEARING_TURBAN: string = #$D83D#$DC73#$200D#$2642#$FE0F;  // man wearing turban
      MAN_WEARING_TURBAN_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFF#$200D#$2642#$FE0F;  // man wearing turban: dark skin tone
      MAN_WEARING_TURBAN_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFB#$200D#$2642#$FE0F;  // man wearing turban: light skin tone
      MAN_WEARING_TURBAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFD#$200D#$2642#$FE0F;  // man wearing turban: medium skin tone
      MAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFE#$200D#$2642#$FE0F;  // man wearing turban: medium-dark skin tone
      MAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFC#$200D#$2642#$FE0F;  // man wearing turban: medium-light skin tone
      MAN_WITH_VEIL: string = #$D83D#$DC70#$200D#$2642#$FE0F;  // man with veil
      MAN_WITH_VEIL_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFF#$200D#$2642#$FE0F;  // man with veil: dark skin tone
      MAN_WITH_VEIL_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFB#$200D#$2642#$FE0F;  // man with veil: light skin tone
      MAN_WITH_VEIL_MEDIUM_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFD#$200D#$2642#$FE0F;  // man with veil: medium skin tone
      MAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFE#$200D#$2642#$FE0F;  // man with veil: medium-dark skin tone
      MAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFC#$200D#$2642#$FE0F;  // man with veil: medium-light skin tone
      MAN_WITH_WHITE_CANE: string = #$D83D#$DC68#$200D#$D83E#$DDAF;  // man with white cane
      MAN_WITH_WHITE_CANE_FACING_RIGHT: string = #$D83D#$DC68#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right
      MAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right: dark skin tone
      MAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right: light skin tone
      MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right: medium skin tone
      MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right: medium-dark skin tone
      MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // man with white cane facing right: medium-light skin tone
      MAN_WITH_WHITE_CANE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDAF;  // man with white cane: dark skin tone
      MAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDAF;  // man with white cane: light skin tone
      MAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDAF;  // man with white cane: medium skin tone
      MAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDAF;  // man with white cane: medium-dark skin tone
      MAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDAF;  // man with white cane: medium-light skin tone
      MAN_ZOMBIE: string = #$D83E#$DDDF#$200D#$2642#$FE0F;  // man zombie
      MAN_BALD: string = #$D83D#$DC68#$200D#$D83E#$DDB2;  // man: bald
      MAN_BEARD: string = #$D83E#$DDD4#$200D#$2642#$FE0F;  // man: beard
      MAN_BLOND_HAIR: string = #$D83D#$DC71#$200D#$2642#$FE0F;  // man: blond hair
      MAN_CURLY_HAIR: string = #$D83D#$DC68#$200D#$D83E#$DDB1;  // man: curly hair
      MAN_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF;  // man: dark skin tone
      MAN_DARK_SKIN_TONE_BALD: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDB2;  // man: dark skin tone, bald
      MAN_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFF#$200D#$2642#$FE0F;  // man: dark skin tone, beard
      MAN_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFF#$200D#$2642#$FE0F;  // man: dark skin tone, blond hair
      MAN_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDB1;  // man: dark skin tone, curly hair
      MAN_DARK_SKIN_TONE_RED_HAIR: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDB0;  // man: dark skin tone, red hair
      MAN_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DDB3;  // man: dark skin tone, white hair
      MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB;  // man: light skin tone
      MAN_LIGHT_SKIN_TONE_BALD: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDB2;  // man: light skin tone, bald
      MAN_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFB#$200D#$2642#$FE0F;  // man: light skin tone, beard
      MAN_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFB#$200D#$2642#$FE0F;  // man: light skin tone, blond hair
      MAN_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDB1;  // man: light skin tone, curly hair
      MAN_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDB0;  // man: light skin tone, red hair
      MAN_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DDB3;  // man: light skin tone, white hair
      MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD;  // man: medium skin tone
      MAN_MEDIUM_SKIN_TONE_BALD: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDB2;  // man: medium skin tone, bald
      MAN_MEDIUM_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFD#$200D#$2642#$FE0F;  // man: medium skin tone, beard
      MAN_MEDIUM_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFD#$200D#$2642#$FE0F;  // man: medium skin tone, blond hair
      MAN_MEDIUM_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDB1;  // man: medium skin tone, curly hair
      MAN_MEDIUM_SKIN_TONE_RED_HAIR: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDB0;  // man: medium skin tone, red hair
      MAN_MEDIUM_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DDB3;  // man: medium skin tone, white hair
      MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE;  // man: medium-dark skin tone
      MAN_MEDIUM_DARK_SKIN_TONE_BALD: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDB2;  // man: medium-dark skin tone, bald
      MAN_MEDIUM_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFE#$200D#$2642#$FE0F;  // man: medium-dark skin tone, beard
      MAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFE#$200D#$2642#$FE0F;  // man: medium-dark skin tone, blond hair
      MAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDB1;  // man: medium-dark skin tone, curly hair
      MAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDB0;  // man: medium-dark skin tone, red hair
      MAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DDB3;  // man: medium-dark skin tone, white hair
      MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC;  // man: medium-light skin tone
      MAN_MEDIUM_LIGHT_SKIN_TONE_BALD: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDB2;  // man: medium-light skin tone, bald
      MAN_MEDIUM_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFC#$200D#$2642#$FE0F;  // man: medium-light skin tone, beard
      MAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFC#$200D#$2642#$FE0F;  // man: medium-light skin tone, blond hair
      MAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDB1;  // man: medium-light skin tone, curly hair
      MAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDB0;  // man: medium-light skin tone, red hair
      MAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DDB3;  // man: medium-light skin tone, white hair
      MAN_RED_HAIR: string = #$D83D#$DC68#$200D#$D83E#$DDB0;  // man: red hair
      MAN_WHITE_HAIR: string = #$D83D#$DC68#$200D#$D83E#$DDB3;  // man: white hair
      MECHANIC: string = #$D83E#$DDD1#$200D#$D83D#$DD27;  // mechanic
      MECHANIC_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DD27;  // mechanic: dark skin tone
      MECHANIC_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DD27;  // mechanic: light skin tone
      MECHANIC_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DD27;  // mechanic: medium skin tone
      MECHANIC_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DD27;  // mechanic: medium-dark skin tone
      MECHANIC_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DD27;  // mechanic: medium-light skin tone
      MEN_HOLDING_HANDS_DARK_SKIN_TONE: string = #$D83D#$DC6C#$D83C#$DFFF;  // men holding hands: dark skin tone
      MEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // men holding hands: dark skin tone, light skin tone
      MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // men holding hands: dark skin tone, medium skin tone
      MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // men holding hands: dark skin tone, medium-dark skin tone
      MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // men holding hands: dark skin tone, medium-light skin tone
      MEN_HOLDING_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DC6C#$D83C#$DFFB;  // men holding hands: light skin tone
      MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // men holding hands: light skin tone, dark skin tone
      MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // men holding hands: light skin tone, medium skin tone
      MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // men holding hands: light skin tone, medium-dark skin tone
      MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // men holding hands: light skin tone, medium-light skin tone
      MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DC6C#$D83C#$DFFD;  // men holding hands: medium skin tone
      MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // men holding hands: medium skin tone, dark skin tone
      MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // men holding hands: medium skin tone, light skin tone
      MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // men holding hands: medium skin tone, medium-dark skin tone
      MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // men holding hands: medium skin tone, medium-light skin tone
      MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6C#$D83C#$DFFE;  // men holding hands: medium-dark skin tone
      MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // men holding hands: medium-dark skin tone, dark skin tone
      MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // men holding hands: medium-dark skin tone, light skin tone
      MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // men holding hands: medium-dark skin tone, medium skin tone
      MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // men holding hands: medium-dark skin tone, medium-light skin tone
      MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6C#$D83C#$DFFC;  // men holding hands: medium-light skin tone
      MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // men holding hands: medium-light skin tone, dark skin tone
      MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // men holding hands: medium-light skin tone, light skin tone
      MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // men holding hands: medium-light skin tone, medium skin tone
      MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC68#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // men holding hands: medium-light skin tone, medium-dark skin tone
      MEN_WITH_BUNNY_EARS: string = #$D83D#$DC6F#$200D#$2642#$FE0F;  // men with bunny ears
      MEN_WRESTLING: string = #$D83E#$DD3C#$200D#$2642#$FE0F;  // men wrestling
      MENDING_HEART: string = #$2764#$FE0F#$200D#$D83E#$DE79;  // mending heart
      MERMAID: string = #$D83E#$DDDC#$200D#$2640#$FE0F;  // mermaid
      MERMAID_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFF#$200D#$2640#$FE0F;  // mermaid: dark skin tone
      MERMAID_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFB#$200D#$2640#$FE0F;  // mermaid: light skin tone
      MERMAID_MEDIUM_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFD#$200D#$2640#$FE0F;  // mermaid: medium skin tone
      MERMAID_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFE#$200D#$2640#$FE0F;  // mermaid: medium-dark skin tone
      MERMAID_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFC#$200D#$2640#$FE0F;  // mermaid: medium-light skin tone
      MERMAN: string = #$D83E#$DDDC#$200D#$2642#$FE0F;  // merman
      MERMAN_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFF#$200D#$2642#$FE0F;  // merman: dark skin tone
      MERMAN_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFB#$200D#$2642#$FE0F;  // merman: light skin tone
      MERMAN_MEDIUM_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFD#$200D#$2642#$FE0F;  // merman: medium skin tone
      MERMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFE#$200D#$2642#$FE0F;  // merman: medium-dark skin tone
      MERMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFC#$200D#$2642#$FE0F;  // merman: medium-light skin tone
      MERPERSON_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFF;  // merperson: dark skin tone
      MERPERSON_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFB;  // merperson: light skin tone
      MERPERSON_MEDIUM_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFD;  // merperson: medium skin tone
      MERPERSON_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFE;  // merperson: medium-dark skin tone
      MERPERSON_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDC#$D83C#$DFFC;  // merperson: medium-light skin tone
      MIDDLE_FINGER_DARK_SKIN_TONE: string = #$D83D#$DD95#$D83C#$DFFF;  // middle finger: dark skin tone
      MIDDLE_FINGER_LIGHT_SKIN_TONE: string = #$D83D#$DD95#$D83C#$DFFB;  // middle finger: light skin tone
      MIDDLE_FINGER_MEDIUM_SKIN_TONE: string = #$D83D#$DD95#$D83C#$DFFD;  // middle finger: medium skin tone
      MIDDLE_FINGER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD95#$D83C#$DFFE;  // middle finger: medium-dark skin tone
      MIDDLE_FINGER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD95#$D83C#$DFFC;  // middle finger: medium-light skin tone
      NAIL_POLISH_DARK_SKIN_TONE: string = #$D83D#$DC85#$D83C#$DFFF;  // nail polish: dark skin tone
      NAIL_POLISH_LIGHT_SKIN_TONE: string = #$D83D#$DC85#$D83C#$DFFB;  // nail polish: light skin tone
      NAIL_POLISH_MEDIUM_SKIN_TONE: string = #$D83D#$DC85#$D83C#$DFFD;  // nail polish: medium skin tone
      NAIL_POLISH_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC85#$D83C#$DFFE;  // nail polish: medium-dark skin tone
      NAIL_POLISH_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC85#$D83C#$DFFC;  // nail polish: medium-light skin tone
      NINJA_DARK_SKIN_TONE: string = #$D83E#$DD77#$D83C#$DFFF;  // ninja: dark skin tone
      NINJA_LIGHT_SKIN_TONE: string = #$D83E#$DD77#$D83C#$DFFB;  // ninja: light skin tone
      NINJA_MEDIUM_SKIN_TONE: string = #$D83E#$DD77#$D83C#$DFFD;  // ninja: medium skin tone
      NINJA_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD77#$D83C#$DFFE;  // ninja: medium-dark skin tone
      NINJA_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD77#$D83C#$DFFC;  // ninja: medium-light skin tone
      NOSE_DARK_SKIN_TONE: string = #$D83D#$DC43#$D83C#$DFFF;  // nose: dark skin tone
      NOSE_LIGHT_SKIN_TONE: string = #$D83D#$DC43#$D83C#$DFFB;  // nose: light skin tone
      NOSE_MEDIUM_SKIN_TONE: string = #$D83D#$DC43#$D83C#$DFFD;  // nose: medium skin tone
      NOSE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC43#$D83C#$DFFE;  // nose: medium-dark skin tone
      NOSE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC43#$D83C#$DFFC;  // nose: medium-light skin tone
      OFFICE_WORKER: string = #$D83E#$DDD1#$200D#$D83D#$DCBC;  // office worker
      OFFICE_WORKER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DCBC;  // office worker: dark skin tone
      OFFICE_WORKER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DCBC;  // office worker: light skin tone
      OFFICE_WORKER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DCBC;  // office worker: medium skin tone
      OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DCBC;  // office worker: medium-dark skin tone
      OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DCBC;  // office worker: medium-light skin tone
      OLD_MAN_DARK_SKIN_TONE: string = #$D83D#$DC74#$D83C#$DFFF;  // old man: dark skin tone
      OLD_MAN_LIGHT_SKIN_TONE: string = #$D83D#$DC74#$D83C#$DFFB;  // old man: light skin tone
      OLD_MAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC74#$D83C#$DFFD;  // old man: medium skin tone
      OLD_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC74#$D83C#$DFFE;  // old man: medium-dark skin tone
      OLD_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC74#$D83C#$DFFC;  // old man: medium-light skin tone
      OLD_WOMAN_DARK_SKIN_TONE: string = #$D83D#$DC75#$D83C#$DFFF;  // old woman: dark skin tone
      OLD_WOMAN_LIGHT_SKIN_TONE: string = #$D83D#$DC75#$D83C#$DFFB;  // old woman: light skin tone
      OLD_WOMAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC75#$D83C#$DFFD;  // old woman: medium skin tone
      OLD_WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC75#$D83C#$DFFE;  // old woman: medium-dark skin tone
      OLD_WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC75#$D83C#$DFFC;  // old woman: medium-light skin tone
      OLDER_PERSON_DARK_SKIN_TONE: string = #$D83E#$DDD3#$D83C#$DFFF;  // older person: dark skin tone
      OLDER_PERSON_LIGHT_SKIN_TONE: string = #$D83E#$DDD3#$D83C#$DFFB;  // older person: light skin tone
      OLDER_PERSON_MEDIUM_SKIN_TONE: string = #$D83E#$DDD3#$D83C#$DFFD;  // older person: medium skin tone
      OLDER_PERSON_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD3#$D83C#$DFFE;  // older person: medium-dark skin tone
      OLDER_PERSON_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD3#$D83C#$DFFC;  // older person: medium-light skin tone
      ONCOMING_FIST_DARK_SKIN_TONE: string = #$D83D#$DC4A#$D83C#$DFFF;  // oncoming fist: dark skin tone
      ONCOMING_FIST_LIGHT_SKIN_TONE: string = #$D83D#$DC4A#$D83C#$DFFB;  // oncoming fist: light skin tone
      ONCOMING_FIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC4A#$D83C#$DFFD;  // oncoming fist: medium skin tone
      ONCOMING_FIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4A#$D83C#$DFFE;  // oncoming fist: medium-dark skin tone
      ONCOMING_FIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4A#$D83C#$DFFC;  // oncoming fist: medium-light skin tone
      OPEN_HANDS_DARK_SKIN_TONE: string = #$D83D#$DC50#$D83C#$DFFF;  // open hands: dark skin tone
      OPEN_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DC50#$D83C#$DFFB;  // open hands: light skin tone
      OPEN_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DC50#$D83C#$DFFD;  // open hands: medium skin tone
      OPEN_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC50#$D83C#$DFFE;  // open hands: medium-dark skin tone
      OPEN_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC50#$D83C#$DFFC;  // open hands: medium-light skin tone
      PALM_DOWN_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF3#$D83C#$DFFF;  // palm down hand: dark skin tone
      PALM_DOWN_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF3#$D83C#$DFFB;  // palm down hand: light skin tone
      PALM_DOWN_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF3#$D83C#$DFFD;  // palm down hand: medium skin tone
      PALM_DOWN_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF3#$D83C#$DFFE;  // palm down hand: medium-dark skin tone
      PALM_DOWN_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF3#$D83C#$DFFC;  // palm down hand: medium-light skin tone
      PALM_UP_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF4#$D83C#$DFFF;  // palm up hand: dark skin tone
      PALM_UP_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF4#$D83C#$DFFB;  // palm up hand: light skin tone
      PALM_UP_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF4#$D83C#$DFFD;  // palm up hand: medium skin tone
      PALM_UP_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF4#$D83C#$DFFE;  // palm up hand: medium-dark skin tone
      PALM_UP_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF4#$D83C#$DFFC;  // palm up hand: medium-light skin tone
      PALMS_UP_TOGETHER_DARK_SKIN_TONE: string = #$D83E#$DD32#$D83C#$DFFF;  // palms up together: dark skin tone
      PALMS_UP_TOGETHER_LIGHT_SKIN_TONE: string = #$D83E#$DD32#$D83C#$DFFB;  // palms up together: light skin tone
      PALMS_UP_TOGETHER_MEDIUM_SKIN_TONE: string = #$D83E#$DD32#$D83C#$DFFD;  // palms up together: medium skin tone
      PALMS_UP_TOGETHER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD32#$D83C#$DFFE;  // palms up together: medium-dark skin tone
      PALMS_UP_TOGETHER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD32#$D83C#$DFFC;  // palms up together: medium-light skin tone
      PEOPLE_HOLDING_HANDS: string = #$D83E#$DDD1#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1;  // people holding hands
      PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFF;  // people holding hands: dark skin tone
      PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFB;  // people holding hands: dark skin tone, light skin tone
      PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFD;  // people holding hands: dark skin tone, medium skin tone
      PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFE;  // people holding hands: dark skin tone, medium-dark skin tone
      PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFC;  // people holding hands: dark skin tone, medium-light skin tone
      PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFB;  // people holding hands: light skin tone
      PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFF;  // people holding hands: light skin tone, dark skin tone
      PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFD;  // people holding hands: light skin tone, medium skin tone
      PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFE;  // people holding hands: light skin tone, medium-dark skin tone
      PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFC;  // people holding hands: light skin tone, medium-light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFD;  // people holding hands: medium skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFF;  // people holding hands: medium skin tone, dark skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFB;  // people holding hands: medium skin tone, light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFE;  // people holding hands: medium skin tone, medium-dark skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFC;  // people holding hands: medium skin tone, medium-light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFE;  // people holding hands: medium-dark skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFF;  // people holding hands: medium-dark skin tone, dark skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFB;  // people holding hands: medium-dark skin tone, light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFD;  // people holding hands: medium-dark skin tone, medium skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFC;  // people holding hands: medium-dark skin tone, medium-light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFC;  // people holding hands: medium-light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFF;  // people holding hands: medium-light skin tone, dark skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFB;  // people holding hands: medium-light skin tone, light skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFD;  // people holding hands: medium-light skin tone, medium skin tone
      PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83E#$DDD1#$D83C#$DFFE;  // people holding hands: medium-light skin tone, medium-dark skin tone
      PERSON_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFF;  // person biking: dark skin tone
      PERSON_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFB;  // person biking: light skin tone
      PERSON_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFD;  // person biking: medium skin tone
      PERSON_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFE;  // person biking: medium-dark skin tone
      PERSON_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFC;  // person biking: medium-light skin tone
      PERSON_BOUNCING_BALL_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFF;  // person bouncing ball: dark skin tone
      PERSON_BOUNCING_BALL_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFB;  // person bouncing ball: light skin tone
      PERSON_BOUNCING_BALL_MEDIUM_SKIN_TONE: string = #$26F9#$D83C#$DFFD;  // person bouncing ball: medium skin tone
      PERSON_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFE;  // person bouncing ball: medium-dark skin tone
      PERSON_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFC;  // person bouncing ball: medium-light skin tone
      PERSON_BOWING_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFF;  // person bowing: dark skin tone
      PERSON_BOWING_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFB;  // person bowing: light skin tone
      PERSON_BOWING_MEDIUM_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFD;  // person bowing: medium skin tone
      PERSON_BOWING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFE;  // person bowing: medium-dark skin tone
      PERSON_BOWING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFC;  // person bowing: medium-light skin tone
      PERSON_CARTWHEELING_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFF;  // person cartwheeling: dark skin tone
      PERSON_CARTWHEELING_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFB;  // person cartwheeling: light skin tone
      PERSON_CARTWHEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFD;  // person cartwheeling: medium skin tone
      PERSON_CARTWHEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFE;  // person cartwheeling: medium-dark skin tone
      PERSON_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFC;  // person cartwheeling: medium-light skin tone
      PERSON_CLIMBING_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFF;  // person climbing: dark skin tone
      PERSON_CLIMBING_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFB;  // person climbing: light skin tone
      PERSON_CLIMBING_MEDIUM_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFD;  // person climbing: medium skin tone
      PERSON_CLIMBING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFE;  // person climbing: medium-dark skin tone
      PERSON_CLIMBING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFC;  // person climbing: medium-light skin tone
      PERSON_FACEPALMING_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFF;  // person facepalming: dark skin tone
      PERSON_FACEPALMING_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFB;  // person facepalming: light skin tone
      PERSON_FACEPALMING_MEDIUM_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFD;  // person facepalming: medium skin tone
      PERSON_FACEPALMING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFE;  // person facepalming: medium-dark skin tone
      PERSON_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFC;  // person facepalming: medium-light skin tone
      PERSON_FEEDING_BABY: string = #$D83E#$DDD1#$200D#$D83C#$DF7C;  // person feeding baby
      PERSON_FEEDING_BABY_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DF7C;  // person feeding baby: dark skin tone
      PERSON_FEEDING_BABY_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DF7C;  // person feeding baby: light skin tone
      PERSON_FEEDING_BABY_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DF7C;  // person feeding baby: medium skin tone
      PERSON_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DF7C;  // person feeding baby: medium-dark skin tone
      PERSON_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DF7C;  // person feeding baby: medium-light skin tone
      PERSON_FROWNING_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFF;  // person frowning: dark skin tone
      PERSON_FROWNING_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFB;  // person frowning: light skin tone
      PERSON_FROWNING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFD;  // person frowning: medium skin tone
      PERSON_FROWNING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFE;  // person frowning: medium-dark skin tone
      PERSON_FROWNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFC;  // person frowning: medium-light skin tone
      PERSON_GESTURING_NO_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFF;  // person gesturing NO: dark skin tone
      PERSON_GESTURING_NO_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFB;  // person gesturing NO: light skin tone
      PERSON_GESTURING_NO_MEDIUM_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFD;  // person gesturing NO: medium skin tone
      PERSON_GESTURING_NO_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFE;  // person gesturing NO: medium-dark skin tone
      PERSON_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFC;  // person gesturing NO: medium-light skin tone
      PERSON_GESTURING_OK_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFF;  // person gesturing OK: dark skin tone
      PERSON_GESTURING_OK_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFB;  // person gesturing OK: light skin tone
      PERSON_GESTURING_OK_MEDIUM_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFD;  // person gesturing OK: medium skin tone
      PERSON_GESTURING_OK_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFE;  // person gesturing OK: medium-dark skin tone
      PERSON_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFC;  // person gesturing OK: medium-light skin tone
      PERSON_GETTING_HAIRCUT_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFF;  // person getting haircut: dark skin tone
      PERSON_GETTING_HAIRCUT_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFB;  // person getting haircut: light skin tone
      PERSON_GETTING_HAIRCUT_MEDIUM_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFD;  // person getting haircut: medium skin tone
      PERSON_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFE;  // person getting haircut: medium-dark skin tone
      PERSON_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFC;  // person getting haircut: medium-light skin tone
      PERSON_GETTING_MASSAGE_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFF;  // person getting massage: dark skin tone
      PERSON_GETTING_MASSAGE_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFB;  // person getting massage: light skin tone
      PERSON_GETTING_MASSAGE_MEDIUM_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFD;  // person getting massage: medium skin tone
      PERSON_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFE;  // person getting massage: medium-dark skin tone
      PERSON_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFC;  // person getting massage: medium-light skin tone
      PERSON_GOLFING_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFF;  // person golfing: dark skin tone
      PERSON_GOLFING_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFB;  // person golfing: light skin tone
      PERSON_GOLFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFD;  // person golfing: medium skin tone
      PERSON_GOLFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFE;  // person golfing: medium-dark skin tone
      PERSON_GOLFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFC;  // person golfing: medium-light skin tone
      PERSON_IN_BED_DARK_SKIN_TONE: string = #$D83D#$DECC#$D83C#$DFFF;  // person in bed: dark skin tone
      PERSON_IN_BED_LIGHT_SKIN_TONE: string = #$D83D#$DECC#$D83C#$DFFB;  // person in bed: light skin tone
      PERSON_IN_BED_MEDIUM_SKIN_TONE: string = #$D83D#$DECC#$D83C#$DFFD;  // person in bed: medium skin tone
      PERSON_IN_BED_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DECC#$D83C#$DFFE;  // person in bed: medium-dark skin tone
      PERSON_IN_BED_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DECC#$D83C#$DFFC;  // person in bed: medium-light skin tone
      PERSON_IN_LOTUS_POSITION_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFF;  // person in lotus position: dark skin tone
      PERSON_IN_LOTUS_POSITION_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFB;  // person in lotus position: light skin tone
      PERSON_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFD;  // person in lotus position: medium skin tone
      PERSON_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFE;  // person in lotus position: medium-dark skin tone
      PERSON_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFC;  // person in lotus position: medium-light skin tone
      PERSON_IN_MANUAL_WHEELCHAIR: string = #$D83E#$DDD1#$200D#$D83E#$DDBD;  // person in manual wheelchair
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT: string = #$D83E#$DDD1#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right: dark skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right: light skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right: medium skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right: medium-dark skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // person in manual wheelchair facing right: medium-light skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDBD;  // person in manual wheelchair: dark skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDBD;  // person in manual wheelchair: light skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDBD;  // person in manual wheelchair: medium skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDBD;  // person in manual wheelchair: medium-dark skin tone
      PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDBD;  // person in manual wheelchair: medium-light skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR: string = #$D83E#$DDD1#$200D#$D83E#$DDBC;  // person in motorized wheelchair
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT: string = #$D83E#$DDD1#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right: dark skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right: light skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right: medium skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right: medium-dark skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // person in motorized wheelchair facing right: medium-light skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDBC;  // person in motorized wheelchair: dark skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDBC;  // person in motorized wheelchair: light skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDBC;  // person in motorized wheelchair: medium skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDBC;  // person in motorized wheelchair: medium-dark skin tone
      PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDBC;  // person in motorized wheelchair: medium-light skin tone
      PERSON_IN_STEAMY_ROOM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFF;  // person in steamy room: dark skin tone
      PERSON_IN_STEAMY_ROOM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFB;  // person in steamy room: light skin tone
      PERSON_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFD;  // person in steamy room: medium skin tone
      PERSON_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFE;  // person in steamy room: medium-dark skin tone
      PERSON_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFC;  // person in steamy room: medium-light skin tone
      PERSON_IN_SUIT_LEVITATING_DARK_SKIN_TONE: string = #$D83D#$DD74#$D83C#$DFFF;  // person in suit levitating: dark skin tone
      PERSON_IN_SUIT_LEVITATING_LIGHT_SKIN_TONE: string = #$D83D#$DD74#$D83C#$DFFB;  // person in suit levitating: light skin tone
      PERSON_IN_SUIT_LEVITATING_MEDIUM_SKIN_TONE: string = #$D83D#$DD74#$D83C#$DFFD;  // person in suit levitating: medium skin tone
      PERSON_IN_SUIT_LEVITATING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD74#$D83C#$DFFE;  // person in suit levitating: medium-dark skin tone
      PERSON_IN_SUIT_LEVITATING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD74#$D83C#$DFFC;  // person in suit levitating: medium-light skin tone
      PERSON_IN_TUXEDO_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFF;  // person in tuxedo: dark skin tone
      PERSON_IN_TUXEDO_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFB;  // person in tuxedo: light skin tone
      PERSON_IN_TUXEDO_MEDIUM_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFD;  // person in tuxedo: medium skin tone
      PERSON_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFE;  // person in tuxedo: medium-dark skin tone
      PERSON_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFC;  // person in tuxedo: medium-light skin tone
      PERSON_JUGGLING_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFF;  // person juggling: dark skin tone
      PERSON_JUGGLING_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFB;  // person juggling: light skin tone
      PERSON_JUGGLING_MEDIUM_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFD;  // person juggling: medium skin tone
      PERSON_JUGGLING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFE;  // person juggling: medium-dark skin tone
      PERSON_JUGGLING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFC;  // person juggling: medium-light skin tone
      PERSON_KNEELING_FACING_RIGHT: string = #$D83E#$DDCE#$200D#$27A1#$FE0F;  // person kneeling facing right
      PERSON_KNEELING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF#$200D#$27A1#$FE0F;  // person kneeling facing right: dark skin tone
      PERSON_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB#$200D#$27A1#$FE0F;  // person kneeling facing right: light skin tone
      PERSON_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD#$200D#$27A1#$FE0F;  // person kneeling facing right: medium skin tone
      PERSON_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE#$200D#$27A1#$FE0F;  // person kneeling facing right: medium-dark skin tone
      PERSON_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC#$200D#$27A1#$FE0F;  // person kneeling facing right: medium-light skin tone
      PERSON_KNEELING_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF;  // person kneeling: dark skin tone
      PERSON_KNEELING_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB;  // person kneeling: light skin tone
      PERSON_KNEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD;  // person kneeling: medium skin tone
      PERSON_KNEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE;  // person kneeling: medium-dark skin tone
      PERSON_KNEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC;  // person kneeling: medium-light skin tone
      PERSON_LIFTING_WEIGHTS_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFF;  // person lifting weights: dark skin tone
      PERSON_LIFTING_WEIGHTS_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFB;  // person lifting weights: light skin tone
      PERSON_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFD;  // person lifting weights: medium skin tone
      PERSON_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFE;  // person lifting weights: medium-dark skin tone
      PERSON_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFC;  // person lifting weights: medium-light skin tone
      PERSON_MOUNTAIN_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFF;  // person mountain biking: dark skin tone
      PERSON_MOUNTAIN_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFB;  // person mountain biking: light skin tone
      PERSON_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFD;  // person mountain biking: medium skin tone
      PERSON_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFE;  // person mountain biking: medium-dark skin tone
      PERSON_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFC;  // person mountain biking: medium-light skin tone
      PERSON_PLAYING_HANDBALL_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFF;  // person playing handball: dark skin tone
      PERSON_PLAYING_HANDBALL_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFB;  // person playing handball: light skin tone
      PERSON_PLAYING_HANDBALL_MEDIUM_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFD;  // person playing handball: medium skin tone
      PERSON_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFE;  // person playing handball: medium-dark skin tone
      PERSON_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFC;  // person playing handball: medium-light skin tone
      PERSON_PLAYING_WATER_POLO_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFF;  // person playing water polo: dark skin tone
      PERSON_PLAYING_WATER_POLO_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFB;  // person playing water polo: light skin tone
      PERSON_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFD;  // person playing water polo: medium skin tone
      PERSON_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFE;  // person playing water polo: medium-dark skin tone
      PERSON_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFC;  // person playing water polo: medium-light skin tone
      PERSON_POUTING_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFF;  // person pouting: dark skin tone
      PERSON_POUTING_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFB;  // person pouting: light skin tone
      PERSON_POUTING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFD;  // person pouting: medium skin tone
      PERSON_POUTING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFE;  // person pouting: medium-dark skin tone
      PERSON_POUTING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFC;  // person pouting: medium-light skin tone
      PERSON_RAISING_HAND_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFF;  // person raising hand: dark skin tone
      PERSON_RAISING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFB;  // person raising hand: light skin tone
      PERSON_RAISING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFD;  // person raising hand: medium skin tone
      PERSON_RAISING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFE;  // person raising hand: medium-dark skin tone
      PERSON_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFC;  // person raising hand: medium-light skin tone
      PERSON_ROWING_BOAT_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFF;  // person rowing boat: dark skin tone
      PERSON_ROWING_BOAT_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFB;  // person rowing boat: light skin tone
      PERSON_ROWING_BOAT_MEDIUM_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFD;  // person rowing boat: medium skin tone
      PERSON_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFE;  // person rowing boat: medium-dark skin tone
      PERSON_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFC;  // person rowing boat: medium-light skin tone
      PERSON_RUNNING_FACING_RIGHT: string = #$D83C#$DFC3#$200D#$27A1#$FE0F;  // person running facing right
      PERSON_RUNNING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF#$200D#$27A1#$FE0F;  // person running facing right: dark skin tone
      PERSON_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB#$200D#$27A1#$FE0F;  // person running facing right: light skin tone
      PERSON_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD#$200D#$27A1#$FE0F;  // person running facing right: medium skin tone
      PERSON_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE#$200D#$27A1#$FE0F;  // person running facing right: medium-dark skin tone
      PERSON_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC#$200D#$27A1#$FE0F;  // person running facing right: medium-light skin tone
      PERSON_RUNNING_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF;  // person running: dark skin tone
      PERSON_RUNNING_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB;  // person running: light skin tone
      PERSON_RUNNING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD;  // person running: medium skin tone
      PERSON_RUNNING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE;  // person running: medium-dark skin tone
      PERSON_RUNNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC;  // person running: medium-light skin tone
      PERSON_SHRUGGING_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFF;  // person shrugging: dark skin tone
      PERSON_SHRUGGING_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFB;  // person shrugging: light skin tone
      PERSON_SHRUGGING_MEDIUM_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFD;  // person shrugging: medium skin tone
      PERSON_SHRUGGING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFE;  // person shrugging: medium-dark skin tone
      PERSON_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFC;  // person shrugging: medium-light skin tone
      PERSON_STANDING_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFF;  // person standing: dark skin tone
      PERSON_STANDING_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFB;  // person standing: light skin tone
      PERSON_STANDING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFD;  // person standing: medium skin tone
      PERSON_STANDING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFE;  // person standing: medium-dark skin tone
      PERSON_STANDING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFC;  // person standing: medium-light skin tone
      PERSON_SURFING_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFF;  // person surfing: dark skin tone
      PERSON_SURFING_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFB;  // person surfing: light skin tone
      PERSON_SURFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFD;  // person surfing: medium skin tone
      PERSON_SURFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFE;  // person surfing: medium-dark skin tone
      PERSON_SURFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFC;  // person surfing: medium-light skin tone
      PERSON_SWIMMING_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFF;  // person swimming: dark skin tone
      PERSON_SWIMMING_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFB;  // person swimming: light skin tone
      PERSON_SWIMMING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFD;  // person swimming: medium skin tone
      PERSON_SWIMMING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFE;  // person swimming: medium-dark skin tone
      PERSON_SWIMMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFC;  // person swimming: medium-light skin tone
      PERSON_TAKING_BATH_DARK_SKIN_TONE: string = #$D83D#$DEC0#$D83C#$DFFF;  // person taking bath: dark skin tone
      PERSON_TAKING_BATH_LIGHT_SKIN_TONE: string = #$D83D#$DEC0#$D83C#$DFFB;  // person taking bath: light skin tone
      PERSON_TAKING_BATH_MEDIUM_SKIN_TONE: string = #$D83D#$DEC0#$D83C#$DFFD;  // person taking bath: medium skin tone
      PERSON_TAKING_BATH_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEC0#$D83C#$DFFE;  // person taking bath: medium-dark skin tone
      PERSON_TAKING_BATH_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEC0#$D83C#$DFFC;  // person taking bath: medium-light skin tone
      PERSON_TIPPING_HAND_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFF;  // person tipping hand: dark skin tone
      PERSON_TIPPING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFB;  // person tipping hand: light skin tone
      PERSON_TIPPING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFD;  // person tipping hand: medium skin tone
      PERSON_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFE;  // person tipping hand: medium-dark skin tone
      PERSON_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFC;  // person tipping hand: medium-light skin tone
      PERSON_WALKING_FACING_RIGHT: string = #$D83D#$DEB6#$200D#$27A1#$FE0F;  // person walking facing right
      PERSON_WALKING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF#$200D#$27A1#$FE0F;  // person walking facing right: dark skin tone
      PERSON_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB#$200D#$27A1#$FE0F;  // person walking facing right: light skin tone
      PERSON_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD#$200D#$27A1#$FE0F;  // person walking facing right: medium skin tone
      PERSON_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE#$200D#$27A1#$FE0F;  // person walking facing right: medium-dark skin tone
      PERSON_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC#$200D#$27A1#$FE0F;  // person walking facing right: medium-light skin tone
      PERSON_WALKING_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF;  // person walking: dark skin tone
      PERSON_WALKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB;  // person walking: light skin tone
      PERSON_WALKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD;  // person walking: medium skin tone
      PERSON_WALKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE;  // person walking: medium-dark skin tone
      PERSON_WALKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC;  // person walking: medium-light skin tone
      PERSON_WEARING_TURBAN_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFF;  // person wearing turban: dark skin tone
      PERSON_WEARING_TURBAN_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFB;  // person wearing turban: light skin tone
      PERSON_WEARING_TURBAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFD;  // person wearing turban: medium skin tone
      PERSON_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFE;  // person wearing turban: medium-dark skin tone
      PERSON_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFC;  // person wearing turban: medium-light skin tone
      PERSON_WITH_CROWN_DARK_SKIN_TONE: string = #$D83E#$DEC5#$D83C#$DFFF;  // person with crown: dark skin tone
      PERSON_WITH_CROWN_LIGHT_SKIN_TONE: string = #$D83E#$DEC5#$D83C#$DFFB;  // person with crown: light skin tone
      PERSON_WITH_CROWN_MEDIUM_SKIN_TONE: string = #$D83E#$DEC5#$D83C#$DFFD;  // person with crown: medium skin tone
      PERSON_WITH_CROWN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEC5#$D83C#$DFFE;  // person with crown: medium-dark skin tone
      PERSON_WITH_CROWN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEC5#$D83C#$DFFC;  // person with crown: medium-light skin tone
      PERSON_WITH_SKULLCAP_DARK_SKIN_TONE: string = #$D83D#$DC72#$D83C#$DFFF;  // person with skullcap: dark skin tone
      PERSON_WITH_SKULLCAP_LIGHT_SKIN_TONE: string = #$D83D#$DC72#$D83C#$DFFB;  // person with skullcap: light skin tone
      PERSON_WITH_SKULLCAP_MEDIUM_SKIN_TONE: string = #$D83D#$DC72#$D83C#$DFFD;  // person with skullcap: medium skin tone
      PERSON_WITH_SKULLCAP_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC72#$D83C#$DFFE;  // person with skullcap: medium-dark skin tone
      PERSON_WITH_SKULLCAP_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC72#$D83C#$DFFC;  // person with skullcap: medium-light skin tone
      PERSON_WITH_VEIL_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFF;  // person with veil: dark skin tone
      PERSON_WITH_VEIL_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFB;  // person with veil: light skin tone
      PERSON_WITH_VEIL_MEDIUM_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFD;  // person with veil: medium skin tone
      PERSON_WITH_VEIL_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFE;  // person with veil: medium-dark skin tone
      PERSON_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFC;  // person with veil: medium-light skin tone
      PERSON_WITH_WHITE_CANE: string = #$D83E#$DDD1#$200D#$D83E#$DDAF;  // person with white cane
      PERSON_WITH_WHITE_CANE_FACING_RIGHT: string = #$D83E#$DDD1#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right
      PERSON_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right: dark skin tone
      PERSON_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right: light skin tone
      PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right: medium skin tone
      PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right: medium-dark skin tone
      PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // person with white cane facing right: medium-light skin tone
      PERSON_WITH_WHITE_CANE_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDAF;  // person with white cane: dark skin tone
      PERSON_WITH_WHITE_CANE_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDAF;  // person with white cane: light skin tone
      PERSON_WITH_WHITE_CANE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDAF;  // person with white cane: medium skin tone
      PERSON_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDAF;  // person with white cane: medium-dark skin tone
      PERSON_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDAF;  // person with white cane: medium-light skin tone
      PERSON_BALD: string = #$D83E#$DDD1#$200D#$D83E#$DDB2;  // person: bald
      PERSON_CURLY_HAIR: string = #$D83E#$DDD1#$200D#$D83E#$DDB1;  // person: curly hair
      PERSON_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF;  // person: dark skin tone
      PERSON_DARK_SKIN_TONE_BALD: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDB2;  // person: dark skin tone, bald
      PERSON_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFF;  // person: dark skin tone, beard
      PERSON_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFF;  // person: dark skin tone, blond hair
      PERSON_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDB1;  // person: dark skin tone, curly hair
      PERSON_DARK_SKIN_TONE_RED_HAIR: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDB0;  // person: dark skin tone, red hair
      PERSON_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83E#$DDB3;  // person: dark skin tone, white hair
      PERSON_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB;  // person: light skin tone
      PERSON_LIGHT_SKIN_TONE_BALD: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDB2;  // person: light skin tone, bald
      PERSON_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFB;  // person: light skin tone, beard
      PERSON_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFB;  // person: light skin tone, blond hair
      PERSON_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDB1;  // person: light skin tone, curly hair
      PERSON_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDB0;  // person: light skin tone, red hair
      PERSON_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83E#$DDB3;  // person: light skin tone, white hair
      PERSON_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD;  // person: medium skin tone
      PERSON_MEDIUM_SKIN_TONE_BALD: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDB2;  // person: medium skin tone, bald
      PERSON_MEDIUM_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFD;  // person: medium skin tone, beard
      PERSON_MEDIUM_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFD;  // person: medium skin tone, blond hair
      PERSON_MEDIUM_SKIN_TONE_CURLY_HAIR: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDB1;  // person: medium skin tone, curly hair
      PERSON_MEDIUM_SKIN_TONE_RED_HAIR: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDB0;  // person: medium skin tone, red hair
      PERSON_MEDIUM_SKIN_TONE_WHITE_HAIR: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83E#$DDB3;  // person: medium skin tone, white hair
      PERSON_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE;  // person: medium-dark skin tone
      PERSON_MEDIUM_DARK_SKIN_TONE_BALD: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDB2;  // person: medium-dark skin tone, bald
      PERSON_MEDIUM_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFE;  // person: medium-dark skin tone, beard
      PERSON_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFE;  // person: medium-dark skin tone, blond hair
      PERSON_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDB1;  // person: medium-dark skin tone, curly hair
      PERSON_MEDIUM_DARK_SKIN_TONE_RED_HAIR: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDB0;  // person: medium-dark skin tone, red hair
      PERSON_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83E#$DDB3;  // person: medium-dark skin tone, white hair
      PERSON_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC;  // person: medium-light skin tone
      PERSON_MEDIUM_LIGHT_SKIN_TONE_BALD: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDB2;  // person: medium-light skin tone, bald
      PERSON_MEDIUM_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFC;  // person: medium-light skin tone, beard
      PERSON_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFC;  // person: medium-light skin tone, blond hair
      PERSON_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDB1;  // person: medium-light skin tone, curly hair
      PERSON_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDB0;  // person: medium-light skin tone, red hair
      PERSON_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83E#$DDB3;  // person: medium-light skin tone, white hair
      PERSON_RED_HAIR: string = #$D83E#$DDD1#$200D#$D83E#$DDB0;  // person: red hair
      PERSON_WHITE_HAIR: string = #$D83E#$DDD1#$200D#$D83E#$DDB3;  // person: white hair
      PHOENIX: string = #$D83D#$DC26#$200D#$D83D#$DD25;  // phoenix
      PILOT: string = #$D83E#$DDD1#$200D#$2708#$FE0F;  // pilot
      PILOT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$2708#$FE0F;  // pilot: dark skin tone
      PILOT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$2708#$FE0F;  // pilot: light skin tone
      PILOT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$2708#$FE0F;  // pilot: medium skin tone
      PILOT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$2708#$FE0F;  // pilot: medium-dark skin tone
      PILOT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$2708#$FE0F;  // pilot: medium-light skin tone
      PINCHED_FINGERS_DARK_SKIN_TONE: string = #$D83E#$DD0C#$D83C#$DFFF;  // pinched fingers: dark skin tone
      PINCHED_FINGERS_LIGHT_SKIN_TONE: string = #$D83E#$DD0C#$D83C#$DFFB;  // pinched fingers: light skin tone
      PINCHED_FINGERS_MEDIUM_SKIN_TONE: string = #$D83E#$DD0C#$D83C#$DFFD;  // pinched fingers: medium skin tone
      PINCHED_FINGERS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD0C#$D83C#$DFFE;  // pinched fingers: medium-dark skin tone
      PINCHED_FINGERS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD0C#$D83C#$DFFC;  // pinched fingers: medium-light skin tone
      PINCHING_HAND_DARK_SKIN_TONE: string = #$D83E#$DD0F#$D83C#$DFFF;  // pinching hand: dark skin tone
      PINCHING_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DD0F#$D83C#$DFFB;  // pinching hand: light skin tone
      PINCHING_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DD0F#$D83C#$DFFD;  // pinching hand: medium skin tone
      PINCHING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD0F#$D83C#$DFFE;  // pinching hand: medium-dark skin tone
      PINCHING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD0F#$D83C#$DFFC;  // pinching hand: medium-light skin tone
      PIRATE_FLAG: string = #$D83C#$DFF4#$200D#$2620#$FE0F;  // pirate flag
      POLAR_BEAR: string = #$D83D#$DC3B#$200D#$2744#$FE0F;  // polar bear
      POLICE_OFFICER_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFF;  // police officer: dark skin tone
      POLICE_OFFICER_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFB;  // police officer: light skin tone
      POLICE_OFFICER_MEDIUM_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFD;  // police officer: medium skin tone
      POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFE;  // police officer: medium-dark skin tone
      POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFC;  // police officer: medium-light skin tone
      PREGNANT_MAN_DARK_SKIN_TONE: string = #$D83E#$DEC3#$D83C#$DFFF;  // pregnant man: dark skin tone
      PREGNANT_MAN_LIGHT_SKIN_TONE: string = #$D83E#$DEC3#$D83C#$DFFB;  // pregnant man: light skin tone
      PREGNANT_MAN_MEDIUM_SKIN_TONE: string = #$D83E#$DEC3#$D83C#$DFFD;  // pregnant man: medium skin tone
      PREGNANT_MAN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEC3#$D83C#$DFFE;  // pregnant man: medium-dark skin tone
      PREGNANT_MAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEC3#$D83C#$DFFC;  // pregnant man: medium-light skin tone
      PREGNANT_PERSON_DARK_SKIN_TONE: string = #$D83E#$DEC4#$D83C#$DFFF;  // pregnant person: dark skin tone
      PREGNANT_PERSON_LIGHT_SKIN_TONE: string = #$D83E#$DEC4#$D83C#$DFFB;  // pregnant person: light skin tone
      PREGNANT_PERSON_MEDIUM_SKIN_TONE: string = #$D83E#$DEC4#$D83C#$DFFD;  // pregnant person: medium skin tone
      PREGNANT_PERSON_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEC4#$D83C#$DFFE;  // pregnant person: medium-dark skin tone
      PREGNANT_PERSON_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEC4#$D83C#$DFFC;  // pregnant person: medium-light skin tone
      PREGNANT_WOMAN_DARK_SKIN_TONE: string = #$D83E#$DD30#$D83C#$DFFF;  // pregnant woman: dark skin tone
      PREGNANT_WOMAN_LIGHT_SKIN_TONE: string = #$D83E#$DD30#$D83C#$DFFB;  // pregnant woman: light skin tone
      PREGNANT_WOMAN_MEDIUM_SKIN_TONE: string = #$D83E#$DD30#$D83C#$DFFD;  // pregnant woman: medium skin tone
      PREGNANT_WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD30#$D83C#$DFFE;  // pregnant woman: medium-dark skin tone
      PREGNANT_WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD30#$D83C#$DFFC;  // pregnant woman: medium-light skin tone
      PRINCE_DARK_SKIN_TONE: string = #$D83E#$DD34#$D83C#$DFFF;  // prince: dark skin tone
      PRINCE_LIGHT_SKIN_TONE: string = #$D83E#$DD34#$D83C#$DFFB;  // prince: light skin tone
      PRINCE_MEDIUM_SKIN_TONE: string = #$D83E#$DD34#$D83C#$DFFD;  // prince: medium skin tone
      PRINCE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD34#$D83C#$DFFE;  // prince: medium-dark skin tone
      PRINCE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD34#$D83C#$DFFC;  // prince: medium-light skin tone
      PRINCESS_DARK_SKIN_TONE: string = #$D83D#$DC78#$D83C#$DFFF;  // princess: dark skin tone
      PRINCESS_LIGHT_SKIN_TONE: string = #$D83D#$DC78#$D83C#$DFFB;  // princess: light skin tone
      PRINCESS_MEDIUM_SKIN_TONE: string = #$D83D#$DC78#$D83C#$DFFD;  // princess: medium skin tone
      PRINCESS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC78#$D83C#$DFFE;  // princess: medium-dark skin tone
      PRINCESS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC78#$D83C#$DFFC;  // princess: medium-light skin tone
      RAINBOW_FLAG: string = #$D83C#$DFF3#$FE0F#$200D#$D83C#$DF08;  // rainbow flag
      RAISED_BACK_OF_HAND_DARK_SKIN_TONE: string = #$D83E#$DD1A#$D83C#$DFFF;  // raised back of hand: dark skin tone
      RAISED_BACK_OF_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DD1A#$D83C#$DFFB;  // raised back of hand: light skin tone
      RAISED_BACK_OF_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DD1A#$D83C#$DFFD;  // raised back of hand: medium skin tone
      RAISED_BACK_OF_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1A#$D83C#$DFFE;  // raised back of hand: medium-dark skin tone
      RAISED_BACK_OF_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1A#$D83C#$DFFC;  // raised back of hand: medium-light skin tone
      RAISED_FIST_DARK_SKIN_TONE: string = #$270A#$D83C#$DFFF;  // raised fist: dark skin tone
      RAISED_FIST_LIGHT_SKIN_TONE: string = #$270A#$D83C#$DFFB;  // raised fist: light skin tone
      RAISED_FIST_MEDIUM_SKIN_TONE: string = #$270A#$D83C#$DFFD;  // raised fist: medium skin tone
      RAISED_FIST_MEDIUM_DARK_SKIN_TONE: string = #$270A#$D83C#$DFFE;  // raised fist: medium-dark skin tone
      RAISED_FIST_MEDIUM_LIGHT_SKIN_TONE: string = #$270A#$D83C#$DFFC;  // raised fist: medium-light skin tone
      RAISED_HAND_DARK_SKIN_TONE: string = #$270B#$D83C#$DFFF;  // raised hand: dark skin tone
      RAISED_HAND_LIGHT_SKIN_TONE: string = #$270B#$D83C#$DFFB;  // raised hand: light skin tone
      RAISED_HAND_MEDIUM_SKIN_TONE: string = #$270B#$D83C#$DFFD;  // raised hand: medium skin tone
      RAISED_HAND_MEDIUM_DARK_SKIN_TONE: string = #$270B#$D83C#$DFFE;  // raised hand: medium-dark skin tone
      RAISED_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$270B#$D83C#$DFFC;  // raised hand: medium-light skin tone
      RAISING_HANDS_DARK_SKIN_TONE: string = #$D83D#$DE4C#$D83C#$DFFF;  // raising hands: dark skin tone
      RAISING_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DE4C#$D83C#$DFFB;  // raising hands: light skin tone
      RAISING_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DE4C#$D83C#$DFFD;  // raising hands: medium skin tone
      RAISING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4C#$D83C#$DFFE;  // raising hands: medium-dark skin tone
      RAISING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4C#$D83C#$DFFC;  // raising hands: medium-light skin tone
      RIGHT_FACING_FIST_DARK_SKIN_TONE: string = #$D83E#$DD1C#$D83C#$DFFF;  // right-facing fist: dark skin tone
      RIGHT_FACING_FIST_LIGHT_SKIN_TONE: string = #$D83E#$DD1C#$D83C#$DFFB;  // right-facing fist: light skin tone
      RIGHT_FACING_FIST_MEDIUM_SKIN_TONE: string = #$D83E#$DD1C#$D83C#$DFFD;  // right-facing fist: medium skin tone
      RIGHT_FACING_FIST_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD1C#$D83C#$DFFE;  // right-facing fist: medium-dark skin tone
      RIGHT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD1C#$D83C#$DFFC;  // right-facing fist: medium-light skin tone
      RIGHTWARDS_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFF;  // rightwards hand: dark skin tone
      RIGHTWARDS_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFB;  // rightwards hand: light skin tone
      RIGHTWARDS_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFD;  // rightwards hand: medium skin tone
      RIGHTWARDS_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFE;  // rightwards hand: medium-dark skin tone
      RIGHTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF1#$D83C#$DFFC;  // rightwards hand: medium-light skin tone
      RIGHTWARDS_PUSHING_HAND_DARK_SKIN_TONE: string = #$D83E#$DEF8#$D83C#$DFFF;  // rightwards pushing hand: dark skin tone
      RIGHTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE: string = #$D83E#$DEF8#$D83C#$DFFB;  // rightwards pushing hand: light skin tone
      RIGHTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE: string = #$D83E#$DEF8#$D83C#$DFFD;  // rightwards pushing hand: medium skin tone
      RIGHTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DEF8#$D83C#$DFFE;  // rightwards pushing hand: medium-dark skin tone
      RIGHTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DEF8#$D83C#$DFFC;  // rightwards pushing hand: medium-light skin tone
      SCIENTIST: string = #$D83E#$DDD1#$200D#$D83D#$DD2C;  // scientist
      SCIENTIST_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DD2C;  // scientist: dark skin tone
      SCIENTIST_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DD2C;  // scientist: light skin tone
      SCIENTIST_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DD2C;  // scientist: medium skin tone
      SCIENTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DD2C;  // scientist: medium-dark skin tone
      SCIENTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DD2C;  // scientist: medium-light skin tone
      SELFIE_DARK_SKIN_TONE: string = #$D83E#$DD33#$D83C#$DFFF;  // selfie: dark skin tone
      SELFIE_LIGHT_SKIN_TONE: string = #$D83E#$DD33#$D83C#$DFFB;  // selfie: light skin tone
      SELFIE_MEDIUM_SKIN_TONE: string = #$D83E#$DD33#$D83C#$DFFD;  // selfie: medium skin tone
      SELFIE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD33#$D83C#$DFFE;  // selfie: medium-dark skin tone
      SELFIE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD33#$D83C#$DFFC;  // selfie: medium-light skin tone
      SERVICE_DOG: string = #$D83D#$DC15#$200D#$D83E#$DDBA;  // service dog
      SIGN_OF_THE_HORNS_DARK_SKIN_TONE: string = #$D83E#$DD18#$D83C#$DFFF;  // sign of the horns: dark skin tone
      SIGN_OF_THE_HORNS_LIGHT_SKIN_TONE: string = #$D83E#$DD18#$D83C#$DFFB;  // sign of the horns: light skin tone
      SIGN_OF_THE_HORNS_MEDIUM_SKIN_TONE: string = #$D83E#$DD18#$D83C#$DFFD;  // sign of the horns: medium skin tone
      SIGN_OF_THE_HORNS_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD18#$D83C#$DFFE;  // sign of the horns: medium-dark skin tone
      SIGN_OF_THE_HORNS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD18#$D83C#$DFFC;  // sign of the horns: medium-light skin tone
      SINGER: string = #$D83E#$DDD1#$200D#$D83C#$DFA4;  // singer
      SINGER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DFA4;  // singer: dark skin tone
      SINGER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DFA4;  // singer: light skin tone
      SINGER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DFA4;  // singer: medium skin tone
      SINGER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DFA4;  // singer: medium-dark skin tone
      SINGER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DFA4;  // singer: medium-light skin tone
      SNOWBOARDER_DARK_SKIN_TONE: string = #$D83C#$DFC2#$D83C#$DFFF;  // snowboarder: dark skin tone
      SNOWBOARDER_LIGHT_SKIN_TONE: string = #$D83C#$DFC2#$D83C#$DFFB;  // snowboarder: light skin tone
      SNOWBOARDER_MEDIUM_SKIN_TONE: string = #$D83C#$DFC2#$D83C#$DFFD;  // snowboarder: medium skin tone
      SNOWBOARDER_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC2#$D83C#$DFFE;  // snowboarder: medium-dark skin tone
      SNOWBOARDER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC2#$D83C#$DFFC;  // snowboarder: medium-light skin tone
      STUDENT: string = #$D83E#$DDD1#$200D#$D83C#$DF93;  // student
      STUDENT_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DF93;  // student: dark skin tone
      STUDENT_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DF93;  // student: light skin tone
      STUDENT_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DF93;  // student: medium skin tone
      STUDENT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DF93;  // student: medium-dark skin tone
      STUDENT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DF93;  // student: medium-light skin tone
      SUPERHERO_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFF;  // superhero: dark skin tone
      SUPERHERO_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFB;  // superhero: light skin tone
      SUPERHERO_MEDIUM_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFD;  // superhero: medium skin tone
      SUPERHERO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFE;  // superhero: medium-dark skin tone
      SUPERHERO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFC;  // superhero: medium-light skin tone
      SUPERVILLAIN_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFF;  // supervillain: dark skin tone
      SUPERVILLAIN_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFB;  // supervillain: light skin tone
      SUPERVILLAIN_MEDIUM_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFD;  // supervillain: medium skin tone
      SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFE;  // supervillain: medium-dark skin tone
      SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFC;  // supervillain: medium-light skin tone
      TEACHER: string = #$D83E#$DDD1#$200D#$D83C#$DFEB;  // teacher
      TEACHER_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83C#$DFEB;  // teacher: dark skin tone
      TEACHER_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83C#$DFEB;  // teacher: light skin tone
      TEACHER_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83C#$DFEB;  // teacher: medium skin tone
      TEACHER_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83C#$DFEB;  // teacher: medium-dark skin tone
      TEACHER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83C#$DFEB;  // teacher: medium-light skin tone
      TECHNOLOGIST: string = #$D83E#$DDD1#$200D#$D83D#$DCBB;  // technologist
      TECHNOLOGIST_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFF#$200D#$D83D#$DCBB;  // technologist: dark skin tone
      TECHNOLOGIST_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFB#$200D#$D83D#$DCBB;  // technologist: light skin tone
      TECHNOLOGIST_MEDIUM_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFD#$200D#$D83D#$DCBB;  // technologist: medium skin tone
      TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFE#$200D#$D83D#$DCBB;  // technologist: medium-dark skin tone
      TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD1#$D83C#$DFFC#$200D#$D83D#$DCBB;  // technologist: medium-light skin tone
      THUMBS_DOWN_DARK_SKIN_TONE: string = #$D83D#$DC4E#$D83C#$DFFF;  // thumbs down: dark skin tone
      THUMBS_DOWN_LIGHT_SKIN_TONE: string = #$D83D#$DC4E#$D83C#$DFFB;  // thumbs down: light skin tone
      THUMBS_DOWN_MEDIUM_SKIN_TONE: string = #$D83D#$DC4E#$D83C#$DFFD;  // thumbs down: medium skin tone
      THUMBS_DOWN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4E#$D83C#$DFFE;  // thumbs down: medium-dark skin tone
      THUMBS_DOWN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4E#$D83C#$DFFC;  // thumbs down: medium-light skin tone
      THUMBS_UP_DARK_SKIN_TONE: string = #$D83D#$DC4D#$D83C#$DFFF;  // thumbs up: dark skin tone
      THUMBS_UP_LIGHT_SKIN_TONE: string = #$D83D#$DC4D#$D83C#$DFFB;  // thumbs up: light skin tone
      THUMBS_UP_MEDIUM_SKIN_TONE: string = #$D83D#$DC4D#$D83C#$DFFD;  // thumbs up: medium skin tone
      THUMBS_UP_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4D#$D83C#$DFFE;  // thumbs up: medium-dark skin tone
      THUMBS_UP_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4D#$D83C#$DFFC;  // thumbs up: medium-light skin tone
      TRANSGENDER_FLAG: string = #$D83C#$DFF3#$FE0F#$200D#$26A7#$FE0F;  // transgender flag
      VAMPIRE_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFF;  // vampire: dark skin tone
      VAMPIRE_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFB;  // vampire: light skin tone
      VAMPIRE_MEDIUM_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFD;  // vampire: medium skin tone
      VAMPIRE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFE;  // vampire: medium-dark skin tone
      VAMPIRE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFC;  // vampire: medium-light skin tone
      VICTORY_HAND_DARK_SKIN_TONE: string = #$270C#$D83C#$DFFF;  // victory hand: dark skin tone
      VICTORY_HAND_LIGHT_SKIN_TONE: string = #$270C#$D83C#$DFFB;  // victory hand: light skin tone
      VICTORY_HAND_MEDIUM_SKIN_TONE: string = #$270C#$D83C#$DFFD;  // victory hand: medium skin tone
      VICTORY_HAND_MEDIUM_DARK_SKIN_TONE: string = #$270C#$D83C#$DFFE;  // victory hand: medium-dark skin tone
      VICTORY_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$270C#$D83C#$DFFC;  // victory hand: medium-light skin tone
      VULCAN_SALUTE_DARK_SKIN_TONE: string = #$D83D#$DD96#$D83C#$DFFF;  // vulcan salute: dark skin tone
      VULCAN_SALUTE_LIGHT_SKIN_TONE: string = #$D83D#$DD96#$D83C#$DFFB;  // vulcan salute: light skin tone
      VULCAN_SALUTE_MEDIUM_SKIN_TONE: string = #$D83D#$DD96#$D83C#$DFFD;  // vulcan salute: medium skin tone
      VULCAN_SALUTE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD96#$D83C#$DFFE;  // vulcan salute: medium-dark skin tone
      VULCAN_SALUTE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD96#$D83C#$DFFC;  // vulcan salute: medium-light skin tone
      WAVING_HAND_DARK_SKIN_TONE: string = #$D83D#$DC4B#$D83C#$DFFF;  // waving hand: dark skin tone
      WAVING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DC4B#$D83C#$DFFB;  // waving hand: light skin tone
      WAVING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DC4B#$D83C#$DFFD;  // waving hand: medium skin tone
      WAVING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC4B#$D83C#$DFFE;  // waving hand: medium-dark skin tone
      WAVING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC4B#$D83C#$DFFC;  // waving hand: medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE: string = #$D83D#$DC6B#$D83C#$DFFF;  // woman and man holding hands: dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // woman and man holding hands: dark skin tone, light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // woman and man holding hands: dark skin tone, medium skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // woman and man holding hands: dark skin tone, medium-dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // woman and man holding hands: dark skin tone, medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DC6B#$D83C#$DFFB;  // woman and man holding hands: light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // woman and man holding hands: light skin tone, dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // woman and man holding hands: light skin tone, medium skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // woman and man holding hands: light skin tone, medium-dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // woman and man holding hands: light skin tone, medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DC6B#$D83C#$DFFD;  // woman and man holding hands: medium skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // woman and man holding hands: medium skin tone, dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // woman and man holding hands: medium skin tone, light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // woman and man holding hands: medium skin tone, medium-dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // woman and man holding hands: medium skin tone, medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6B#$D83C#$DFFE;  // woman and man holding hands: medium-dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // woman and man holding hands: medium-dark skin tone, dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // woman and man holding hands: medium-dark skin tone, light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // woman and man holding hands: medium-dark skin tone, medium skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFC;  // woman and man holding hands: medium-dark skin tone, medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6B#$D83C#$DFFC;  // woman and man holding hands: medium-light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFF;  // woman and man holding hands: medium-light skin tone, dark skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFB;  // woman and man holding hands: medium-light skin tone, light skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFD;  // woman and man holding hands: medium-light skin tone, medium skin tone
      WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC68#$D83C#$DFFE;  // woman and man holding hands: medium-light skin tone, medium-dark skin tone
      WOMAN_ARTIST: string = #$D83D#$DC69#$200D#$D83C#$DFA8;  // woman artist
      WOMAN_ARTIST_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DFA8;  // woman artist: dark skin tone
      WOMAN_ARTIST_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DFA8;  // woman artist: light skin tone
      WOMAN_ARTIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DFA8;  // woman artist: medium skin tone
      WOMAN_ARTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DFA8;  // woman artist: medium-dark skin tone
      WOMAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DFA8;  // woman artist: medium-light skin tone
      WOMAN_ASTRONAUT: string = #$D83D#$DC69#$200D#$D83D#$DE80;  // woman astronaut
      WOMAN_ASTRONAUT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DE80;  // woman astronaut: dark skin tone
      WOMAN_ASTRONAUT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DE80;  // woman astronaut: light skin tone
      WOMAN_ASTRONAUT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DE80;  // woman astronaut: medium skin tone
      WOMAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DE80;  // woman astronaut: medium-dark skin tone
      WOMAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DE80;  // woman astronaut: medium-light skin tone
      WOMAN_BIKING: string = #$D83D#$DEB4#$200D#$2640#$FE0F;  // woman biking
      WOMAN_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman biking: dark skin tone
      WOMAN_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman biking: light skin tone
      WOMAN_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman biking: medium skin tone
      WOMAN_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman biking: medium-dark skin tone
      WOMAN_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB4#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman biking: medium-light skin tone
      WOMAN_BOUNCING_BALL: string = #$26F9#$FE0F#$200D#$2640#$FE0F;  // woman bouncing ball
      WOMAN_BOUNCING_BALL_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman bouncing ball: dark skin tone
      WOMAN_BOUNCING_BALL_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman bouncing ball: light skin tone
      WOMAN_BOUNCING_BALL_MEDIUM_SKIN_TONE: string = #$26F9#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman bouncing ball: medium skin tone
      WOMAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE: string = #$26F9#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman bouncing ball: medium-dark skin tone
      WOMAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE: string = #$26F9#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman bouncing ball: medium-light skin tone
      WOMAN_BOWING: string = #$D83D#$DE47#$200D#$2640#$FE0F;  // woman bowing
      WOMAN_BOWING_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman bowing: dark skin tone
      WOMAN_BOWING_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman bowing: light skin tone
      WOMAN_BOWING_MEDIUM_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman bowing: medium skin tone
      WOMAN_BOWING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman bowing: medium-dark skin tone
      WOMAN_BOWING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE47#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman bowing: medium-light skin tone
      WOMAN_CARTWHEELING: string = #$D83E#$DD38#$200D#$2640#$FE0F;  // woman cartwheeling
      WOMAN_CARTWHEELING_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman cartwheeling: dark skin tone
      WOMAN_CARTWHEELING_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman cartwheeling: light skin tone
      WOMAN_CARTWHEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman cartwheeling: medium skin tone
      WOMAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman cartwheeling: medium-dark skin tone
      WOMAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD38#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman cartwheeling: medium-light skin tone
      WOMAN_CLIMBING: string = #$D83E#$DDD7#$200D#$2640#$FE0F;  // woman climbing
      WOMAN_CLIMBING_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman climbing: dark skin tone
      WOMAN_CLIMBING_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman climbing: light skin tone
      WOMAN_CLIMBING_MEDIUM_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman climbing: medium skin tone
      WOMAN_CLIMBING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman climbing: medium-dark skin tone
      WOMAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD7#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman climbing: medium-light skin tone
      WOMAN_CONSTRUCTION_WORKER: string = #$D83D#$DC77#$200D#$2640#$FE0F;  // woman construction worker
      WOMAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman construction worker: dark skin tone
      WOMAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman construction worker: light skin tone
      WOMAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman construction worker: medium skin tone
      WOMAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman construction worker: medium-dark skin tone
      WOMAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC77#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman construction worker: medium-light skin tone
      WOMAN_COOK: string = #$D83D#$DC69#$200D#$D83C#$DF73;  // woman cook
      WOMAN_COOK_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DF73;  // woman cook: dark skin tone
      WOMAN_COOK_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DF73;  // woman cook: light skin tone
      WOMAN_COOK_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DF73;  // woman cook: medium skin tone
      WOMAN_COOK_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DF73;  // woman cook: medium-dark skin tone
      WOMAN_COOK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DF73;  // woman cook: medium-light skin tone
      WOMAN_DANCING_DARK_SKIN_TONE: string = #$D83D#$DC83#$D83C#$DFFF;  // woman dancing: dark skin tone
      WOMAN_DANCING_LIGHT_SKIN_TONE: string = #$D83D#$DC83#$D83C#$DFFB;  // woman dancing: light skin tone
      WOMAN_DANCING_MEDIUM_SKIN_TONE: string = #$D83D#$DC83#$D83C#$DFFD;  // woman dancing: medium skin tone
      WOMAN_DANCING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC83#$D83C#$DFFE;  // woman dancing: medium-dark skin tone
      WOMAN_DANCING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC83#$D83C#$DFFC;  // woman dancing: medium-light skin tone
      WOMAN_DETECTIVE: string = #$D83D#$DD75#$FE0F#$200D#$2640#$FE0F;  // woman detective
      WOMAN_DETECTIVE_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman detective: dark skin tone
      WOMAN_DETECTIVE_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman detective: light skin tone
      WOMAN_DETECTIVE_MEDIUM_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman detective: medium skin tone
      WOMAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman detective: medium-dark skin tone
      WOMAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DD75#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman detective: medium-light skin tone
      WOMAN_ELF: string = #$D83E#$DDDD#$200D#$2640#$FE0F;  // woman elf
      WOMAN_ELF_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman elf: dark skin tone
      WOMAN_ELF_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman elf: light skin tone
      WOMAN_ELF_MEDIUM_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman elf: medium skin tone
      WOMAN_ELF_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman elf: medium-dark skin tone
      WOMAN_ELF_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDD#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman elf: medium-light skin tone
      WOMAN_FACEPALMING: string = #$D83E#$DD26#$200D#$2640#$FE0F;  // woman facepalming
      WOMAN_FACEPALMING_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman facepalming: dark skin tone
      WOMAN_FACEPALMING_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman facepalming: light skin tone
      WOMAN_FACEPALMING_MEDIUM_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman facepalming: medium skin tone
      WOMAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman facepalming: medium-dark skin tone
      WOMAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD26#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman facepalming: medium-light skin tone
      WOMAN_FACTORY_WORKER: string = #$D83D#$DC69#$200D#$D83C#$DFED;  // woman factory worker
      WOMAN_FACTORY_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DFED;  // woman factory worker: dark skin tone
      WOMAN_FACTORY_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DFED;  // woman factory worker: light skin tone
      WOMAN_FACTORY_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DFED;  // woman factory worker: medium skin tone
      WOMAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DFED;  // woman factory worker: medium-dark skin tone
      WOMAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DFED;  // woman factory worker: medium-light skin tone
      WOMAN_FAIRY: string = #$D83E#$DDDA#$200D#$2640#$FE0F;  // woman fairy
      WOMAN_FAIRY_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman fairy: dark skin tone
      WOMAN_FAIRY_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman fairy: light skin tone
      WOMAN_FAIRY_MEDIUM_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman fairy: medium skin tone
      WOMAN_FAIRY_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman fairy: medium-dark skin tone
      WOMAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDA#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman fairy: medium-light skin tone
      WOMAN_FARMER: string = #$D83D#$DC69#$200D#$D83C#$DF3E;  // woman farmer
      WOMAN_FARMER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DF3E;  // woman farmer: dark skin tone
      WOMAN_FARMER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DF3E;  // woman farmer: light skin tone
      WOMAN_FARMER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DF3E;  // woman farmer: medium skin tone
      WOMAN_FARMER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DF3E;  // woman farmer: medium-dark skin tone
      WOMAN_FARMER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DF3E;  // woman farmer: medium-light skin tone
      WOMAN_FEEDING_BABY: string = #$D83D#$DC69#$200D#$D83C#$DF7C;  // woman feeding baby
      WOMAN_FEEDING_BABY_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DF7C;  // woman feeding baby: dark skin tone
      WOMAN_FEEDING_BABY_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DF7C;  // woman feeding baby: light skin tone
      WOMAN_FEEDING_BABY_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DF7C;  // woman feeding baby: medium skin tone
      WOMAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DF7C;  // woman feeding baby: medium-dark skin tone
      WOMAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DF7C;  // woman feeding baby: medium-light skin tone
      WOMAN_FIREFIGHTER: string = #$D83D#$DC69#$200D#$D83D#$DE92;  // woman firefighter
      WOMAN_FIREFIGHTER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DE92;  // woman firefighter: dark skin tone
      WOMAN_FIREFIGHTER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DE92;  // woman firefighter: light skin tone
      WOMAN_FIREFIGHTER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DE92;  // woman firefighter: medium skin tone
      WOMAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DE92;  // woman firefighter: medium-dark skin tone
      WOMAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DE92;  // woman firefighter: medium-light skin tone
      WOMAN_FROWNING: string = #$D83D#$DE4D#$200D#$2640#$FE0F;  // woman frowning
      WOMAN_FROWNING_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman frowning: dark skin tone
      WOMAN_FROWNING_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman frowning: light skin tone
      WOMAN_FROWNING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman frowning: medium skin tone
      WOMAN_FROWNING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman frowning: medium-dark skin tone
      WOMAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4D#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman frowning: medium-light skin tone
      WOMAN_GENIE: string = #$D83E#$DDDE#$200D#$2640#$FE0F;  // woman genie
      WOMAN_GESTURING_NO: string = #$D83D#$DE45#$200D#$2640#$FE0F;  // woman gesturing NO
      WOMAN_GESTURING_NO_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman gesturing NO: dark skin tone
      WOMAN_GESTURING_NO_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman gesturing NO: light skin tone
      WOMAN_GESTURING_NO_MEDIUM_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman gesturing NO: medium skin tone
      WOMAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman gesturing NO: medium-dark skin tone
      WOMAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE45#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman gesturing NO: medium-light skin tone
      WOMAN_GESTURING_OK: string = #$D83D#$DE46#$200D#$2640#$FE0F;  // woman gesturing OK
      WOMAN_GESTURING_OK_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman gesturing OK: dark skin tone
      WOMAN_GESTURING_OK_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman gesturing OK: light skin tone
      WOMAN_GESTURING_OK_MEDIUM_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman gesturing OK: medium skin tone
      WOMAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman gesturing OK: medium-dark skin tone
      WOMAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE46#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman gesturing OK: medium-light skin tone
      WOMAN_GETTING_HAIRCUT: string = #$D83D#$DC87#$200D#$2640#$FE0F;  // woman getting haircut
      WOMAN_GETTING_HAIRCUT_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman getting haircut: dark skin tone
      WOMAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman getting haircut: light skin tone
      WOMAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman getting haircut: medium skin tone
      WOMAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman getting haircut: medium-dark skin tone
      WOMAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC87#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman getting haircut: medium-light skin tone
      WOMAN_GETTING_MASSAGE: string = #$D83D#$DC86#$200D#$2640#$FE0F;  // woman getting massage
      WOMAN_GETTING_MASSAGE_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman getting massage: dark skin tone
      WOMAN_GETTING_MASSAGE_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman getting massage: light skin tone
      WOMAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman getting massage: medium skin tone
      WOMAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman getting massage: medium-dark skin tone
      WOMAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC86#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman getting massage: medium-light skin tone
      WOMAN_GOLFING: string = #$D83C#$DFCC#$FE0F#$200D#$2640#$FE0F;  // woman golfing
      WOMAN_GOLFING_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman golfing: dark skin tone
      WOMAN_GOLFING_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman golfing: light skin tone
      WOMAN_GOLFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman golfing: medium skin tone
      WOMAN_GOLFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman golfing: medium-dark skin tone
      WOMAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCC#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman golfing: medium-light skin tone
      WOMAN_GUARD: string = #$D83D#$DC82#$200D#$2640#$FE0F;  // woman guard
      WOMAN_GUARD_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman guard: dark skin tone
      WOMAN_GUARD_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman guard: light skin tone
      WOMAN_GUARD_MEDIUM_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman guard: medium skin tone
      WOMAN_GUARD_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman guard: medium-dark skin tone
      WOMAN_GUARD_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC82#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman guard: medium-light skin tone
      WOMAN_HEALTH_WORKER: string = #$D83D#$DC69#$200D#$2695#$FE0F;  // woman health worker
      WOMAN_HEALTH_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2695#$FE0F;  // woman health worker: dark skin tone
      WOMAN_HEALTH_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2695#$FE0F;  // woman health worker: light skin tone
      WOMAN_HEALTH_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2695#$FE0F;  // woman health worker: medium skin tone
      WOMAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2695#$FE0F;  // woman health worker: medium-dark skin tone
      WOMAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2695#$FE0F;  // woman health worker: medium-light skin tone
      WOMAN_IN_LOTUS_POSITION: string = #$D83E#$DDD8#$200D#$2640#$FE0F;  // woman in lotus position
      WOMAN_IN_LOTUS_POSITION_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman in lotus position: dark skin tone
      WOMAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman in lotus position: light skin tone
      WOMAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman in lotus position: medium skin tone
      WOMAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman in lotus position: medium-dark skin tone
      WOMAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD8#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman in lotus position: medium-light skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR: string = #$D83D#$DC69#$200D#$D83E#$DDBD;  // woman in manual wheelchair
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT: string = #$D83D#$DC69#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right: dark skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right: light skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right: medium skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right: medium-dark skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDBD#$200D#$27A1#$FE0F;  // woman in manual wheelchair facing right: medium-light skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDBD;  // woman in manual wheelchair: dark skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDBD;  // woman in manual wheelchair: light skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDBD;  // woman in manual wheelchair: medium skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDBD;  // woman in manual wheelchair: medium-dark skin tone
      WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDBD;  // woman in manual wheelchair: medium-light skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR: string = #$D83D#$DC69#$200D#$D83E#$DDBC;  // woman in motorized wheelchair
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT: string = #$D83D#$DC69#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right: dark skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right: light skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right: medium skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right: medium-dark skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDBC#$200D#$27A1#$FE0F;  // woman in motorized wheelchair facing right: medium-light skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDBC;  // woman in motorized wheelchair: dark skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDBC;  // woman in motorized wheelchair: light skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDBC;  // woman in motorized wheelchair: medium skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDBC;  // woman in motorized wheelchair: medium-dark skin tone
      WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDBC;  // woman in motorized wheelchair: medium-light skin tone
      WOMAN_IN_STEAMY_ROOM: string = #$D83E#$DDD6#$200D#$2640#$FE0F;  // woman in steamy room
      WOMAN_IN_STEAMY_ROOM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman in steamy room: dark skin tone
      WOMAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman in steamy room: light skin tone
      WOMAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman in steamy room: medium skin tone
      WOMAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman in steamy room: medium-dark skin tone
      WOMAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD6#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman in steamy room: medium-light skin tone
      WOMAN_IN_TUXEDO: string = #$D83E#$DD35#$200D#$2640#$FE0F;  // woman in tuxedo
      WOMAN_IN_TUXEDO_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman in tuxedo: dark skin tone
      WOMAN_IN_TUXEDO_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman in tuxedo: light skin tone
      WOMAN_IN_TUXEDO_MEDIUM_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman in tuxedo: medium skin tone
      WOMAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman in tuxedo: medium-dark skin tone
      WOMAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD35#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman in tuxedo: medium-light skin tone
      WOMAN_JUDGE: string = #$D83D#$DC69#$200D#$2696#$FE0F;  // woman judge
      WOMAN_JUDGE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2696#$FE0F;  // woman judge: dark skin tone
      WOMAN_JUDGE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2696#$FE0F;  // woman judge: light skin tone
      WOMAN_JUDGE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2696#$FE0F;  // woman judge: medium skin tone
      WOMAN_JUDGE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2696#$FE0F;  // woman judge: medium-dark skin tone
      WOMAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2696#$FE0F;  // woman judge: medium-light skin tone
      WOMAN_JUGGLING: string = #$D83E#$DD39#$200D#$2640#$FE0F;  // woman juggling
      WOMAN_JUGGLING_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman juggling: dark skin tone
      WOMAN_JUGGLING_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman juggling: light skin tone
      WOMAN_JUGGLING_MEDIUM_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman juggling: medium skin tone
      WOMAN_JUGGLING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman juggling: medium-dark skin tone
      WOMAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD39#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman juggling: medium-light skin tone
      WOMAN_KNEELING: string = #$D83E#$DDCE#$200D#$2640#$FE0F;  // woman kneeling
      WOMAN_KNEELING_FACING_RIGHT: string = #$D83E#$DDCE#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right
      WOMAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right: dark skin tone
      WOMAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right: light skin tone
      WOMAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right: medium skin tone
      WOMAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right: medium-dark skin tone
      WOMAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman kneeling facing right: medium-light skin tone
      WOMAN_KNEELING_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman kneeling: dark skin tone
      WOMAN_KNEELING_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman kneeling: light skin tone
      WOMAN_KNEELING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman kneeling: medium skin tone
      WOMAN_KNEELING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman kneeling: medium-dark skin tone
      WOMAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCE#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman kneeling: medium-light skin tone
      WOMAN_LIFTING_WEIGHTS: string = #$D83C#$DFCB#$FE0F#$200D#$2640#$FE0F;  // woman lifting weights
      WOMAN_LIFTING_WEIGHTS_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman lifting weights: dark skin tone
      WOMAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman lifting weights: light skin tone
      WOMAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman lifting weights: medium skin tone
      WOMAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman lifting weights: medium-dark skin tone
      WOMAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCB#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman lifting weights: medium-light skin tone
      WOMAN_MAGE: string = #$D83E#$DDD9#$200D#$2640#$FE0F;  // woman mage
      WOMAN_MAGE_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman mage: dark skin tone
      WOMAN_MAGE_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman mage: light skin tone
      WOMAN_MAGE_MEDIUM_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman mage: medium skin tone
      WOMAN_MAGE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman mage: medium-dark skin tone
      WOMAN_MAGE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD9#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman mage: medium-light skin tone
      WOMAN_MECHANIC: string = #$D83D#$DC69#$200D#$D83D#$DD27;  // woman mechanic
      WOMAN_MECHANIC_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DD27;  // woman mechanic: dark skin tone
      WOMAN_MECHANIC_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DD27;  // woman mechanic: light skin tone
      WOMAN_MECHANIC_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DD27;  // woman mechanic: medium skin tone
      WOMAN_MECHANIC_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DD27;  // woman mechanic: medium-dark skin tone
      WOMAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DD27;  // woman mechanic: medium-light skin tone
      WOMAN_MOUNTAIN_BIKING: string = #$D83D#$DEB5#$200D#$2640#$FE0F;  // woman mountain biking
      WOMAN_MOUNTAIN_BIKING_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman mountain biking: dark skin tone
      WOMAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman mountain biking: light skin tone
      WOMAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman mountain biking: medium skin tone
      WOMAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman mountain biking: medium-dark skin tone
      WOMAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB5#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman mountain biking: medium-light skin tone
      WOMAN_OFFICE_WORKER: string = #$D83D#$DC69#$200D#$D83D#$DCBC;  // woman office worker
      WOMAN_OFFICE_WORKER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DCBC;  // woman office worker: dark skin tone
      WOMAN_OFFICE_WORKER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DCBC;  // woman office worker: light skin tone
      WOMAN_OFFICE_WORKER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DCBC;  // woman office worker: medium skin tone
      WOMAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DCBC;  // woman office worker: medium-dark skin tone
      WOMAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DCBC;  // woman office worker: medium-light skin tone
      WOMAN_PILOT: string = #$D83D#$DC69#$200D#$2708#$FE0F;  // woman pilot
      WOMAN_PILOT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$2708#$FE0F;  // woman pilot: dark skin tone
      WOMAN_PILOT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$2708#$FE0F;  // woman pilot: light skin tone
      WOMAN_PILOT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$2708#$FE0F;  // woman pilot: medium skin tone
      WOMAN_PILOT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$2708#$FE0F;  // woman pilot: medium-dark skin tone
      WOMAN_PILOT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$2708#$FE0F;  // woman pilot: medium-light skin tone
      WOMAN_PLAYING_HANDBALL: string = #$D83E#$DD3E#$200D#$2640#$FE0F;  // woman playing handball
      WOMAN_PLAYING_HANDBALL_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman playing handball: dark skin tone
      WOMAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman playing handball: light skin tone
      WOMAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman playing handball: medium skin tone
      WOMAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman playing handball: medium-dark skin tone
      WOMAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3E#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman playing handball: medium-light skin tone
      WOMAN_PLAYING_WATER_POLO: string = #$D83E#$DD3D#$200D#$2640#$FE0F;  // woman playing water polo
      WOMAN_PLAYING_WATER_POLO_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman playing water polo: dark skin tone
      WOMAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman playing water polo: light skin tone
      WOMAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman playing water polo: medium skin tone
      WOMAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman playing water polo: medium-dark skin tone
      WOMAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD3D#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman playing water polo: medium-light skin tone
      WOMAN_POLICE_OFFICER: string = #$D83D#$DC6E#$200D#$2640#$FE0F;  // woman police officer
      WOMAN_POLICE_OFFICER_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman police officer: dark skin tone
      WOMAN_POLICE_OFFICER_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman police officer: light skin tone
      WOMAN_POLICE_OFFICER_MEDIUM_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman police officer: medium skin tone
      WOMAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman police officer: medium-dark skin tone
      WOMAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6E#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman police officer: medium-light skin tone
      WOMAN_POUTING: string = #$D83D#$DE4E#$200D#$2640#$FE0F;  // woman pouting
      WOMAN_POUTING_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman pouting: dark skin tone
      WOMAN_POUTING_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman pouting: light skin tone
      WOMAN_POUTING_MEDIUM_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman pouting: medium skin tone
      WOMAN_POUTING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman pouting: medium-dark skin tone
      WOMAN_POUTING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4E#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman pouting: medium-light skin tone
      WOMAN_RAISING_HAND: string = #$D83D#$DE4B#$200D#$2640#$FE0F;  // woman raising hand
      WOMAN_RAISING_HAND_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman raising hand: dark skin tone
      WOMAN_RAISING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman raising hand: light skin tone
      WOMAN_RAISING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman raising hand: medium skin tone
      WOMAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman raising hand: medium-dark skin tone
      WOMAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DE4B#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman raising hand: medium-light skin tone
      WOMAN_ROWING_BOAT: string = #$D83D#$DEA3#$200D#$2640#$FE0F;  // woman rowing boat
      WOMAN_ROWING_BOAT_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman rowing boat: dark skin tone
      WOMAN_ROWING_BOAT_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman rowing boat: light skin tone
      WOMAN_ROWING_BOAT_MEDIUM_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman rowing boat: medium skin tone
      WOMAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman rowing boat: medium-dark skin tone
      WOMAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEA3#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman rowing boat: medium-light skin tone
      WOMAN_RUNNING: string = #$D83C#$DFC3#$200D#$2640#$FE0F;  // woman running
      WOMAN_RUNNING_FACING_RIGHT: string = #$D83C#$DFC3#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right
      WOMAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right: dark skin tone
      WOMAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right: light skin tone
      WOMAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right: medium skin tone
      WOMAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right: medium-dark skin tone
      WOMAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman running facing right: medium-light skin tone
      WOMAN_RUNNING_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman running: dark skin tone
      WOMAN_RUNNING_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman running: light skin tone
      WOMAN_RUNNING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman running: medium skin tone
      WOMAN_RUNNING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman running: medium-dark skin tone
      WOMAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC3#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman running: medium-light skin tone
      WOMAN_SCIENTIST: string = #$D83D#$DC69#$200D#$D83D#$DD2C;  // woman scientist
      WOMAN_SCIENTIST_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DD2C;  // woman scientist: dark skin tone
      WOMAN_SCIENTIST_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DD2C;  // woman scientist: light skin tone
      WOMAN_SCIENTIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DD2C;  // woman scientist: medium skin tone
      WOMAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DD2C;  // woman scientist: medium-dark skin tone
      WOMAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DD2C;  // woman scientist: medium-light skin tone
      WOMAN_SHRUGGING: string = #$D83E#$DD37#$200D#$2640#$FE0F;  // woman shrugging
      WOMAN_SHRUGGING_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman shrugging: dark skin tone
      WOMAN_SHRUGGING_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman shrugging: light skin tone
      WOMAN_SHRUGGING_MEDIUM_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman shrugging: medium skin tone
      WOMAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman shrugging: medium-dark skin tone
      WOMAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DD37#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman shrugging: medium-light skin tone
      WOMAN_SINGER: string = #$D83D#$DC69#$200D#$D83C#$DFA4;  // woman singer
      WOMAN_SINGER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DFA4;  // woman singer: dark skin tone
      WOMAN_SINGER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DFA4;  // woman singer: light skin tone
      WOMAN_SINGER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DFA4;  // woman singer: medium skin tone
      WOMAN_SINGER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DFA4;  // woman singer: medium-dark skin tone
      WOMAN_SINGER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DFA4;  // woman singer: medium-light skin tone
      WOMAN_STANDING: string = #$D83E#$DDCD#$200D#$2640#$FE0F;  // woman standing
      WOMAN_STANDING_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman standing: dark skin tone
      WOMAN_STANDING_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman standing: light skin tone
      WOMAN_STANDING_MEDIUM_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman standing: medium skin tone
      WOMAN_STANDING_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman standing: medium-dark skin tone
      WOMAN_STANDING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDCD#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman standing: medium-light skin tone
      WOMAN_STUDENT: string = #$D83D#$DC69#$200D#$D83C#$DF93;  // woman student
      WOMAN_STUDENT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DF93;  // woman student: dark skin tone
      WOMAN_STUDENT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DF93;  // woman student: light skin tone
      WOMAN_STUDENT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DF93;  // woman student: medium skin tone
      WOMAN_STUDENT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DF93;  // woman student: medium-dark skin tone
      WOMAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DF93;  // woman student: medium-light skin tone
      WOMAN_SUPERHERO: string = #$D83E#$DDB8#$200D#$2640#$FE0F;  // woman superhero
      WOMAN_SUPERHERO_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman superhero: dark skin tone
      WOMAN_SUPERHERO_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman superhero: light skin tone
      WOMAN_SUPERHERO_MEDIUM_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman superhero: medium skin tone
      WOMAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman superhero: medium-dark skin tone
      WOMAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB8#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman superhero: medium-light skin tone
      WOMAN_SUPERVILLAIN: string = #$D83E#$DDB9#$200D#$2640#$FE0F;  // woman supervillain
      WOMAN_SUPERVILLAIN_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman supervillain: dark skin tone
      WOMAN_SUPERVILLAIN_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman supervillain: light skin tone
      WOMAN_SUPERVILLAIN_MEDIUM_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman supervillain: medium skin tone
      WOMAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman supervillain: medium-dark skin tone
      WOMAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDB9#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman supervillain: medium-light skin tone
      WOMAN_SURFING: string = #$D83C#$DFC4#$200D#$2640#$FE0F;  // woman surfing
      WOMAN_SURFING_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman surfing: dark skin tone
      WOMAN_SURFING_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman surfing: light skin tone
      WOMAN_SURFING_MEDIUM_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman surfing: medium skin tone
      WOMAN_SURFING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman surfing: medium-dark skin tone
      WOMAN_SURFING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFC4#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman surfing: medium-light skin tone
      WOMAN_SWIMMING: string = #$D83C#$DFCA#$200D#$2640#$FE0F;  // woman swimming
      WOMAN_SWIMMING_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman swimming: dark skin tone
      WOMAN_SWIMMING_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman swimming: light skin tone
      WOMAN_SWIMMING_MEDIUM_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman swimming: medium skin tone
      WOMAN_SWIMMING_MEDIUM_DARK_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman swimming: medium-dark skin tone
      WOMAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83C#$DFCA#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman swimming: medium-light skin tone
      WOMAN_TEACHER: string = #$D83D#$DC69#$200D#$D83C#$DFEB;  // woman teacher
      WOMAN_TEACHER_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83C#$DFEB;  // woman teacher: dark skin tone
      WOMAN_TEACHER_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83C#$DFEB;  // woman teacher: light skin tone
      WOMAN_TEACHER_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83C#$DFEB;  // woman teacher: medium skin tone
      WOMAN_TEACHER_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83C#$DFEB;  // woman teacher: medium-dark skin tone
      WOMAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83C#$DFEB;  // woman teacher: medium-light skin tone
      WOMAN_TECHNOLOGIST: string = #$D83D#$DC69#$200D#$D83D#$DCBB;  // woman technologist
      WOMAN_TECHNOLOGIST_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83D#$DCBB;  // woman technologist: dark skin tone
      WOMAN_TECHNOLOGIST_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83D#$DCBB;  // woman technologist: light skin tone
      WOMAN_TECHNOLOGIST_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83D#$DCBB;  // woman technologist: medium skin tone
      WOMAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83D#$DCBB;  // woman technologist: medium-dark skin tone
      WOMAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83D#$DCBB;  // woman technologist: medium-light skin tone
      WOMAN_TIPPING_HAND: string = #$D83D#$DC81#$200D#$2640#$FE0F;  // woman tipping hand
      WOMAN_TIPPING_HAND_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman tipping hand: dark skin tone
      WOMAN_TIPPING_HAND_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman tipping hand: light skin tone
      WOMAN_TIPPING_HAND_MEDIUM_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman tipping hand: medium skin tone
      WOMAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman tipping hand: medium-dark skin tone
      WOMAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC81#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman tipping hand: medium-light skin tone
      WOMAN_VAMPIRE: string = #$D83E#$DDDB#$200D#$2640#$FE0F;  // woman vampire
      WOMAN_VAMPIRE_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman vampire: dark skin tone
      WOMAN_VAMPIRE_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman vampire: light skin tone
      WOMAN_VAMPIRE_MEDIUM_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman vampire: medium skin tone
      WOMAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman vampire: medium-dark skin tone
      WOMAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDDB#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman vampire: medium-light skin tone
      WOMAN_WALKING: string = #$D83D#$DEB6#$200D#$2640#$FE0F;  // woman walking
      WOMAN_WALKING_FACING_RIGHT: string = #$D83D#$DEB6#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right
      WOMAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right: dark skin tone
      WOMAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right: light skin tone
      WOMAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right: medium skin tone
      WOMAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right: medium-dark skin tone
      WOMAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC#$200D#$2640#$FE0F#$200D#$27A1#$FE0F;  // woman walking facing right: medium-light skin tone
      WOMAN_WALKING_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman walking: dark skin tone
      WOMAN_WALKING_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman walking: light skin tone
      WOMAN_WALKING_MEDIUM_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman walking: medium skin tone
      WOMAN_WALKING_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman walking: medium-dark skin tone
      WOMAN_WALKING_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DEB6#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman walking: medium-light skin tone
      WOMAN_WEARING_TURBAN: string = #$D83D#$DC73#$200D#$2640#$FE0F;  // woman wearing turban
      WOMAN_WEARING_TURBAN_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman wearing turban: dark skin tone
      WOMAN_WEARING_TURBAN_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman wearing turban: light skin tone
      WOMAN_WEARING_TURBAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman wearing turban: medium skin tone
      WOMAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman wearing turban: medium-dark skin tone
      WOMAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC73#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman wearing turban: medium-light skin tone
      WOMAN_WITH_HEADSCARF_DARK_SKIN_TONE: string = #$D83E#$DDD5#$D83C#$DFFF;  // woman with headscarf: dark skin tone
      WOMAN_WITH_HEADSCARF_LIGHT_SKIN_TONE: string = #$D83E#$DDD5#$D83C#$DFFB;  // woman with headscarf: light skin tone
      WOMAN_WITH_HEADSCARF_MEDIUM_SKIN_TONE: string = #$D83E#$DDD5#$D83C#$DFFD;  // woman with headscarf: medium skin tone
      WOMAN_WITH_HEADSCARF_MEDIUM_DARK_SKIN_TONE: string = #$D83E#$DDD5#$D83C#$DFFE;  // woman with headscarf: medium-dark skin tone
      WOMAN_WITH_HEADSCARF_MEDIUM_LIGHT_SKIN_TONE: string = #$D83E#$DDD5#$D83C#$DFFC;  // woman with headscarf: medium-light skin tone
      WOMAN_WITH_VEIL: string = #$D83D#$DC70#$200D#$2640#$FE0F;  // woman with veil
      WOMAN_WITH_VEIL_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman with veil: dark skin tone
      WOMAN_WITH_VEIL_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman with veil: light skin tone
      WOMAN_WITH_VEIL_MEDIUM_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman with veil: medium skin tone
      WOMAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman with veil: medium-dark skin tone
      WOMAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC70#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman with veil: medium-light skin tone
      WOMAN_WITH_WHITE_CANE: string = #$D83D#$DC69#$200D#$D83E#$DDAF;  // woman with white cane
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT: string = #$D83D#$DC69#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right: dark skin tone
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right: light skin tone
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right: medium skin tone
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right: medium-dark skin tone
      WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDAF#$200D#$27A1#$FE0F;  // woman with white cane facing right: medium-light skin tone
      WOMAN_WITH_WHITE_CANE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDAF;  // woman with white cane: dark skin tone
      WOMAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDAF;  // woman with white cane: light skin tone
      WOMAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDAF;  // woman with white cane: medium skin tone
      WOMAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDAF;  // woman with white cane: medium-dark skin tone
      WOMAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDAF;  // woman with white cane: medium-light skin tone
      WOMAN_ZOMBIE: string = #$D83E#$DDDF#$200D#$2640#$FE0F;  // woman zombie
      WOMAN_BALD: string = #$D83D#$DC69#$200D#$D83E#$DDB2;  // woman: bald
      WOMAN_BEARD: string = #$D83E#$DDD4#$200D#$2640#$FE0F;  // woman: beard
      WOMAN_BLOND_HAIR: string = #$D83D#$DC71#$200D#$2640#$FE0F;  // woman: blond hair
      WOMAN_CURLY_HAIR: string = #$D83D#$DC69#$200D#$D83E#$DDB1;  // woman: curly hair
      WOMAN_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF;  // woman: dark skin tone
      WOMAN_DARK_SKIN_TONE_BALD: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDB2;  // woman: dark skin tone, bald
      WOMAN_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman: dark skin tone, beard
      WOMAN_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFF#$200D#$2640#$FE0F;  // woman: dark skin tone, blond hair
      WOMAN_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDB1;  // woman: dark skin tone, curly hair
      WOMAN_DARK_SKIN_TONE_RED_HAIR: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDB0;  // woman: dark skin tone, red hair
      WOMAN_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DDB3;  // woman: dark skin tone, white hair
      WOMAN_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB;  // woman: light skin tone
      WOMAN_LIGHT_SKIN_TONE_BALD: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDB2;  // woman: light skin tone, bald
      WOMAN_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman: light skin tone, beard
      WOMAN_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFB#$200D#$2640#$FE0F;  // woman: light skin tone, blond hair
      WOMAN_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDB1;  // woman: light skin tone, curly hair
      WOMAN_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDB0;  // woman: light skin tone, red hair
      WOMAN_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DDB3;  // woman: light skin tone, white hair
      WOMAN_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD;  // woman: medium skin tone
      WOMAN_MEDIUM_SKIN_TONE_BALD: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDB2;  // woman: medium skin tone, bald
      WOMAN_MEDIUM_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman: medium skin tone, beard
      WOMAN_MEDIUM_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFD#$200D#$2640#$FE0F;  // woman: medium skin tone, blond hair
      WOMAN_MEDIUM_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDB1;  // woman: medium skin tone, curly hair
      WOMAN_MEDIUM_SKIN_TONE_RED_HAIR: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDB0;  // woman: medium skin tone, red hair
      WOMAN_MEDIUM_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DDB3;  // woman: medium skin tone, white hair
      WOMAN_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE;  // woman: medium-dark skin tone
      WOMAN_MEDIUM_DARK_SKIN_TONE_BALD: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDB2;  // woman: medium-dark skin tone, bald
      WOMAN_MEDIUM_DARK_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman: medium-dark skin tone, beard
      WOMAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFE#$200D#$2640#$FE0F;  // woman: medium-dark skin tone, blond hair
      WOMAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDB1;  // woman: medium-dark skin tone, curly hair
      WOMAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDB0;  // woman: medium-dark skin tone, red hair
      WOMAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DDB3;  // woman: medium-dark skin tone, white hair
      WOMAN_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC;  // woman: medium-light skin tone
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_BALD: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDB2;  // woman: medium-light skin tone, bald
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_BEARD: string = #$D83E#$DDD4#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman: medium-light skin tone, beard
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR: string = #$D83D#$DC71#$D83C#$DFFC#$200D#$2640#$FE0F;  // woman: medium-light skin tone, blond hair
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDB1;  // woman: medium-light skin tone, curly hair
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDB0;  // woman: medium-light skin tone, red hair
      WOMAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DDB3;  // woman: medium-light skin tone, white hair
      WOMAN_RED_HAIR: string = #$D83D#$DC69#$200D#$D83E#$DDB0;  // woman: red hair
      WOMAN_WHITE_HAIR: string = #$D83D#$DC69#$200D#$D83E#$DDB3;  // woman: white hair
      WOMEN_HOLDING_HANDS_DARK_SKIN_TONE: string = #$D83D#$DC6D#$D83C#$DFFF;  // women holding hands: dark skin tone
      WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFB;  // women holding hands: dark skin tone, light skin tone
      WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFD;  // women holding hands: dark skin tone, medium skin tone
      WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFE;  // women holding hands: dark skin tone, medium-dark skin tone
      WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFF#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFC;  // women holding hands: dark skin tone, medium-light skin tone
      WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE: string = #$D83D#$DC6D#$D83C#$DFFB;  // women holding hands: light skin tone
      WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFF;  // women holding hands: light skin tone, dark skin tone
      WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFD;  // women holding hands: light skin tone, medium skin tone
      WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFE;  // women holding hands: light skin tone, medium-dark skin tone
      WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFB#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFC;  // women holding hands: light skin tone, medium-light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE: string = #$D83D#$DC6D#$D83C#$DFFD;  // women holding hands: medium skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFF;  // women holding hands: medium skin tone, dark skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFB;  // women holding hands: medium skin tone, light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFE;  // women holding hands: medium skin tone, medium-dark skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFD#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFC;  // women holding hands: medium skin tone, medium-light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC6D#$D83C#$DFFE;  // women holding hands: medium-dark skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFF;  // women holding hands: medium-dark skin tone, dark skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFB;  // women holding hands: medium-dark skin tone, light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFD;  // women holding hands: medium-dark skin tone, medium skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFE#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFC;  // women holding hands: medium-dark skin tone, medium-light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE: string = #$D83D#$DC6D#$D83C#$DFFC;  // women holding hands: medium-light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFF;  // women holding hands: medium-light skin tone, dark skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFB;  // women holding hands: medium-light skin tone, light skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFD;  // women holding hands: medium-light skin tone, medium skin tone
      WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE: string = #$D83D#$DC69#$D83C#$DFFC#$200D#$D83E#$DD1D#$200D#$D83D#$DC69#$D83C#$DFFE;  // women holding hands: medium-light skin tone, medium-dark skin tone
      WOMEN_WITH_BUNNY_EARS: string = #$D83D#$DC6F#$200D#$2640#$FE0F;  // women with bunny ears
      WOMEN_WRESTLING: string = #$D83E#$DD3C#$200D#$2640#$FE0F;  // women wrestling
      WRITING_HAND_DARK_SKIN_TONE: string = #$270D#$D83C#$DFFF;  // writing hand: dark skin tone
      WRITING_HAND_LIGHT_SKIN_TONE: string = #$270D#$D83C#$DFFB;  // writing hand: light skin tone
      WRITING_HAND_MEDIUM_SKIN_TONE: string = #$270D#$D83C#$DFFD;  // writing hand: medium skin tone
      WRITING_HAND_MEDIUM_DARK_SKIN_TONE: string = #$270D#$D83C#$DFFE;  // writing hand: medium-dark skin tone
      WRITING_HAND_MEDIUM_LIGHT_SKIN_TONE: string = #$270D#$D83C#$DFFC;  // writing hand: medium-light skin tone
  end;

const TotalEmojiCount = 2385;

function FindEmojiByName(const Name: string): string;
function GetAllEmoji: TArray<string>;
function GetAllEmojiNames: TArray<string>;

implementation

function FindEmojiByName(const Name: string): string;
begin
  if SameText(Name, 'Mrs. Claus: dark skin tone') then Exit(TEmoji.MRS_CLAUS_DARK_SKIN_TONE);
  if SameText(Name, 'Mrs. Claus: light skin tone') then Exit(TEmoji.MRS_CLAUS_LIGHT_SKIN_TONE);
  if SameText(Name, 'Mrs. Claus: medium skin tone') then Exit(TEmoji.MRS_CLAUS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'Mrs. Claus: medium-dark skin tone') then Exit(TEmoji.MRS_CLAUS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'Mrs. Claus: medium-light skin tone') then Exit(TEmoji.MRS_CLAUS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'Mx Claus') then Exit(TEmoji.MX_CLAUS);
  if SameText(Name, 'Mx Claus: dark skin tone') then Exit(TEmoji.MX_CLAUS_DARK_SKIN_TONE);
  if SameText(Name, 'Mx Claus: light skin tone') then Exit(TEmoji.MX_CLAUS_LIGHT_SKIN_TONE);
  if SameText(Name, 'Mx Claus: medium skin tone') then Exit(TEmoji.MX_CLAUS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'Mx Claus: medium-dark skin tone') then Exit(TEmoji.MX_CLAUS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'Mx Claus: medium-light skin tone') then Exit(TEmoji.MX_CLAUS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'OK hand: dark skin tone') then Exit(TEmoji.OK_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'OK hand: light skin tone') then Exit(TEmoji.OK_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'OK hand: medium skin tone') then Exit(TEmoji.OK_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'OK hand: medium-dark skin tone') then Exit(TEmoji.OK_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'OK hand: medium-light skin tone') then Exit(TEmoji.OK_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'Santa Claus: dark skin tone') then Exit(TEmoji.SANTA_CLAUS_DARK_SKIN_TONE);
  if SameText(Name, 'Santa Claus: light skin tone') then Exit(TEmoji.SANTA_CLAUS_LIGHT_SKIN_TONE);
  if SameText(Name, 'Santa Claus: medium skin tone') then Exit(TEmoji.SANTA_CLAUS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'Santa Claus: medium-dark skin tone') then Exit(TEmoji.SANTA_CLAUS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'Santa Claus: medium-light skin tone') then Exit(TEmoji.SANTA_CLAUS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'artist') then Exit(TEmoji.ARTIST);
  if SameText(Name, 'artist: dark skin tone') then Exit(TEmoji.ARTIST_DARK_SKIN_TONE);
  if SameText(Name, 'artist: light skin tone') then Exit(TEmoji.ARTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'artist: medium skin tone') then Exit(TEmoji.ARTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'artist: medium-dark skin tone') then Exit(TEmoji.ARTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'artist: medium-light skin tone') then Exit(TEmoji.ARTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'astronaut') then Exit(TEmoji.ASTRONAUT);
  if SameText(Name, 'astronaut: dark skin tone') then Exit(TEmoji.ASTRONAUT_DARK_SKIN_TONE);
  if SameText(Name, 'astronaut: light skin tone') then Exit(TEmoji.ASTRONAUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'astronaut: medium skin tone') then Exit(TEmoji.ASTRONAUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'astronaut: medium-dark skin tone') then Exit(TEmoji.ASTRONAUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'astronaut: medium-light skin tone') then Exit(TEmoji.ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'baby angel: dark skin tone') then Exit(TEmoji.BABY_ANGEL_DARK_SKIN_TONE);
  if SameText(Name, 'baby angel: light skin tone') then Exit(TEmoji.BABY_ANGEL_LIGHT_SKIN_TONE);
  if SameText(Name, 'baby angel: medium skin tone') then Exit(TEmoji.BABY_ANGEL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'baby angel: medium-dark skin tone') then Exit(TEmoji.BABY_ANGEL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'baby angel: medium-light skin tone') then Exit(TEmoji.BABY_ANGEL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'baby: dark skin tone') then Exit(TEmoji.BABY_DARK_SKIN_TONE);
  if SameText(Name, 'baby: light skin tone') then Exit(TEmoji.BABY_LIGHT_SKIN_TONE);
  if SameText(Name, 'baby: medium skin tone') then Exit(TEmoji.BABY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'baby: medium-dark skin tone') then Exit(TEmoji.BABY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'baby: medium-light skin tone') then Exit(TEmoji.BABY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing down: dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_DOWN_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing down: light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_DOWN_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing down: medium skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'backhand index pointing down: medium-dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing down: medium-light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing left: dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_LEFT_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing left: light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_LEFT_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing left: medium skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'backhand index pointing left: medium-dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing left: medium-light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing right: dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing right: light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing right: medium skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'backhand index pointing right: medium-dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing right: medium-light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing up: dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_UP_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing up: light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_UP_LIGHT_SKIN_TONE);
  if SameText(Name, 'backhand index pointing up: medium skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_SKIN_TONE);
  if SameText(Name, 'backhand index pointing up: medium-dark skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'backhand index pointing up: medium-light skin tone') then Exit(TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'black bird') then Exit(TEmoji.BLACK_BIRD);
  if SameText(Name, 'black cat') then Exit(TEmoji.BLACK_CAT);
  if SameText(Name, 'boy: dark skin tone') then Exit(TEmoji.BOY_DARK_SKIN_TONE);
  if SameText(Name, 'boy: light skin tone') then Exit(TEmoji.BOY_LIGHT_SKIN_TONE);
  if SameText(Name, 'boy: medium skin tone') then Exit(TEmoji.BOY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'boy: medium-dark skin tone') then Exit(TEmoji.BOY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'boy: medium-light skin tone') then Exit(TEmoji.BOY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'breast-feeding: dark skin tone') then Exit(TEmoji.BREAST_FEEDING_DARK_SKIN_TONE);
  if SameText(Name, 'breast-feeding: light skin tone') then Exit(TEmoji.BREAST_FEEDING_LIGHT_SKIN_TONE);
  if SameText(Name, 'breast-feeding: medium skin tone') then Exit(TEmoji.BREAST_FEEDING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'breast-feeding: medium-dark skin tone') then Exit(TEmoji.BREAST_FEEDING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'breast-feeding: medium-light skin tone') then Exit(TEmoji.BREAST_FEEDING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'broken chain') then Exit(TEmoji.BROKEN_CHAIN);
  if SameText(Name, 'brown mushroom') then Exit(TEmoji.BROWN_MUSHROOM);
  if SameText(Name, 'call me hand: dark skin tone') then Exit(TEmoji.CALL_ME_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'call me hand: light skin tone') then Exit(TEmoji.CALL_ME_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'call me hand: medium skin tone') then Exit(TEmoji.CALL_ME_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'call me hand: medium-dark skin tone') then Exit(TEmoji.CALL_ME_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'call me hand: medium-light skin tone') then Exit(TEmoji.CALL_ME_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'child: dark skin tone') then Exit(TEmoji.CHILD_DARK_SKIN_TONE);
  if SameText(Name, 'child: light skin tone') then Exit(TEmoji.CHILD_LIGHT_SKIN_TONE);
  if SameText(Name, 'child: medium skin tone') then Exit(TEmoji.CHILD_MEDIUM_SKIN_TONE);
  if SameText(Name, 'child: medium-dark skin tone') then Exit(TEmoji.CHILD_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'child: medium-light skin tone') then Exit(TEmoji.CHILD_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'clapping hands: dark skin tone') then Exit(TEmoji.CLAPPING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'clapping hands: light skin tone') then Exit(TEmoji.CLAPPING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'clapping hands: medium skin tone') then Exit(TEmoji.CLAPPING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'clapping hands: medium-dark skin tone') then Exit(TEmoji.CLAPPING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'clapping hands: medium-light skin tone') then Exit(TEmoji.CLAPPING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'construction worker: dark skin tone') then Exit(TEmoji.CONSTRUCTION_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'construction worker: light skin tone') then Exit(TEmoji.CONSTRUCTION_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'construction worker: medium skin tone') then Exit(TEmoji.CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'construction worker: medium-dark skin tone') then Exit(TEmoji.CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'construction worker: medium-light skin tone') then Exit(TEmoji.CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'cook') then Exit(TEmoji.COOK);
  if SameText(Name, 'cook: dark skin tone') then Exit(TEmoji.COOK_DARK_SKIN_TONE);
  if SameText(Name, 'cook: light skin tone') then Exit(TEmoji.COOK_LIGHT_SKIN_TONE);
  if SameText(Name, 'cook: medium skin tone') then Exit(TEmoji.COOK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'cook: medium-dark skin tone') then Exit(TEmoji.COOK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'cook: medium-light skin tone') then Exit(TEmoji.COOK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN);
  if SameText(Name, 'couple with heart: man, man, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, dark skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, light skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-dark skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-light skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: man, man, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, dark skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, light skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-dark skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-light skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: person, person, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN);
  if SameText(Name, 'couple with heart: woman, man, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, dark skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, light skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-dark skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-light skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, man, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN);
  if SameText(Name, 'couple with heart: woman, woman, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, dark skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, light skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-dark skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-dark skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-dark skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-light skin tone, dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-light skin tone, light skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-light skin tone, medium skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'couple with heart: woman, woman, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'crossed fingers: dark skin tone') then Exit(TEmoji.CROSSED_FINGERS_DARK_SKIN_TONE);
  if SameText(Name, 'crossed fingers: light skin tone') then Exit(TEmoji.CROSSED_FINGERS_LIGHT_SKIN_TONE);
  if SameText(Name, 'crossed fingers: medium skin tone') then Exit(TEmoji.CROSSED_FINGERS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'crossed fingers: medium-dark skin tone') then Exit(TEmoji.CROSSED_FINGERS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'crossed fingers: medium-light skin tone') then Exit(TEmoji.CROSSED_FINGERS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf man') then Exit(TEmoji.DEAF_MAN);
  if SameText(Name, 'deaf man: dark skin tone') then Exit(TEmoji.DEAF_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'deaf man: light skin tone') then Exit(TEmoji.DEAF_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf man: medium skin tone') then Exit(TEmoji.DEAF_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'deaf man: medium-dark skin tone') then Exit(TEmoji.DEAF_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'deaf man: medium-light skin tone') then Exit(TEmoji.DEAF_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf person: dark skin tone') then Exit(TEmoji.DEAF_PERSON_DARK_SKIN_TONE);
  if SameText(Name, 'deaf person: light skin tone') then Exit(TEmoji.DEAF_PERSON_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf person: medium skin tone') then Exit(TEmoji.DEAF_PERSON_MEDIUM_SKIN_TONE);
  if SameText(Name, 'deaf person: medium-dark skin tone') then Exit(TEmoji.DEAF_PERSON_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'deaf person: medium-light skin tone') then Exit(TEmoji.DEAF_PERSON_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf woman') then Exit(TEmoji.DEAF_WOMAN);
  if SameText(Name, 'deaf woman: dark skin tone') then Exit(TEmoji.DEAF_WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'deaf woman: light skin tone') then Exit(TEmoji.DEAF_WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'deaf woman: medium skin tone') then Exit(TEmoji.DEAF_WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'deaf woman: medium-dark skin tone') then Exit(TEmoji.DEAF_WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'deaf woman: medium-light skin tone') then Exit(TEmoji.DEAF_WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'detective: dark skin tone') then Exit(TEmoji.DETECTIVE_DARK_SKIN_TONE);
  if SameText(Name, 'detective: light skin tone') then Exit(TEmoji.DETECTIVE_LIGHT_SKIN_TONE);
  if SameText(Name, 'detective: medium skin tone') then Exit(TEmoji.DETECTIVE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'detective: medium-dark skin tone') then Exit(TEmoji.DETECTIVE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'detective: medium-light skin tone') then Exit(TEmoji.DETECTIVE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'ear with hearing aid: dark skin tone') then Exit(TEmoji.EAR_WITH_HEARING_AID_DARK_SKIN_TONE);
  if SameText(Name, 'ear with hearing aid: light skin tone') then Exit(TEmoji.EAR_WITH_HEARING_AID_LIGHT_SKIN_TONE);
  if SameText(Name, 'ear with hearing aid: medium skin tone') then Exit(TEmoji.EAR_WITH_HEARING_AID_MEDIUM_SKIN_TONE);
  if SameText(Name, 'ear with hearing aid: medium-dark skin tone') then Exit(TEmoji.EAR_WITH_HEARING_AID_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'ear with hearing aid: medium-light skin tone') then Exit(TEmoji.EAR_WITH_HEARING_AID_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'ear: dark skin tone') then Exit(TEmoji.EAR_DARK_SKIN_TONE);
  if SameText(Name, 'ear: light skin tone') then Exit(TEmoji.EAR_LIGHT_SKIN_TONE);
  if SameText(Name, 'ear: medium skin tone') then Exit(TEmoji.EAR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'ear: medium-dark skin tone') then Exit(TEmoji.EAR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'ear: medium-light skin tone') then Exit(TEmoji.EAR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'elf: dark skin tone') then Exit(TEmoji.ELF_DARK_SKIN_TONE);
  if SameText(Name, 'elf: light skin tone') then Exit(TEmoji.ELF_LIGHT_SKIN_TONE);
  if SameText(Name, 'elf: medium skin tone') then Exit(TEmoji.ELF_MEDIUM_SKIN_TONE);
  if SameText(Name, 'elf: medium-dark skin tone') then Exit(TEmoji.ELF_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'elf: medium-light skin tone') then Exit(TEmoji.ELF_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'eye in speech bubble') then Exit(TEmoji.EYE_IN_SPEECH_BUBBLE);
  if SameText(Name, 'face exhaling') then Exit(TEmoji.FACE_EXHALING);
  if SameText(Name, 'face in clouds') then Exit(TEmoji.FACE_IN_CLOUDS);
  if SameText(Name, 'face with spiral eyes') then Exit(TEmoji.FACE_WITH_SPIRAL_EYES);
  if SameText(Name, 'factory worker') then Exit(TEmoji.FACTORY_WORKER);
  if SameText(Name, 'factory worker: dark skin tone') then Exit(TEmoji.FACTORY_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'factory worker: light skin tone') then Exit(TEmoji.FACTORY_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'factory worker: medium skin tone') then Exit(TEmoji.FACTORY_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'factory worker: medium-dark skin tone') then Exit(TEmoji.FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'factory worker: medium-light skin tone') then Exit(TEmoji.FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'fairy: dark skin tone') then Exit(TEmoji.FAIRY_DARK_SKIN_TONE);
  if SameText(Name, 'fairy: light skin tone') then Exit(TEmoji.FAIRY_LIGHT_SKIN_TONE);
  if SameText(Name, 'fairy: medium skin tone') then Exit(TEmoji.FAIRY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'fairy: medium-dark skin tone') then Exit(TEmoji.FAIRY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'fairy: medium-light skin tone') then Exit(TEmoji.FAIRY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'family: adult, adult, child') then Exit(TEmoji.FAMILY_ADULT_ADULT_CHILD);
  if SameText(Name, 'family: adult, adult, child, child') then Exit(TEmoji.FAMILY_ADULT_ADULT_CHILD_CHILD);
  if SameText(Name, 'family: adult, child') then Exit(TEmoji.FAMILY_ADULT_CHILD);
  if SameText(Name, 'family: adult, child, child') then Exit(TEmoji.FAMILY_ADULT_CHILD_CHILD);
  if SameText(Name, 'family: man, boy') then Exit(TEmoji.FAMILY_MAN_BOY);
  if SameText(Name, 'family: man, boy, boy') then Exit(TEmoji.FAMILY_MAN_BOY_BOY);
  if SameText(Name, 'family: man, girl') then Exit(TEmoji.FAMILY_MAN_GIRL);
  if SameText(Name, 'family: man, girl, boy') then Exit(TEmoji.FAMILY_MAN_GIRL_BOY);
  if SameText(Name, 'family: man, girl, girl') then Exit(TEmoji.FAMILY_MAN_GIRL_GIRL);
  if SameText(Name, 'family: man, man, boy') then Exit(TEmoji.FAMILY_MAN_MAN_BOY);
  if SameText(Name, 'family: man, man, boy, boy') then Exit(TEmoji.FAMILY_MAN_MAN_BOY_BOY);
  if SameText(Name, 'family: man, man, girl') then Exit(TEmoji.FAMILY_MAN_MAN_GIRL);
  if SameText(Name, 'family: man, man, girl, boy') then Exit(TEmoji.FAMILY_MAN_MAN_GIRL_BOY);
  if SameText(Name, 'family: man, man, girl, girl') then Exit(TEmoji.FAMILY_MAN_MAN_GIRL_GIRL);
  if SameText(Name, 'family: man, woman, boy') then Exit(TEmoji.FAMILY_MAN_WOMAN_BOY);
  if SameText(Name, 'family: man, woman, boy, boy') then Exit(TEmoji.FAMILY_MAN_WOMAN_BOY_BOY);
  if SameText(Name, 'family: man, woman, girl') then Exit(TEmoji.FAMILY_MAN_WOMAN_GIRL);
  if SameText(Name, 'family: man, woman, girl, boy') then Exit(TEmoji.FAMILY_MAN_WOMAN_GIRL_BOY);
  if SameText(Name, 'family: man, woman, girl, girl') then Exit(TEmoji.FAMILY_MAN_WOMAN_GIRL_GIRL);
  if SameText(Name, 'family: woman, boy') then Exit(TEmoji.FAMILY_WOMAN_BOY);
  if SameText(Name, 'family: woman, boy, boy') then Exit(TEmoji.FAMILY_WOMAN_BOY_BOY);
  if SameText(Name, 'family: woman, girl') then Exit(TEmoji.FAMILY_WOMAN_GIRL);
  if SameText(Name, 'family: woman, girl, boy') then Exit(TEmoji.FAMILY_WOMAN_GIRL_BOY);
  if SameText(Name, 'family: woman, girl, girl') then Exit(TEmoji.FAMILY_WOMAN_GIRL_GIRL);
  if SameText(Name, 'family: woman, woman, boy') then Exit(TEmoji.FAMILY_WOMAN_WOMAN_BOY);
  if SameText(Name, 'family: woman, woman, boy, boy') then Exit(TEmoji.FAMILY_WOMAN_WOMAN_BOY_BOY);
  if SameText(Name, 'family: woman, woman, girl') then Exit(TEmoji.FAMILY_WOMAN_WOMAN_GIRL);
  if SameText(Name, 'family: woman, woman, girl, boy') then Exit(TEmoji.FAMILY_WOMAN_WOMAN_GIRL_BOY);
  if SameText(Name, 'family: woman, woman, girl, girl') then Exit(TEmoji.FAMILY_WOMAN_WOMAN_GIRL_GIRL);
  if SameText(Name, 'farmer') then Exit(TEmoji.FARMER);
  if SameText(Name, 'farmer: dark skin tone') then Exit(TEmoji.FARMER_DARK_SKIN_TONE);
  if SameText(Name, 'farmer: light skin tone') then Exit(TEmoji.FARMER_LIGHT_SKIN_TONE);
  if SameText(Name, 'farmer: medium skin tone') then Exit(TEmoji.FARMER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'farmer: medium-dark skin tone') then Exit(TEmoji.FARMER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'farmer: medium-light skin tone') then Exit(TEmoji.FARMER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'firefighter') then Exit(TEmoji.FIREFIGHTER);
  if SameText(Name, 'firefighter: dark skin tone') then Exit(TEmoji.FIREFIGHTER_DARK_SKIN_TONE);
  if SameText(Name, 'firefighter: light skin tone') then Exit(TEmoji.FIREFIGHTER_LIGHT_SKIN_TONE);
  if SameText(Name, 'firefighter: medium skin tone') then Exit(TEmoji.FIREFIGHTER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'firefighter: medium-dark skin tone') then Exit(TEmoji.FIREFIGHTER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'firefighter: medium-light skin tone') then Exit(TEmoji.FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'flag: Afghanistan') then Exit(TEmoji.FLAG_AFGHANISTAN);
  if SameText(Name, 'flag: Albania') then Exit(TEmoji.FLAG_ALBANIA);
  if SameText(Name, 'flag: Algeria') then Exit(TEmoji.FLAG_ALGERIA);
  if SameText(Name, 'flag: American Samoa') then Exit(TEmoji.FLAG_AMERICAN_SAMOA);
  if SameText(Name, 'flag: Andorra') then Exit(TEmoji.FLAG_ANDORRA);
  if SameText(Name, 'flag: Angola') then Exit(TEmoji.FLAG_ANGOLA);
  if SameText(Name, 'flag: Anguilla') then Exit(TEmoji.FLAG_ANGUILLA);
  if SameText(Name, 'flag: Antarctica') then Exit(TEmoji.FLAG_ANTARCTICA);
  if SameText(Name, 'flag: Antigua & Barbuda') then Exit(TEmoji.FLAG_ANTIGUA_BARBUDA);
  if SameText(Name, 'flag: Argentina') then Exit(TEmoji.FLAG_ARGENTINA);
  if SameText(Name, 'flag: Armenia') then Exit(TEmoji.FLAG_ARMENIA);
  if SameText(Name, 'flag: Aruba') then Exit(TEmoji.FLAG_ARUBA);
  if SameText(Name, 'flag: Ascension Island') then Exit(TEmoji.FLAG_ASCENSION_ISLAND);
  if SameText(Name, 'flag: Australia') then Exit(TEmoji.FLAG_AUSTRALIA);
  if SameText(Name, 'flag: Austria') then Exit(TEmoji.FLAG_AUSTRIA);
  if SameText(Name, 'flag: Azerbaijan') then Exit(TEmoji.FLAG_AZERBAIJAN);
  if SameText(Name, 'flag: Bahamas') then Exit(TEmoji.FLAG_BAHAMAS);
  if SameText(Name, 'flag: Bahrain') then Exit(TEmoji.FLAG_BAHRAIN);
  if SameText(Name, 'flag: Bangladesh') then Exit(TEmoji.FLAG_BANGLADESH);
  if SameText(Name, 'flag: Barbados') then Exit(TEmoji.FLAG_BARBADOS);
  if SameText(Name, 'flag: Belarus') then Exit(TEmoji.FLAG_BELARUS);
  if SameText(Name, 'flag: Belgium') then Exit(TEmoji.FLAG_BELGIUM);
  if SameText(Name, 'flag: Belize') then Exit(TEmoji.FLAG_BELIZE);
  if SameText(Name, 'flag: Benin') then Exit(TEmoji.FLAG_BENIN);
  if SameText(Name, 'flag: Bermuda') then Exit(TEmoji.FLAG_BERMUDA);
  if SameText(Name, 'flag: Bhutan') then Exit(TEmoji.FLAG_BHUTAN);
  if SameText(Name, 'flag: Bolivia') then Exit(TEmoji.FLAG_BOLIVIA);
  if SameText(Name, 'flag: Bosnia & Herzegovina') then Exit(TEmoji.FLAG_BOSNIA_HERZEGOVINA);
  if SameText(Name, 'flag: Botswana') then Exit(TEmoji.FLAG_BOTSWANA);
  if SameText(Name, 'flag: Bouvet Island') then Exit(TEmoji.FLAG_BOUVET_ISLAND);
  if SameText(Name, 'flag: Brazil') then Exit(TEmoji.FLAG_BRAZIL);
  if SameText(Name, 'flag: British Indian Ocean Territory') then Exit(TEmoji.FLAG_BRITISH_INDIAN_OCEAN_TERRITORY);
  if SameText(Name, 'flag: British Virgin Islands') then Exit(TEmoji.FLAG_BRITISH_VIRGIN_ISLANDS);
  if SameText(Name, 'flag: Brunei') then Exit(TEmoji.FLAG_BRUNEI);
  if SameText(Name, 'flag: Bulgaria') then Exit(TEmoji.FLAG_BULGARIA);
  if SameText(Name, 'flag: Burkina Faso') then Exit(TEmoji.FLAG_BURKINA_FASO);
  if SameText(Name, 'flag: Burundi') then Exit(TEmoji.FLAG_BURUNDI);
  if SameText(Name, 'flag: Cambodia') then Exit(TEmoji.FLAG_CAMBODIA);
  if SameText(Name, 'flag: Cameroon') then Exit(TEmoji.FLAG_CAMEROON);
  if SameText(Name, 'flag: Canada') then Exit(TEmoji.FLAG_CANADA);
  if SameText(Name, 'flag: Canary Islands') then Exit(TEmoji.FLAG_CANARY_ISLANDS);
  if SameText(Name, 'flag: Cape Verde') then Exit(TEmoji.FLAG_CAPE_VERDE);
  if SameText(Name, 'flag: Caribbean Netherlands') then Exit(TEmoji.FLAG_CARIBBEAN_NETHERLANDS);
  if SameText(Name, 'flag: Cayman Islands') then Exit(TEmoji.FLAG_CAYMAN_ISLANDS);
  if SameText(Name, 'flag: Central African Republic') then Exit(TEmoji.FLAG_CENTRAL_AFRICAN_REPUBLIC);
  if SameText(Name, 'flag: Ceuta & Melilla') then Exit(TEmoji.FLAG_CEUTA_MELILLA);
  if SameText(Name, 'flag: Chad') then Exit(TEmoji.FLAG_CHAD);
  if SameText(Name, 'flag: Chile') then Exit(TEmoji.FLAG_CHILE);
  if SameText(Name, 'flag: China') then Exit(TEmoji.FLAG_CHINA);
  if SameText(Name, 'flag: Christmas Island') then Exit(TEmoji.FLAG_CHRISTMAS_ISLAND);
  if SameText(Name, 'flag: Clipperton Island') then Exit(TEmoji.FLAG_CLIPPERTON_ISLAND);
  if SameText(Name, 'flag: Cocos (Keeling) Islands') then Exit(TEmoji.FLAG_COCOS_KEELING_ISLANDS);
  if SameText(Name, 'flag: Colombia') then Exit(TEmoji.FLAG_COLOMBIA);
  if SameText(Name, 'flag: Comoros') then Exit(TEmoji.FLAG_COMOROS);
  if SameText(Name, 'flag: Congo - Brazzaville') then Exit(TEmoji.FLAG_CONGO_BRAZZAVILLE);
  if SameText(Name, 'flag: Congo - Kinshasa') then Exit(TEmoji.FLAG_CONGO_KINSHASA);
  if SameText(Name, 'flag: Cook Islands') then Exit(TEmoji.FLAG_COOK_ISLANDS);
  if SameText(Name, 'flag: Costa Rica') then Exit(TEmoji.FLAG_COSTA_RICA);
  if SameText(Name, 'flag: Croatia') then Exit(TEmoji.FLAG_CROATIA);
  if SameText(Name, 'flag: Cuba') then Exit(TEmoji.FLAG_CUBA);
  if SameText(Name, 'flag: Curaçao') then Exit(TEmoji.FLAG_CURA_AO);
  if SameText(Name, 'flag: Cyprus') then Exit(TEmoji.FLAG_CYPRUS);
  if SameText(Name, 'flag: Czechia') then Exit(TEmoji.FLAG_CZECHIA);
  if SameText(Name, 'flag: Côte d’Ivoire') then Exit(TEmoji.FLAG_C_TE_D_IVOIRE);
  if SameText(Name, 'flag: Denmark') then Exit(TEmoji.FLAG_DENMARK);
  if SameText(Name, 'flag: Diego Garcia') then Exit(TEmoji.FLAG_DIEGO_GARCIA);
  if SameText(Name, 'flag: Djibouti') then Exit(TEmoji.FLAG_DJIBOUTI);
  if SameText(Name, 'flag: Dominica') then Exit(TEmoji.FLAG_DOMINICA);
  if SameText(Name, 'flag: Dominican Republic') then Exit(TEmoji.FLAG_DOMINICAN_REPUBLIC);
  if SameText(Name, 'flag: Ecuador') then Exit(TEmoji.FLAG_ECUADOR);
  if SameText(Name, 'flag: Egypt') then Exit(TEmoji.FLAG_EGYPT);
  if SameText(Name, 'flag: El Salvador') then Exit(TEmoji.FLAG_EL_SALVADOR);
  if SameText(Name, 'flag: England') then Exit(TEmoji.FLAG_ENGLAND);
  if SameText(Name, 'flag: Equatorial Guinea') then Exit(TEmoji.FLAG_EQUATORIAL_GUINEA);
  if SameText(Name, 'flag: Eritrea') then Exit(TEmoji.FLAG_ERITREA);
  if SameText(Name, 'flag: Estonia') then Exit(TEmoji.FLAG_ESTONIA);
  if SameText(Name, 'flag: Eswatini') then Exit(TEmoji.FLAG_ESWATINI);
  if SameText(Name, 'flag: Ethiopia') then Exit(TEmoji.FLAG_ETHIOPIA);
  if SameText(Name, 'flag: European Union') then Exit(TEmoji.FLAG_EUROPEAN_UNION);
  if SameText(Name, 'flag: Falkland Islands') then Exit(TEmoji.FLAG_FALKLAND_ISLANDS);
  if SameText(Name, 'flag: Faroe Islands') then Exit(TEmoji.FLAG_FAROE_ISLANDS);
  if SameText(Name, 'flag: Fiji') then Exit(TEmoji.FLAG_FIJI);
  if SameText(Name, 'flag: Finland') then Exit(TEmoji.FLAG_FINLAND);
  if SameText(Name, 'flag: France') then Exit(TEmoji.FLAG_FRANCE);
  if SameText(Name, 'flag: French Guiana') then Exit(TEmoji.FLAG_FRENCH_GUIANA);
  if SameText(Name, 'flag: French Polynesia') then Exit(TEmoji.FLAG_FRENCH_POLYNESIA);
  if SameText(Name, 'flag: French Southern Territories') then Exit(TEmoji.FLAG_FRENCH_SOUTHERN_TERRITORIES);
  if SameText(Name, 'flag: Gabon') then Exit(TEmoji.FLAG_GABON);
  if SameText(Name, 'flag: Gambia') then Exit(TEmoji.FLAG_GAMBIA);
  if SameText(Name, 'flag: Georgia') then Exit(TEmoji.FLAG_GEORGIA);
  if SameText(Name, 'flag: Germany') then Exit(TEmoji.FLAG_GERMANY);
  if SameText(Name, 'flag: Ghana') then Exit(TEmoji.FLAG_GHANA);
  if SameText(Name, 'flag: Gibraltar') then Exit(TEmoji.FLAG_GIBRALTAR);
  if SameText(Name, 'flag: Greece') then Exit(TEmoji.FLAG_GREECE);
  if SameText(Name, 'flag: Greenland') then Exit(TEmoji.FLAG_GREENLAND);
  if SameText(Name, 'flag: Grenada') then Exit(TEmoji.FLAG_GRENADA);
  if SameText(Name, 'flag: Guadeloupe') then Exit(TEmoji.FLAG_GUADELOUPE);
  if SameText(Name, 'flag: Guam') then Exit(TEmoji.FLAG_GUAM);
  if SameText(Name, 'flag: Guatemala') then Exit(TEmoji.FLAG_GUATEMALA);
  if SameText(Name, 'flag: Guernsey') then Exit(TEmoji.FLAG_GUERNSEY);
  if SameText(Name, 'flag: Guinea') then Exit(TEmoji.FLAG_GUINEA);
  if SameText(Name, 'flag: Guinea-Bissau') then Exit(TEmoji.FLAG_GUINEA_BISSAU);
  if SameText(Name, 'flag: Guyana') then Exit(TEmoji.FLAG_GUYANA);
  if SameText(Name, 'flag: Haiti') then Exit(TEmoji.FLAG_HAITI);
  if SameText(Name, 'flag: Heard & McDonald Islands') then Exit(TEmoji.FLAG_HEARD_MCDONALD_ISLANDS);
  if SameText(Name, 'flag: Honduras') then Exit(TEmoji.FLAG_HONDURAS);
  if SameText(Name, 'flag: Hong Kong SAR China') then Exit(TEmoji.FLAG_HONG_KONG_SAR_CHINA);
  if SameText(Name, 'flag: Hungary') then Exit(TEmoji.FLAG_HUNGARY);
  if SameText(Name, 'flag: Iceland') then Exit(TEmoji.FLAG_ICELAND);
  if SameText(Name, 'flag: India') then Exit(TEmoji.FLAG_INDIA);
  if SameText(Name, 'flag: Indonesia') then Exit(TEmoji.FLAG_INDONESIA);
  if SameText(Name, 'flag: Iran') then Exit(TEmoji.FLAG_IRAN);
  if SameText(Name, 'flag: Iraq') then Exit(TEmoji.FLAG_IRAQ);
  if SameText(Name, 'flag: Ireland') then Exit(TEmoji.FLAG_IRELAND);
  if SameText(Name, 'flag: Isle of Man') then Exit(TEmoji.FLAG_ISLE_OF_MAN);
  if SameText(Name, 'flag: Israel') then Exit(TEmoji.FLAG_ISRAEL);
  if SameText(Name, 'flag: Italy') then Exit(TEmoji.FLAG_ITALY);
  if SameText(Name, 'flag: Jamaica') then Exit(TEmoji.FLAG_JAMAICA);
  if SameText(Name, 'flag: Japan') then Exit(TEmoji.FLAG_JAPAN);
  if SameText(Name, 'flag: Jersey') then Exit(TEmoji.FLAG_JERSEY);
  if SameText(Name, 'flag: Jordan') then Exit(TEmoji.FLAG_JORDAN);
  if SameText(Name, 'flag: Kazakhstan') then Exit(TEmoji.FLAG_KAZAKHSTAN);
  if SameText(Name, 'flag: Kenya') then Exit(TEmoji.FLAG_KENYA);
  if SameText(Name, 'flag: Kiribati') then Exit(TEmoji.FLAG_KIRIBATI);
  if SameText(Name, 'flag: Kosovo') then Exit(TEmoji.FLAG_KOSOVO);
  if SameText(Name, 'flag: Kuwait') then Exit(TEmoji.FLAG_KUWAIT);
  if SameText(Name, 'flag: Kyrgyzstan') then Exit(TEmoji.FLAG_KYRGYZSTAN);
  if SameText(Name, 'flag: Laos') then Exit(TEmoji.FLAG_LAOS);
  if SameText(Name, 'flag: Latvia') then Exit(TEmoji.FLAG_LATVIA);
  if SameText(Name, 'flag: Lebanon') then Exit(TEmoji.FLAG_LEBANON);
  if SameText(Name, 'flag: Lesotho') then Exit(TEmoji.FLAG_LESOTHO);
  if SameText(Name, 'flag: Liberia') then Exit(TEmoji.FLAG_LIBERIA);
  if SameText(Name, 'flag: Libya') then Exit(TEmoji.FLAG_LIBYA);
  if SameText(Name, 'flag: Liechtenstein') then Exit(TEmoji.FLAG_LIECHTENSTEIN);
  if SameText(Name, 'flag: Lithuania') then Exit(TEmoji.FLAG_LITHUANIA);
  if SameText(Name, 'flag: Luxembourg') then Exit(TEmoji.FLAG_LUXEMBOURG);
  if SameText(Name, 'flag: Macao SAR China') then Exit(TEmoji.FLAG_MACAO_SAR_CHINA);
  if SameText(Name, 'flag: Madagascar') then Exit(TEmoji.FLAG_MADAGASCAR);
  if SameText(Name, 'flag: Malawi') then Exit(TEmoji.FLAG_MALAWI);
  if SameText(Name, 'flag: Malaysia') then Exit(TEmoji.FLAG_MALAYSIA);
  if SameText(Name, 'flag: Maldives') then Exit(TEmoji.FLAG_MALDIVES);
  if SameText(Name, 'flag: Mali') then Exit(TEmoji.FLAG_MALI);
  if SameText(Name, 'flag: Malta') then Exit(TEmoji.FLAG_MALTA);
  if SameText(Name, 'flag: Marshall Islands') then Exit(TEmoji.FLAG_MARSHALL_ISLANDS);
  if SameText(Name, 'flag: Martinique') then Exit(TEmoji.FLAG_MARTINIQUE);
  if SameText(Name, 'flag: Mauritania') then Exit(TEmoji.FLAG_MAURITANIA);
  if SameText(Name, 'flag: Mauritius') then Exit(TEmoji.FLAG_MAURITIUS);
  if SameText(Name, 'flag: Mayotte') then Exit(TEmoji.FLAG_MAYOTTE);
  if SameText(Name, 'flag: Mexico') then Exit(TEmoji.FLAG_MEXICO);
  if SameText(Name, 'flag: Micronesia') then Exit(TEmoji.FLAG_MICRONESIA);
  if SameText(Name, 'flag: Moldova') then Exit(TEmoji.FLAG_MOLDOVA);
  if SameText(Name, 'flag: Monaco') then Exit(TEmoji.FLAG_MONACO);
  if SameText(Name, 'flag: Mongolia') then Exit(TEmoji.FLAG_MONGOLIA);
  if SameText(Name, 'flag: Montenegro') then Exit(TEmoji.FLAG_MONTENEGRO);
  if SameText(Name, 'flag: Montserrat') then Exit(TEmoji.FLAG_MONTSERRAT);
  if SameText(Name, 'flag: Morocco') then Exit(TEmoji.FLAG_MOROCCO);
  if SameText(Name, 'flag: Mozambique') then Exit(TEmoji.FLAG_MOZAMBIQUE);
  if SameText(Name, 'flag: Myanmar (Burma)') then Exit(TEmoji.FLAG_MYANMAR_BURMA);
  if SameText(Name, 'flag: Namibia') then Exit(TEmoji.FLAG_NAMIBIA);
  if SameText(Name, 'flag: Nauru') then Exit(TEmoji.FLAG_NAURU);
  if SameText(Name, 'flag: Nepal') then Exit(TEmoji.FLAG_NEPAL);
  if SameText(Name, 'flag: Netherlands') then Exit(TEmoji.FLAG_NETHERLANDS);
  if SameText(Name, 'flag: New Caledonia') then Exit(TEmoji.FLAG_NEW_CALEDONIA);
  if SameText(Name, 'flag: New Zealand') then Exit(TEmoji.FLAG_NEW_ZEALAND);
  if SameText(Name, 'flag: Nicaragua') then Exit(TEmoji.FLAG_NICARAGUA);
  if SameText(Name, 'flag: Niger') then Exit(TEmoji.FLAG_NIGER);
  if SameText(Name, 'flag: Nigeria') then Exit(TEmoji.FLAG_NIGERIA);
  if SameText(Name, 'flag: Niue') then Exit(TEmoji.FLAG_NIUE);
  if SameText(Name, 'flag: Norfolk Island') then Exit(TEmoji.FLAG_NORFOLK_ISLAND);
  if SameText(Name, 'flag: North Korea') then Exit(TEmoji.FLAG_NORTH_KOREA);
  if SameText(Name, 'flag: North Macedonia') then Exit(TEmoji.FLAG_NORTH_MACEDONIA);
  if SameText(Name, 'flag: Northern Mariana Islands') then Exit(TEmoji.FLAG_NORTHERN_MARIANA_ISLANDS);
  if SameText(Name, 'flag: Norway') then Exit(TEmoji.FLAG_NORWAY);
  if SameText(Name, 'flag: Oman') then Exit(TEmoji.FLAG_OMAN);
  if SameText(Name, 'flag: Pakistan') then Exit(TEmoji.FLAG_PAKISTAN);
  if SameText(Name, 'flag: Palau') then Exit(TEmoji.FLAG_PALAU);
  if SameText(Name, 'flag: Palestinian Territories') then Exit(TEmoji.FLAG_PALESTINIAN_TERRITORIES);
  if SameText(Name, 'flag: Panama') then Exit(TEmoji.FLAG_PANAMA);
  if SameText(Name, 'flag: Papua New Guinea') then Exit(TEmoji.FLAG_PAPUA_NEW_GUINEA);
  if SameText(Name, 'flag: Paraguay') then Exit(TEmoji.FLAG_PARAGUAY);
  if SameText(Name, 'flag: Peru') then Exit(TEmoji.FLAG_PERU);
  if SameText(Name, 'flag: Philippines') then Exit(TEmoji.FLAG_PHILIPPINES);
  if SameText(Name, 'flag: Pitcairn Islands') then Exit(TEmoji.FLAG_PITCAIRN_ISLANDS);
  if SameText(Name, 'flag: Poland') then Exit(TEmoji.FLAG_POLAND);
  if SameText(Name, 'flag: Portugal') then Exit(TEmoji.FLAG_PORTUGAL);
  if SameText(Name, 'flag: Puerto Rico') then Exit(TEmoji.FLAG_PUERTO_RICO);
  if SameText(Name, 'flag: Qatar') then Exit(TEmoji.FLAG_QATAR);
  if SameText(Name, 'flag: Romania') then Exit(TEmoji.FLAG_ROMANIA);
  if SameText(Name, 'flag: Russia') then Exit(TEmoji.FLAG_RUSSIA);
  if SameText(Name, 'flag: Rwanda') then Exit(TEmoji.FLAG_RWANDA);
  if SameText(Name, 'flag: Réunion') then Exit(TEmoji.FLAG_R_UNION);
  if SameText(Name, 'flag: Samoa') then Exit(TEmoji.FLAG_SAMOA);
  if SameText(Name, 'flag: San Marino') then Exit(TEmoji.FLAG_SAN_MARINO);
  if SameText(Name, 'flag: Sark') then Exit(TEmoji.FLAG_SARK);
  if SameText(Name, 'flag: Saudi Arabia') then Exit(TEmoji.FLAG_SAUDI_ARABIA);
  if SameText(Name, 'flag: Scotland') then Exit(TEmoji.FLAG_SCOTLAND);
  if SameText(Name, 'flag: Senegal') then Exit(TEmoji.FLAG_SENEGAL);
  if SameText(Name, 'flag: Serbia') then Exit(TEmoji.FLAG_SERBIA);
  if SameText(Name, 'flag: Seychelles') then Exit(TEmoji.FLAG_SEYCHELLES);
  if SameText(Name, 'flag: Sierra Leone') then Exit(TEmoji.FLAG_SIERRA_LEONE);
  if SameText(Name, 'flag: Singapore') then Exit(TEmoji.FLAG_SINGAPORE);
  if SameText(Name, 'flag: Sint Maarten') then Exit(TEmoji.FLAG_SINT_MAARTEN);
  if SameText(Name, 'flag: Slovakia') then Exit(TEmoji.FLAG_SLOVAKIA);
  if SameText(Name, 'flag: Slovenia') then Exit(TEmoji.FLAG_SLOVENIA);
  if SameText(Name, 'flag: Solomon Islands') then Exit(TEmoji.FLAG_SOLOMON_ISLANDS);
  if SameText(Name, 'flag: Somalia') then Exit(TEmoji.FLAG_SOMALIA);
  if SameText(Name, 'flag: South Africa') then Exit(TEmoji.FLAG_SOUTH_AFRICA);
  if SameText(Name, 'flag: South Georgia & South Sandwich Islands') then Exit(TEmoji.FLAG_SOUTH_GEORGIA_SOUTH_SANDWICH_ISLANDS);
  if SameText(Name, 'flag: South Korea') then Exit(TEmoji.FLAG_SOUTH_KOREA);
  if SameText(Name, 'flag: South Sudan') then Exit(TEmoji.FLAG_SOUTH_SUDAN);
  if SameText(Name, 'flag: Spain') then Exit(TEmoji.FLAG_SPAIN);
  if SameText(Name, 'flag: Sri Lanka') then Exit(TEmoji.FLAG_SRI_LANKA);
  if SameText(Name, 'flag: St. Barthélemy') then Exit(TEmoji.FLAG_ST_BARTH_LEMY);
  if SameText(Name, 'flag: St. Helena') then Exit(TEmoji.FLAG_ST_HELENA);
  if SameText(Name, 'flag: St. Kitts & Nevis') then Exit(TEmoji.FLAG_ST_KITTS_NEVIS);
  if SameText(Name, 'flag: St. Lucia') then Exit(TEmoji.FLAG_ST_LUCIA);
  if SameText(Name, 'flag: St. Martin') then Exit(TEmoji.FLAG_ST_MARTIN);
  if SameText(Name, 'flag: St. Pierre & Miquelon') then Exit(TEmoji.FLAG_ST_PIERRE_MIQUELON);
  if SameText(Name, 'flag: St. Vincent & Grenadines') then Exit(TEmoji.FLAG_ST_VINCENT_GRENADINES);
  if SameText(Name, 'flag: Sudan') then Exit(TEmoji.FLAG_SUDAN);
  if SameText(Name, 'flag: Suriname') then Exit(TEmoji.FLAG_SURINAME);
  if SameText(Name, 'flag: Svalbard & Jan Mayen') then Exit(TEmoji.FLAG_SVALBARD_JAN_MAYEN);
  if SameText(Name, 'flag: Sweden') then Exit(TEmoji.FLAG_SWEDEN);
  if SameText(Name, 'flag: Switzerland') then Exit(TEmoji.FLAG_SWITZERLAND);
  if SameText(Name, 'flag: Syria') then Exit(TEmoji.FLAG_SYRIA);
  if SameText(Name, 'flag: São Tomé & Príncipe') then Exit(TEmoji.FLAG_S_O_TOM_PR_NCIPE);
  if SameText(Name, 'flag: Taiwan') then Exit(TEmoji.FLAG_TAIWAN);
  if SameText(Name, 'flag: Tajikistan') then Exit(TEmoji.FLAG_TAJIKISTAN);
  if SameText(Name, 'flag: Tanzania') then Exit(TEmoji.FLAG_TANZANIA);
  if SameText(Name, 'flag: Thailand') then Exit(TEmoji.FLAG_THAILAND);
  if SameText(Name, 'flag: Timor-Leste') then Exit(TEmoji.FLAG_TIMOR_LESTE);
  if SameText(Name, 'flag: Togo') then Exit(TEmoji.FLAG_TOGO);
  if SameText(Name, 'flag: Tokelau') then Exit(TEmoji.FLAG_TOKELAU);
  if SameText(Name, 'flag: Tonga') then Exit(TEmoji.FLAG_TONGA);
  if SameText(Name, 'flag: Trinidad & Tobago') then Exit(TEmoji.FLAG_TRINIDAD_TOBAGO);
  if SameText(Name, 'flag: Tristan da Cunha') then Exit(TEmoji.FLAG_TRISTAN_DA_CUNHA);
  if SameText(Name, 'flag: Tunisia') then Exit(TEmoji.FLAG_TUNISIA);
  if SameText(Name, 'flag: Turkmenistan') then Exit(TEmoji.FLAG_TURKMENISTAN);
  if SameText(Name, 'flag: Turks & Caicos Islands') then Exit(TEmoji.FLAG_TURKS_CAICOS_ISLANDS);
  if SameText(Name, 'flag: Tuvalu') then Exit(TEmoji.FLAG_TUVALU);
  if SameText(Name, 'flag: Türkiye') then Exit(TEmoji.FLAG_T_RKIYE);
  if SameText(Name, 'flag: U.S. Outlying Islands') then Exit(TEmoji.FLAG_U_S_OUTLYING_ISLANDS);
  if SameText(Name, 'flag: U.S. Virgin Islands') then Exit(TEmoji.FLAG_U_S_VIRGIN_ISLANDS);
  if SameText(Name, 'flag: Uganda') then Exit(TEmoji.FLAG_UGANDA);
  if SameText(Name, 'flag: Ukraine') then Exit(TEmoji.FLAG_UKRAINE);
  if SameText(Name, 'flag: United Arab Emirates') then Exit(TEmoji.FLAG_UNITED_ARAB_EMIRATES);
  if SameText(Name, 'flag: United Kingdom') then Exit(TEmoji.FLAG_UNITED_KINGDOM);
  if SameText(Name, 'flag: United Nations') then Exit(TEmoji.FLAG_UNITED_NATIONS);
  if SameText(Name, 'flag: United States') then Exit(TEmoji.FLAG_UNITED_STATES);
  if SameText(Name, 'flag: Uruguay') then Exit(TEmoji.FLAG_URUGUAY);
  if SameText(Name, 'flag: Uzbekistan') then Exit(TEmoji.FLAG_UZBEKISTAN);
  if SameText(Name, 'flag: Vanuatu') then Exit(TEmoji.FLAG_VANUATU);
  if SameText(Name, 'flag: Vatican City') then Exit(TEmoji.FLAG_VATICAN_CITY);
  if SameText(Name, 'flag: Venezuela') then Exit(TEmoji.FLAG_VENEZUELA);
  if SameText(Name, 'flag: Vietnam') then Exit(TEmoji.FLAG_VIETNAM);
  if SameText(Name, 'flag: Wales') then Exit(TEmoji.FLAG_WALES);
  if SameText(Name, 'flag: Wallis & Futuna') then Exit(TEmoji.FLAG_WALLIS_FUTUNA);
  if SameText(Name, 'flag: Western Sahara') then Exit(TEmoji.FLAG_WESTERN_SAHARA);
  if SameText(Name, 'flag: Yemen') then Exit(TEmoji.FLAG_YEMEN);
  if SameText(Name, 'flag: Zambia') then Exit(TEmoji.FLAG_ZAMBIA);
  if SameText(Name, 'flag: Zimbabwe') then Exit(TEmoji.FLAG_ZIMBABWE);
  if SameText(Name, 'flag: Åland Islands') then Exit(TEmoji.FLAG_LAND_ISLANDS);
  if SameText(Name, 'flexed biceps: dark skin tone') then Exit(TEmoji.FLEXED_BICEPS_DARK_SKIN_TONE);
  if SameText(Name, 'flexed biceps: light skin tone') then Exit(TEmoji.FLEXED_BICEPS_LIGHT_SKIN_TONE);
  if SameText(Name, 'flexed biceps: medium skin tone') then Exit(TEmoji.FLEXED_BICEPS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'flexed biceps: medium-dark skin tone') then Exit(TEmoji.FLEXED_BICEPS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'flexed biceps: medium-light skin tone') then Exit(TEmoji.FLEXED_BICEPS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'folded hands: dark skin tone') then Exit(TEmoji.FOLDED_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'folded hands: light skin tone') then Exit(TEmoji.FOLDED_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'folded hands: medium skin tone') then Exit(TEmoji.FOLDED_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'folded hands: medium-dark skin tone') then Exit(TEmoji.FOLDED_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'folded hands: medium-light skin tone') then Exit(TEmoji.FOLDED_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'foot: dark skin tone') then Exit(TEmoji.FOOT_DARK_SKIN_TONE);
  if SameText(Name, 'foot: light skin tone') then Exit(TEmoji.FOOT_LIGHT_SKIN_TONE);
  if SameText(Name, 'foot: medium skin tone') then Exit(TEmoji.FOOT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'foot: medium-dark skin tone') then Exit(TEmoji.FOOT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'foot: medium-light skin tone') then Exit(TEmoji.FOOT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'girl: dark skin tone') then Exit(TEmoji.GIRL_DARK_SKIN_TONE);
  if SameText(Name, 'girl: light skin tone') then Exit(TEmoji.GIRL_LIGHT_SKIN_TONE);
  if SameText(Name, 'girl: medium skin tone') then Exit(TEmoji.GIRL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'girl: medium-dark skin tone') then Exit(TEmoji.GIRL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'girl: medium-light skin tone') then Exit(TEmoji.GIRL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'guard: dark skin tone') then Exit(TEmoji.GUARD_DARK_SKIN_TONE);
  if SameText(Name, 'guard: light skin tone') then Exit(TEmoji.GUARD_LIGHT_SKIN_TONE);
  if SameText(Name, 'guard: medium skin tone') then Exit(TEmoji.GUARD_MEDIUM_SKIN_TONE);
  if SameText(Name, 'guard: medium-dark skin tone') then Exit(TEmoji.GUARD_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'guard: medium-light skin tone') then Exit(TEmoji.GUARD_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'hand with fingers splayed: dark skin tone') then Exit(TEmoji.HAND_WITH_FINGERS_SPLAYED_DARK_SKIN_TONE);
  if SameText(Name, 'hand with fingers splayed: light skin tone') then Exit(TEmoji.HAND_WITH_FINGERS_SPLAYED_LIGHT_SKIN_TONE);
  if SameText(Name, 'hand with fingers splayed: medium skin tone') then Exit(TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_SKIN_TONE);
  if SameText(Name, 'hand with fingers splayed: medium-dark skin tone') then Exit(TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'hand with fingers splayed: medium-light skin tone') then Exit(TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'hand with index finger and thumb crossed: dark skin tone') then Exit(TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_DARK_SKIN_TONE);
  if SameText(Name, 'hand with index finger and thumb crossed: light skin tone') then Exit(TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_LIGHT_SKIN_TONE);
  if SameText(Name, 'hand with index finger and thumb crossed: medium skin tone') then Exit(TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_SKIN_TONE);
  if SameText(Name, 'hand with index finger and thumb crossed: medium-dark skin tone') then Exit(TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'hand with index finger and thumb crossed: medium-light skin tone') then Exit(TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: dark skin tone') then Exit(TEmoji.HANDSHAKE_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: dark skin tone, light skin tone') then Exit(TEmoji.HANDSHAKE_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: dark skin tone, medium skin tone') then Exit(TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'handshake: dark skin tone, medium-dark skin tone') then Exit(TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: dark skin tone, medium-light skin tone') then Exit(TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: light skin tone') then Exit(TEmoji.HANDSHAKE_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: light skin tone, dark skin tone') then Exit(TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: light skin tone, medium skin tone') then Exit(TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'handshake: light skin tone, medium-dark skin tone') then Exit(TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: light skin tone, medium-light skin tone') then Exit(TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'handshake: medium skin tone, dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: medium skin tone, light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium skin tone, medium-dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: medium skin tone, medium-light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium-dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: medium-dark skin tone, dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: medium-dark skin tone, light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium-dark skin tone, medium skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'handshake: medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium-light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium-light skin tone, dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'handshake: medium-light skin tone, light skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'handshake: medium-light skin tone, medium skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'handshake: medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'head shaking horizontally') then Exit(TEmoji.HEAD_SHAKING_HORIZONTALLY);
  if SameText(Name, 'head shaking vertically') then Exit(TEmoji.HEAD_SHAKING_VERTICALLY);
  if SameText(Name, 'health worker') then Exit(TEmoji.HEALTH_WORKER);
  if SameText(Name, 'health worker: dark skin tone') then Exit(TEmoji.HEALTH_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'health worker: light skin tone') then Exit(TEmoji.HEALTH_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'health worker: medium skin tone') then Exit(TEmoji.HEALTH_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'health worker: medium-dark skin tone') then Exit(TEmoji.HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'health worker: medium-light skin tone') then Exit(TEmoji.HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'heart hands: dark skin tone') then Exit(TEmoji.HEART_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'heart hands: light skin tone') then Exit(TEmoji.HEART_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'heart hands: medium skin tone') then Exit(TEmoji.HEART_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'heart hands: medium-dark skin tone') then Exit(TEmoji.HEART_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'heart hands: medium-light skin tone') then Exit(TEmoji.HEART_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'heart on fire') then Exit(TEmoji.HEART_ON_FIRE);
  if SameText(Name, 'horse racing: dark skin tone') then Exit(TEmoji.HORSE_RACING_DARK_SKIN_TONE);
  if SameText(Name, 'horse racing: light skin tone') then Exit(TEmoji.HORSE_RACING_LIGHT_SKIN_TONE);
  if SameText(Name, 'horse racing: medium skin tone') then Exit(TEmoji.HORSE_RACING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'horse racing: medium-dark skin tone') then Exit(TEmoji.HORSE_RACING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'horse racing: medium-light skin tone') then Exit(TEmoji.HORSE_RACING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'index pointing at the viewer: dark skin tone') then Exit(TEmoji.INDEX_POINTING_AT_THE_VIEWER_DARK_SKIN_TONE);
  if SameText(Name, 'index pointing at the viewer: light skin tone') then Exit(TEmoji.INDEX_POINTING_AT_THE_VIEWER_LIGHT_SKIN_TONE);
  if SameText(Name, 'index pointing at the viewer: medium skin tone') then Exit(TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'index pointing at the viewer: medium-dark skin tone') then Exit(TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'index pointing at the viewer: medium-light skin tone') then Exit(TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'index pointing up: dark skin tone') then Exit(TEmoji.INDEX_POINTING_UP_DARK_SKIN_TONE);
  if SameText(Name, 'index pointing up: light skin tone') then Exit(TEmoji.INDEX_POINTING_UP_LIGHT_SKIN_TONE);
  if SameText(Name, 'index pointing up: medium skin tone') then Exit(TEmoji.INDEX_POINTING_UP_MEDIUM_SKIN_TONE);
  if SameText(Name, 'index pointing up: medium-dark skin tone') then Exit(TEmoji.INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'index pointing up: medium-light skin tone') then Exit(TEmoji.INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'judge') then Exit(TEmoji.JUDGE);
  if SameText(Name, 'judge: dark skin tone') then Exit(TEmoji.JUDGE_DARK_SKIN_TONE);
  if SameText(Name, 'judge: light skin tone') then Exit(TEmoji.JUDGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'judge: medium skin tone') then Exit(TEmoji.JUDGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'judge: medium-dark skin tone') then Exit(TEmoji.JUDGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'judge: medium-light skin tone') then Exit(TEmoji.JUDGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: dark skin tone') then Exit(TEmoji.KISS_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: light skin tone') then Exit(TEmoji.KISS_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man') then Exit(TEmoji.KISS_MAN_MAN);
  if SameText(Name, 'kiss: man, man, dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, dark skin tone, light skin tone') then Exit(TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, dark skin tone, medium skin tone') then Exit(TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, dark skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, light skin tone') then Exit(TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, light skin tone, dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, light skin tone, medium skin tone') then Exit(TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, light skin tone, medium-light skin tone') then Exit(TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium skin tone, dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium skin tone, light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium skin tone, medium-light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-dark skin tone, dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-dark skin tone, light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-dark skin tone, medium skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-light skin tone, dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-light skin tone, light skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-light skin tone, medium skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: man, man, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: medium skin tone') then Exit(TEmoji.KISS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: medium-dark skin tone') then Exit(TEmoji.KISS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: medium-light skin tone') then Exit(TEmoji.KISS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, dark skin tone, light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, dark skin tone, medium skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, dark skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, light skin tone, dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, light skin tone, medium skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, light skin tone, medium-light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium skin tone, dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium skin tone, light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium skin tone, medium-light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-dark skin tone, dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-dark skin tone, light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-dark skin tone, medium skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-light skin tone, dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-light skin tone, light skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-light skin tone, medium skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: person, person, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man') then Exit(TEmoji.KISS_WOMAN_MAN);
  if SameText(Name, 'kiss: woman, man, dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, dark skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, dark skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, dark skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, light skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, light skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, light skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-dark skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-dark skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-dark skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-light skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-light skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-light skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, man, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman') then Exit(TEmoji.KISS_WOMAN_WOMAN);
  if SameText(Name, 'kiss: woman, woman, dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, dark skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, dark skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, dark skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, light skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, light skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, light skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-dark skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-dark skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-dark skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-light skin tone, dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-light skin tone, light skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-light skin tone, medium skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'kiss: woman, woman, medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'left-facing fist: dark skin tone') then Exit(TEmoji.LEFT_FACING_FIST_DARK_SKIN_TONE);
  if SameText(Name, 'left-facing fist: light skin tone') then Exit(TEmoji.LEFT_FACING_FIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'left-facing fist: medium skin tone') then Exit(TEmoji.LEFT_FACING_FIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'left-facing fist: medium-dark skin tone') then Exit(TEmoji.LEFT_FACING_FIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'left-facing fist: medium-light skin tone') then Exit(TEmoji.LEFT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'leftwards hand: dark skin tone') then Exit(TEmoji.LEFTWARDS_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'leftwards hand: light skin tone') then Exit(TEmoji.LEFTWARDS_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'leftwards hand: medium skin tone') then Exit(TEmoji.LEFTWARDS_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'leftwards hand: medium-dark skin tone') then Exit(TEmoji.LEFTWARDS_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'leftwards hand: medium-light skin tone') then Exit(TEmoji.LEFTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'leftwards pushing hand: dark skin tone') then Exit(TEmoji.LEFTWARDS_PUSHING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'leftwards pushing hand: light skin tone') then Exit(TEmoji.LEFTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'leftwards pushing hand: medium skin tone') then Exit(TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'leftwards pushing hand: medium-dark skin tone') then Exit(TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'leftwards pushing hand: medium-light skin tone') then Exit(TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'leg: dark skin tone') then Exit(TEmoji.LEG_DARK_SKIN_TONE);
  if SameText(Name, 'leg: light skin tone') then Exit(TEmoji.LEG_LIGHT_SKIN_TONE);
  if SameText(Name, 'leg: medium skin tone') then Exit(TEmoji.LEG_MEDIUM_SKIN_TONE);
  if SameText(Name, 'leg: medium-dark skin tone') then Exit(TEmoji.LEG_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'leg: medium-light skin tone') then Exit(TEmoji.LEG_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'lime') then Exit(TEmoji.LIME);
  if SameText(Name, 'love-you gesture: dark skin tone') then Exit(TEmoji.LOVE_YOU_GESTURE_DARK_SKIN_TONE);
  if SameText(Name, 'love-you gesture: light skin tone') then Exit(TEmoji.LOVE_YOU_GESTURE_LIGHT_SKIN_TONE);
  if SameText(Name, 'love-you gesture: medium skin tone') then Exit(TEmoji.LOVE_YOU_GESTURE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'love-you gesture: medium-dark skin tone') then Exit(TEmoji.LOVE_YOU_GESTURE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'love-you gesture: medium-light skin tone') then Exit(TEmoji.LOVE_YOU_GESTURE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'mage: dark skin tone') then Exit(TEmoji.MAGE_DARK_SKIN_TONE);
  if SameText(Name, 'mage: light skin tone') then Exit(TEmoji.MAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'mage: medium skin tone') then Exit(TEmoji.MAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'mage: medium-dark skin tone') then Exit(TEmoji.MAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'mage: medium-light skin tone') then Exit(TEmoji.MAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man artist') then Exit(TEmoji.MAN_ARTIST);
  if SameText(Name, 'man artist: dark skin tone') then Exit(TEmoji.MAN_ARTIST_DARK_SKIN_TONE);
  if SameText(Name, 'man artist: light skin tone') then Exit(TEmoji.MAN_ARTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'man artist: medium skin tone') then Exit(TEmoji.MAN_ARTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man artist: medium-dark skin tone') then Exit(TEmoji.MAN_ARTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man artist: medium-light skin tone') then Exit(TEmoji.MAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man astronaut') then Exit(TEmoji.MAN_ASTRONAUT);
  if SameText(Name, 'man astronaut: dark skin tone') then Exit(TEmoji.MAN_ASTRONAUT_DARK_SKIN_TONE);
  if SameText(Name, 'man astronaut: light skin tone') then Exit(TEmoji.MAN_ASTRONAUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man astronaut: medium skin tone') then Exit(TEmoji.MAN_ASTRONAUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man astronaut: medium-dark skin tone') then Exit(TEmoji.MAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man astronaut: medium-light skin tone') then Exit(TEmoji.MAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man biking') then Exit(TEmoji.MAN_BIKING);
  if SameText(Name, 'man biking: dark skin tone') then Exit(TEmoji.MAN_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'man biking: light skin tone') then Exit(TEmoji.MAN_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man biking: medium skin tone') then Exit(TEmoji.MAN_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man biking: medium-dark skin tone') then Exit(TEmoji.MAN_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man biking: medium-light skin tone') then Exit(TEmoji.MAN_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man bouncing ball') then Exit(TEmoji.MAN_BOUNCING_BALL);
  if SameText(Name, 'man bouncing ball: dark skin tone') then Exit(TEmoji.MAN_BOUNCING_BALL_DARK_SKIN_TONE);
  if SameText(Name, 'man bouncing ball: light skin tone') then Exit(TEmoji.MAN_BOUNCING_BALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'man bouncing ball: medium skin tone') then Exit(TEmoji.MAN_BOUNCING_BALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man bouncing ball: medium-dark skin tone') then Exit(TEmoji.MAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man bouncing ball: medium-light skin tone') then Exit(TEmoji.MAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man bowing') then Exit(TEmoji.MAN_BOWING);
  if SameText(Name, 'man bowing: dark skin tone') then Exit(TEmoji.MAN_BOWING_DARK_SKIN_TONE);
  if SameText(Name, 'man bowing: light skin tone') then Exit(TEmoji.MAN_BOWING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man bowing: medium skin tone') then Exit(TEmoji.MAN_BOWING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man bowing: medium-dark skin tone') then Exit(TEmoji.MAN_BOWING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man bowing: medium-light skin tone') then Exit(TEmoji.MAN_BOWING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man cartwheeling') then Exit(TEmoji.MAN_CARTWHEELING);
  if SameText(Name, 'man cartwheeling: dark skin tone') then Exit(TEmoji.MAN_CARTWHEELING_DARK_SKIN_TONE);
  if SameText(Name, 'man cartwheeling: light skin tone') then Exit(TEmoji.MAN_CARTWHEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man cartwheeling: medium skin tone') then Exit(TEmoji.MAN_CARTWHEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man cartwheeling: medium-dark skin tone') then Exit(TEmoji.MAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man cartwheeling: medium-light skin tone') then Exit(TEmoji.MAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man climbing') then Exit(TEmoji.MAN_CLIMBING);
  if SameText(Name, 'man climbing: dark skin tone') then Exit(TEmoji.MAN_CLIMBING_DARK_SKIN_TONE);
  if SameText(Name, 'man climbing: light skin tone') then Exit(TEmoji.MAN_CLIMBING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man climbing: medium skin tone') then Exit(TEmoji.MAN_CLIMBING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man climbing: medium-dark skin tone') then Exit(TEmoji.MAN_CLIMBING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man climbing: medium-light skin tone') then Exit(TEmoji.MAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man construction worker') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER);
  if SameText(Name, 'man construction worker: dark skin tone') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'man construction worker: light skin tone') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man construction worker: medium skin tone') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man construction worker: medium-dark skin tone') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man construction worker: medium-light skin tone') then Exit(TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man cook') then Exit(TEmoji.MAN_COOK);
  if SameText(Name, 'man cook: dark skin tone') then Exit(TEmoji.MAN_COOK_DARK_SKIN_TONE);
  if SameText(Name, 'man cook: light skin tone') then Exit(TEmoji.MAN_COOK_LIGHT_SKIN_TONE);
  if SameText(Name, 'man cook: medium skin tone') then Exit(TEmoji.MAN_COOK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man cook: medium-dark skin tone') then Exit(TEmoji.MAN_COOK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man cook: medium-light skin tone') then Exit(TEmoji.MAN_COOK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man dancing: dark skin tone') then Exit(TEmoji.MAN_DANCING_DARK_SKIN_TONE);
  if SameText(Name, 'man dancing: light skin tone') then Exit(TEmoji.MAN_DANCING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man dancing: medium skin tone') then Exit(TEmoji.MAN_DANCING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man dancing: medium-dark skin tone') then Exit(TEmoji.MAN_DANCING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man dancing: medium-light skin tone') then Exit(TEmoji.MAN_DANCING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man detective') then Exit(TEmoji.MAN_DETECTIVE);
  if SameText(Name, 'man detective: dark skin tone') then Exit(TEmoji.MAN_DETECTIVE_DARK_SKIN_TONE);
  if SameText(Name, 'man detective: light skin tone') then Exit(TEmoji.MAN_DETECTIVE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man detective: medium skin tone') then Exit(TEmoji.MAN_DETECTIVE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man detective: medium-dark skin tone') then Exit(TEmoji.MAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man detective: medium-light skin tone') then Exit(TEmoji.MAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man elf') then Exit(TEmoji.MAN_ELF);
  if SameText(Name, 'man elf: dark skin tone') then Exit(TEmoji.MAN_ELF_DARK_SKIN_TONE);
  if SameText(Name, 'man elf: light skin tone') then Exit(TEmoji.MAN_ELF_LIGHT_SKIN_TONE);
  if SameText(Name, 'man elf: medium skin tone') then Exit(TEmoji.MAN_ELF_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man elf: medium-dark skin tone') then Exit(TEmoji.MAN_ELF_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man elf: medium-light skin tone') then Exit(TEmoji.MAN_ELF_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man facepalming') then Exit(TEmoji.MAN_FACEPALMING);
  if SameText(Name, 'man facepalming: dark skin tone') then Exit(TEmoji.MAN_FACEPALMING_DARK_SKIN_TONE);
  if SameText(Name, 'man facepalming: light skin tone') then Exit(TEmoji.MAN_FACEPALMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man facepalming: medium skin tone') then Exit(TEmoji.MAN_FACEPALMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man facepalming: medium-dark skin tone') then Exit(TEmoji.MAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man facepalming: medium-light skin tone') then Exit(TEmoji.MAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man factory worker') then Exit(TEmoji.MAN_FACTORY_WORKER);
  if SameText(Name, 'man factory worker: dark skin tone') then Exit(TEmoji.MAN_FACTORY_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'man factory worker: light skin tone') then Exit(TEmoji.MAN_FACTORY_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man factory worker: medium skin tone') then Exit(TEmoji.MAN_FACTORY_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man factory worker: medium-dark skin tone') then Exit(TEmoji.MAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man factory worker: medium-light skin tone') then Exit(TEmoji.MAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man fairy') then Exit(TEmoji.MAN_FAIRY);
  if SameText(Name, 'man fairy: dark skin tone') then Exit(TEmoji.MAN_FAIRY_DARK_SKIN_TONE);
  if SameText(Name, 'man fairy: light skin tone') then Exit(TEmoji.MAN_FAIRY_LIGHT_SKIN_TONE);
  if SameText(Name, 'man fairy: medium skin tone') then Exit(TEmoji.MAN_FAIRY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man fairy: medium-dark skin tone') then Exit(TEmoji.MAN_FAIRY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man fairy: medium-light skin tone') then Exit(TEmoji.MAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man farmer') then Exit(TEmoji.MAN_FARMER);
  if SameText(Name, 'man farmer: dark skin tone') then Exit(TEmoji.MAN_FARMER_DARK_SKIN_TONE);
  if SameText(Name, 'man farmer: light skin tone') then Exit(TEmoji.MAN_FARMER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man farmer: medium skin tone') then Exit(TEmoji.MAN_FARMER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man farmer: medium-dark skin tone') then Exit(TEmoji.MAN_FARMER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man farmer: medium-light skin tone') then Exit(TEmoji.MAN_FARMER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man feeding baby') then Exit(TEmoji.MAN_FEEDING_BABY);
  if SameText(Name, 'man feeding baby: dark skin tone') then Exit(TEmoji.MAN_FEEDING_BABY_DARK_SKIN_TONE);
  if SameText(Name, 'man feeding baby: light skin tone') then Exit(TEmoji.MAN_FEEDING_BABY_LIGHT_SKIN_TONE);
  if SameText(Name, 'man feeding baby: medium skin tone') then Exit(TEmoji.MAN_FEEDING_BABY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man feeding baby: medium-dark skin tone') then Exit(TEmoji.MAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man feeding baby: medium-light skin tone') then Exit(TEmoji.MAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man firefighter') then Exit(TEmoji.MAN_FIREFIGHTER);
  if SameText(Name, 'man firefighter: dark skin tone') then Exit(TEmoji.MAN_FIREFIGHTER_DARK_SKIN_TONE);
  if SameText(Name, 'man firefighter: light skin tone') then Exit(TEmoji.MAN_FIREFIGHTER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man firefighter: medium skin tone') then Exit(TEmoji.MAN_FIREFIGHTER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man firefighter: medium-dark skin tone') then Exit(TEmoji.MAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man firefighter: medium-light skin tone') then Exit(TEmoji.MAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man frowning') then Exit(TEmoji.MAN_FROWNING);
  if SameText(Name, 'man frowning: dark skin tone') then Exit(TEmoji.MAN_FROWNING_DARK_SKIN_TONE);
  if SameText(Name, 'man frowning: light skin tone') then Exit(TEmoji.MAN_FROWNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man frowning: medium skin tone') then Exit(TEmoji.MAN_FROWNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man frowning: medium-dark skin tone') then Exit(TEmoji.MAN_FROWNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man frowning: medium-light skin tone') then Exit(TEmoji.MAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man genie') then Exit(TEmoji.MAN_GENIE);
  if SameText(Name, 'man gesturing NO') then Exit(TEmoji.MAN_GESTURING_NO);
  if SameText(Name, 'man gesturing NO: dark skin tone') then Exit(TEmoji.MAN_GESTURING_NO_DARK_SKIN_TONE);
  if SameText(Name, 'man gesturing NO: light skin tone') then Exit(TEmoji.MAN_GESTURING_NO_LIGHT_SKIN_TONE);
  if SameText(Name, 'man gesturing NO: medium skin tone') then Exit(TEmoji.MAN_GESTURING_NO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man gesturing NO: medium-dark skin tone') then Exit(TEmoji.MAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man gesturing NO: medium-light skin tone') then Exit(TEmoji.MAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man gesturing OK') then Exit(TEmoji.MAN_GESTURING_OK);
  if SameText(Name, 'man gesturing OK: dark skin tone') then Exit(TEmoji.MAN_GESTURING_OK_DARK_SKIN_TONE);
  if SameText(Name, 'man gesturing OK: light skin tone') then Exit(TEmoji.MAN_GESTURING_OK_LIGHT_SKIN_TONE);
  if SameText(Name, 'man gesturing OK: medium skin tone') then Exit(TEmoji.MAN_GESTURING_OK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man gesturing OK: medium-dark skin tone') then Exit(TEmoji.MAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man gesturing OK: medium-light skin tone') then Exit(TEmoji.MAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man getting haircut') then Exit(TEmoji.MAN_GETTING_HAIRCUT);
  if SameText(Name, 'man getting haircut: dark skin tone') then Exit(TEmoji.MAN_GETTING_HAIRCUT_DARK_SKIN_TONE);
  if SameText(Name, 'man getting haircut: light skin tone') then Exit(TEmoji.MAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man getting haircut: medium skin tone') then Exit(TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man getting haircut: medium-dark skin tone') then Exit(TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man getting haircut: medium-light skin tone') then Exit(TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man getting massage') then Exit(TEmoji.MAN_GETTING_MASSAGE);
  if SameText(Name, 'man getting massage: dark skin tone') then Exit(TEmoji.MAN_GETTING_MASSAGE_DARK_SKIN_TONE);
  if SameText(Name, 'man getting massage: light skin tone') then Exit(TEmoji.MAN_GETTING_MASSAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man getting massage: medium skin tone') then Exit(TEmoji.MAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man getting massage: medium-dark skin tone') then Exit(TEmoji.MAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man getting massage: medium-light skin tone') then Exit(TEmoji.MAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man golfing') then Exit(TEmoji.MAN_GOLFING);
  if SameText(Name, 'man golfing: dark skin tone') then Exit(TEmoji.MAN_GOLFING_DARK_SKIN_TONE);
  if SameText(Name, 'man golfing: light skin tone') then Exit(TEmoji.MAN_GOLFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man golfing: medium skin tone') then Exit(TEmoji.MAN_GOLFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man golfing: medium-dark skin tone') then Exit(TEmoji.MAN_GOLFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man golfing: medium-light skin tone') then Exit(TEmoji.MAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man guard') then Exit(TEmoji.MAN_GUARD);
  if SameText(Name, 'man guard: dark skin tone') then Exit(TEmoji.MAN_GUARD_DARK_SKIN_TONE);
  if SameText(Name, 'man guard: light skin tone') then Exit(TEmoji.MAN_GUARD_LIGHT_SKIN_TONE);
  if SameText(Name, 'man guard: medium skin tone') then Exit(TEmoji.MAN_GUARD_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man guard: medium-dark skin tone') then Exit(TEmoji.MAN_GUARD_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man guard: medium-light skin tone') then Exit(TEmoji.MAN_GUARD_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man health worker') then Exit(TEmoji.MAN_HEALTH_WORKER);
  if SameText(Name, 'man health worker: dark skin tone') then Exit(TEmoji.MAN_HEALTH_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'man health worker: light skin tone') then Exit(TEmoji.MAN_HEALTH_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man health worker: medium skin tone') then Exit(TEmoji.MAN_HEALTH_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man health worker: medium-dark skin tone') then Exit(TEmoji.MAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man health worker: medium-light skin tone') then Exit(TEmoji.MAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in lotus position') then Exit(TEmoji.MAN_IN_LOTUS_POSITION);
  if SameText(Name, 'man in lotus position: dark skin tone') then Exit(TEmoji.MAN_IN_LOTUS_POSITION_DARK_SKIN_TONE);
  if SameText(Name, 'man in lotus position: light skin tone') then Exit(TEmoji.MAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in lotus position: medium skin tone') then Exit(TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in lotus position: medium-dark skin tone') then Exit(TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in lotus position: medium-light skin tone') then Exit(TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR);
  if SameText(Name, 'man in manual wheelchair facing right') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'man in manual wheelchair facing right: dark skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair facing right: light skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair facing right: medium skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair facing right: medium-light skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair: dark skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair: light skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair: medium skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair: medium-dark skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in manual wheelchair: medium-light skin tone') then Exit(TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR);
  if SameText(Name, 'man in motorized wheelchair facing right') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'man in motorized wheelchair facing right: dark skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair facing right: light skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair facing right: medium skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair facing right: medium-light skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair: dark skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair: light skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair: medium skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair: medium-dark skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in motorized wheelchair: medium-light skin tone') then Exit(TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in steamy room') then Exit(TEmoji.MAN_IN_STEAMY_ROOM);
  if SameText(Name, 'man in steamy room: dark skin tone') then Exit(TEmoji.MAN_IN_STEAMY_ROOM_DARK_SKIN_TONE);
  if SameText(Name, 'man in steamy room: light skin tone') then Exit(TEmoji.MAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in steamy room: medium skin tone') then Exit(TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in steamy room: medium-dark skin tone') then Exit(TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in steamy room: medium-light skin tone') then Exit(TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in tuxedo') then Exit(TEmoji.MAN_IN_TUXEDO);
  if SameText(Name, 'man in tuxedo: dark skin tone') then Exit(TEmoji.MAN_IN_TUXEDO_DARK_SKIN_TONE);
  if SameText(Name, 'man in tuxedo: light skin tone') then Exit(TEmoji.MAN_IN_TUXEDO_LIGHT_SKIN_TONE);
  if SameText(Name, 'man in tuxedo: medium skin tone') then Exit(TEmoji.MAN_IN_TUXEDO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man in tuxedo: medium-dark skin tone') then Exit(TEmoji.MAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man in tuxedo: medium-light skin tone') then Exit(TEmoji.MAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man judge') then Exit(TEmoji.MAN_JUDGE);
  if SameText(Name, 'man judge: dark skin tone') then Exit(TEmoji.MAN_JUDGE_DARK_SKIN_TONE);
  if SameText(Name, 'man judge: light skin tone') then Exit(TEmoji.MAN_JUDGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man judge: medium skin tone') then Exit(TEmoji.MAN_JUDGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man judge: medium-dark skin tone') then Exit(TEmoji.MAN_JUDGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man judge: medium-light skin tone') then Exit(TEmoji.MAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man juggling') then Exit(TEmoji.MAN_JUGGLING);
  if SameText(Name, 'man juggling: dark skin tone') then Exit(TEmoji.MAN_JUGGLING_DARK_SKIN_TONE);
  if SameText(Name, 'man juggling: light skin tone') then Exit(TEmoji.MAN_JUGGLING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man juggling: medium skin tone') then Exit(TEmoji.MAN_JUGGLING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man juggling: medium-dark skin tone') then Exit(TEmoji.MAN_JUGGLING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man juggling: medium-light skin tone') then Exit(TEmoji.MAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man kneeling') then Exit(TEmoji.MAN_KNEELING);
  if SameText(Name, 'man kneeling facing right') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT);
  if SameText(Name, 'man kneeling facing right: dark skin tone') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man kneeling facing right: light skin tone') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man kneeling facing right: medium skin tone') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man kneeling facing right: medium-dark skin tone') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man kneeling facing right: medium-light skin tone') then Exit(TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man kneeling: dark skin tone') then Exit(TEmoji.MAN_KNEELING_DARK_SKIN_TONE);
  if SameText(Name, 'man kneeling: light skin tone') then Exit(TEmoji.MAN_KNEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man kneeling: medium skin tone') then Exit(TEmoji.MAN_KNEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man kneeling: medium-dark skin tone') then Exit(TEmoji.MAN_KNEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man kneeling: medium-light skin tone') then Exit(TEmoji.MAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man lifting weights') then Exit(TEmoji.MAN_LIFTING_WEIGHTS);
  if SameText(Name, 'man lifting weights: dark skin tone') then Exit(TEmoji.MAN_LIFTING_WEIGHTS_DARK_SKIN_TONE);
  if SameText(Name, 'man lifting weights: light skin tone') then Exit(TEmoji.MAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE);
  if SameText(Name, 'man lifting weights: medium skin tone') then Exit(TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man lifting weights: medium-dark skin tone') then Exit(TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man lifting weights: medium-light skin tone') then Exit(TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mage') then Exit(TEmoji.MAN_MAGE);
  if SameText(Name, 'man mage: dark skin tone') then Exit(TEmoji.MAN_MAGE_DARK_SKIN_TONE);
  if SameText(Name, 'man mage: light skin tone') then Exit(TEmoji.MAN_MAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mage: medium skin tone') then Exit(TEmoji.MAN_MAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man mage: medium-dark skin tone') then Exit(TEmoji.MAN_MAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man mage: medium-light skin tone') then Exit(TEmoji.MAN_MAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mechanic') then Exit(TEmoji.MAN_MECHANIC);
  if SameText(Name, 'man mechanic: dark skin tone') then Exit(TEmoji.MAN_MECHANIC_DARK_SKIN_TONE);
  if SameText(Name, 'man mechanic: light skin tone') then Exit(TEmoji.MAN_MECHANIC_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mechanic: medium skin tone') then Exit(TEmoji.MAN_MECHANIC_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man mechanic: medium-dark skin tone') then Exit(TEmoji.MAN_MECHANIC_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man mechanic: medium-light skin tone') then Exit(TEmoji.MAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mountain biking') then Exit(TEmoji.MAN_MOUNTAIN_BIKING);
  if SameText(Name, 'man mountain biking: dark skin tone') then Exit(TEmoji.MAN_MOUNTAIN_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'man mountain biking: light skin tone') then Exit(TEmoji.MAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man mountain biking: medium skin tone') then Exit(TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man mountain biking: medium-dark skin tone') then Exit(TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man mountain biking: medium-light skin tone') then Exit(TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man office worker') then Exit(TEmoji.MAN_OFFICE_WORKER);
  if SameText(Name, 'man office worker: dark skin tone') then Exit(TEmoji.MAN_OFFICE_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'man office worker: light skin tone') then Exit(TEmoji.MAN_OFFICE_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man office worker: medium skin tone') then Exit(TEmoji.MAN_OFFICE_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man office worker: medium-dark skin tone') then Exit(TEmoji.MAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man office worker: medium-light skin tone') then Exit(TEmoji.MAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man pilot') then Exit(TEmoji.MAN_PILOT);
  if SameText(Name, 'man pilot: dark skin tone') then Exit(TEmoji.MAN_PILOT_DARK_SKIN_TONE);
  if SameText(Name, 'man pilot: light skin tone') then Exit(TEmoji.MAN_PILOT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man pilot: medium skin tone') then Exit(TEmoji.MAN_PILOT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man pilot: medium-dark skin tone') then Exit(TEmoji.MAN_PILOT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man pilot: medium-light skin tone') then Exit(TEmoji.MAN_PILOT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man playing handball') then Exit(TEmoji.MAN_PLAYING_HANDBALL);
  if SameText(Name, 'man playing handball: dark skin tone') then Exit(TEmoji.MAN_PLAYING_HANDBALL_DARK_SKIN_TONE);
  if SameText(Name, 'man playing handball: light skin tone') then Exit(TEmoji.MAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'man playing handball: medium skin tone') then Exit(TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man playing handball: medium-dark skin tone') then Exit(TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man playing handball: medium-light skin tone') then Exit(TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man playing water polo') then Exit(TEmoji.MAN_PLAYING_WATER_POLO);
  if SameText(Name, 'man playing water polo: dark skin tone') then Exit(TEmoji.MAN_PLAYING_WATER_POLO_DARK_SKIN_TONE);
  if SameText(Name, 'man playing water polo: light skin tone') then Exit(TEmoji.MAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE);
  if SameText(Name, 'man playing water polo: medium skin tone') then Exit(TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man playing water polo: medium-dark skin tone') then Exit(TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man playing water polo: medium-light skin tone') then Exit(TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man police officer') then Exit(TEmoji.MAN_POLICE_OFFICER);
  if SameText(Name, 'man police officer: dark skin tone') then Exit(TEmoji.MAN_POLICE_OFFICER_DARK_SKIN_TONE);
  if SameText(Name, 'man police officer: light skin tone') then Exit(TEmoji.MAN_POLICE_OFFICER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man police officer: medium skin tone') then Exit(TEmoji.MAN_POLICE_OFFICER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man police officer: medium-dark skin tone') then Exit(TEmoji.MAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man police officer: medium-light skin tone') then Exit(TEmoji.MAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man pouting') then Exit(TEmoji.MAN_POUTING);
  if SameText(Name, 'man pouting: dark skin tone') then Exit(TEmoji.MAN_POUTING_DARK_SKIN_TONE);
  if SameText(Name, 'man pouting: light skin tone') then Exit(TEmoji.MAN_POUTING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man pouting: medium skin tone') then Exit(TEmoji.MAN_POUTING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man pouting: medium-dark skin tone') then Exit(TEmoji.MAN_POUTING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man pouting: medium-light skin tone') then Exit(TEmoji.MAN_POUTING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man raising hand') then Exit(TEmoji.MAN_RAISING_HAND);
  if SameText(Name, 'man raising hand: dark skin tone') then Exit(TEmoji.MAN_RAISING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'man raising hand: light skin tone') then Exit(TEmoji.MAN_RAISING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'man raising hand: medium skin tone') then Exit(TEmoji.MAN_RAISING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man raising hand: medium-dark skin tone') then Exit(TEmoji.MAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man raising hand: medium-light skin tone') then Exit(TEmoji.MAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man rowing boat') then Exit(TEmoji.MAN_ROWING_BOAT);
  if SameText(Name, 'man rowing boat: dark skin tone') then Exit(TEmoji.MAN_ROWING_BOAT_DARK_SKIN_TONE);
  if SameText(Name, 'man rowing boat: light skin tone') then Exit(TEmoji.MAN_ROWING_BOAT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man rowing boat: medium skin tone') then Exit(TEmoji.MAN_ROWING_BOAT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man rowing boat: medium-dark skin tone') then Exit(TEmoji.MAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man rowing boat: medium-light skin tone') then Exit(TEmoji.MAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man running') then Exit(TEmoji.MAN_RUNNING);
  if SameText(Name, 'man running facing right') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT);
  if SameText(Name, 'man running facing right: dark skin tone') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man running facing right: light skin tone') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man running facing right: medium skin tone') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man running facing right: medium-dark skin tone') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man running facing right: medium-light skin tone') then Exit(TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man running: dark skin tone') then Exit(TEmoji.MAN_RUNNING_DARK_SKIN_TONE);
  if SameText(Name, 'man running: light skin tone') then Exit(TEmoji.MAN_RUNNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man running: medium skin tone') then Exit(TEmoji.MAN_RUNNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man running: medium-dark skin tone') then Exit(TEmoji.MAN_RUNNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man running: medium-light skin tone') then Exit(TEmoji.MAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man scientist') then Exit(TEmoji.MAN_SCIENTIST);
  if SameText(Name, 'man scientist: dark skin tone') then Exit(TEmoji.MAN_SCIENTIST_DARK_SKIN_TONE);
  if SameText(Name, 'man scientist: light skin tone') then Exit(TEmoji.MAN_SCIENTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'man scientist: medium skin tone') then Exit(TEmoji.MAN_SCIENTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man scientist: medium-dark skin tone') then Exit(TEmoji.MAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man scientist: medium-light skin tone') then Exit(TEmoji.MAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man shrugging') then Exit(TEmoji.MAN_SHRUGGING);
  if SameText(Name, 'man shrugging: dark skin tone') then Exit(TEmoji.MAN_SHRUGGING_DARK_SKIN_TONE);
  if SameText(Name, 'man shrugging: light skin tone') then Exit(TEmoji.MAN_SHRUGGING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man shrugging: medium skin tone') then Exit(TEmoji.MAN_SHRUGGING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man shrugging: medium-dark skin tone') then Exit(TEmoji.MAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man shrugging: medium-light skin tone') then Exit(TEmoji.MAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man singer') then Exit(TEmoji.MAN_SINGER);
  if SameText(Name, 'man singer: dark skin tone') then Exit(TEmoji.MAN_SINGER_DARK_SKIN_TONE);
  if SameText(Name, 'man singer: light skin tone') then Exit(TEmoji.MAN_SINGER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man singer: medium skin tone') then Exit(TEmoji.MAN_SINGER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man singer: medium-dark skin tone') then Exit(TEmoji.MAN_SINGER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man singer: medium-light skin tone') then Exit(TEmoji.MAN_SINGER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man standing') then Exit(TEmoji.MAN_STANDING);
  if SameText(Name, 'man standing: dark skin tone') then Exit(TEmoji.MAN_STANDING_DARK_SKIN_TONE);
  if SameText(Name, 'man standing: light skin tone') then Exit(TEmoji.MAN_STANDING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man standing: medium skin tone') then Exit(TEmoji.MAN_STANDING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man standing: medium-dark skin tone') then Exit(TEmoji.MAN_STANDING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man standing: medium-light skin tone') then Exit(TEmoji.MAN_STANDING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man student') then Exit(TEmoji.MAN_STUDENT);
  if SameText(Name, 'man student: dark skin tone') then Exit(TEmoji.MAN_STUDENT_DARK_SKIN_TONE);
  if SameText(Name, 'man student: light skin tone') then Exit(TEmoji.MAN_STUDENT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man student: medium skin tone') then Exit(TEmoji.MAN_STUDENT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man student: medium-dark skin tone') then Exit(TEmoji.MAN_STUDENT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man student: medium-light skin tone') then Exit(TEmoji.MAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man superhero') then Exit(TEmoji.MAN_SUPERHERO);
  if SameText(Name, 'man superhero: dark skin tone') then Exit(TEmoji.MAN_SUPERHERO_DARK_SKIN_TONE);
  if SameText(Name, 'man superhero: light skin tone') then Exit(TEmoji.MAN_SUPERHERO_LIGHT_SKIN_TONE);
  if SameText(Name, 'man superhero: medium skin tone') then Exit(TEmoji.MAN_SUPERHERO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man superhero: medium-dark skin tone') then Exit(TEmoji.MAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man superhero: medium-light skin tone') then Exit(TEmoji.MAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man supervillain') then Exit(TEmoji.MAN_SUPERVILLAIN);
  if SameText(Name, 'man supervillain: dark skin tone') then Exit(TEmoji.MAN_SUPERVILLAIN_DARK_SKIN_TONE);
  if SameText(Name, 'man supervillain: light skin tone') then Exit(TEmoji.MAN_SUPERVILLAIN_LIGHT_SKIN_TONE);
  if SameText(Name, 'man supervillain: medium skin tone') then Exit(TEmoji.MAN_SUPERVILLAIN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man supervillain: medium-dark skin tone') then Exit(TEmoji.MAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man supervillain: medium-light skin tone') then Exit(TEmoji.MAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man surfing') then Exit(TEmoji.MAN_SURFING);
  if SameText(Name, 'man surfing: dark skin tone') then Exit(TEmoji.MAN_SURFING_DARK_SKIN_TONE);
  if SameText(Name, 'man surfing: light skin tone') then Exit(TEmoji.MAN_SURFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man surfing: medium skin tone') then Exit(TEmoji.MAN_SURFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man surfing: medium-dark skin tone') then Exit(TEmoji.MAN_SURFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man surfing: medium-light skin tone') then Exit(TEmoji.MAN_SURFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man swimming') then Exit(TEmoji.MAN_SWIMMING);
  if SameText(Name, 'man swimming: dark skin tone') then Exit(TEmoji.MAN_SWIMMING_DARK_SKIN_TONE);
  if SameText(Name, 'man swimming: light skin tone') then Exit(TEmoji.MAN_SWIMMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man swimming: medium skin tone') then Exit(TEmoji.MAN_SWIMMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man swimming: medium-dark skin tone') then Exit(TEmoji.MAN_SWIMMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man swimming: medium-light skin tone') then Exit(TEmoji.MAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man teacher') then Exit(TEmoji.MAN_TEACHER);
  if SameText(Name, 'man teacher: dark skin tone') then Exit(TEmoji.MAN_TEACHER_DARK_SKIN_TONE);
  if SameText(Name, 'man teacher: light skin tone') then Exit(TEmoji.MAN_TEACHER_LIGHT_SKIN_TONE);
  if SameText(Name, 'man teacher: medium skin tone') then Exit(TEmoji.MAN_TEACHER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man teacher: medium-dark skin tone') then Exit(TEmoji.MAN_TEACHER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man teacher: medium-light skin tone') then Exit(TEmoji.MAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man technologist') then Exit(TEmoji.MAN_TECHNOLOGIST);
  if SameText(Name, 'man technologist: dark skin tone') then Exit(TEmoji.MAN_TECHNOLOGIST_DARK_SKIN_TONE);
  if SameText(Name, 'man technologist: light skin tone') then Exit(TEmoji.MAN_TECHNOLOGIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'man technologist: medium skin tone') then Exit(TEmoji.MAN_TECHNOLOGIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man technologist: medium-dark skin tone') then Exit(TEmoji.MAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man technologist: medium-light skin tone') then Exit(TEmoji.MAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man tipping hand') then Exit(TEmoji.MAN_TIPPING_HAND);
  if SameText(Name, 'man tipping hand: dark skin tone') then Exit(TEmoji.MAN_TIPPING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'man tipping hand: light skin tone') then Exit(TEmoji.MAN_TIPPING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'man tipping hand: medium skin tone') then Exit(TEmoji.MAN_TIPPING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man tipping hand: medium-dark skin tone') then Exit(TEmoji.MAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man tipping hand: medium-light skin tone') then Exit(TEmoji.MAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man vampire') then Exit(TEmoji.MAN_VAMPIRE);
  if SameText(Name, 'man vampire: dark skin tone') then Exit(TEmoji.MAN_VAMPIRE_DARK_SKIN_TONE);
  if SameText(Name, 'man vampire: light skin tone') then Exit(TEmoji.MAN_VAMPIRE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man vampire: medium skin tone') then Exit(TEmoji.MAN_VAMPIRE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man vampire: medium-dark skin tone') then Exit(TEmoji.MAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man vampire: medium-light skin tone') then Exit(TEmoji.MAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man walking') then Exit(TEmoji.MAN_WALKING);
  if SameText(Name, 'man walking facing right') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT);
  if SameText(Name, 'man walking facing right: dark skin tone') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man walking facing right: light skin tone') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man walking facing right: medium skin tone') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man walking facing right: medium-dark skin tone') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man walking facing right: medium-light skin tone') then Exit(TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man walking: dark skin tone') then Exit(TEmoji.MAN_WALKING_DARK_SKIN_TONE);
  if SameText(Name, 'man walking: light skin tone') then Exit(TEmoji.MAN_WALKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'man walking: medium skin tone') then Exit(TEmoji.MAN_WALKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man walking: medium-dark skin tone') then Exit(TEmoji.MAN_WALKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man walking: medium-light skin tone') then Exit(TEmoji.MAN_WALKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man wearing turban') then Exit(TEmoji.MAN_WEARING_TURBAN);
  if SameText(Name, 'man wearing turban: dark skin tone') then Exit(TEmoji.MAN_WEARING_TURBAN_DARK_SKIN_TONE);
  if SameText(Name, 'man wearing turban: light skin tone') then Exit(TEmoji.MAN_WEARING_TURBAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'man wearing turban: medium skin tone') then Exit(TEmoji.MAN_WEARING_TURBAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man wearing turban: medium-dark skin tone') then Exit(TEmoji.MAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man wearing turban: medium-light skin tone') then Exit(TEmoji.MAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with veil') then Exit(TEmoji.MAN_WITH_VEIL);
  if SameText(Name, 'man with veil: dark skin tone') then Exit(TEmoji.MAN_WITH_VEIL_DARK_SKIN_TONE);
  if SameText(Name, 'man with veil: light skin tone') then Exit(TEmoji.MAN_WITH_VEIL_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with veil: medium skin tone') then Exit(TEmoji.MAN_WITH_VEIL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man with veil: medium-dark skin tone') then Exit(TEmoji.MAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man with veil: medium-light skin tone') then Exit(TEmoji.MAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with white cane') then Exit(TEmoji.MAN_WITH_WHITE_CANE);
  if SameText(Name, 'man with white cane facing right') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT);
  if SameText(Name, 'man with white cane facing right: dark skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'man with white cane facing right: light skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with white cane facing right: medium skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man with white cane facing right: medium-dark skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man with white cane facing right: medium-light skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with white cane: dark skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_DARK_SKIN_TONE);
  if SameText(Name, 'man with white cane: light skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE);
  if SameText(Name, 'man with white cane: medium skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man with white cane: medium-dark skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man with white cane: medium-light skin tone') then Exit(TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man zombie') then Exit(TEmoji.MAN_ZOMBIE);
  if SameText(Name, 'man: bald') then Exit(TEmoji.MAN_BALD);
  if SameText(Name, 'man: beard') then Exit(TEmoji.MAN_BEARD);
  if SameText(Name, 'man: blond hair') then Exit(TEmoji.MAN_BLOND_HAIR);
  if SameText(Name, 'man: curly hair') then Exit(TEmoji.MAN_CURLY_HAIR);
  if SameText(Name, 'man: dark skin tone') then Exit(TEmoji.MAN_DARK_SKIN_TONE);
  if SameText(Name, 'man: dark skin tone, bald') then Exit(TEmoji.MAN_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'man: dark skin tone, beard') then Exit(TEmoji.MAN_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'man: dark skin tone, blond hair') then Exit(TEmoji.MAN_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'man: dark skin tone, curly hair') then Exit(TEmoji.MAN_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'man: dark skin tone, red hair') then Exit(TEmoji.MAN_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'man: dark skin tone, white hair') then Exit(TEmoji.MAN_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'man: light skin tone') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'man: light skin tone, bald') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'man: light skin tone, beard') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'man: light skin tone, blond hair') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'man: light skin tone, curly hair') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'man: light skin tone, red hair') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'man: light skin tone, white hair') then Exit(TEmoji.MAN_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'man: medium skin tone') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'man: medium skin tone, bald') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_BALD);
  if SameText(Name, 'man: medium skin tone, beard') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_BEARD);
  if SameText(Name, 'man: medium skin tone, blond hair') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'man: medium skin tone, curly hair') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'man: medium skin tone, red hair') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'man: medium skin tone, white hair') then Exit(TEmoji.MAN_MEDIUM_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'man: medium-dark skin tone') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'man: medium-dark skin tone, bald') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'man: medium-dark skin tone, beard') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'man: medium-dark skin tone, blond hair') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'man: medium-dark skin tone, curly hair') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'man: medium-dark skin tone, red hair') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'man: medium-dark skin tone, white hair') then Exit(TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'man: medium-light skin tone') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'man: medium-light skin tone, bald') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'man: medium-light skin tone, beard') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'man: medium-light skin tone, blond hair') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'man: medium-light skin tone, curly hair') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'man: medium-light skin tone, red hair') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'man: medium-light skin tone, white hair') then Exit(TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'man: red hair') then Exit(TEmoji.MAN_RED_HAIR);
  if SameText(Name, 'man: white hair') then Exit(TEmoji.MAN_WHITE_HAIR);
  if SameText(Name, 'mechanic') then Exit(TEmoji.MECHANIC);
  if SameText(Name, 'mechanic: dark skin tone') then Exit(TEmoji.MECHANIC_DARK_SKIN_TONE);
  if SameText(Name, 'mechanic: light skin tone') then Exit(TEmoji.MECHANIC_LIGHT_SKIN_TONE);
  if SameText(Name, 'mechanic: medium skin tone') then Exit(TEmoji.MECHANIC_MEDIUM_SKIN_TONE);
  if SameText(Name, 'mechanic: medium-dark skin tone') then Exit(TEmoji.MECHANIC_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'mechanic: medium-light skin tone') then Exit(TEmoji.MECHANIC_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: dark skin tone, light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: dark skin tone, medium skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'men holding hands: dark skin tone, medium-dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: dark skin tone, medium-light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: light skin tone, dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: light skin tone, medium skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'men holding hands: light skin tone, medium-dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: light skin tone, medium-light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium skin tone, dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium skin tone, light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium skin tone, medium-dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium skin tone, medium-light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-dark skin tone, dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-dark skin tone, light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-dark skin tone, medium skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-light skin tone, dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-light skin tone, light skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-light skin tone, medium skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'men holding hands: medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'men with bunny ears') then Exit(TEmoji.MEN_WITH_BUNNY_EARS);
  if SameText(Name, 'men wrestling') then Exit(TEmoji.MEN_WRESTLING);
  if SameText(Name, 'mending heart') then Exit(TEmoji.MENDING_HEART);
  if SameText(Name, 'mermaid') then Exit(TEmoji.MERMAID);
  if SameText(Name, 'mermaid: dark skin tone') then Exit(TEmoji.MERMAID_DARK_SKIN_TONE);
  if SameText(Name, 'mermaid: light skin tone') then Exit(TEmoji.MERMAID_LIGHT_SKIN_TONE);
  if SameText(Name, 'mermaid: medium skin tone') then Exit(TEmoji.MERMAID_MEDIUM_SKIN_TONE);
  if SameText(Name, 'mermaid: medium-dark skin tone') then Exit(TEmoji.MERMAID_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'mermaid: medium-light skin tone') then Exit(TEmoji.MERMAID_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'merman') then Exit(TEmoji.MERMAN);
  if SameText(Name, 'merman: dark skin tone') then Exit(TEmoji.MERMAN_DARK_SKIN_TONE);
  if SameText(Name, 'merman: light skin tone') then Exit(TEmoji.MERMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'merman: medium skin tone') then Exit(TEmoji.MERMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'merman: medium-dark skin tone') then Exit(TEmoji.MERMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'merman: medium-light skin tone') then Exit(TEmoji.MERMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'merperson: dark skin tone') then Exit(TEmoji.MERPERSON_DARK_SKIN_TONE);
  if SameText(Name, 'merperson: light skin tone') then Exit(TEmoji.MERPERSON_LIGHT_SKIN_TONE);
  if SameText(Name, 'merperson: medium skin tone') then Exit(TEmoji.MERPERSON_MEDIUM_SKIN_TONE);
  if SameText(Name, 'merperson: medium-dark skin tone') then Exit(TEmoji.MERPERSON_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'merperson: medium-light skin tone') then Exit(TEmoji.MERPERSON_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'middle finger: dark skin tone') then Exit(TEmoji.MIDDLE_FINGER_DARK_SKIN_TONE);
  if SameText(Name, 'middle finger: light skin tone') then Exit(TEmoji.MIDDLE_FINGER_LIGHT_SKIN_TONE);
  if SameText(Name, 'middle finger: medium skin tone') then Exit(TEmoji.MIDDLE_FINGER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'middle finger: medium-dark skin tone') then Exit(TEmoji.MIDDLE_FINGER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'middle finger: medium-light skin tone') then Exit(TEmoji.MIDDLE_FINGER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'nail polish: dark skin tone') then Exit(TEmoji.NAIL_POLISH_DARK_SKIN_TONE);
  if SameText(Name, 'nail polish: light skin tone') then Exit(TEmoji.NAIL_POLISH_LIGHT_SKIN_TONE);
  if SameText(Name, 'nail polish: medium skin tone') then Exit(TEmoji.NAIL_POLISH_MEDIUM_SKIN_TONE);
  if SameText(Name, 'nail polish: medium-dark skin tone') then Exit(TEmoji.NAIL_POLISH_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'nail polish: medium-light skin tone') then Exit(TEmoji.NAIL_POLISH_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'ninja: dark skin tone') then Exit(TEmoji.NINJA_DARK_SKIN_TONE);
  if SameText(Name, 'ninja: light skin tone') then Exit(TEmoji.NINJA_LIGHT_SKIN_TONE);
  if SameText(Name, 'ninja: medium skin tone') then Exit(TEmoji.NINJA_MEDIUM_SKIN_TONE);
  if SameText(Name, 'ninja: medium-dark skin tone') then Exit(TEmoji.NINJA_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'ninja: medium-light skin tone') then Exit(TEmoji.NINJA_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'nose: dark skin tone') then Exit(TEmoji.NOSE_DARK_SKIN_TONE);
  if SameText(Name, 'nose: light skin tone') then Exit(TEmoji.NOSE_LIGHT_SKIN_TONE);
  if SameText(Name, 'nose: medium skin tone') then Exit(TEmoji.NOSE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'nose: medium-dark skin tone') then Exit(TEmoji.NOSE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'nose: medium-light skin tone') then Exit(TEmoji.NOSE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'office worker') then Exit(TEmoji.OFFICE_WORKER);
  if SameText(Name, 'office worker: dark skin tone') then Exit(TEmoji.OFFICE_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'office worker: light skin tone') then Exit(TEmoji.OFFICE_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'office worker: medium skin tone') then Exit(TEmoji.OFFICE_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'office worker: medium-dark skin tone') then Exit(TEmoji.OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'office worker: medium-light skin tone') then Exit(TEmoji.OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'old man: dark skin tone') then Exit(TEmoji.OLD_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'old man: light skin tone') then Exit(TEmoji.OLD_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'old man: medium skin tone') then Exit(TEmoji.OLD_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'old man: medium-dark skin tone') then Exit(TEmoji.OLD_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'old man: medium-light skin tone') then Exit(TEmoji.OLD_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'old woman: dark skin tone') then Exit(TEmoji.OLD_WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'old woman: light skin tone') then Exit(TEmoji.OLD_WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'old woman: medium skin tone') then Exit(TEmoji.OLD_WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'old woman: medium-dark skin tone') then Exit(TEmoji.OLD_WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'old woman: medium-light skin tone') then Exit(TEmoji.OLD_WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'older person: dark skin tone') then Exit(TEmoji.OLDER_PERSON_DARK_SKIN_TONE);
  if SameText(Name, 'older person: light skin tone') then Exit(TEmoji.OLDER_PERSON_LIGHT_SKIN_TONE);
  if SameText(Name, 'older person: medium skin tone') then Exit(TEmoji.OLDER_PERSON_MEDIUM_SKIN_TONE);
  if SameText(Name, 'older person: medium-dark skin tone') then Exit(TEmoji.OLDER_PERSON_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'older person: medium-light skin tone') then Exit(TEmoji.OLDER_PERSON_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'oncoming fist: dark skin tone') then Exit(TEmoji.ONCOMING_FIST_DARK_SKIN_TONE);
  if SameText(Name, 'oncoming fist: light skin tone') then Exit(TEmoji.ONCOMING_FIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'oncoming fist: medium skin tone') then Exit(TEmoji.ONCOMING_FIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'oncoming fist: medium-dark skin tone') then Exit(TEmoji.ONCOMING_FIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'oncoming fist: medium-light skin tone') then Exit(TEmoji.ONCOMING_FIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'open hands: dark skin tone') then Exit(TEmoji.OPEN_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'open hands: light skin tone') then Exit(TEmoji.OPEN_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'open hands: medium skin tone') then Exit(TEmoji.OPEN_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'open hands: medium-dark skin tone') then Exit(TEmoji.OPEN_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'open hands: medium-light skin tone') then Exit(TEmoji.OPEN_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'palm down hand: dark skin tone') then Exit(TEmoji.PALM_DOWN_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'palm down hand: light skin tone') then Exit(TEmoji.PALM_DOWN_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'palm down hand: medium skin tone') then Exit(TEmoji.PALM_DOWN_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'palm down hand: medium-dark skin tone') then Exit(TEmoji.PALM_DOWN_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'palm down hand: medium-light skin tone') then Exit(TEmoji.PALM_DOWN_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'palm up hand: dark skin tone') then Exit(TEmoji.PALM_UP_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'palm up hand: light skin tone') then Exit(TEmoji.PALM_UP_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'palm up hand: medium skin tone') then Exit(TEmoji.PALM_UP_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'palm up hand: medium-dark skin tone') then Exit(TEmoji.PALM_UP_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'palm up hand: medium-light skin tone') then Exit(TEmoji.PALM_UP_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'palms up together: dark skin tone') then Exit(TEmoji.PALMS_UP_TOGETHER_DARK_SKIN_TONE);
  if SameText(Name, 'palms up together: light skin tone') then Exit(TEmoji.PALMS_UP_TOGETHER_LIGHT_SKIN_TONE);
  if SameText(Name, 'palms up together: medium skin tone') then Exit(TEmoji.PALMS_UP_TOGETHER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'palms up together: medium-dark skin tone') then Exit(TEmoji.PALMS_UP_TOGETHER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'palms up together: medium-light skin tone') then Exit(TEmoji.PALMS_UP_TOGETHER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands') then Exit(TEmoji.PEOPLE_HOLDING_HANDS);
  if SameText(Name, 'people holding hands: dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: dark skin tone, light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: dark skin tone, medium skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'people holding hands: dark skin tone, medium-dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: dark skin tone, medium-light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: light skin tone, dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: light skin tone, medium skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'people holding hands: light skin tone, medium-dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: light skin tone, medium-light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium skin tone, dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium skin tone, light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium skin tone, medium-dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium skin tone, medium-light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-dark skin tone, dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-dark skin tone, light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-dark skin tone, medium skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-light skin tone, dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-light skin tone, light skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-light skin tone, medium skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'people holding hands: medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person biking: dark skin tone') then Exit(TEmoji.PERSON_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'person biking: light skin tone') then Exit(TEmoji.PERSON_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person biking: medium skin tone') then Exit(TEmoji.PERSON_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person biking: medium-dark skin tone') then Exit(TEmoji.PERSON_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person biking: medium-light skin tone') then Exit(TEmoji.PERSON_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person bouncing ball: dark skin tone') then Exit(TEmoji.PERSON_BOUNCING_BALL_DARK_SKIN_TONE);
  if SameText(Name, 'person bouncing ball: light skin tone') then Exit(TEmoji.PERSON_BOUNCING_BALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'person bouncing ball: medium skin tone') then Exit(TEmoji.PERSON_BOUNCING_BALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person bouncing ball: medium-dark skin tone') then Exit(TEmoji.PERSON_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person bouncing ball: medium-light skin tone') then Exit(TEmoji.PERSON_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person bowing: dark skin tone') then Exit(TEmoji.PERSON_BOWING_DARK_SKIN_TONE);
  if SameText(Name, 'person bowing: light skin tone') then Exit(TEmoji.PERSON_BOWING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person bowing: medium skin tone') then Exit(TEmoji.PERSON_BOWING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person bowing: medium-dark skin tone') then Exit(TEmoji.PERSON_BOWING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person bowing: medium-light skin tone') then Exit(TEmoji.PERSON_BOWING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person cartwheeling: dark skin tone') then Exit(TEmoji.PERSON_CARTWHEELING_DARK_SKIN_TONE);
  if SameText(Name, 'person cartwheeling: light skin tone') then Exit(TEmoji.PERSON_CARTWHEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person cartwheeling: medium skin tone') then Exit(TEmoji.PERSON_CARTWHEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person cartwheeling: medium-dark skin tone') then Exit(TEmoji.PERSON_CARTWHEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person cartwheeling: medium-light skin tone') then Exit(TEmoji.PERSON_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person climbing: dark skin tone') then Exit(TEmoji.PERSON_CLIMBING_DARK_SKIN_TONE);
  if SameText(Name, 'person climbing: light skin tone') then Exit(TEmoji.PERSON_CLIMBING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person climbing: medium skin tone') then Exit(TEmoji.PERSON_CLIMBING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person climbing: medium-dark skin tone') then Exit(TEmoji.PERSON_CLIMBING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person climbing: medium-light skin tone') then Exit(TEmoji.PERSON_CLIMBING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person facepalming: dark skin tone') then Exit(TEmoji.PERSON_FACEPALMING_DARK_SKIN_TONE);
  if SameText(Name, 'person facepalming: light skin tone') then Exit(TEmoji.PERSON_FACEPALMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person facepalming: medium skin tone') then Exit(TEmoji.PERSON_FACEPALMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person facepalming: medium-dark skin tone') then Exit(TEmoji.PERSON_FACEPALMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person facepalming: medium-light skin tone') then Exit(TEmoji.PERSON_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person feeding baby') then Exit(TEmoji.PERSON_FEEDING_BABY);
  if SameText(Name, 'person feeding baby: dark skin tone') then Exit(TEmoji.PERSON_FEEDING_BABY_DARK_SKIN_TONE);
  if SameText(Name, 'person feeding baby: light skin tone') then Exit(TEmoji.PERSON_FEEDING_BABY_LIGHT_SKIN_TONE);
  if SameText(Name, 'person feeding baby: medium skin tone') then Exit(TEmoji.PERSON_FEEDING_BABY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person feeding baby: medium-dark skin tone') then Exit(TEmoji.PERSON_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person feeding baby: medium-light skin tone') then Exit(TEmoji.PERSON_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person frowning: dark skin tone') then Exit(TEmoji.PERSON_FROWNING_DARK_SKIN_TONE);
  if SameText(Name, 'person frowning: light skin tone') then Exit(TEmoji.PERSON_FROWNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person frowning: medium skin tone') then Exit(TEmoji.PERSON_FROWNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person frowning: medium-dark skin tone') then Exit(TEmoji.PERSON_FROWNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person frowning: medium-light skin tone') then Exit(TEmoji.PERSON_FROWNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person gesturing NO: dark skin tone') then Exit(TEmoji.PERSON_GESTURING_NO_DARK_SKIN_TONE);
  if SameText(Name, 'person gesturing NO: light skin tone') then Exit(TEmoji.PERSON_GESTURING_NO_LIGHT_SKIN_TONE);
  if SameText(Name, 'person gesturing NO: medium skin tone') then Exit(TEmoji.PERSON_GESTURING_NO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person gesturing NO: medium-dark skin tone') then Exit(TEmoji.PERSON_GESTURING_NO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person gesturing NO: medium-light skin tone') then Exit(TEmoji.PERSON_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person gesturing OK: dark skin tone') then Exit(TEmoji.PERSON_GESTURING_OK_DARK_SKIN_TONE);
  if SameText(Name, 'person gesturing OK: light skin tone') then Exit(TEmoji.PERSON_GESTURING_OK_LIGHT_SKIN_TONE);
  if SameText(Name, 'person gesturing OK: medium skin tone') then Exit(TEmoji.PERSON_GESTURING_OK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person gesturing OK: medium-dark skin tone') then Exit(TEmoji.PERSON_GESTURING_OK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person gesturing OK: medium-light skin tone') then Exit(TEmoji.PERSON_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person getting haircut: dark skin tone') then Exit(TEmoji.PERSON_GETTING_HAIRCUT_DARK_SKIN_TONE);
  if SameText(Name, 'person getting haircut: light skin tone') then Exit(TEmoji.PERSON_GETTING_HAIRCUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person getting haircut: medium skin tone') then Exit(TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person getting haircut: medium-dark skin tone') then Exit(TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person getting haircut: medium-light skin tone') then Exit(TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person getting massage: dark skin tone') then Exit(TEmoji.PERSON_GETTING_MASSAGE_DARK_SKIN_TONE);
  if SameText(Name, 'person getting massage: light skin tone') then Exit(TEmoji.PERSON_GETTING_MASSAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'person getting massage: medium skin tone') then Exit(TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person getting massage: medium-dark skin tone') then Exit(TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person getting massage: medium-light skin tone') then Exit(TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person golfing: dark skin tone') then Exit(TEmoji.PERSON_GOLFING_DARK_SKIN_TONE);
  if SameText(Name, 'person golfing: light skin tone') then Exit(TEmoji.PERSON_GOLFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person golfing: medium skin tone') then Exit(TEmoji.PERSON_GOLFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person golfing: medium-dark skin tone') then Exit(TEmoji.PERSON_GOLFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person golfing: medium-light skin tone') then Exit(TEmoji.PERSON_GOLFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in bed: dark skin tone') then Exit(TEmoji.PERSON_IN_BED_DARK_SKIN_TONE);
  if SameText(Name, 'person in bed: light skin tone') then Exit(TEmoji.PERSON_IN_BED_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in bed: medium skin tone') then Exit(TEmoji.PERSON_IN_BED_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in bed: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_BED_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in bed: medium-light skin tone') then Exit(TEmoji.PERSON_IN_BED_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in lotus position: dark skin tone') then Exit(TEmoji.PERSON_IN_LOTUS_POSITION_DARK_SKIN_TONE);
  if SameText(Name, 'person in lotus position: light skin tone') then Exit(TEmoji.PERSON_IN_LOTUS_POSITION_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in lotus position: medium skin tone') then Exit(TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in lotus position: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in lotus position: medium-light skin tone') then Exit(TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR);
  if SameText(Name, 'person in manual wheelchair facing right') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'person in manual wheelchair facing right: dark skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair facing right: light skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair facing right: medium skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair facing right: medium-light skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair: dark skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair: light skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair: medium skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in manual wheelchair: medium-light skin tone') then Exit(TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR);
  if SameText(Name, 'person in motorized wheelchair facing right') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'person in motorized wheelchair facing right: dark skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair facing right: light skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair facing right: medium skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair facing right: medium-light skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair: dark skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair: light skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair: medium skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in motorized wheelchair: medium-light skin tone') then Exit(TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in steamy room: dark skin tone') then Exit(TEmoji.PERSON_IN_STEAMY_ROOM_DARK_SKIN_TONE);
  if SameText(Name, 'person in steamy room: light skin tone') then Exit(TEmoji.PERSON_IN_STEAMY_ROOM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in steamy room: medium skin tone') then Exit(TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in steamy room: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in steamy room: medium-light skin tone') then Exit(TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in suit levitating: dark skin tone') then Exit(TEmoji.PERSON_IN_SUIT_LEVITATING_DARK_SKIN_TONE);
  if SameText(Name, 'person in suit levitating: light skin tone') then Exit(TEmoji.PERSON_IN_SUIT_LEVITATING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in suit levitating: medium skin tone') then Exit(TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in suit levitating: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in suit levitating: medium-light skin tone') then Exit(TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in tuxedo: dark skin tone') then Exit(TEmoji.PERSON_IN_TUXEDO_DARK_SKIN_TONE);
  if SameText(Name, 'person in tuxedo: light skin tone') then Exit(TEmoji.PERSON_IN_TUXEDO_LIGHT_SKIN_TONE);
  if SameText(Name, 'person in tuxedo: medium skin tone') then Exit(TEmoji.PERSON_IN_TUXEDO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person in tuxedo: medium-dark skin tone') then Exit(TEmoji.PERSON_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person in tuxedo: medium-light skin tone') then Exit(TEmoji.PERSON_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person juggling: dark skin tone') then Exit(TEmoji.PERSON_JUGGLING_DARK_SKIN_TONE);
  if SameText(Name, 'person juggling: light skin tone') then Exit(TEmoji.PERSON_JUGGLING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person juggling: medium skin tone') then Exit(TEmoji.PERSON_JUGGLING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person juggling: medium-dark skin tone') then Exit(TEmoji.PERSON_JUGGLING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person juggling: medium-light skin tone') then Exit(TEmoji.PERSON_JUGGLING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person kneeling facing right') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT);
  if SameText(Name, 'person kneeling facing right: dark skin tone') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person kneeling facing right: light skin tone') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person kneeling facing right: medium skin tone') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person kneeling facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person kneeling facing right: medium-light skin tone') then Exit(TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person kneeling: dark skin tone') then Exit(TEmoji.PERSON_KNEELING_DARK_SKIN_TONE);
  if SameText(Name, 'person kneeling: light skin tone') then Exit(TEmoji.PERSON_KNEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person kneeling: medium skin tone') then Exit(TEmoji.PERSON_KNEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person kneeling: medium-dark skin tone') then Exit(TEmoji.PERSON_KNEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person kneeling: medium-light skin tone') then Exit(TEmoji.PERSON_KNEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person lifting weights: dark skin tone') then Exit(TEmoji.PERSON_LIFTING_WEIGHTS_DARK_SKIN_TONE);
  if SameText(Name, 'person lifting weights: light skin tone') then Exit(TEmoji.PERSON_LIFTING_WEIGHTS_LIGHT_SKIN_TONE);
  if SameText(Name, 'person lifting weights: medium skin tone') then Exit(TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person lifting weights: medium-dark skin tone') then Exit(TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person lifting weights: medium-light skin tone') then Exit(TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person mountain biking: dark skin tone') then Exit(TEmoji.PERSON_MOUNTAIN_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'person mountain biking: light skin tone') then Exit(TEmoji.PERSON_MOUNTAIN_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person mountain biking: medium skin tone') then Exit(TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person mountain biking: medium-dark skin tone') then Exit(TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person mountain biking: medium-light skin tone') then Exit(TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person playing handball: dark skin tone') then Exit(TEmoji.PERSON_PLAYING_HANDBALL_DARK_SKIN_TONE);
  if SameText(Name, 'person playing handball: light skin tone') then Exit(TEmoji.PERSON_PLAYING_HANDBALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'person playing handball: medium skin tone') then Exit(TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person playing handball: medium-dark skin tone') then Exit(TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person playing handball: medium-light skin tone') then Exit(TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person playing water polo: dark skin tone') then Exit(TEmoji.PERSON_PLAYING_WATER_POLO_DARK_SKIN_TONE);
  if SameText(Name, 'person playing water polo: light skin tone') then Exit(TEmoji.PERSON_PLAYING_WATER_POLO_LIGHT_SKIN_TONE);
  if SameText(Name, 'person playing water polo: medium skin tone') then Exit(TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person playing water polo: medium-dark skin tone') then Exit(TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person playing water polo: medium-light skin tone') then Exit(TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person pouting: dark skin tone') then Exit(TEmoji.PERSON_POUTING_DARK_SKIN_TONE);
  if SameText(Name, 'person pouting: light skin tone') then Exit(TEmoji.PERSON_POUTING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person pouting: medium skin tone') then Exit(TEmoji.PERSON_POUTING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person pouting: medium-dark skin tone') then Exit(TEmoji.PERSON_POUTING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person pouting: medium-light skin tone') then Exit(TEmoji.PERSON_POUTING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person raising hand: dark skin tone') then Exit(TEmoji.PERSON_RAISING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'person raising hand: light skin tone') then Exit(TEmoji.PERSON_RAISING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'person raising hand: medium skin tone') then Exit(TEmoji.PERSON_RAISING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person raising hand: medium-dark skin tone') then Exit(TEmoji.PERSON_RAISING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person raising hand: medium-light skin tone') then Exit(TEmoji.PERSON_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person rowing boat: dark skin tone') then Exit(TEmoji.PERSON_ROWING_BOAT_DARK_SKIN_TONE);
  if SameText(Name, 'person rowing boat: light skin tone') then Exit(TEmoji.PERSON_ROWING_BOAT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person rowing boat: medium skin tone') then Exit(TEmoji.PERSON_ROWING_BOAT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person rowing boat: medium-dark skin tone') then Exit(TEmoji.PERSON_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person rowing boat: medium-light skin tone') then Exit(TEmoji.PERSON_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person running facing right') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT);
  if SameText(Name, 'person running facing right: dark skin tone') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person running facing right: light skin tone') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person running facing right: medium skin tone') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person running facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person running facing right: medium-light skin tone') then Exit(TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person running: dark skin tone') then Exit(TEmoji.PERSON_RUNNING_DARK_SKIN_TONE);
  if SameText(Name, 'person running: light skin tone') then Exit(TEmoji.PERSON_RUNNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person running: medium skin tone') then Exit(TEmoji.PERSON_RUNNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person running: medium-dark skin tone') then Exit(TEmoji.PERSON_RUNNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person running: medium-light skin tone') then Exit(TEmoji.PERSON_RUNNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person shrugging: dark skin tone') then Exit(TEmoji.PERSON_SHRUGGING_DARK_SKIN_TONE);
  if SameText(Name, 'person shrugging: light skin tone') then Exit(TEmoji.PERSON_SHRUGGING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person shrugging: medium skin tone') then Exit(TEmoji.PERSON_SHRUGGING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person shrugging: medium-dark skin tone') then Exit(TEmoji.PERSON_SHRUGGING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person shrugging: medium-light skin tone') then Exit(TEmoji.PERSON_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person standing: dark skin tone') then Exit(TEmoji.PERSON_STANDING_DARK_SKIN_TONE);
  if SameText(Name, 'person standing: light skin tone') then Exit(TEmoji.PERSON_STANDING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person standing: medium skin tone') then Exit(TEmoji.PERSON_STANDING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person standing: medium-dark skin tone') then Exit(TEmoji.PERSON_STANDING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person standing: medium-light skin tone') then Exit(TEmoji.PERSON_STANDING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person surfing: dark skin tone') then Exit(TEmoji.PERSON_SURFING_DARK_SKIN_TONE);
  if SameText(Name, 'person surfing: light skin tone') then Exit(TEmoji.PERSON_SURFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person surfing: medium skin tone') then Exit(TEmoji.PERSON_SURFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person surfing: medium-dark skin tone') then Exit(TEmoji.PERSON_SURFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person surfing: medium-light skin tone') then Exit(TEmoji.PERSON_SURFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person swimming: dark skin tone') then Exit(TEmoji.PERSON_SWIMMING_DARK_SKIN_TONE);
  if SameText(Name, 'person swimming: light skin tone') then Exit(TEmoji.PERSON_SWIMMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person swimming: medium skin tone') then Exit(TEmoji.PERSON_SWIMMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person swimming: medium-dark skin tone') then Exit(TEmoji.PERSON_SWIMMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person swimming: medium-light skin tone') then Exit(TEmoji.PERSON_SWIMMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person taking bath: dark skin tone') then Exit(TEmoji.PERSON_TAKING_BATH_DARK_SKIN_TONE);
  if SameText(Name, 'person taking bath: light skin tone') then Exit(TEmoji.PERSON_TAKING_BATH_LIGHT_SKIN_TONE);
  if SameText(Name, 'person taking bath: medium skin tone') then Exit(TEmoji.PERSON_TAKING_BATH_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person taking bath: medium-dark skin tone') then Exit(TEmoji.PERSON_TAKING_BATH_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person taking bath: medium-light skin tone') then Exit(TEmoji.PERSON_TAKING_BATH_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person tipping hand: dark skin tone') then Exit(TEmoji.PERSON_TIPPING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'person tipping hand: light skin tone') then Exit(TEmoji.PERSON_TIPPING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'person tipping hand: medium skin tone') then Exit(TEmoji.PERSON_TIPPING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person tipping hand: medium-dark skin tone') then Exit(TEmoji.PERSON_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person tipping hand: medium-light skin tone') then Exit(TEmoji.PERSON_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person walking facing right') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT);
  if SameText(Name, 'person walking facing right: dark skin tone') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person walking facing right: light skin tone') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person walking facing right: medium skin tone') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person walking facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person walking facing right: medium-light skin tone') then Exit(TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person walking: dark skin tone') then Exit(TEmoji.PERSON_WALKING_DARK_SKIN_TONE);
  if SameText(Name, 'person walking: light skin tone') then Exit(TEmoji.PERSON_WALKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'person walking: medium skin tone') then Exit(TEmoji.PERSON_WALKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person walking: medium-dark skin tone') then Exit(TEmoji.PERSON_WALKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person walking: medium-light skin tone') then Exit(TEmoji.PERSON_WALKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person wearing turban: dark skin tone') then Exit(TEmoji.PERSON_WEARING_TURBAN_DARK_SKIN_TONE);
  if SameText(Name, 'person wearing turban: light skin tone') then Exit(TEmoji.PERSON_WEARING_TURBAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'person wearing turban: medium skin tone') then Exit(TEmoji.PERSON_WEARING_TURBAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person wearing turban: medium-dark skin tone') then Exit(TEmoji.PERSON_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person wearing turban: medium-light skin tone') then Exit(TEmoji.PERSON_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with crown: dark skin tone') then Exit(TEmoji.PERSON_WITH_CROWN_DARK_SKIN_TONE);
  if SameText(Name, 'person with crown: light skin tone') then Exit(TEmoji.PERSON_WITH_CROWN_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with crown: medium skin tone') then Exit(TEmoji.PERSON_WITH_CROWN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person with crown: medium-dark skin tone') then Exit(TEmoji.PERSON_WITH_CROWN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person with crown: medium-light skin tone') then Exit(TEmoji.PERSON_WITH_CROWN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with skullcap: dark skin tone') then Exit(TEmoji.PERSON_WITH_SKULLCAP_DARK_SKIN_TONE);
  if SameText(Name, 'person with skullcap: light skin tone') then Exit(TEmoji.PERSON_WITH_SKULLCAP_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with skullcap: medium skin tone') then Exit(TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person with skullcap: medium-dark skin tone') then Exit(TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person with skullcap: medium-light skin tone') then Exit(TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with veil: dark skin tone') then Exit(TEmoji.PERSON_WITH_VEIL_DARK_SKIN_TONE);
  if SameText(Name, 'person with veil: light skin tone') then Exit(TEmoji.PERSON_WITH_VEIL_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with veil: medium skin tone') then Exit(TEmoji.PERSON_WITH_VEIL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person with veil: medium-dark skin tone') then Exit(TEmoji.PERSON_WITH_VEIL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person with veil: medium-light skin tone') then Exit(TEmoji.PERSON_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with white cane') then Exit(TEmoji.PERSON_WITH_WHITE_CANE);
  if SameText(Name, 'person with white cane facing right') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT);
  if SameText(Name, 'person with white cane facing right: dark skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'person with white cane facing right: light skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with white cane facing right: medium skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person with white cane facing right: medium-dark skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person with white cane facing right: medium-light skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with white cane: dark skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_DARK_SKIN_TONE);
  if SameText(Name, 'person with white cane: light skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_LIGHT_SKIN_TONE);
  if SameText(Name, 'person with white cane: medium skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person with white cane: medium-dark skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person with white cane: medium-light skin tone') then Exit(TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person: bald') then Exit(TEmoji.PERSON_BALD);
  if SameText(Name, 'person: curly hair') then Exit(TEmoji.PERSON_CURLY_HAIR);
  if SameText(Name, 'person: dark skin tone') then Exit(TEmoji.PERSON_DARK_SKIN_TONE);
  if SameText(Name, 'person: dark skin tone, bald') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'person: dark skin tone, beard') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'person: dark skin tone, blond hair') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'person: dark skin tone, curly hair') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'person: dark skin tone, red hair') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'person: dark skin tone, white hair') then Exit(TEmoji.PERSON_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'person: light skin tone') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE);
  if SameText(Name, 'person: light skin tone, bald') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'person: light skin tone, beard') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'person: light skin tone, blond hair') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'person: light skin tone, curly hair') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'person: light skin tone, red hair') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'person: light skin tone, white hair') then Exit(TEmoji.PERSON_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'person: medium skin tone') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE);
  if SameText(Name, 'person: medium skin tone, bald') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_BALD);
  if SameText(Name, 'person: medium skin tone, beard') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_BEARD);
  if SameText(Name, 'person: medium skin tone, blond hair') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'person: medium skin tone, curly hair') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'person: medium skin tone, red hair') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'person: medium skin tone, white hair') then Exit(TEmoji.PERSON_MEDIUM_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'person: medium-dark skin tone') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'person: medium-dark skin tone, bald') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'person: medium-dark skin tone, beard') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'person: medium-dark skin tone, blond hair') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'person: medium-dark skin tone, curly hair') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'person: medium-dark skin tone, red hair') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'person: medium-dark skin tone, white hair') then Exit(TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'person: medium-light skin tone') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'person: medium-light skin tone, bald') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'person: medium-light skin tone, beard') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'person: medium-light skin tone, blond hair') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'person: medium-light skin tone, curly hair') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'person: medium-light skin tone, red hair') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'person: medium-light skin tone, white hair') then Exit(TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'person: red hair') then Exit(TEmoji.PERSON_RED_HAIR);
  if SameText(Name, 'person: white hair') then Exit(TEmoji.PERSON_WHITE_HAIR);
  if SameText(Name, 'phoenix') then Exit(TEmoji.PHOENIX);
  if SameText(Name, 'pilot') then Exit(TEmoji.PILOT);
  if SameText(Name, 'pilot: dark skin tone') then Exit(TEmoji.PILOT_DARK_SKIN_TONE);
  if SameText(Name, 'pilot: light skin tone') then Exit(TEmoji.PILOT_LIGHT_SKIN_TONE);
  if SameText(Name, 'pilot: medium skin tone') then Exit(TEmoji.PILOT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pilot: medium-dark skin tone') then Exit(TEmoji.PILOT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pilot: medium-light skin tone') then Exit(TEmoji.PILOT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pinched fingers: dark skin tone') then Exit(TEmoji.PINCHED_FINGERS_DARK_SKIN_TONE);
  if SameText(Name, 'pinched fingers: light skin tone') then Exit(TEmoji.PINCHED_FINGERS_LIGHT_SKIN_TONE);
  if SameText(Name, 'pinched fingers: medium skin tone') then Exit(TEmoji.PINCHED_FINGERS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pinched fingers: medium-dark skin tone') then Exit(TEmoji.PINCHED_FINGERS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pinched fingers: medium-light skin tone') then Exit(TEmoji.PINCHED_FINGERS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pinching hand: dark skin tone') then Exit(TEmoji.PINCHING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'pinching hand: light skin tone') then Exit(TEmoji.PINCHING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'pinching hand: medium skin tone') then Exit(TEmoji.PINCHING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pinching hand: medium-dark skin tone') then Exit(TEmoji.PINCHING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pinching hand: medium-light skin tone') then Exit(TEmoji.PINCHING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pirate flag') then Exit(TEmoji.PIRATE_FLAG);
  if SameText(Name, 'polar bear') then Exit(TEmoji.POLAR_BEAR);
  if SameText(Name, 'police officer: dark skin tone') then Exit(TEmoji.POLICE_OFFICER_DARK_SKIN_TONE);
  if SameText(Name, 'police officer: light skin tone') then Exit(TEmoji.POLICE_OFFICER_LIGHT_SKIN_TONE);
  if SameText(Name, 'police officer: medium skin tone') then Exit(TEmoji.POLICE_OFFICER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'police officer: medium-dark skin tone') then Exit(TEmoji.POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'police officer: medium-light skin tone') then Exit(TEmoji.POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant man: dark skin tone') then Exit(TEmoji.PREGNANT_MAN_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant man: light skin tone') then Exit(TEmoji.PREGNANT_MAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant man: medium skin tone') then Exit(TEmoji.PREGNANT_MAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pregnant man: medium-dark skin tone') then Exit(TEmoji.PREGNANT_MAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant man: medium-light skin tone') then Exit(TEmoji.PREGNANT_MAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant person: dark skin tone') then Exit(TEmoji.PREGNANT_PERSON_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant person: light skin tone') then Exit(TEmoji.PREGNANT_PERSON_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant person: medium skin tone') then Exit(TEmoji.PREGNANT_PERSON_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pregnant person: medium-dark skin tone') then Exit(TEmoji.PREGNANT_PERSON_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant person: medium-light skin tone') then Exit(TEmoji.PREGNANT_PERSON_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant woman: dark skin tone') then Exit(TEmoji.PREGNANT_WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant woman: light skin tone') then Exit(TEmoji.PREGNANT_WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'pregnant woman: medium skin tone') then Exit(TEmoji.PREGNANT_WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'pregnant woman: medium-dark skin tone') then Exit(TEmoji.PREGNANT_WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'pregnant woman: medium-light skin tone') then Exit(TEmoji.PREGNANT_WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'prince: dark skin tone') then Exit(TEmoji.PRINCE_DARK_SKIN_TONE);
  if SameText(Name, 'prince: light skin tone') then Exit(TEmoji.PRINCE_LIGHT_SKIN_TONE);
  if SameText(Name, 'prince: medium skin tone') then Exit(TEmoji.PRINCE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'prince: medium-dark skin tone') then Exit(TEmoji.PRINCE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'prince: medium-light skin tone') then Exit(TEmoji.PRINCE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'princess: dark skin tone') then Exit(TEmoji.PRINCESS_DARK_SKIN_TONE);
  if SameText(Name, 'princess: light skin tone') then Exit(TEmoji.PRINCESS_LIGHT_SKIN_TONE);
  if SameText(Name, 'princess: medium skin tone') then Exit(TEmoji.PRINCESS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'princess: medium-dark skin tone') then Exit(TEmoji.PRINCESS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'princess: medium-light skin tone') then Exit(TEmoji.PRINCESS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'rainbow flag') then Exit(TEmoji.RAINBOW_FLAG);
  if SameText(Name, 'raised back of hand: dark skin tone') then Exit(TEmoji.RAISED_BACK_OF_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'raised back of hand: light skin tone') then Exit(TEmoji.RAISED_BACK_OF_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'raised back of hand: medium skin tone') then Exit(TEmoji.RAISED_BACK_OF_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'raised back of hand: medium-dark skin tone') then Exit(TEmoji.RAISED_BACK_OF_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'raised back of hand: medium-light skin tone') then Exit(TEmoji.RAISED_BACK_OF_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'raised fist: dark skin tone') then Exit(TEmoji.RAISED_FIST_DARK_SKIN_TONE);
  if SameText(Name, 'raised fist: light skin tone') then Exit(TEmoji.RAISED_FIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'raised fist: medium skin tone') then Exit(TEmoji.RAISED_FIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'raised fist: medium-dark skin tone') then Exit(TEmoji.RAISED_FIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'raised fist: medium-light skin tone') then Exit(TEmoji.RAISED_FIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'raised hand: dark skin tone') then Exit(TEmoji.RAISED_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'raised hand: light skin tone') then Exit(TEmoji.RAISED_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'raised hand: medium skin tone') then Exit(TEmoji.RAISED_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'raised hand: medium-dark skin tone') then Exit(TEmoji.RAISED_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'raised hand: medium-light skin tone') then Exit(TEmoji.RAISED_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'raising hands: dark skin tone') then Exit(TEmoji.RAISING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'raising hands: light skin tone') then Exit(TEmoji.RAISING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'raising hands: medium skin tone') then Exit(TEmoji.RAISING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'raising hands: medium-dark skin tone') then Exit(TEmoji.RAISING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'raising hands: medium-light skin tone') then Exit(TEmoji.RAISING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'right-facing fist: dark skin tone') then Exit(TEmoji.RIGHT_FACING_FIST_DARK_SKIN_TONE);
  if SameText(Name, 'right-facing fist: light skin tone') then Exit(TEmoji.RIGHT_FACING_FIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'right-facing fist: medium skin tone') then Exit(TEmoji.RIGHT_FACING_FIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'right-facing fist: medium-dark skin tone') then Exit(TEmoji.RIGHT_FACING_FIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'right-facing fist: medium-light skin tone') then Exit(TEmoji.RIGHT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'rightwards hand: dark skin tone') then Exit(TEmoji.RIGHTWARDS_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'rightwards hand: light skin tone') then Exit(TEmoji.RIGHTWARDS_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'rightwards hand: medium skin tone') then Exit(TEmoji.RIGHTWARDS_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'rightwards hand: medium-dark skin tone') then Exit(TEmoji.RIGHTWARDS_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'rightwards hand: medium-light skin tone') then Exit(TEmoji.RIGHTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'rightwards pushing hand: dark skin tone') then Exit(TEmoji.RIGHTWARDS_PUSHING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'rightwards pushing hand: light skin tone') then Exit(TEmoji.RIGHTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'rightwards pushing hand: medium skin tone') then Exit(TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'rightwards pushing hand: medium-dark skin tone') then Exit(TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'rightwards pushing hand: medium-light skin tone') then Exit(TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'scientist') then Exit(TEmoji.SCIENTIST);
  if SameText(Name, 'scientist: dark skin tone') then Exit(TEmoji.SCIENTIST_DARK_SKIN_TONE);
  if SameText(Name, 'scientist: light skin tone') then Exit(TEmoji.SCIENTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'scientist: medium skin tone') then Exit(TEmoji.SCIENTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'scientist: medium-dark skin tone') then Exit(TEmoji.SCIENTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'scientist: medium-light skin tone') then Exit(TEmoji.SCIENTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'selfie: dark skin tone') then Exit(TEmoji.SELFIE_DARK_SKIN_TONE);
  if SameText(Name, 'selfie: light skin tone') then Exit(TEmoji.SELFIE_LIGHT_SKIN_TONE);
  if SameText(Name, 'selfie: medium skin tone') then Exit(TEmoji.SELFIE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'selfie: medium-dark skin tone') then Exit(TEmoji.SELFIE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'selfie: medium-light skin tone') then Exit(TEmoji.SELFIE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'service dog') then Exit(TEmoji.SERVICE_DOG);
  if SameText(Name, 'sign of the horns: dark skin tone') then Exit(TEmoji.SIGN_OF_THE_HORNS_DARK_SKIN_TONE);
  if SameText(Name, 'sign of the horns: light skin tone') then Exit(TEmoji.SIGN_OF_THE_HORNS_LIGHT_SKIN_TONE);
  if SameText(Name, 'sign of the horns: medium skin tone') then Exit(TEmoji.SIGN_OF_THE_HORNS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'sign of the horns: medium-dark skin tone') then Exit(TEmoji.SIGN_OF_THE_HORNS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'sign of the horns: medium-light skin tone') then Exit(TEmoji.SIGN_OF_THE_HORNS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'singer') then Exit(TEmoji.SINGER);
  if SameText(Name, 'singer: dark skin tone') then Exit(TEmoji.SINGER_DARK_SKIN_TONE);
  if SameText(Name, 'singer: light skin tone') then Exit(TEmoji.SINGER_LIGHT_SKIN_TONE);
  if SameText(Name, 'singer: medium skin tone') then Exit(TEmoji.SINGER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'singer: medium-dark skin tone') then Exit(TEmoji.SINGER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'singer: medium-light skin tone') then Exit(TEmoji.SINGER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'snowboarder: dark skin tone') then Exit(TEmoji.SNOWBOARDER_DARK_SKIN_TONE);
  if SameText(Name, 'snowboarder: light skin tone') then Exit(TEmoji.SNOWBOARDER_LIGHT_SKIN_TONE);
  if SameText(Name, 'snowboarder: medium skin tone') then Exit(TEmoji.SNOWBOARDER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'snowboarder: medium-dark skin tone') then Exit(TEmoji.SNOWBOARDER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'snowboarder: medium-light skin tone') then Exit(TEmoji.SNOWBOARDER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'student') then Exit(TEmoji.STUDENT);
  if SameText(Name, 'student: dark skin tone') then Exit(TEmoji.STUDENT_DARK_SKIN_TONE);
  if SameText(Name, 'student: light skin tone') then Exit(TEmoji.STUDENT_LIGHT_SKIN_TONE);
  if SameText(Name, 'student: medium skin tone') then Exit(TEmoji.STUDENT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'student: medium-dark skin tone') then Exit(TEmoji.STUDENT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'student: medium-light skin tone') then Exit(TEmoji.STUDENT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'superhero: dark skin tone') then Exit(TEmoji.SUPERHERO_DARK_SKIN_TONE);
  if SameText(Name, 'superhero: light skin tone') then Exit(TEmoji.SUPERHERO_LIGHT_SKIN_TONE);
  if SameText(Name, 'superhero: medium skin tone') then Exit(TEmoji.SUPERHERO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'superhero: medium-dark skin tone') then Exit(TEmoji.SUPERHERO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'superhero: medium-light skin tone') then Exit(TEmoji.SUPERHERO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'supervillain: dark skin tone') then Exit(TEmoji.SUPERVILLAIN_DARK_SKIN_TONE);
  if SameText(Name, 'supervillain: light skin tone') then Exit(TEmoji.SUPERVILLAIN_LIGHT_SKIN_TONE);
  if SameText(Name, 'supervillain: medium skin tone') then Exit(TEmoji.SUPERVILLAIN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'supervillain: medium-dark skin tone') then Exit(TEmoji.SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'supervillain: medium-light skin tone') then Exit(TEmoji.SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'teacher') then Exit(TEmoji.TEACHER);
  if SameText(Name, 'teacher: dark skin tone') then Exit(TEmoji.TEACHER_DARK_SKIN_TONE);
  if SameText(Name, 'teacher: light skin tone') then Exit(TEmoji.TEACHER_LIGHT_SKIN_TONE);
  if SameText(Name, 'teacher: medium skin tone') then Exit(TEmoji.TEACHER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'teacher: medium-dark skin tone') then Exit(TEmoji.TEACHER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'teacher: medium-light skin tone') then Exit(TEmoji.TEACHER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'technologist') then Exit(TEmoji.TECHNOLOGIST);
  if SameText(Name, 'technologist: dark skin tone') then Exit(TEmoji.TECHNOLOGIST_DARK_SKIN_TONE);
  if SameText(Name, 'technologist: light skin tone') then Exit(TEmoji.TECHNOLOGIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'technologist: medium skin tone') then Exit(TEmoji.TECHNOLOGIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'technologist: medium-dark skin tone') then Exit(TEmoji.TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'technologist: medium-light skin tone') then Exit(TEmoji.TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'thumbs down: dark skin tone') then Exit(TEmoji.THUMBS_DOWN_DARK_SKIN_TONE);
  if SameText(Name, 'thumbs down: light skin tone') then Exit(TEmoji.THUMBS_DOWN_LIGHT_SKIN_TONE);
  if SameText(Name, 'thumbs down: medium skin tone') then Exit(TEmoji.THUMBS_DOWN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'thumbs down: medium-dark skin tone') then Exit(TEmoji.THUMBS_DOWN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'thumbs down: medium-light skin tone') then Exit(TEmoji.THUMBS_DOWN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'thumbs up: dark skin tone') then Exit(TEmoji.THUMBS_UP_DARK_SKIN_TONE);
  if SameText(Name, 'thumbs up: light skin tone') then Exit(TEmoji.THUMBS_UP_LIGHT_SKIN_TONE);
  if SameText(Name, 'thumbs up: medium skin tone') then Exit(TEmoji.THUMBS_UP_MEDIUM_SKIN_TONE);
  if SameText(Name, 'thumbs up: medium-dark skin tone') then Exit(TEmoji.THUMBS_UP_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'thumbs up: medium-light skin tone') then Exit(TEmoji.THUMBS_UP_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'transgender flag') then Exit(TEmoji.TRANSGENDER_FLAG);
  if SameText(Name, 'vampire: dark skin tone') then Exit(TEmoji.VAMPIRE_DARK_SKIN_TONE);
  if SameText(Name, 'vampire: light skin tone') then Exit(TEmoji.VAMPIRE_LIGHT_SKIN_TONE);
  if SameText(Name, 'vampire: medium skin tone') then Exit(TEmoji.VAMPIRE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'vampire: medium-dark skin tone') then Exit(TEmoji.VAMPIRE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'vampire: medium-light skin tone') then Exit(TEmoji.VAMPIRE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'victory hand: dark skin tone') then Exit(TEmoji.VICTORY_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'victory hand: light skin tone') then Exit(TEmoji.VICTORY_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'victory hand: medium skin tone') then Exit(TEmoji.VICTORY_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'victory hand: medium-dark skin tone') then Exit(TEmoji.VICTORY_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'victory hand: medium-light skin tone') then Exit(TEmoji.VICTORY_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'vulcan salute: dark skin tone') then Exit(TEmoji.VULCAN_SALUTE_DARK_SKIN_TONE);
  if SameText(Name, 'vulcan salute: light skin tone') then Exit(TEmoji.VULCAN_SALUTE_LIGHT_SKIN_TONE);
  if SameText(Name, 'vulcan salute: medium skin tone') then Exit(TEmoji.VULCAN_SALUTE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'vulcan salute: medium-dark skin tone') then Exit(TEmoji.VULCAN_SALUTE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'vulcan salute: medium-light skin tone') then Exit(TEmoji.VULCAN_SALUTE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'waving hand: dark skin tone') then Exit(TEmoji.WAVING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'waving hand: light skin tone') then Exit(TEmoji.WAVING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'waving hand: medium skin tone') then Exit(TEmoji.WAVING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'waving hand: medium-dark skin tone') then Exit(TEmoji.WAVING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'waving hand: medium-light skin tone') then Exit(TEmoji.WAVING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: dark skin tone, light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: dark skin tone, medium skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: dark skin tone, medium-dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: dark skin tone, medium-light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: light skin tone, dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: light skin tone, medium skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: light skin tone, medium-dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: light skin tone, medium-light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium skin tone, dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium skin tone, light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium skin tone, medium-dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium skin tone, medium-light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-dark skin tone, dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-dark skin tone, light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-dark skin tone, medium skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-light skin tone, dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-light skin tone, light skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-light skin tone, medium skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman and man holding hands: medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman artist') then Exit(TEmoji.WOMAN_ARTIST);
  if SameText(Name, 'woman artist: dark skin tone') then Exit(TEmoji.WOMAN_ARTIST_DARK_SKIN_TONE);
  if SameText(Name, 'woman artist: light skin tone') then Exit(TEmoji.WOMAN_ARTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman artist: medium skin tone') then Exit(TEmoji.WOMAN_ARTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman artist: medium-dark skin tone') then Exit(TEmoji.WOMAN_ARTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman artist: medium-light skin tone') then Exit(TEmoji.WOMAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman astronaut') then Exit(TEmoji.WOMAN_ASTRONAUT);
  if SameText(Name, 'woman astronaut: dark skin tone') then Exit(TEmoji.WOMAN_ASTRONAUT_DARK_SKIN_TONE);
  if SameText(Name, 'woman astronaut: light skin tone') then Exit(TEmoji.WOMAN_ASTRONAUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman astronaut: medium skin tone') then Exit(TEmoji.WOMAN_ASTRONAUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman astronaut: medium-dark skin tone') then Exit(TEmoji.WOMAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman astronaut: medium-light skin tone') then Exit(TEmoji.WOMAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman biking') then Exit(TEmoji.WOMAN_BIKING);
  if SameText(Name, 'woman biking: dark skin tone') then Exit(TEmoji.WOMAN_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'woman biking: light skin tone') then Exit(TEmoji.WOMAN_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman biking: medium skin tone') then Exit(TEmoji.WOMAN_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman biking: medium-dark skin tone') then Exit(TEmoji.WOMAN_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman biking: medium-light skin tone') then Exit(TEmoji.WOMAN_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman bouncing ball') then Exit(TEmoji.WOMAN_BOUNCING_BALL);
  if SameText(Name, 'woman bouncing ball: dark skin tone') then Exit(TEmoji.WOMAN_BOUNCING_BALL_DARK_SKIN_TONE);
  if SameText(Name, 'woman bouncing ball: light skin tone') then Exit(TEmoji.WOMAN_BOUNCING_BALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman bouncing ball: medium skin tone') then Exit(TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman bouncing ball: medium-dark skin tone') then Exit(TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman bouncing ball: medium-light skin tone') then Exit(TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman bowing') then Exit(TEmoji.WOMAN_BOWING);
  if SameText(Name, 'woman bowing: dark skin tone') then Exit(TEmoji.WOMAN_BOWING_DARK_SKIN_TONE);
  if SameText(Name, 'woman bowing: light skin tone') then Exit(TEmoji.WOMAN_BOWING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman bowing: medium skin tone') then Exit(TEmoji.WOMAN_BOWING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman bowing: medium-dark skin tone') then Exit(TEmoji.WOMAN_BOWING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman bowing: medium-light skin tone') then Exit(TEmoji.WOMAN_BOWING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman cartwheeling') then Exit(TEmoji.WOMAN_CARTWHEELING);
  if SameText(Name, 'woman cartwheeling: dark skin tone') then Exit(TEmoji.WOMAN_CARTWHEELING_DARK_SKIN_TONE);
  if SameText(Name, 'woman cartwheeling: light skin tone') then Exit(TEmoji.WOMAN_CARTWHEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman cartwheeling: medium skin tone') then Exit(TEmoji.WOMAN_CARTWHEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman cartwheeling: medium-dark skin tone') then Exit(TEmoji.WOMAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman cartwheeling: medium-light skin tone') then Exit(TEmoji.WOMAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman climbing') then Exit(TEmoji.WOMAN_CLIMBING);
  if SameText(Name, 'woman climbing: dark skin tone') then Exit(TEmoji.WOMAN_CLIMBING_DARK_SKIN_TONE);
  if SameText(Name, 'woman climbing: light skin tone') then Exit(TEmoji.WOMAN_CLIMBING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman climbing: medium skin tone') then Exit(TEmoji.WOMAN_CLIMBING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman climbing: medium-dark skin tone') then Exit(TEmoji.WOMAN_CLIMBING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman climbing: medium-light skin tone') then Exit(TEmoji.WOMAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman construction worker') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER);
  if SameText(Name, 'woman construction worker: dark skin tone') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'woman construction worker: light skin tone') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman construction worker: medium skin tone') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman construction worker: medium-dark skin tone') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman construction worker: medium-light skin tone') then Exit(TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman cook') then Exit(TEmoji.WOMAN_COOK);
  if SameText(Name, 'woman cook: dark skin tone') then Exit(TEmoji.WOMAN_COOK_DARK_SKIN_TONE);
  if SameText(Name, 'woman cook: light skin tone') then Exit(TEmoji.WOMAN_COOK_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman cook: medium skin tone') then Exit(TEmoji.WOMAN_COOK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman cook: medium-dark skin tone') then Exit(TEmoji.WOMAN_COOK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman cook: medium-light skin tone') then Exit(TEmoji.WOMAN_COOK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman dancing: dark skin tone') then Exit(TEmoji.WOMAN_DANCING_DARK_SKIN_TONE);
  if SameText(Name, 'woman dancing: light skin tone') then Exit(TEmoji.WOMAN_DANCING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman dancing: medium skin tone') then Exit(TEmoji.WOMAN_DANCING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman dancing: medium-dark skin tone') then Exit(TEmoji.WOMAN_DANCING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman dancing: medium-light skin tone') then Exit(TEmoji.WOMAN_DANCING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman detective') then Exit(TEmoji.WOMAN_DETECTIVE);
  if SameText(Name, 'woman detective: dark skin tone') then Exit(TEmoji.WOMAN_DETECTIVE_DARK_SKIN_TONE);
  if SameText(Name, 'woman detective: light skin tone') then Exit(TEmoji.WOMAN_DETECTIVE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman detective: medium skin tone') then Exit(TEmoji.WOMAN_DETECTIVE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman detective: medium-dark skin tone') then Exit(TEmoji.WOMAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman detective: medium-light skin tone') then Exit(TEmoji.WOMAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman elf') then Exit(TEmoji.WOMAN_ELF);
  if SameText(Name, 'woman elf: dark skin tone') then Exit(TEmoji.WOMAN_ELF_DARK_SKIN_TONE);
  if SameText(Name, 'woman elf: light skin tone') then Exit(TEmoji.WOMAN_ELF_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman elf: medium skin tone') then Exit(TEmoji.WOMAN_ELF_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman elf: medium-dark skin tone') then Exit(TEmoji.WOMAN_ELF_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman elf: medium-light skin tone') then Exit(TEmoji.WOMAN_ELF_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman facepalming') then Exit(TEmoji.WOMAN_FACEPALMING);
  if SameText(Name, 'woman facepalming: dark skin tone') then Exit(TEmoji.WOMAN_FACEPALMING_DARK_SKIN_TONE);
  if SameText(Name, 'woman facepalming: light skin tone') then Exit(TEmoji.WOMAN_FACEPALMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman facepalming: medium skin tone') then Exit(TEmoji.WOMAN_FACEPALMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman facepalming: medium-dark skin tone') then Exit(TEmoji.WOMAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman facepalming: medium-light skin tone') then Exit(TEmoji.WOMAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman factory worker') then Exit(TEmoji.WOMAN_FACTORY_WORKER);
  if SameText(Name, 'woman factory worker: dark skin tone') then Exit(TEmoji.WOMAN_FACTORY_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'woman factory worker: light skin tone') then Exit(TEmoji.WOMAN_FACTORY_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman factory worker: medium skin tone') then Exit(TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman factory worker: medium-dark skin tone') then Exit(TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman factory worker: medium-light skin tone') then Exit(TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman fairy') then Exit(TEmoji.WOMAN_FAIRY);
  if SameText(Name, 'woman fairy: dark skin tone') then Exit(TEmoji.WOMAN_FAIRY_DARK_SKIN_TONE);
  if SameText(Name, 'woman fairy: light skin tone') then Exit(TEmoji.WOMAN_FAIRY_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman fairy: medium skin tone') then Exit(TEmoji.WOMAN_FAIRY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman fairy: medium-dark skin tone') then Exit(TEmoji.WOMAN_FAIRY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman fairy: medium-light skin tone') then Exit(TEmoji.WOMAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman farmer') then Exit(TEmoji.WOMAN_FARMER);
  if SameText(Name, 'woman farmer: dark skin tone') then Exit(TEmoji.WOMAN_FARMER_DARK_SKIN_TONE);
  if SameText(Name, 'woman farmer: light skin tone') then Exit(TEmoji.WOMAN_FARMER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman farmer: medium skin tone') then Exit(TEmoji.WOMAN_FARMER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman farmer: medium-dark skin tone') then Exit(TEmoji.WOMAN_FARMER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman farmer: medium-light skin tone') then Exit(TEmoji.WOMAN_FARMER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman feeding baby') then Exit(TEmoji.WOMAN_FEEDING_BABY);
  if SameText(Name, 'woman feeding baby: dark skin tone') then Exit(TEmoji.WOMAN_FEEDING_BABY_DARK_SKIN_TONE);
  if SameText(Name, 'woman feeding baby: light skin tone') then Exit(TEmoji.WOMAN_FEEDING_BABY_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman feeding baby: medium skin tone') then Exit(TEmoji.WOMAN_FEEDING_BABY_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman feeding baby: medium-dark skin tone') then Exit(TEmoji.WOMAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman feeding baby: medium-light skin tone') then Exit(TEmoji.WOMAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman firefighter') then Exit(TEmoji.WOMAN_FIREFIGHTER);
  if SameText(Name, 'woman firefighter: dark skin tone') then Exit(TEmoji.WOMAN_FIREFIGHTER_DARK_SKIN_TONE);
  if SameText(Name, 'woman firefighter: light skin tone') then Exit(TEmoji.WOMAN_FIREFIGHTER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman firefighter: medium skin tone') then Exit(TEmoji.WOMAN_FIREFIGHTER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman firefighter: medium-dark skin tone') then Exit(TEmoji.WOMAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman firefighter: medium-light skin tone') then Exit(TEmoji.WOMAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman frowning') then Exit(TEmoji.WOMAN_FROWNING);
  if SameText(Name, 'woman frowning: dark skin tone') then Exit(TEmoji.WOMAN_FROWNING_DARK_SKIN_TONE);
  if SameText(Name, 'woman frowning: light skin tone') then Exit(TEmoji.WOMAN_FROWNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman frowning: medium skin tone') then Exit(TEmoji.WOMAN_FROWNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman frowning: medium-dark skin tone') then Exit(TEmoji.WOMAN_FROWNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman frowning: medium-light skin tone') then Exit(TEmoji.WOMAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman genie') then Exit(TEmoji.WOMAN_GENIE);
  if SameText(Name, 'woman gesturing NO') then Exit(TEmoji.WOMAN_GESTURING_NO);
  if SameText(Name, 'woman gesturing NO: dark skin tone') then Exit(TEmoji.WOMAN_GESTURING_NO_DARK_SKIN_TONE);
  if SameText(Name, 'woman gesturing NO: light skin tone') then Exit(TEmoji.WOMAN_GESTURING_NO_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman gesturing NO: medium skin tone') then Exit(TEmoji.WOMAN_GESTURING_NO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman gesturing NO: medium-dark skin tone') then Exit(TEmoji.WOMAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman gesturing NO: medium-light skin tone') then Exit(TEmoji.WOMAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman gesturing OK') then Exit(TEmoji.WOMAN_GESTURING_OK);
  if SameText(Name, 'woman gesturing OK: dark skin tone') then Exit(TEmoji.WOMAN_GESTURING_OK_DARK_SKIN_TONE);
  if SameText(Name, 'woman gesturing OK: light skin tone') then Exit(TEmoji.WOMAN_GESTURING_OK_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman gesturing OK: medium skin tone') then Exit(TEmoji.WOMAN_GESTURING_OK_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman gesturing OK: medium-dark skin tone') then Exit(TEmoji.WOMAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman gesturing OK: medium-light skin tone') then Exit(TEmoji.WOMAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman getting haircut') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT);
  if SameText(Name, 'woman getting haircut: dark skin tone') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT_DARK_SKIN_TONE);
  if SameText(Name, 'woman getting haircut: light skin tone') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman getting haircut: medium skin tone') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman getting haircut: medium-dark skin tone') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman getting haircut: medium-light skin tone') then Exit(TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman getting massage') then Exit(TEmoji.WOMAN_GETTING_MASSAGE);
  if SameText(Name, 'woman getting massage: dark skin tone') then Exit(TEmoji.WOMAN_GETTING_MASSAGE_DARK_SKIN_TONE);
  if SameText(Name, 'woman getting massage: light skin tone') then Exit(TEmoji.WOMAN_GETTING_MASSAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman getting massage: medium skin tone') then Exit(TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman getting massage: medium-dark skin tone') then Exit(TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman getting massage: medium-light skin tone') then Exit(TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman golfing') then Exit(TEmoji.WOMAN_GOLFING);
  if SameText(Name, 'woman golfing: dark skin tone') then Exit(TEmoji.WOMAN_GOLFING_DARK_SKIN_TONE);
  if SameText(Name, 'woman golfing: light skin tone') then Exit(TEmoji.WOMAN_GOLFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman golfing: medium skin tone') then Exit(TEmoji.WOMAN_GOLFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman golfing: medium-dark skin tone') then Exit(TEmoji.WOMAN_GOLFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman golfing: medium-light skin tone') then Exit(TEmoji.WOMAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman guard') then Exit(TEmoji.WOMAN_GUARD);
  if SameText(Name, 'woman guard: dark skin tone') then Exit(TEmoji.WOMAN_GUARD_DARK_SKIN_TONE);
  if SameText(Name, 'woman guard: light skin tone') then Exit(TEmoji.WOMAN_GUARD_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman guard: medium skin tone') then Exit(TEmoji.WOMAN_GUARD_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman guard: medium-dark skin tone') then Exit(TEmoji.WOMAN_GUARD_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman guard: medium-light skin tone') then Exit(TEmoji.WOMAN_GUARD_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman health worker') then Exit(TEmoji.WOMAN_HEALTH_WORKER);
  if SameText(Name, 'woman health worker: dark skin tone') then Exit(TEmoji.WOMAN_HEALTH_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'woman health worker: light skin tone') then Exit(TEmoji.WOMAN_HEALTH_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman health worker: medium skin tone') then Exit(TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman health worker: medium-dark skin tone') then Exit(TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman health worker: medium-light skin tone') then Exit(TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in lotus position') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION);
  if SameText(Name, 'woman in lotus position: dark skin tone') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION_DARK_SKIN_TONE);
  if SameText(Name, 'woman in lotus position: light skin tone') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in lotus position: medium skin tone') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in lotus position: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in lotus position: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR);
  if SameText(Name, 'woman in manual wheelchair facing right') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'woman in manual wheelchair facing right: dark skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair facing right: light skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair facing right: medium skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair: dark skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair: light skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair: medium skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in manual wheelchair: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR);
  if SameText(Name, 'woman in motorized wheelchair facing right') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT);
  if SameText(Name, 'woman in motorized wheelchair facing right: dark skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair facing right: light skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair facing right: medium skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair: dark skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair: light skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair: medium skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in motorized wheelchair: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in steamy room') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM);
  if SameText(Name, 'woman in steamy room: dark skin tone') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in steamy room: light skin tone') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in steamy room: medium skin tone') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in steamy room: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in steamy room: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in tuxedo') then Exit(TEmoji.WOMAN_IN_TUXEDO);
  if SameText(Name, 'woman in tuxedo: dark skin tone') then Exit(TEmoji.WOMAN_IN_TUXEDO_DARK_SKIN_TONE);
  if SameText(Name, 'woman in tuxedo: light skin tone') then Exit(TEmoji.WOMAN_IN_TUXEDO_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman in tuxedo: medium skin tone') then Exit(TEmoji.WOMAN_IN_TUXEDO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman in tuxedo: medium-dark skin tone') then Exit(TEmoji.WOMAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman in tuxedo: medium-light skin tone') then Exit(TEmoji.WOMAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman judge') then Exit(TEmoji.WOMAN_JUDGE);
  if SameText(Name, 'woman judge: dark skin tone') then Exit(TEmoji.WOMAN_JUDGE_DARK_SKIN_TONE);
  if SameText(Name, 'woman judge: light skin tone') then Exit(TEmoji.WOMAN_JUDGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman judge: medium skin tone') then Exit(TEmoji.WOMAN_JUDGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman judge: medium-dark skin tone') then Exit(TEmoji.WOMAN_JUDGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman judge: medium-light skin tone') then Exit(TEmoji.WOMAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman juggling') then Exit(TEmoji.WOMAN_JUGGLING);
  if SameText(Name, 'woman juggling: dark skin tone') then Exit(TEmoji.WOMAN_JUGGLING_DARK_SKIN_TONE);
  if SameText(Name, 'woman juggling: light skin tone') then Exit(TEmoji.WOMAN_JUGGLING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman juggling: medium skin tone') then Exit(TEmoji.WOMAN_JUGGLING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman juggling: medium-dark skin tone') then Exit(TEmoji.WOMAN_JUGGLING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman juggling: medium-light skin tone') then Exit(TEmoji.WOMAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman kneeling') then Exit(TEmoji.WOMAN_KNEELING);
  if SameText(Name, 'woman kneeling facing right') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT);
  if SameText(Name, 'woman kneeling facing right: dark skin tone') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman kneeling facing right: light skin tone') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman kneeling facing right: medium skin tone') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman kneeling facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman kneeling facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman kneeling: dark skin tone') then Exit(TEmoji.WOMAN_KNEELING_DARK_SKIN_TONE);
  if SameText(Name, 'woman kneeling: light skin tone') then Exit(TEmoji.WOMAN_KNEELING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman kneeling: medium skin tone') then Exit(TEmoji.WOMAN_KNEELING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman kneeling: medium-dark skin tone') then Exit(TEmoji.WOMAN_KNEELING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman kneeling: medium-light skin tone') then Exit(TEmoji.WOMAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman lifting weights') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS);
  if SameText(Name, 'woman lifting weights: dark skin tone') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS_DARK_SKIN_TONE);
  if SameText(Name, 'woman lifting weights: light skin tone') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman lifting weights: medium skin tone') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman lifting weights: medium-dark skin tone') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman lifting weights: medium-light skin tone') then Exit(TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mage') then Exit(TEmoji.WOMAN_MAGE);
  if SameText(Name, 'woman mage: dark skin tone') then Exit(TEmoji.WOMAN_MAGE_DARK_SKIN_TONE);
  if SameText(Name, 'woman mage: light skin tone') then Exit(TEmoji.WOMAN_MAGE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mage: medium skin tone') then Exit(TEmoji.WOMAN_MAGE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman mage: medium-dark skin tone') then Exit(TEmoji.WOMAN_MAGE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman mage: medium-light skin tone') then Exit(TEmoji.WOMAN_MAGE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mechanic') then Exit(TEmoji.WOMAN_MECHANIC);
  if SameText(Name, 'woman mechanic: dark skin tone') then Exit(TEmoji.WOMAN_MECHANIC_DARK_SKIN_TONE);
  if SameText(Name, 'woman mechanic: light skin tone') then Exit(TEmoji.WOMAN_MECHANIC_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mechanic: medium skin tone') then Exit(TEmoji.WOMAN_MECHANIC_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman mechanic: medium-dark skin tone') then Exit(TEmoji.WOMAN_MECHANIC_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman mechanic: medium-light skin tone') then Exit(TEmoji.WOMAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mountain biking') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING);
  if SameText(Name, 'woman mountain biking: dark skin tone') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING_DARK_SKIN_TONE);
  if SameText(Name, 'woman mountain biking: light skin tone') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman mountain biking: medium skin tone') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman mountain biking: medium-dark skin tone') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman mountain biking: medium-light skin tone') then Exit(TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman office worker') then Exit(TEmoji.WOMAN_OFFICE_WORKER);
  if SameText(Name, 'woman office worker: dark skin tone') then Exit(TEmoji.WOMAN_OFFICE_WORKER_DARK_SKIN_TONE);
  if SameText(Name, 'woman office worker: light skin tone') then Exit(TEmoji.WOMAN_OFFICE_WORKER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman office worker: medium skin tone') then Exit(TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman office worker: medium-dark skin tone') then Exit(TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman office worker: medium-light skin tone') then Exit(TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman pilot') then Exit(TEmoji.WOMAN_PILOT);
  if SameText(Name, 'woman pilot: dark skin tone') then Exit(TEmoji.WOMAN_PILOT_DARK_SKIN_TONE);
  if SameText(Name, 'woman pilot: light skin tone') then Exit(TEmoji.WOMAN_PILOT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman pilot: medium skin tone') then Exit(TEmoji.WOMAN_PILOT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman pilot: medium-dark skin tone') then Exit(TEmoji.WOMAN_PILOT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman pilot: medium-light skin tone') then Exit(TEmoji.WOMAN_PILOT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman playing handball') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL);
  if SameText(Name, 'woman playing handball: dark skin tone') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL_DARK_SKIN_TONE);
  if SameText(Name, 'woman playing handball: light skin tone') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman playing handball: medium skin tone') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman playing handball: medium-dark skin tone') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman playing handball: medium-light skin tone') then Exit(TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman playing water polo') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO);
  if SameText(Name, 'woman playing water polo: dark skin tone') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO_DARK_SKIN_TONE);
  if SameText(Name, 'woman playing water polo: light skin tone') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman playing water polo: medium skin tone') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman playing water polo: medium-dark skin tone') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman playing water polo: medium-light skin tone') then Exit(TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman police officer') then Exit(TEmoji.WOMAN_POLICE_OFFICER);
  if SameText(Name, 'woman police officer: dark skin tone') then Exit(TEmoji.WOMAN_POLICE_OFFICER_DARK_SKIN_TONE);
  if SameText(Name, 'woman police officer: light skin tone') then Exit(TEmoji.WOMAN_POLICE_OFFICER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman police officer: medium skin tone') then Exit(TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman police officer: medium-dark skin tone') then Exit(TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman police officer: medium-light skin tone') then Exit(TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman pouting') then Exit(TEmoji.WOMAN_POUTING);
  if SameText(Name, 'woman pouting: dark skin tone') then Exit(TEmoji.WOMAN_POUTING_DARK_SKIN_TONE);
  if SameText(Name, 'woman pouting: light skin tone') then Exit(TEmoji.WOMAN_POUTING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman pouting: medium skin tone') then Exit(TEmoji.WOMAN_POUTING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman pouting: medium-dark skin tone') then Exit(TEmoji.WOMAN_POUTING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman pouting: medium-light skin tone') then Exit(TEmoji.WOMAN_POUTING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman raising hand') then Exit(TEmoji.WOMAN_RAISING_HAND);
  if SameText(Name, 'woman raising hand: dark skin tone') then Exit(TEmoji.WOMAN_RAISING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'woman raising hand: light skin tone') then Exit(TEmoji.WOMAN_RAISING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman raising hand: medium skin tone') then Exit(TEmoji.WOMAN_RAISING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman raising hand: medium-dark skin tone') then Exit(TEmoji.WOMAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman raising hand: medium-light skin tone') then Exit(TEmoji.WOMAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman rowing boat') then Exit(TEmoji.WOMAN_ROWING_BOAT);
  if SameText(Name, 'woman rowing boat: dark skin tone') then Exit(TEmoji.WOMAN_ROWING_BOAT_DARK_SKIN_TONE);
  if SameText(Name, 'woman rowing boat: light skin tone') then Exit(TEmoji.WOMAN_ROWING_BOAT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman rowing boat: medium skin tone') then Exit(TEmoji.WOMAN_ROWING_BOAT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman rowing boat: medium-dark skin tone') then Exit(TEmoji.WOMAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman rowing boat: medium-light skin tone') then Exit(TEmoji.WOMAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman running') then Exit(TEmoji.WOMAN_RUNNING);
  if SameText(Name, 'woman running facing right') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT);
  if SameText(Name, 'woman running facing right: dark skin tone') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman running facing right: light skin tone') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman running facing right: medium skin tone') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman running facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman running facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman running: dark skin tone') then Exit(TEmoji.WOMAN_RUNNING_DARK_SKIN_TONE);
  if SameText(Name, 'woman running: light skin tone') then Exit(TEmoji.WOMAN_RUNNING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman running: medium skin tone') then Exit(TEmoji.WOMAN_RUNNING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman running: medium-dark skin tone') then Exit(TEmoji.WOMAN_RUNNING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman running: medium-light skin tone') then Exit(TEmoji.WOMAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman scientist') then Exit(TEmoji.WOMAN_SCIENTIST);
  if SameText(Name, 'woman scientist: dark skin tone') then Exit(TEmoji.WOMAN_SCIENTIST_DARK_SKIN_TONE);
  if SameText(Name, 'woman scientist: light skin tone') then Exit(TEmoji.WOMAN_SCIENTIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman scientist: medium skin tone') then Exit(TEmoji.WOMAN_SCIENTIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman scientist: medium-dark skin tone') then Exit(TEmoji.WOMAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman scientist: medium-light skin tone') then Exit(TEmoji.WOMAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman shrugging') then Exit(TEmoji.WOMAN_SHRUGGING);
  if SameText(Name, 'woman shrugging: dark skin tone') then Exit(TEmoji.WOMAN_SHRUGGING_DARK_SKIN_TONE);
  if SameText(Name, 'woman shrugging: light skin tone') then Exit(TEmoji.WOMAN_SHRUGGING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman shrugging: medium skin tone') then Exit(TEmoji.WOMAN_SHRUGGING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman shrugging: medium-dark skin tone') then Exit(TEmoji.WOMAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman shrugging: medium-light skin tone') then Exit(TEmoji.WOMAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman singer') then Exit(TEmoji.WOMAN_SINGER);
  if SameText(Name, 'woman singer: dark skin tone') then Exit(TEmoji.WOMAN_SINGER_DARK_SKIN_TONE);
  if SameText(Name, 'woman singer: light skin tone') then Exit(TEmoji.WOMAN_SINGER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman singer: medium skin tone') then Exit(TEmoji.WOMAN_SINGER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman singer: medium-dark skin tone') then Exit(TEmoji.WOMAN_SINGER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman singer: medium-light skin tone') then Exit(TEmoji.WOMAN_SINGER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman standing') then Exit(TEmoji.WOMAN_STANDING);
  if SameText(Name, 'woman standing: dark skin tone') then Exit(TEmoji.WOMAN_STANDING_DARK_SKIN_TONE);
  if SameText(Name, 'woman standing: light skin tone') then Exit(TEmoji.WOMAN_STANDING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman standing: medium skin tone') then Exit(TEmoji.WOMAN_STANDING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman standing: medium-dark skin tone') then Exit(TEmoji.WOMAN_STANDING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman standing: medium-light skin tone') then Exit(TEmoji.WOMAN_STANDING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman student') then Exit(TEmoji.WOMAN_STUDENT);
  if SameText(Name, 'woman student: dark skin tone') then Exit(TEmoji.WOMAN_STUDENT_DARK_SKIN_TONE);
  if SameText(Name, 'woman student: light skin tone') then Exit(TEmoji.WOMAN_STUDENT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman student: medium skin tone') then Exit(TEmoji.WOMAN_STUDENT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman student: medium-dark skin tone') then Exit(TEmoji.WOMAN_STUDENT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman student: medium-light skin tone') then Exit(TEmoji.WOMAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman superhero') then Exit(TEmoji.WOMAN_SUPERHERO);
  if SameText(Name, 'woman superhero: dark skin tone') then Exit(TEmoji.WOMAN_SUPERHERO_DARK_SKIN_TONE);
  if SameText(Name, 'woman superhero: light skin tone') then Exit(TEmoji.WOMAN_SUPERHERO_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman superhero: medium skin tone') then Exit(TEmoji.WOMAN_SUPERHERO_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman superhero: medium-dark skin tone') then Exit(TEmoji.WOMAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman superhero: medium-light skin tone') then Exit(TEmoji.WOMAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman supervillain') then Exit(TEmoji.WOMAN_SUPERVILLAIN);
  if SameText(Name, 'woman supervillain: dark skin tone') then Exit(TEmoji.WOMAN_SUPERVILLAIN_DARK_SKIN_TONE);
  if SameText(Name, 'woman supervillain: light skin tone') then Exit(TEmoji.WOMAN_SUPERVILLAIN_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman supervillain: medium skin tone') then Exit(TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman supervillain: medium-dark skin tone') then Exit(TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman supervillain: medium-light skin tone') then Exit(TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman surfing') then Exit(TEmoji.WOMAN_SURFING);
  if SameText(Name, 'woman surfing: dark skin tone') then Exit(TEmoji.WOMAN_SURFING_DARK_SKIN_TONE);
  if SameText(Name, 'woman surfing: light skin tone') then Exit(TEmoji.WOMAN_SURFING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman surfing: medium skin tone') then Exit(TEmoji.WOMAN_SURFING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman surfing: medium-dark skin tone') then Exit(TEmoji.WOMAN_SURFING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman surfing: medium-light skin tone') then Exit(TEmoji.WOMAN_SURFING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman swimming') then Exit(TEmoji.WOMAN_SWIMMING);
  if SameText(Name, 'woman swimming: dark skin tone') then Exit(TEmoji.WOMAN_SWIMMING_DARK_SKIN_TONE);
  if SameText(Name, 'woman swimming: light skin tone') then Exit(TEmoji.WOMAN_SWIMMING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman swimming: medium skin tone') then Exit(TEmoji.WOMAN_SWIMMING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman swimming: medium-dark skin tone') then Exit(TEmoji.WOMAN_SWIMMING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman swimming: medium-light skin tone') then Exit(TEmoji.WOMAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman teacher') then Exit(TEmoji.WOMAN_TEACHER);
  if SameText(Name, 'woman teacher: dark skin tone') then Exit(TEmoji.WOMAN_TEACHER_DARK_SKIN_TONE);
  if SameText(Name, 'woman teacher: light skin tone') then Exit(TEmoji.WOMAN_TEACHER_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman teacher: medium skin tone') then Exit(TEmoji.WOMAN_TEACHER_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman teacher: medium-dark skin tone') then Exit(TEmoji.WOMAN_TEACHER_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman teacher: medium-light skin tone') then Exit(TEmoji.WOMAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman technologist') then Exit(TEmoji.WOMAN_TECHNOLOGIST);
  if SameText(Name, 'woman technologist: dark skin tone') then Exit(TEmoji.WOMAN_TECHNOLOGIST_DARK_SKIN_TONE);
  if SameText(Name, 'woman technologist: light skin tone') then Exit(TEmoji.WOMAN_TECHNOLOGIST_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman technologist: medium skin tone') then Exit(TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman technologist: medium-dark skin tone') then Exit(TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman technologist: medium-light skin tone') then Exit(TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman tipping hand') then Exit(TEmoji.WOMAN_TIPPING_HAND);
  if SameText(Name, 'woman tipping hand: dark skin tone') then Exit(TEmoji.WOMAN_TIPPING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'woman tipping hand: light skin tone') then Exit(TEmoji.WOMAN_TIPPING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman tipping hand: medium skin tone') then Exit(TEmoji.WOMAN_TIPPING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman tipping hand: medium-dark skin tone') then Exit(TEmoji.WOMAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman tipping hand: medium-light skin tone') then Exit(TEmoji.WOMAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman vampire') then Exit(TEmoji.WOMAN_VAMPIRE);
  if SameText(Name, 'woman vampire: dark skin tone') then Exit(TEmoji.WOMAN_VAMPIRE_DARK_SKIN_TONE);
  if SameText(Name, 'woman vampire: light skin tone') then Exit(TEmoji.WOMAN_VAMPIRE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman vampire: medium skin tone') then Exit(TEmoji.WOMAN_VAMPIRE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman vampire: medium-dark skin tone') then Exit(TEmoji.WOMAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman vampire: medium-light skin tone') then Exit(TEmoji.WOMAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman walking') then Exit(TEmoji.WOMAN_WALKING);
  if SameText(Name, 'woman walking facing right') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT);
  if SameText(Name, 'woman walking facing right: dark skin tone') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman walking facing right: light skin tone') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman walking facing right: medium skin tone') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman walking facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman walking facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman walking: dark skin tone') then Exit(TEmoji.WOMAN_WALKING_DARK_SKIN_TONE);
  if SameText(Name, 'woman walking: light skin tone') then Exit(TEmoji.WOMAN_WALKING_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman walking: medium skin tone') then Exit(TEmoji.WOMAN_WALKING_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman walking: medium-dark skin tone') then Exit(TEmoji.WOMAN_WALKING_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman walking: medium-light skin tone') then Exit(TEmoji.WOMAN_WALKING_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman wearing turban') then Exit(TEmoji.WOMAN_WEARING_TURBAN);
  if SameText(Name, 'woman wearing turban: dark skin tone') then Exit(TEmoji.WOMAN_WEARING_TURBAN_DARK_SKIN_TONE);
  if SameText(Name, 'woman wearing turban: light skin tone') then Exit(TEmoji.WOMAN_WEARING_TURBAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman wearing turban: medium skin tone') then Exit(TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman wearing turban: medium-dark skin tone') then Exit(TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman wearing turban: medium-light skin tone') then Exit(TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with headscarf: dark skin tone') then Exit(TEmoji.WOMAN_WITH_HEADSCARF_DARK_SKIN_TONE);
  if SameText(Name, 'woman with headscarf: light skin tone') then Exit(TEmoji.WOMAN_WITH_HEADSCARF_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with headscarf: medium skin tone') then Exit(TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman with headscarf: medium-dark skin tone') then Exit(TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman with headscarf: medium-light skin tone') then Exit(TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with veil') then Exit(TEmoji.WOMAN_WITH_VEIL);
  if SameText(Name, 'woman with veil: dark skin tone') then Exit(TEmoji.WOMAN_WITH_VEIL_DARK_SKIN_TONE);
  if SameText(Name, 'woman with veil: light skin tone') then Exit(TEmoji.WOMAN_WITH_VEIL_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with veil: medium skin tone') then Exit(TEmoji.WOMAN_WITH_VEIL_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman with veil: medium-dark skin tone') then Exit(TEmoji.WOMAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman with veil: medium-light skin tone') then Exit(TEmoji.WOMAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with white cane') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE);
  if SameText(Name, 'woman with white cane facing right') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT);
  if SameText(Name, 'woman with white cane facing right: dark skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE);
  if SameText(Name, 'woman with white cane facing right: light skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with white cane facing right: medium skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman with white cane facing right: medium-dark skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman with white cane facing right: medium-light skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with white cane: dark skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_DARK_SKIN_TONE);
  if SameText(Name, 'woman with white cane: light skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman with white cane: medium skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman with white cane: medium-dark skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman with white cane: medium-light skin tone') then Exit(TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman zombie') then Exit(TEmoji.WOMAN_ZOMBIE);
  if SameText(Name, 'woman: bald') then Exit(TEmoji.WOMAN_BALD);
  if SameText(Name, 'woman: beard') then Exit(TEmoji.WOMAN_BEARD);
  if SameText(Name, 'woman: blond hair') then Exit(TEmoji.WOMAN_BLOND_HAIR);
  if SameText(Name, 'woman: curly hair') then Exit(TEmoji.WOMAN_CURLY_HAIR);
  if SameText(Name, 'woman: dark skin tone') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE);
  if SameText(Name, 'woman: dark skin tone, bald') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'woman: dark skin tone, beard') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'woman: dark skin tone, blond hair') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'woman: dark skin tone, curly hair') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'woman: dark skin tone, red hair') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'woman: dark skin tone, white hair') then Exit(TEmoji.WOMAN_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'woman: light skin tone') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman: light skin tone, bald') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'woman: light skin tone, beard') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'woman: light skin tone, blond hair') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'woman: light skin tone, curly hair') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'woman: light skin tone, red hair') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'woman: light skin tone, white hair') then Exit(TEmoji.WOMAN_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'woman: medium skin tone') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE);
  if SameText(Name, 'woman: medium skin tone, bald') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_BALD);
  if SameText(Name, 'woman: medium skin tone, beard') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_BEARD);
  if SameText(Name, 'woman: medium skin tone, blond hair') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'woman: medium skin tone, curly hair') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'woman: medium skin tone, red hair') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'woman: medium skin tone, white hair') then Exit(TEmoji.WOMAN_MEDIUM_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'woman: medium-dark skin tone') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'woman: medium-dark skin tone, bald') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BALD);
  if SameText(Name, 'woman: medium-dark skin tone, beard') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BEARD);
  if SameText(Name, 'woman: medium-dark skin tone, blond hair') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'woman: medium-dark skin tone, curly hair') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'woman: medium-dark skin tone, red hair') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'woman: medium-dark skin tone, white hair') then Exit(TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'woman: medium-light skin tone') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'woman: medium-light skin tone, bald') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BALD);
  if SameText(Name, 'woman: medium-light skin tone, beard') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BEARD);
  if SameText(Name, 'woman: medium-light skin tone, blond hair') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR);
  if SameText(Name, 'woman: medium-light skin tone, curly hair') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR);
  if SameText(Name, 'woman: medium-light skin tone, red hair') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR);
  if SameText(Name, 'woman: medium-light skin tone, white hair') then Exit(TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR);
  if SameText(Name, 'woman: red hair') then Exit(TEmoji.WOMAN_RED_HAIR);
  if SameText(Name, 'woman: white hair') then Exit(TEmoji.WOMAN_WHITE_HAIR);
  if SameText(Name, 'women holding hands: dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: dark skin tone, light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: dark skin tone, medium skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'women holding hands: dark skin tone, medium-dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: dark skin tone, medium-light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: light skin tone, dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: light skin tone, medium skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'women holding hands: light skin tone, medium-dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: light skin tone, medium-light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium skin tone, dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium skin tone, light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium skin tone, medium-dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium skin tone, medium-light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-dark skin tone, dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-dark skin tone, light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-dark skin tone, medium skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-dark skin tone, medium-light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-light skin tone, dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-light skin tone, light skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-light skin tone, medium skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE);
  if SameText(Name, 'women holding hands: medium-light skin tone, medium-dark skin tone') then Exit(TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'women with bunny ears') then Exit(TEmoji.WOMEN_WITH_BUNNY_EARS);
  if SameText(Name, 'women wrestling') then Exit(TEmoji.WOMEN_WRESTLING);
  if SameText(Name, 'writing hand: dark skin tone') then Exit(TEmoji.WRITING_HAND_DARK_SKIN_TONE);
  if SameText(Name, 'writing hand: light skin tone') then Exit(TEmoji.WRITING_HAND_LIGHT_SKIN_TONE);
  if SameText(Name, 'writing hand: medium skin tone') then Exit(TEmoji.WRITING_HAND_MEDIUM_SKIN_TONE);
  if SameText(Name, 'writing hand: medium-dark skin tone') then Exit(TEmoji.WRITING_HAND_MEDIUM_DARK_SKIN_TONE);
  if SameText(Name, 'writing hand: medium-light skin tone') then Exit(TEmoji.WRITING_HAND_MEDIUM_LIGHT_SKIN_TONE);
  Result := '';
end;

function GetAllEmoji: TArray<string>;
begin
  SetLength(Result, 2385);
  Result[0] := TEmoji.MRS_CLAUS_DARK_SKIN_TONE;
  Result[1] := TEmoji.MRS_CLAUS_LIGHT_SKIN_TONE;
  Result[2] := TEmoji.MRS_CLAUS_MEDIUM_SKIN_TONE;
  Result[3] := TEmoji.MRS_CLAUS_MEDIUM_DARK_SKIN_TONE;
  Result[4] := TEmoji.MRS_CLAUS_MEDIUM_LIGHT_SKIN_TONE;
  Result[5] := TEmoji.MX_CLAUS;
  Result[6] := TEmoji.MX_CLAUS_DARK_SKIN_TONE;
  Result[7] := TEmoji.MX_CLAUS_LIGHT_SKIN_TONE;
  Result[8] := TEmoji.MX_CLAUS_MEDIUM_SKIN_TONE;
  Result[9] := TEmoji.MX_CLAUS_MEDIUM_DARK_SKIN_TONE;
  Result[10] := TEmoji.MX_CLAUS_MEDIUM_LIGHT_SKIN_TONE;
  Result[11] := TEmoji.OK_HAND_DARK_SKIN_TONE;
  Result[12] := TEmoji.OK_HAND_LIGHT_SKIN_TONE;
  Result[13] := TEmoji.OK_HAND_MEDIUM_SKIN_TONE;
  Result[14] := TEmoji.OK_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[15] := TEmoji.OK_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[16] := TEmoji.SANTA_CLAUS_DARK_SKIN_TONE;
  Result[17] := TEmoji.SANTA_CLAUS_LIGHT_SKIN_TONE;
  Result[18] := TEmoji.SANTA_CLAUS_MEDIUM_SKIN_TONE;
  Result[19] := TEmoji.SANTA_CLAUS_MEDIUM_DARK_SKIN_TONE;
  Result[20] := TEmoji.SANTA_CLAUS_MEDIUM_LIGHT_SKIN_TONE;
  Result[21] := TEmoji.ARTIST;
  Result[22] := TEmoji.ARTIST_DARK_SKIN_TONE;
  Result[23] := TEmoji.ARTIST_LIGHT_SKIN_TONE;
  Result[24] := TEmoji.ARTIST_MEDIUM_SKIN_TONE;
  Result[25] := TEmoji.ARTIST_MEDIUM_DARK_SKIN_TONE;
  Result[26] := TEmoji.ARTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[27] := TEmoji.ASTRONAUT;
  Result[28] := TEmoji.ASTRONAUT_DARK_SKIN_TONE;
  Result[29] := TEmoji.ASTRONAUT_LIGHT_SKIN_TONE;
  Result[30] := TEmoji.ASTRONAUT_MEDIUM_SKIN_TONE;
  Result[31] := TEmoji.ASTRONAUT_MEDIUM_DARK_SKIN_TONE;
  Result[32] := TEmoji.ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[33] := TEmoji.BABY_ANGEL_DARK_SKIN_TONE;
  Result[34] := TEmoji.BABY_ANGEL_LIGHT_SKIN_TONE;
  Result[35] := TEmoji.BABY_ANGEL_MEDIUM_SKIN_TONE;
  Result[36] := TEmoji.BABY_ANGEL_MEDIUM_DARK_SKIN_TONE;
  Result[37] := TEmoji.BABY_ANGEL_MEDIUM_LIGHT_SKIN_TONE;
  Result[38] := TEmoji.BABY_DARK_SKIN_TONE;
  Result[39] := TEmoji.BABY_LIGHT_SKIN_TONE;
  Result[40] := TEmoji.BABY_MEDIUM_SKIN_TONE;
  Result[41] := TEmoji.BABY_MEDIUM_DARK_SKIN_TONE;
  Result[42] := TEmoji.BABY_MEDIUM_LIGHT_SKIN_TONE;
  Result[43] := TEmoji.BACKHAND_INDEX_POINTING_DOWN_DARK_SKIN_TONE;
  Result[44] := TEmoji.BACKHAND_INDEX_POINTING_DOWN_LIGHT_SKIN_TONE;
  Result[45] := TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_SKIN_TONE;
  Result[46] := TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_DARK_SKIN_TONE;
  Result[47] := TEmoji.BACKHAND_INDEX_POINTING_DOWN_MEDIUM_LIGHT_SKIN_TONE;
  Result[48] := TEmoji.BACKHAND_INDEX_POINTING_LEFT_DARK_SKIN_TONE;
  Result[49] := TEmoji.BACKHAND_INDEX_POINTING_LEFT_LIGHT_SKIN_TONE;
  Result[50] := TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_SKIN_TONE;
  Result[51] := TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_DARK_SKIN_TONE;
  Result[52] := TEmoji.BACKHAND_INDEX_POINTING_LEFT_MEDIUM_LIGHT_SKIN_TONE;
  Result[53] := TEmoji.BACKHAND_INDEX_POINTING_RIGHT_DARK_SKIN_TONE;
  Result[54] := TEmoji.BACKHAND_INDEX_POINTING_RIGHT_LIGHT_SKIN_TONE;
  Result[55] := TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_SKIN_TONE;
  Result[56] := TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[57] := TEmoji.BACKHAND_INDEX_POINTING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[58] := TEmoji.BACKHAND_INDEX_POINTING_UP_DARK_SKIN_TONE;
  Result[59] := TEmoji.BACKHAND_INDEX_POINTING_UP_LIGHT_SKIN_TONE;
  Result[60] := TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_SKIN_TONE;
  Result[61] := TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE;
  Result[62] := TEmoji.BACKHAND_INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE;
  Result[63] := TEmoji.BLACK_BIRD;
  Result[64] := TEmoji.BLACK_CAT;
  Result[65] := TEmoji.BOY_DARK_SKIN_TONE;
  Result[66] := TEmoji.BOY_LIGHT_SKIN_TONE;
  Result[67] := TEmoji.BOY_MEDIUM_SKIN_TONE;
  Result[68] := TEmoji.BOY_MEDIUM_DARK_SKIN_TONE;
  Result[69] := TEmoji.BOY_MEDIUM_LIGHT_SKIN_TONE;
  Result[70] := TEmoji.BREAST_FEEDING_DARK_SKIN_TONE;
  Result[71] := TEmoji.BREAST_FEEDING_LIGHT_SKIN_TONE;
  Result[72] := TEmoji.BREAST_FEEDING_MEDIUM_SKIN_TONE;
  Result[73] := TEmoji.BREAST_FEEDING_MEDIUM_DARK_SKIN_TONE;
  Result[74] := TEmoji.BREAST_FEEDING_MEDIUM_LIGHT_SKIN_TONE;
  Result[75] := TEmoji.BROKEN_CHAIN;
  Result[76] := TEmoji.BROWN_MUSHROOM;
  Result[77] := TEmoji.CALL_ME_HAND_DARK_SKIN_TONE;
  Result[78] := TEmoji.CALL_ME_HAND_LIGHT_SKIN_TONE;
  Result[79] := TEmoji.CALL_ME_HAND_MEDIUM_SKIN_TONE;
  Result[80] := TEmoji.CALL_ME_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[81] := TEmoji.CALL_ME_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[82] := TEmoji.CHILD_DARK_SKIN_TONE;
  Result[83] := TEmoji.CHILD_LIGHT_SKIN_TONE;
  Result[84] := TEmoji.CHILD_MEDIUM_SKIN_TONE;
  Result[85] := TEmoji.CHILD_MEDIUM_DARK_SKIN_TONE;
  Result[86] := TEmoji.CHILD_MEDIUM_LIGHT_SKIN_TONE;
  Result[87] := TEmoji.CLAPPING_HANDS_DARK_SKIN_TONE;
  Result[88] := TEmoji.CLAPPING_HANDS_LIGHT_SKIN_TONE;
  Result[89] := TEmoji.CLAPPING_HANDS_MEDIUM_SKIN_TONE;
  Result[90] := TEmoji.CLAPPING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[91] := TEmoji.CLAPPING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[92] := TEmoji.CONSTRUCTION_WORKER_DARK_SKIN_TONE;
  Result[93] := TEmoji.CONSTRUCTION_WORKER_LIGHT_SKIN_TONE;
  Result[94] := TEmoji.CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE;
  Result[95] := TEmoji.CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[96] := TEmoji.CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[97] := TEmoji.COOK;
  Result[98] := TEmoji.COOK_DARK_SKIN_TONE;
  Result[99] := TEmoji.COOK_LIGHT_SKIN_TONE;
  Result[100] := TEmoji.COOK_MEDIUM_SKIN_TONE;
  Result[101] := TEmoji.COOK_MEDIUM_DARK_SKIN_TONE;
  Result[102] := TEmoji.COOK_MEDIUM_LIGHT_SKIN_TONE;
  Result[103] := TEmoji.COUPLE_WITH_HEART_DARK_SKIN_TONE;
  Result[104] := TEmoji.COUPLE_WITH_HEART_LIGHT_SKIN_TONE;
  Result[105] := TEmoji.COUPLE_WITH_HEART_MAN_MAN;
  Result[106] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE;
  Result[107] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[108] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[109] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[110] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[111] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE;
  Result[112] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[113] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[114] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[115] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[116] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE;
  Result[117] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[118] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[119] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[120] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[121] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[122] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[123] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[124] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[125] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[126] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[127] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[128] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[129] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[130] := TEmoji.COUPLE_WITH_HEART_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[131] := TEmoji.COUPLE_WITH_HEART_MEDIUM_SKIN_TONE;
  Result[132] := TEmoji.COUPLE_WITH_HEART_MEDIUM_DARK_SKIN_TONE;
  Result[133] := TEmoji.COUPLE_WITH_HEART_MEDIUM_LIGHT_SKIN_TONE;
  Result[134] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[135] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[136] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[137] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[138] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[139] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[140] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[141] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[142] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[143] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[144] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[145] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[146] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[147] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[148] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[149] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[150] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[151] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[152] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[153] := TEmoji.COUPLE_WITH_HEART_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[154] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN;
  Result[155] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE;
  Result[156] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[157] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[158] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[159] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[160] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE;
  Result[161] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[162] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[163] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[164] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[165] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE;
  Result[166] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[167] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[168] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[169] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[170] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[171] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[172] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[173] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[174] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[175] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[176] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[177] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[178] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[179] := TEmoji.COUPLE_WITH_HEART_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[180] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN;
  Result[181] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE;
  Result[182] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[183] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[184] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[185] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[186] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE;
  Result[187] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[188] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[189] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[190] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[191] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE;
  Result[192] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[193] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[194] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[195] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[196] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[197] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[198] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[199] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[200] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[201] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[202] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[203] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[204] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[205] := TEmoji.COUPLE_WITH_HEART_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[206] := TEmoji.CROSSED_FINGERS_DARK_SKIN_TONE;
  Result[207] := TEmoji.CROSSED_FINGERS_LIGHT_SKIN_TONE;
  Result[208] := TEmoji.CROSSED_FINGERS_MEDIUM_SKIN_TONE;
  Result[209] := TEmoji.CROSSED_FINGERS_MEDIUM_DARK_SKIN_TONE;
  Result[210] := TEmoji.CROSSED_FINGERS_MEDIUM_LIGHT_SKIN_TONE;
  Result[211] := TEmoji.DEAF_MAN;
  Result[212] := TEmoji.DEAF_MAN_DARK_SKIN_TONE;
  Result[213] := TEmoji.DEAF_MAN_LIGHT_SKIN_TONE;
  Result[214] := TEmoji.DEAF_MAN_MEDIUM_SKIN_TONE;
  Result[215] := TEmoji.DEAF_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[216] := TEmoji.DEAF_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[217] := TEmoji.DEAF_PERSON_DARK_SKIN_TONE;
  Result[218] := TEmoji.DEAF_PERSON_LIGHT_SKIN_TONE;
  Result[219] := TEmoji.DEAF_PERSON_MEDIUM_SKIN_TONE;
  Result[220] := TEmoji.DEAF_PERSON_MEDIUM_DARK_SKIN_TONE;
  Result[221] := TEmoji.DEAF_PERSON_MEDIUM_LIGHT_SKIN_TONE;
  Result[222] := TEmoji.DEAF_WOMAN;
  Result[223] := TEmoji.DEAF_WOMAN_DARK_SKIN_TONE;
  Result[224] := TEmoji.DEAF_WOMAN_LIGHT_SKIN_TONE;
  Result[225] := TEmoji.DEAF_WOMAN_MEDIUM_SKIN_TONE;
  Result[226] := TEmoji.DEAF_WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[227] := TEmoji.DEAF_WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[228] := TEmoji.DETECTIVE_DARK_SKIN_TONE;
  Result[229] := TEmoji.DETECTIVE_LIGHT_SKIN_TONE;
  Result[230] := TEmoji.DETECTIVE_MEDIUM_SKIN_TONE;
  Result[231] := TEmoji.DETECTIVE_MEDIUM_DARK_SKIN_TONE;
  Result[232] := TEmoji.DETECTIVE_MEDIUM_LIGHT_SKIN_TONE;
  Result[233] := TEmoji.EAR_WITH_HEARING_AID_DARK_SKIN_TONE;
  Result[234] := TEmoji.EAR_WITH_HEARING_AID_LIGHT_SKIN_TONE;
  Result[235] := TEmoji.EAR_WITH_HEARING_AID_MEDIUM_SKIN_TONE;
  Result[236] := TEmoji.EAR_WITH_HEARING_AID_MEDIUM_DARK_SKIN_TONE;
  Result[237] := TEmoji.EAR_WITH_HEARING_AID_MEDIUM_LIGHT_SKIN_TONE;
  Result[238] := TEmoji.EAR_DARK_SKIN_TONE;
  Result[239] := TEmoji.EAR_LIGHT_SKIN_TONE;
  Result[240] := TEmoji.EAR_MEDIUM_SKIN_TONE;
  Result[241] := TEmoji.EAR_MEDIUM_DARK_SKIN_TONE;
  Result[242] := TEmoji.EAR_MEDIUM_LIGHT_SKIN_TONE;
  Result[243] := TEmoji.ELF_DARK_SKIN_TONE;
  Result[244] := TEmoji.ELF_LIGHT_SKIN_TONE;
  Result[245] := TEmoji.ELF_MEDIUM_SKIN_TONE;
  Result[246] := TEmoji.ELF_MEDIUM_DARK_SKIN_TONE;
  Result[247] := TEmoji.ELF_MEDIUM_LIGHT_SKIN_TONE;
  Result[248] := TEmoji.EYE_IN_SPEECH_BUBBLE;
  Result[249] := TEmoji.FACE_EXHALING;
  Result[250] := TEmoji.FACE_IN_CLOUDS;
  Result[251] := TEmoji.FACE_WITH_SPIRAL_EYES;
  Result[252] := TEmoji.FACTORY_WORKER;
  Result[253] := TEmoji.FACTORY_WORKER_DARK_SKIN_TONE;
  Result[254] := TEmoji.FACTORY_WORKER_LIGHT_SKIN_TONE;
  Result[255] := TEmoji.FACTORY_WORKER_MEDIUM_SKIN_TONE;
  Result[256] := TEmoji.FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[257] := TEmoji.FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[258] := TEmoji.FAIRY_DARK_SKIN_TONE;
  Result[259] := TEmoji.FAIRY_LIGHT_SKIN_TONE;
  Result[260] := TEmoji.FAIRY_MEDIUM_SKIN_TONE;
  Result[261] := TEmoji.FAIRY_MEDIUM_DARK_SKIN_TONE;
  Result[262] := TEmoji.FAIRY_MEDIUM_LIGHT_SKIN_TONE;
  Result[263] := TEmoji.FAMILY_ADULT_ADULT_CHILD;
  Result[264] := TEmoji.FAMILY_ADULT_ADULT_CHILD_CHILD;
  Result[265] := TEmoji.FAMILY_ADULT_CHILD;
  Result[266] := TEmoji.FAMILY_ADULT_CHILD_CHILD;
  Result[267] := TEmoji.FAMILY_MAN_BOY;
  Result[268] := TEmoji.FAMILY_MAN_BOY_BOY;
  Result[269] := TEmoji.FAMILY_MAN_GIRL;
  Result[270] := TEmoji.FAMILY_MAN_GIRL_BOY;
  Result[271] := TEmoji.FAMILY_MAN_GIRL_GIRL;
  Result[272] := TEmoji.FAMILY_MAN_MAN_BOY;
  Result[273] := TEmoji.FAMILY_MAN_MAN_BOY_BOY;
  Result[274] := TEmoji.FAMILY_MAN_MAN_GIRL;
  Result[275] := TEmoji.FAMILY_MAN_MAN_GIRL_BOY;
  Result[276] := TEmoji.FAMILY_MAN_MAN_GIRL_GIRL;
  Result[277] := TEmoji.FAMILY_MAN_WOMAN_BOY;
  Result[278] := TEmoji.FAMILY_MAN_WOMAN_BOY_BOY;
  Result[279] := TEmoji.FAMILY_MAN_WOMAN_GIRL;
  Result[280] := TEmoji.FAMILY_MAN_WOMAN_GIRL_BOY;
  Result[281] := TEmoji.FAMILY_MAN_WOMAN_GIRL_GIRL;
  Result[282] := TEmoji.FAMILY_WOMAN_BOY;
  Result[283] := TEmoji.FAMILY_WOMAN_BOY_BOY;
  Result[284] := TEmoji.FAMILY_WOMAN_GIRL;
  Result[285] := TEmoji.FAMILY_WOMAN_GIRL_BOY;
  Result[286] := TEmoji.FAMILY_WOMAN_GIRL_GIRL;
  Result[287] := TEmoji.FAMILY_WOMAN_WOMAN_BOY;
  Result[288] := TEmoji.FAMILY_WOMAN_WOMAN_BOY_BOY;
  Result[289] := TEmoji.FAMILY_WOMAN_WOMAN_GIRL;
  Result[290] := TEmoji.FAMILY_WOMAN_WOMAN_GIRL_BOY;
  Result[291] := TEmoji.FAMILY_WOMAN_WOMAN_GIRL_GIRL;
  Result[292] := TEmoji.FARMER;
  Result[293] := TEmoji.FARMER_DARK_SKIN_TONE;
  Result[294] := TEmoji.FARMER_LIGHT_SKIN_TONE;
  Result[295] := TEmoji.FARMER_MEDIUM_SKIN_TONE;
  Result[296] := TEmoji.FARMER_MEDIUM_DARK_SKIN_TONE;
  Result[297] := TEmoji.FARMER_MEDIUM_LIGHT_SKIN_TONE;
  Result[298] := TEmoji.FIREFIGHTER;
  Result[299] := TEmoji.FIREFIGHTER_DARK_SKIN_TONE;
  Result[300] := TEmoji.FIREFIGHTER_LIGHT_SKIN_TONE;
  Result[301] := TEmoji.FIREFIGHTER_MEDIUM_SKIN_TONE;
  Result[302] := TEmoji.FIREFIGHTER_MEDIUM_DARK_SKIN_TONE;
  Result[303] := TEmoji.FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE;
  Result[304] := TEmoji.FLAG_AFGHANISTAN;
  Result[305] := TEmoji.FLAG_ALBANIA;
  Result[306] := TEmoji.FLAG_ALGERIA;
  Result[307] := TEmoji.FLAG_AMERICAN_SAMOA;
  Result[308] := TEmoji.FLAG_ANDORRA;
  Result[309] := TEmoji.FLAG_ANGOLA;
  Result[310] := TEmoji.FLAG_ANGUILLA;
  Result[311] := TEmoji.FLAG_ANTARCTICA;
  Result[312] := TEmoji.FLAG_ANTIGUA_BARBUDA;
  Result[313] := TEmoji.FLAG_ARGENTINA;
  Result[314] := TEmoji.FLAG_ARMENIA;
  Result[315] := TEmoji.FLAG_ARUBA;
  Result[316] := TEmoji.FLAG_ASCENSION_ISLAND;
  Result[317] := TEmoji.FLAG_AUSTRALIA;
  Result[318] := TEmoji.FLAG_AUSTRIA;
  Result[319] := TEmoji.FLAG_AZERBAIJAN;
  Result[320] := TEmoji.FLAG_BAHAMAS;
  Result[321] := TEmoji.FLAG_BAHRAIN;
  Result[322] := TEmoji.FLAG_BANGLADESH;
  Result[323] := TEmoji.FLAG_BARBADOS;
  Result[324] := TEmoji.FLAG_BELARUS;
  Result[325] := TEmoji.FLAG_BELGIUM;
  Result[326] := TEmoji.FLAG_BELIZE;
  Result[327] := TEmoji.FLAG_BENIN;
  Result[328] := TEmoji.FLAG_BERMUDA;
  Result[329] := TEmoji.FLAG_BHUTAN;
  Result[330] := TEmoji.FLAG_BOLIVIA;
  Result[331] := TEmoji.FLAG_BOSNIA_HERZEGOVINA;
  Result[332] := TEmoji.FLAG_BOTSWANA;
  Result[333] := TEmoji.FLAG_BOUVET_ISLAND;
  Result[334] := TEmoji.FLAG_BRAZIL;
  Result[335] := TEmoji.FLAG_BRITISH_INDIAN_OCEAN_TERRITORY;
  Result[336] := TEmoji.FLAG_BRITISH_VIRGIN_ISLANDS;
  Result[337] := TEmoji.FLAG_BRUNEI;
  Result[338] := TEmoji.FLAG_BULGARIA;
  Result[339] := TEmoji.FLAG_BURKINA_FASO;
  Result[340] := TEmoji.FLAG_BURUNDI;
  Result[341] := TEmoji.FLAG_CAMBODIA;
  Result[342] := TEmoji.FLAG_CAMEROON;
  Result[343] := TEmoji.FLAG_CANADA;
  Result[344] := TEmoji.FLAG_CANARY_ISLANDS;
  Result[345] := TEmoji.FLAG_CAPE_VERDE;
  Result[346] := TEmoji.FLAG_CARIBBEAN_NETHERLANDS;
  Result[347] := TEmoji.FLAG_CAYMAN_ISLANDS;
  Result[348] := TEmoji.FLAG_CENTRAL_AFRICAN_REPUBLIC;
  Result[349] := TEmoji.FLAG_CEUTA_MELILLA;
  Result[350] := TEmoji.FLAG_CHAD;
  Result[351] := TEmoji.FLAG_CHILE;
  Result[352] := TEmoji.FLAG_CHINA;
  Result[353] := TEmoji.FLAG_CHRISTMAS_ISLAND;
  Result[354] := TEmoji.FLAG_CLIPPERTON_ISLAND;
  Result[355] := TEmoji.FLAG_COCOS_KEELING_ISLANDS;
  Result[356] := TEmoji.FLAG_COLOMBIA;
  Result[357] := TEmoji.FLAG_COMOROS;
  Result[358] := TEmoji.FLAG_CONGO_BRAZZAVILLE;
  Result[359] := TEmoji.FLAG_CONGO_KINSHASA;
  Result[360] := TEmoji.FLAG_COOK_ISLANDS;
  Result[361] := TEmoji.FLAG_COSTA_RICA;
  Result[362] := TEmoji.FLAG_CROATIA;
  Result[363] := TEmoji.FLAG_CUBA;
  Result[364] := TEmoji.FLAG_CURA_AO;
  Result[365] := TEmoji.FLAG_CYPRUS;
  Result[366] := TEmoji.FLAG_CZECHIA;
  Result[367] := TEmoji.FLAG_C_TE_D_IVOIRE;
  Result[368] := TEmoji.FLAG_DENMARK;
  Result[369] := TEmoji.FLAG_DIEGO_GARCIA;
  Result[370] := TEmoji.FLAG_DJIBOUTI;
  Result[371] := TEmoji.FLAG_DOMINICA;
  Result[372] := TEmoji.FLAG_DOMINICAN_REPUBLIC;
  Result[373] := TEmoji.FLAG_ECUADOR;
  Result[374] := TEmoji.FLAG_EGYPT;
  Result[375] := TEmoji.FLAG_EL_SALVADOR;
  Result[376] := TEmoji.FLAG_ENGLAND;
  Result[377] := TEmoji.FLAG_EQUATORIAL_GUINEA;
  Result[378] := TEmoji.FLAG_ERITREA;
  Result[379] := TEmoji.FLAG_ESTONIA;
  Result[380] := TEmoji.FLAG_ESWATINI;
  Result[381] := TEmoji.FLAG_ETHIOPIA;
  Result[382] := TEmoji.FLAG_EUROPEAN_UNION;
  Result[383] := TEmoji.FLAG_FALKLAND_ISLANDS;
  Result[384] := TEmoji.FLAG_FAROE_ISLANDS;
  Result[385] := TEmoji.FLAG_FIJI;
  Result[386] := TEmoji.FLAG_FINLAND;
  Result[387] := TEmoji.FLAG_FRANCE;
  Result[388] := TEmoji.FLAG_FRENCH_GUIANA;
  Result[389] := TEmoji.FLAG_FRENCH_POLYNESIA;
  Result[390] := TEmoji.FLAG_FRENCH_SOUTHERN_TERRITORIES;
  Result[391] := TEmoji.FLAG_GABON;
  Result[392] := TEmoji.FLAG_GAMBIA;
  Result[393] := TEmoji.FLAG_GEORGIA;
  Result[394] := TEmoji.FLAG_GERMANY;
  Result[395] := TEmoji.FLAG_GHANA;
  Result[396] := TEmoji.FLAG_GIBRALTAR;
  Result[397] := TEmoji.FLAG_GREECE;
  Result[398] := TEmoji.FLAG_GREENLAND;
  Result[399] := TEmoji.FLAG_GRENADA;
  Result[400] := TEmoji.FLAG_GUADELOUPE;
  Result[401] := TEmoji.FLAG_GUAM;
  Result[402] := TEmoji.FLAG_GUATEMALA;
  Result[403] := TEmoji.FLAG_GUERNSEY;
  Result[404] := TEmoji.FLAG_GUINEA;
  Result[405] := TEmoji.FLAG_GUINEA_BISSAU;
  Result[406] := TEmoji.FLAG_GUYANA;
  Result[407] := TEmoji.FLAG_HAITI;
  Result[408] := TEmoji.FLAG_HEARD_MCDONALD_ISLANDS;
  Result[409] := TEmoji.FLAG_HONDURAS;
  Result[410] := TEmoji.FLAG_HONG_KONG_SAR_CHINA;
  Result[411] := TEmoji.FLAG_HUNGARY;
  Result[412] := TEmoji.FLAG_ICELAND;
  Result[413] := TEmoji.FLAG_INDIA;
  Result[414] := TEmoji.FLAG_INDONESIA;
  Result[415] := TEmoji.FLAG_IRAN;
  Result[416] := TEmoji.FLAG_IRAQ;
  Result[417] := TEmoji.FLAG_IRELAND;
  Result[418] := TEmoji.FLAG_ISLE_OF_MAN;
  Result[419] := TEmoji.FLAG_ISRAEL;
  Result[420] := TEmoji.FLAG_ITALY;
  Result[421] := TEmoji.FLAG_JAMAICA;
  Result[422] := TEmoji.FLAG_JAPAN;
  Result[423] := TEmoji.FLAG_JERSEY;
  Result[424] := TEmoji.FLAG_JORDAN;
  Result[425] := TEmoji.FLAG_KAZAKHSTAN;
  Result[426] := TEmoji.FLAG_KENYA;
  Result[427] := TEmoji.FLAG_KIRIBATI;
  Result[428] := TEmoji.FLAG_KOSOVO;
  Result[429] := TEmoji.FLAG_KUWAIT;
  Result[430] := TEmoji.FLAG_KYRGYZSTAN;
  Result[431] := TEmoji.FLAG_LAOS;
  Result[432] := TEmoji.FLAG_LATVIA;
  Result[433] := TEmoji.FLAG_LEBANON;
  Result[434] := TEmoji.FLAG_LESOTHO;
  Result[435] := TEmoji.FLAG_LIBERIA;
  Result[436] := TEmoji.FLAG_LIBYA;
  Result[437] := TEmoji.FLAG_LIECHTENSTEIN;
  Result[438] := TEmoji.FLAG_LITHUANIA;
  Result[439] := TEmoji.FLAG_LUXEMBOURG;
  Result[440] := TEmoji.FLAG_MACAO_SAR_CHINA;
  Result[441] := TEmoji.FLAG_MADAGASCAR;
  Result[442] := TEmoji.FLAG_MALAWI;
  Result[443] := TEmoji.FLAG_MALAYSIA;
  Result[444] := TEmoji.FLAG_MALDIVES;
  Result[445] := TEmoji.FLAG_MALI;
  Result[446] := TEmoji.FLAG_MALTA;
  Result[447] := TEmoji.FLAG_MARSHALL_ISLANDS;
  Result[448] := TEmoji.FLAG_MARTINIQUE;
  Result[449] := TEmoji.FLAG_MAURITANIA;
  Result[450] := TEmoji.FLAG_MAURITIUS;
  Result[451] := TEmoji.FLAG_MAYOTTE;
  Result[452] := TEmoji.FLAG_MEXICO;
  Result[453] := TEmoji.FLAG_MICRONESIA;
  Result[454] := TEmoji.FLAG_MOLDOVA;
  Result[455] := TEmoji.FLAG_MONACO;
  Result[456] := TEmoji.FLAG_MONGOLIA;
  Result[457] := TEmoji.FLAG_MONTENEGRO;
  Result[458] := TEmoji.FLAG_MONTSERRAT;
  Result[459] := TEmoji.FLAG_MOROCCO;
  Result[460] := TEmoji.FLAG_MOZAMBIQUE;
  Result[461] := TEmoji.FLAG_MYANMAR_BURMA;
  Result[462] := TEmoji.FLAG_NAMIBIA;
  Result[463] := TEmoji.FLAG_NAURU;
  Result[464] := TEmoji.FLAG_NEPAL;
  Result[465] := TEmoji.FLAG_NETHERLANDS;
  Result[466] := TEmoji.FLAG_NEW_CALEDONIA;
  Result[467] := TEmoji.FLAG_NEW_ZEALAND;
  Result[468] := TEmoji.FLAG_NICARAGUA;
  Result[469] := TEmoji.FLAG_NIGER;
  Result[470] := TEmoji.FLAG_NIGERIA;
  Result[471] := TEmoji.FLAG_NIUE;
  Result[472] := TEmoji.FLAG_NORFOLK_ISLAND;
  Result[473] := TEmoji.FLAG_NORTH_KOREA;
  Result[474] := TEmoji.FLAG_NORTH_MACEDONIA;
  Result[475] := TEmoji.FLAG_NORTHERN_MARIANA_ISLANDS;
  Result[476] := TEmoji.FLAG_NORWAY;
  Result[477] := TEmoji.FLAG_OMAN;
  Result[478] := TEmoji.FLAG_PAKISTAN;
  Result[479] := TEmoji.FLAG_PALAU;
  Result[480] := TEmoji.FLAG_PALESTINIAN_TERRITORIES;
  Result[481] := TEmoji.FLAG_PANAMA;
  Result[482] := TEmoji.FLAG_PAPUA_NEW_GUINEA;
  Result[483] := TEmoji.FLAG_PARAGUAY;
  Result[484] := TEmoji.FLAG_PERU;
  Result[485] := TEmoji.FLAG_PHILIPPINES;
  Result[486] := TEmoji.FLAG_PITCAIRN_ISLANDS;
  Result[487] := TEmoji.FLAG_POLAND;
  Result[488] := TEmoji.FLAG_PORTUGAL;
  Result[489] := TEmoji.FLAG_PUERTO_RICO;
  Result[490] := TEmoji.FLAG_QATAR;
  Result[491] := TEmoji.FLAG_ROMANIA;
  Result[492] := TEmoji.FLAG_RUSSIA;
  Result[493] := TEmoji.FLAG_RWANDA;
  Result[494] := TEmoji.FLAG_R_UNION;
  Result[495] := TEmoji.FLAG_SAMOA;
  Result[496] := TEmoji.FLAG_SAN_MARINO;
  Result[497] := TEmoji.FLAG_SARK;
  Result[498] := TEmoji.FLAG_SAUDI_ARABIA;
  Result[499] := TEmoji.FLAG_SCOTLAND;
  Result[500] := TEmoji.FLAG_SENEGAL;
  Result[501] := TEmoji.FLAG_SERBIA;
  Result[502] := TEmoji.FLAG_SEYCHELLES;
  Result[503] := TEmoji.FLAG_SIERRA_LEONE;
  Result[504] := TEmoji.FLAG_SINGAPORE;
  Result[505] := TEmoji.FLAG_SINT_MAARTEN;
  Result[506] := TEmoji.FLAG_SLOVAKIA;
  Result[507] := TEmoji.FLAG_SLOVENIA;
  Result[508] := TEmoji.FLAG_SOLOMON_ISLANDS;
  Result[509] := TEmoji.FLAG_SOMALIA;
  Result[510] := TEmoji.FLAG_SOUTH_AFRICA;
  Result[511] := TEmoji.FLAG_SOUTH_GEORGIA_SOUTH_SANDWICH_ISLANDS;
  Result[512] := TEmoji.FLAG_SOUTH_KOREA;
  Result[513] := TEmoji.FLAG_SOUTH_SUDAN;
  Result[514] := TEmoji.FLAG_SPAIN;
  Result[515] := TEmoji.FLAG_SRI_LANKA;
  Result[516] := TEmoji.FLAG_ST_BARTH_LEMY;
  Result[517] := TEmoji.FLAG_ST_HELENA;
  Result[518] := TEmoji.FLAG_ST_KITTS_NEVIS;
  Result[519] := TEmoji.FLAG_ST_LUCIA;
  Result[520] := TEmoji.FLAG_ST_MARTIN;
  Result[521] := TEmoji.FLAG_ST_PIERRE_MIQUELON;
  Result[522] := TEmoji.FLAG_ST_VINCENT_GRENADINES;
  Result[523] := TEmoji.FLAG_SUDAN;
  Result[524] := TEmoji.FLAG_SURINAME;
  Result[525] := TEmoji.FLAG_SVALBARD_JAN_MAYEN;
  Result[526] := TEmoji.FLAG_SWEDEN;
  Result[527] := TEmoji.FLAG_SWITZERLAND;
  Result[528] := TEmoji.FLAG_SYRIA;
  Result[529] := TEmoji.FLAG_S_O_TOM_PR_NCIPE;
  Result[530] := TEmoji.FLAG_TAIWAN;
  Result[531] := TEmoji.FLAG_TAJIKISTAN;
  Result[532] := TEmoji.FLAG_TANZANIA;
  Result[533] := TEmoji.FLAG_THAILAND;
  Result[534] := TEmoji.FLAG_TIMOR_LESTE;
  Result[535] := TEmoji.FLAG_TOGO;
  Result[536] := TEmoji.FLAG_TOKELAU;
  Result[537] := TEmoji.FLAG_TONGA;
  Result[538] := TEmoji.FLAG_TRINIDAD_TOBAGO;
  Result[539] := TEmoji.FLAG_TRISTAN_DA_CUNHA;
  Result[540] := TEmoji.FLAG_TUNISIA;
  Result[541] := TEmoji.FLAG_TURKMENISTAN;
  Result[542] := TEmoji.FLAG_TURKS_CAICOS_ISLANDS;
  Result[543] := TEmoji.FLAG_TUVALU;
  Result[544] := TEmoji.FLAG_T_RKIYE;
  Result[545] := TEmoji.FLAG_U_S_OUTLYING_ISLANDS;
  Result[546] := TEmoji.FLAG_U_S_VIRGIN_ISLANDS;
  Result[547] := TEmoji.FLAG_UGANDA;
  Result[548] := TEmoji.FLAG_UKRAINE;
  Result[549] := TEmoji.FLAG_UNITED_ARAB_EMIRATES;
  Result[550] := TEmoji.FLAG_UNITED_KINGDOM;
  Result[551] := TEmoji.FLAG_UNITED_NATIONS;
  Result[552] := TEmoji.FLAG_UNITED_STATES;
  Result[553] := TEmoji.FLAG_URUGUAY;
  Result[554] := TEmoji.FLAG_UZBEKISTAN;
  Result[555] := TEmoji.FLAG_VANUATU;
  Result[556] := TEmoji.FLAG_VATICAN_CITY;
  Result[557] := TEmoji.FLAG_VENEZUELA;
  Result[558] := TEmoji.FLAG_VIETNAM;
  Result[559] := TEmoji.FLAG_WALES;
  Result[560] := TEmoji.FLAG_WALLIS_FUTUNA;
  Result[561] := TEmoji.FLAG_WESTERN_SAHARA;
  Result[562] := TEmoji.FLAG_YEMEN;
  Result[563] := TEmoji.FLAG_ZAMBIA;
  Result[564] := TEmoji.FLAG_ZIMBABWE;
  Result[565] := TEmoji.FLAG_LAND_ISLANDS;
  Result[566] := TEmoji.FLEXED_BICEPS_DARK_SKIN_TONE;
  Result[567] := TEmoji.FLEXED_BICEPS_LIGHT_SKIN_TONE;
  Result[568] := TEmoji.FLEXED_BICEPS_MEDIUM_SKIN_TONE;
  Result[569] := TEmoji.FLEXED_BICEPS_MEDIUM_DARK_SKIN_TONE;
  Result[570] := TEmoji.FLEXED_BICEPS_MEDIUM_LIGHT_SKIN_TONE;
  Result[571] := TEmoji.FOLDED_HANDS_DARK_SKIN_TONE;
  Result[572] := TEmoji.FOLDED_HANDS_LIGHT_SKIN_TONE;
  Result[573] := TEmoji.FOLDED_HANDS_MEDIUM_SKIN_TONE;
  Result[574] := TEmoji.FOLDED_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[575] := TEmoji.FOLDED_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[576] := TEmoji.FOOT_DARK_SKIN_TONE;
  Result[577] := TEmoji.FOOT_LIGHT_SKIN_TONE;
  Result[578] := TEmoji.FOOT_MEDIUM_SKIN_TONE;
  Result[579] := TEmoji.FOOT_MEDIUM_DARK_SKIN_TONE;
  Result[580] := TEmoji.FOOT_MEDIUM_LIGHT_SKIN_TONE;
  Result[581] := TEmoji.GIRL_DARK_SKIN_TONE;
  Result[582] := TEmoji.GIRL_LIGHT_SKIN_TONE;
  Result[583] := TEmoji.GIRL_MEDIUM_SKIN_TONE;
  Result[584] := TEmoji.GIRL_MEDIUM_DARK_SKIN_TONE;
  Result[585] := TEmoji.GIRL_MEDIUM_LIGHT_SKIN_TONE;
  Result[586] := TEmoji.GUARD_DARK_SKIN_TONE;
  Result[587] := TEmoji.GUARD_LIGHT_SKIN_TONE;
  Result[588] := TEmoji.GUARD_MEDIUM_SKIN_TONE;
  Result[589] := TEmoji.GUARD_MEDIUM_DARK_SKIN_TONE;
  Result[590] := TEmoji.GUARD_MEDIUM_LIGHT_SKIN_TONE;
  Result[591] := TEmoji.HAND_WITH_FINGERS_SPLAYED_DARK_SKIN_TONE;
  Result[592] := TEmoji.HAND_WITH_FINGERS_SPLAYED_LIGHT_SKIN_TONE;
  Result[593] := TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_SKIN_TONE;
  Result[594] := TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_DARK_SKIN_TONE;
  Result[595] := TEmoji.HAND_WITH_FINGERS_SPLAYED_MEDIUM_LIGHT_SKIN_TONE;
  Result[596] := TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_DARK_SKIN_TONE;
  Result[597] := TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_LIGHT_SKIN_TONE;
  Result[598] := TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_SKIN_TONE;
  Result[599] := TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_DARK_SKIN_TONE;
  Result[600] := TEmoji.HAND_WITH_INDEX_FINGER_AND_THUMB_CROSSED_MEDIUM_LIGHT_SKIN_TONE;
  Result[601] := TEmoji.HANDSHAKE_DARK_SKIN_TONE;
  Result[602] := TEmoji.HANDSHAKE_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[603] := TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[604] := TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[605] := TEmoji.HANDSHAKE_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[606] := TEmoji.HANDSHAKE_LIGHT_SKIN_TONE;
  Result[607] := TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[608] := TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[609] := TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[610] := TEmoji.HANDSHAKE_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[611] := TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE;
  Result[612] := TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[613] := TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[614] := TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[615] := TEmoji.HANDSHAKE_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[616] := TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE;
  Result[617] := TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[618] := TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[619] := TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[620] := TEmoji.HANDSHAKE_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[621] := TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE;
  Result[622] := TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[623] := TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[624] := TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[625] := TEmoji.HANDSHAKE_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[626] := TEmoji.HEAD_SHAKING_HORIZONTALLY;
  Result[627] := TEmoji.HEAD_SHAKING_VERTICALLY;
  Result[628] := TEmoji.HEALTH_WORKER;
  Result[629] := TEmoji.HEALTH_WORKER_DARK_SKIN_TONE;
  Result[630] := TEmoji.HEALTH_WORKER_LIGHT_SKIN_TONE;
  Result[631] := TEmoji.HEALTH_WORKER_MEDIUM_SKIN_TONE;
  Result[632] := TEmoji.HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[633] := TEmoji.HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[634] := TEmoji.HEART_HANDS_DARK_SKIN_TONE;
  Result[635] := TEmoji.HEART_HANDS_LIGHT_SKIN_TONE;
  Result[636] := TEmoji.HEART_HANDS_MEDIUM_SKIN_TONE;
  Result[637] := TEmoji.HEART_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[638] := TEmoji.HEART_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[639] := TEmoji.HEART_ON_FIRE;
  Result[640] := TEmoji.HORSE_RACING_DARK_SKIN_TONE;
  Result[641] := TEmoji.HORSE_RACING_LIGHT_SKIN_TONE;
  Result[642] := TEmoji.HORSE_RACING_MEDIUM_SKIN_TONE;
  Result[643] := TEmoji.HORSE_RACING_MEDIUM_DARK_SKIN_TONE;
  Result[644] := TEmoji.HORSE_RACING_MEDIUM_LIGHT_SKIN_TONE;
  Result[645] := TEmoji.INDEX_POINTING_AT_THE_VIEWER_DARK_SKIN_TONE;
  Result[646] := TEmoji.INDEX_POINTING_AT_THE_VIEWER_LIGHT_SKIN_TONE;
  Result[647] := TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_SKIN_TONE;
  Result[648] := TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_DARK_SKIN_TONE;
  Result[649] := TEmoji.INDEX_POINTING_AT_THE_VIEWER_MEDIUM_LIGHT_SKIN_TONE;
  Result[650] := TEmoji.INDEX_POINTING_UP_DARK_SKIN_TONE;
  Result[651] := TEmoji.INDEX_POINTING_UP_LIGHT_SKIN_TONE;
  Result[652] := TEmoji.INDEX_POINTING_UP_MEDIUM_SKIN_TONE;
  Result[653] := TEmoji.INDEX_POINTING_UP_MEDIUM_DARK_SKIN_TONE;
  Result[654] := TEmoji.INDEX_POINTING_UP_MEDIUM_LIGHT_SKIN_TONE;
  Result[655] := TEmoji.JUDGE;
  Result[656] := TEmoji.JUDGE_DARK_SKIN_TONE;
  Result[657] := TEmoji.JUDGE_LIGHT_SKIN_TONE;
  Result[658] := TEmoji.JUDGE_MEDIUM_SKIN_TONE;
  Result[659] := TEmoji.JUDGE_MEDIUM_DARK_SKIN_TONE;
  Result[660] := TEmoji.JUDGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[661] := TEmoji.KISS_DARK_SKIN_TONE;
  Result[662] := TEmoji.KISS_LIGHT_SKIN_TONE;
  Result[663] := TEmoji.KISS_MAN_MAN;
  Result[664] := TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE;
  Result[665] := TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[666] := TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[667] := TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[668] := TEmoji.KISS_MAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[669] := TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE;
  Result[670] := TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[671] := TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[672] := TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[673] := TEmoji.KISS_MAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[674] := TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE;
  Result[675] := TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[676] := TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[677] := TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[678] := TEmoji.KISS_MAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[679] := TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[680] := TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[681] := TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[682] := TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[683] := TEmoji.KISS_MAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[684] := TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[685] := TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[686] := TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[687] := TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[688] := TEmoji.KISS_MAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[689] := TEmoji.KISS_MEDIUM_SKIN_TONE;
  Result[690] := TEmoji.KISS_MEDIUM_DARK_SKIN_TONE;
  Result[691] := TEmoji.KISS_MEDIUM_LIGHT_SKIN_TONE;
  Result[692] := TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[693] := TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[694] := TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[695] := TEmoji.KISS_PERSON_PERSON_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[696] := TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[697] := TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[698] := TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[699] := TEmoji.KISS_PERSON_PERSON_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[700] := TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[701] := TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[702] := TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[703] := TEmoji.KISS_PERSON_PERSON_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[704] := TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[705] := TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[706] := TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[707] := TEmoji.KISS_PERSON_PERSON_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[708] := TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[709] := TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[710] := TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[711] := TEmoji.KISS_PERSON_PERSON_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[712] := TEmoji.KISS_WOMAN_MAN;
  Result[713] := TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE;
  Result[714] := TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[715] := TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[716] := TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[717] := TEmoji.KISS_WOMAN_MAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[718] := TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE;
  Result[719] := TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[720] := TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[721] := TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[722] := TEmoji.KISS_WOMAN_MAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[723] := TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE;
  Result[724] := TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[725] := TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[726] := TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[727] := TEmoji.KISS_WOMAN_MAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[728] := TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[729] := TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[730] := TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[731] := TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[732] := TEmoji.KISS_WOMAN_MAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[733] := TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[734] := TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[735] := TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[736] := TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[737] := TEmoji.KISS_WOMAN_MAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[738] := TEmoji.KISS_WOMAN_WOMAN;
  Result[739] := TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE;
  Result[740] := TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[741] := TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[742] := TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[743] := TEmoji.KISS_WOMAN_WOMAN_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[744] := TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE;
  Result[745] := TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[746] := TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[747] := TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[748] := TEmoji.KISS_WOMAN_WOMAN_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[749] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE;
  Result[750] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[751] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[752] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[753] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[754] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[755] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[756] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[757] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[758] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[759] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[760] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[761] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[762] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[763] := TEmoji.KISS_WOMAN_WOMAN_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[764] := TEmoji.LEFT_FACING_FIST_DARK_SKIN_TONE;
  Result[765] := TEmoji.LEFT_FACING_FIST_LIGHT_SKIN_TONE;
  Result[766] := TEmoji.LEFT_FACING_FIST_MEDIUM_SKIN_TONE;
  Result[767] := TEmoji.LEFT_FACING_FIST_MEDIUM_DARK_SKIN_TONE;
  Result[768] := TEmoji.LEFT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[769] := TEmoji.LEFTWARDS_HAND_DARK_SKIN_TONE;
  Result[770] := TEmoji.LEFTWARDS_HAND_LIGHT_SKIN_TONE;
  Result[771] := TEmoji.LEFTWARDS_HAND_MEDIUM_SKIN_TONE;
  Result[772] := TEmoji.LEFTWARDS_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[773] := TEmoji.LEFTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[774] := TEmoji.LEFTWARDS_PUSHING_HAND_DARK_SKIN_TONE;
  Result[775] := TEmoji.LEFTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE;
  Result[776] := TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE;
  Result[777] := TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[778] := TEmoji.LEFTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[779] := TEmoji.LEG_DARK_SKIN_TONE;
  Result[780] := TEmoji.LEG_LIGHT_SKIN_TONE;
  Result[781] := TEmoji.LEG_MEDIUM_SKIN_TONE;
  Result[782] := TEmoji.LEG_MEDIUM_DARK_SKIN_TONE;
  Result[783] := TEmoji.LEG_MEDIUM_LIGHT_SKIN_TONE;
  Result[784] := TEmoji.LIME;
  Result[785] := TEmoji.LOVE_YOU_GESTURE_DARK_SKIN_TONE;
  Result[786] := TEmoji.LOVE_YOU_GESTURE_LIGHT_SKIN_TONE;
  Result[787] := TEmoji.LOVE_YOU_GESTURE_MEDIUM_SKIN_TONE;
  Result[788] := TEmoji.LOVE_YOU_GESTURE_MEDIUM_DARK_SKIN_TONE;
  Result[789] := TEmoji.LOVE_YOU_GESTURE_MEDIUM_LIGHT_SKIN_TONE;
  Result[790] := TEmoji.MAGE_DARK_SKIN_TONE;
  Result[791] := TEmoji.MAGE_LIGHT_SKIN_TONE;
  Result[792] := TEmoji.MAGE_MEDIUM_SKIN_TONE;
  Result[793] := TEmoji.MAGE_MEDIUM_DARK_SKIN_TONE;
  Result[794] := TEmoji.MAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[795] := TEmoji.MAN_ARTIST;
  Result[796] := TEmoji.MAN_ARTIST_DARK_SKIN_TONE;
  Result[797] := TEmoji.MAN_ARTIST_LIGHT_SKIN_TONE;
  Result[798] := TEmoji.MAN_ARTIST_MEDIUM_SKIN_TONE;
  Result[799] := TEmoji.MAN_ARTIST_MEDIUM_DARK_SKIN_TONE;
  Result[800] := TEmoji.MAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[801] := TEmoji.MAN_ASTRONAUT;
  Result[802] := TEmoji.MAN_ASTRONAUT_DARK_SKIN_TONE;
  Result[803] := TEmoji.MAN_ASTRONAUT_LIGHT_SKIN_TONE;
  Result[804] := TEmoji.MAN_ASTRONAUT_MEDIUM_SKIN_TONE;
  Result[805] := TEmoji.MAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE;
  Result[806] := TEmoji.MAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[807] := TEmoji.MAN_BIKING;
  Result[808] := TEmoji.MAN_BIKING_DARK_SKIN_TONE;
  Result[809] := TEmoji.MAN_BIKING_LIGHT_SKIN_TONE;
  Result[810] := TEmoji.MAN_BIKING_MEDIUM_SKIN_TONE;
  Result[811] := TEmoji.MAN_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[812] := TEmoji.MAN_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[813] := TEmoji.MAN_BOUNCING_BALL;
  Result[814] := TEmoji.MAN_BOUNCING_BALL_DARK_SKIN_TONE;
  Result[815] := TEmoji.MAN_BOUNCING_BALL_LIGHT_SKIN_TONE;
  Result[816] := TEmoji.MAN_BOUNCING_BALL_MEDIUM_SKIN_TONE;
  Result[817] := TEmoji.MAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE;
  Result[818] := TEmoji.MAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[819] := TEmoji.MAN_BOWING;
  Result[820] := TEmoji.MAN_BOWING_DARK_SKIN_TONE;
  Result[821] := TEmoji.MAN_BOWING_LIGHT_SKIN_TONE;
  Result[822] := TEmoji.MAN_BOWING_MEDIUM_SKIN_TONE;
  Result[823] := TEmoji.MAN_BOWING_MEDIUM_DARK_SKIN_TONE;
  Result[824] := TEmoji.MAN_BOWING_MEDIUM_LIGHT_SKIN_TONE;
  Result[825] := TEmoji.MAN_CARTWHEELING;
  Result[826] := TEmoji.MAN_CARTWHEELING_DARK_SKIN_TONE;
  Result[827] := TEmoji.MAN_CARTWHEELING_LIGHT_SKIN_TONE;
  Result[828] := TEmoji.MAN_CARTWHEELING_MEDIUM_SKIN_TONE;
  Result[829] := TEmoji.MAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE;
  Result[830] := TEmoji.MAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[831] := TEmoji.MAN_CLIMBING;
  Result[832] := TEmoji.MAN_CLIMBING_DARK_SKIN_TONE;
  Result[833] := TEmoji.MAN_CLIMBING_LIGHT_SKIN_TONE;
  Result[834] := TEmoji.MAN_CLIMBING_MEDIUM_SKIN_TONE;
  Result[835] := TEmoji.MAN_CLIMBING_MEDIUM_DARK_SKIN_TONE;
  Result[836] := TEmoji.MAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE;
  Result[837] := TEmoji.MAN_CONSTRUCTION_WORKER;
  Result[838] := TEmoji.MAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE;
  Result[839] := TEmoji.MAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE;
  Result[840] := TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE;
  Result[841] := TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[842] := TEmoji.MAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[843] := TEmoji.MAN_COOK;
  Result[844] := TEmoji.MAN_COOK_DARK_SKIN_TONE;
  Result[845] := TEmoji.MAN_COOK_LIGHT_SKIN_TONE;
  Result[846] := TEmoji.MAN_COOK_MEDIUM_SKIN_TONE;
  Result[847] := TEmoji.MAN_COOK_MEDIUM_DARK_SKIN_TONE;
  Result[848] := TEmoji.MAN_COOK_MEDIUM_LIGHT_SKIN_TONE;
  Result[849] := TEmoji.MAN_DANCING_DARK_SKIN_TONE;
  Result[850] := TEmoji.MAN_DANCING_LIGHT_SKIN_TONE;
  Result[851] := TEmoji.MAN_DANCING_MEDIUM_SKIN_TONE;
  Result[852] := TEmoji.MAN_DANCING_MEDIUM_DARK_SKIN_TONE;
  Result[853] := TEmoji.MAN_DANCING_MEDIUM_LIGHT_SKIN_TONE;
  Result[854] := TEmoji.MAN_DETECTIVE;
  Result[855] := TEmoji.MAN_DETECTIVE_DARK_SKIN_TONE;
  Result[856] := TEmoji.MAN_DETECTIVE_LIGHT_SKIN_TONE;
  Result[857] := TEmoji.MAN_DETECTIVE_MEDIUM_SKIN_TONE;
  Result[858] := TEmoji.MAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE;
  Result[859] := TEmoji.MAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE;
  Result[860] := TEmoji.MAN_ELF;
  Result[861] := TEmoji.MAN_ELF_DARK_SKIN_TONE;
  Result[862] := TEmoji.MAN_ELF_LIGHT_SKIN_TONE;
  Result[863] := TEmoji.MAN_ELF_MEDIUM_SKIN_TONE;
  Result[864] := TEmoji.MAN_ELF_MEDIUM_DARK_SKIN_TONE;
  Result[865] := TEmoji.MAN_ELF_MEDIUM_LIGHT_SKIN_TONE;
  Result[866] := TEmoji.MAN_FACEPALMING;
  Result[867] := TEmoji.MAN_FACEPALMING_DARK_SKIN_TONE;
  Result[868] := TEmoji.MAN_FACEPALMING_LIGHT_SKIN_TONE;
  Result[869] := TEmoji.MAN_FACEPALMING_MEDIUM_SKIN_TONE;
  Result[870] := TEmoji.MAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE;
  Result[871] := TEmoji.MAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[872] := TEmoji.MAN_FACTORY_WORKER;
  Result[873] := TEmoji.MAN_FACTORY_WORKER_DARK_SKIN_TONE;
  Result[874] := TEmoji.MAN_FACTORY_WORKER_LIGHT_SKIN_TONE;
  Result[875] := TEmoji.MAN_FACTORY_WORKER_MEDIUM_SKIN_TONE;
  Result[876] := TEmoji.MAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[877] := TEmoji.MAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[878] := TEmoji.MAN_FAIRY;
  Result[879] := TEmoji.MAN_FAIRY_DARK_SKIN_TONE;
  Result[880] := TEmoji.MAN_FAIRY_LIGHT_SKIN_TONE;
  Result[881] := TEmoji.MAN_FAIRY_MEDIUM_SKIN_TONE;
  Result[882] := TEmoji.MAN_FAIRY_MEDIUM_DARK_SKIN_TONE;
  Result[883] := TEmoji.MAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE;
  Result[884] := TEmoji.MAN_FARMER;
  Result[885] := TEmoji.MAN_FARMER_DARK_SKIN_TONE;
  Result[886] := TEmoji.MAN_FARMER_LIGHT_SKIN_TONE;
  Result[887] := TEmoji.MAN_FARMER_MEDIUM_SKIN_TONE;
  Result[888] := TEmoji.MAN_FARMER_MEDIUM_DARK_SKIN_TONE;
  Result[889] := TEmoji.MAN_FARMER_MEDIUM_LIGHT_SKIN_TONE;
  Result[890] := TEmoji.MAN_FEEDING_BABY;
  Result[891] := TEmoji.MAN_FEEDING_BABY_DARK_SKIN_TONE;
  Result[892] := TEmoji.MAN_FEEDING_BABY_LIGHT_SKIN_TONE;
  Result[893] := TEmoji.MAN_FEEDING_BABY_MEDIUM_SKIN_TONE;
  Result[894] := TEmoji.MAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE;
  Result[895] := TEmoji.MAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE;
  Result[896] := TEmoji.MAN_FIREFIGHTER;
  Result[897] := TEmoji.MAN_FIREFIGHTER_DARK_SKIN_TONE;
  Result[898] := TEmoji.MAN_FIREFIGHTER_LIGHT_SKIN_TONE;
  Result[899] := TEmoji.MAN_FIREFIGHTER_MEDIUM_SKIN_TONE;
  Result[900] := TEmoji.MAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE;
  Result[901] := TEmoji.MAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE;
  Result[902] := TEmoji.MAN_FROWNING;
  Result[903] := TEmoji.MAN_FROWNING_DARK_SKIN_TONE;
  Result[904] := TEmoji.MAN_FROWNING_LIGHT_SKIN_TONE;
  Result[905] := TEmoji.MAN_FROWNING_MEDIUM_SKIN_TONE;
  Result[906] := TEmoji.MAN_FROWNING_MEDIUM_DARK_SKIN_TONE;
  Result[907] := TEmoji.MAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[908] := TEmoji.MAN_GENIE;
  Result[909] := TEmoji.MAN_GESTURING_NO;
  Result[910] := TEmoji.MAN_GESTURING_NO_DARK_SKIN_TONE;
  Result[911] := TEmoji.MAN_GESTURING_NO_LIGHT_SKIN_TONE;
  Result[912] := TEmoji.MAN_GESTURING_NO_MEDIUM_SKIN_TONE;
  Result[913] := TEmoji.MAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE;
  Result[914] := TEmoji.MAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE;
  Result[915] := TEmoji.MAN_GESTURING_OK;
  Result[916] := TEmoji.MAN_GESTURING_OK_DARK_SKIN_TONE;
  Result[917] := TEmoji.MAN_GESTURING_OK_LIGHT_SKIN_TONE;
  Result[918] := TEmoji.MAN_GESTURING_OK_MEDIUM_SKIN_TONE;
  Result[919] := TEmoji.MAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE;
  Result[920] := TEmoji.MAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE;
  Result[921] := TEmoji.MAN_GETTING_HAIRCUT;
  Result[922] := TEmoji.MAN_GETTING_HAIRCUT_DARK_SKIN_TONE;
  Result[923] := TEmoji.MAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE;
  Result[924] := TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE;
  Result[925] := TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE;
  Result[926] := TEmoji.MAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[927] := TEmoji.MAN_GETTING_MASSAGE;
  Result[928] := TEmoji.MAN_GETTING_MASSAGE_DARK_SKIN_TONE;
  Result[929] := TEmoji.MAN_GETTING_MASSAGE_LIGHT_SKIN_TONE;
  Result[930] := TEmoji.MAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE;
  Result[931] := TEmoji.MAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE;
  Result[932] := TEmoji.MAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[933] := TEmoji.MAN_GOLFING;
  Result[934] := TEmoji.MAN_GOLFING_DARK_SKIN_TONE;
  Result[935] := TEmoji.MAN_GOLFING_LIGHT_SKIN_TONE;
  Result[936] := TEmoji.MAN_GOLFING_MEDIUM_SKIN_TONE;
  Result[937] := TEmoji.MAN_GOLFING_MEDIUM_DARK_SKIN_TONE;
  Result[938] := TEmoji.MAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[939] := TEmoji.MAN_GUARD;
  Result[940] := TEmoji.MAN_GUARD_DARK_SKIN_TONE;
  Result[941] := TEmoji.MAN_GUARD_LIGHT_SKIN_TONE;
  Result[942] := TEmoji.MAN_GUARD_MEDIUM_SKIN_TONE;
  Result[943] := TEmoji.MAN_GUARD_MEDIUM_DARK_SKIN_TONE;
  Result[944] := TEmoji.MAN_GUARD_MEDIUM_LIGHT_SKIN_TONE;
  Result[945] := TEmoji.MAN_HEALTH_WORKER;
  Result[946] := TEmoji.MAN_HEALTH_WORKER_DARK_SKIN_TONE;
  Result[947] := TEmoji.MAN_HEALTH_WORKER_LIGHT_SKIN_TONE;
  Result[948] := TEmoji.MAN_HEALTH_WORKER_MEDIUM_SKIN_TONE;
  Result[949] := TEmoji.MAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[950] := TEmoji.MAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[951] := TEmoji.MAN_IN_LOTUS_POSITION;
  Result[952] := TEmoji.MAN_IN_LOTUS_POSITION_DARK_SKIN_TONE;
  Result[953] := TEmoji.MAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE;
  Result[954] := TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE;
  Result[955] := TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE;
  Result[956] := TEmoji.MAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE;
  Result[957] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR;
  Result[958] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT;
  Result[959] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[960] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[961] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[962] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[963] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[964] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE;
  Result[965] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[966] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[967] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[968] := TEmoji.MAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[969] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR;
  Result[970] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT;
  Result[971] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[972] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[973] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[974] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[975] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[976] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE;
  Result[977] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[978] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[979] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[980] := TEmoji.MAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[981] := TEmoji.MAN_IN_STEAMY_ROOM;
  Result[982] := TEmoji.MAN_IN_STEAMY_ROOM_DARK_SKIN_TONE;
  Result[983] := TEmoji.MAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE;
  Result[984] := TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE;
  Result[985] := TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE;
  Result[986] := TEmoji.MAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE;
  Result[987] := TEmoji.MAN_IN_TUXEDO;
  Result[988] := TEmoji.MAN_IN_TUXEDO_DARK_SKIN_TONE;
  Result[989] := TEmoji.MAN_IN_TUXEDO_LIGHT_SKIN_TONE;
  Result[990] := TEmoji.MAN_IN_TUXEDO_MEDIUM_SKIN_TONE;
  Result[991] := TEmoji.MAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE;
  Result[992] := TEmoji.MAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE;
  Result[993] := TEmoji.MAN_JUDGE;
  Result[994] := TEmoji.MAN_JUDGE_DARK_SKIN_TONE;
  Result[995] := TEmoji.MAN_JUDGE_LIGHT_SKIN_TONE;
  Result[996] := TEmoji.MAN_JUDGE_MEDIUM_SKIN_TONE;
  Result[997] := TEmoji.MAN_JUDGE_MEDIUM_DARK_SKIN_TONE;
  Result[998] := TEmoji.MAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[999] := TEmoji.MAN_JUGGLING;
  Result[1000] := TEmoji.MAN_JUGGLING_DARK_SKIN_TONE;
  Result[1001] := TEmoji.MAN_JUGGLING_LIGHT_SKIN_TONE;
  Result[1002] := TEmoji.MAN_JUGGLING_MEDIUM_SKIN_TONE;
  Result[1003] := TEmoji.MAN_JUGGLING_MEDIUM_DARK_SKIN_TONE;
  Result[1004] := TEmoji.MAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1005] := TEmoji.MAN_KNEELING;
  Result[1006] := TEmoji.MAN_KNEELING_FACING_RIGHT;
  Result[1007] := TEmoji.MAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1008] := TEmoji.MAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1009] := TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1010] := TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1011] := TEmoji.MAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1012] := TEmoji.MAN_KNEELING_DARK_SKIN_TONE;
  Result[1013] := TEmoji.MAN_KNEELING_LIGHT_SKIN_TONE;
  Result[1014] := TEmoji.MAN_KNEELING_MEDIUM_SKIN_TONE;
  Result[1015] := TEmoji.MAN_KNEELING_MEDIUM_DARK_SKIN_TONE;
  Result[1016] := TEmoji.MAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1017] := TEmoji.MAN_LIFTING_WEIGHTS;
  Result[1018] := TEmoji.MAN_LIFTING_WEIGHTS_DARK_SKIN_TONE;
  Result[1019] := TEmoji.MAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE;
  Result[1020] := TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE;
  Result[1021] := TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE;
  Result[1022] := TEmoji.MAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1023] := TEmoji.MAN_MAGE;
  Result[1024] := TEmoji.MAN_MAGE_DARK_SKIN_TONE;
  Result[1025] := TEmoji.MAN_MAGE_LIGHT_SKIN_TONE;
  Result[1026] := TEmoji.MAN_MAGE_MEDIUM_SKIN_TONE;
  Result[1027] := TEmoji.MAN_MAGE_MEDIUM_DARK_SKIN_TONE;
  Result[1028] := TEmoji.MAN_MAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1029] := TEmoji.MAN_MECHANIC;
  Result[1030] := TEmoji.MAN_MECHANIC_DARK_SKIN_TONE;
  Result[1031] := TEmoji.MAN_MECHANIC_LIGHT_SKIN_TONE;
  Result[1032] := TEmoji.MAN_MECHANIC_MEDIUM_SKIN_TONE;
  Result[1033] := TEmoji.MAN_MECHANIC_MEDIUM_DARK_SKIN_TONE;
  Result[1034] := TEmoji.MAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE;
  Result[1035] := TEmoji.MAN_MOUNTAIN_BIKING;
  Result[1036] := TEmoji.MAN_MOUNTAIN_BIKING_DARK_SKIN_TONE;
  Result[1037] := TEmoji.MAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE;
  Result[1038] := TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE;
  Result[1039] := TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[1040] := TEmoji.MAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1041] := TEmoji.MAN_OFFICE_WORKER;
  Result[1042] := TEmoji.MAN_OFFICE_WORKER_DARK_SKIN_TONE;
  Result[1043] := TEmoji.MAN_OFFICE_WORKER_LIGHT_SKIN_TONE;
  Result[1044] := TEmoji.MAN_OFFICE_WORKER_MEDIUM_SKIN_TONE;
  Result[1045] := TEmoji.MAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[1046] := TEmoji.MAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1047] := TEmoji.MAN_PILOT;
  Result[1048] := TEmoji.MAN_PILOT_DARK_SKIN_TONE;
  Result[1049] := TEmoji.MAN_PILOT_LIGHT_SKIN_TONE;
  Result[1050] := TEmoji.MAN_PILOT_MEDIUM_SKIN_TONE;
  Result[1051] := TEmoji.MAN_PILOT_MEDIUM_DARK_SKIN_TONE;
  Result[1052] := TEmoji.MAN_PILOT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1053] := TEmoji.MAN_PLAYING_HANDBALL;
  Result[1054] := TEmoji.MAN_PLAYING_HANDBALL_DARK_SKIN_TONE;
  Result[1055] := TEmoji.MAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE;
  Result[1056] := TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE;
  Result[1057] := TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE;
  Result[1058] := TEmoji.MAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1059] := TEmoji.MAN_PLAYING_WATER_POLO;
  Result[1060] := TEmoji.MAN_PLAYING_WATER_POLO_DARK_SKIN_TONE;
  Result[1061] := TEmoji.MAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE;
  Result[1062] := TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE;
  Result[1063] := TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE;
  Result[1064] := TEmoji.MAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1065] := TEmoji.MAN_POLICE_OFFICER;
  Result[1066] := TEmoji.MAN_POLICE_OFFICER_DARK_SKIN_TONE;
  Result[1067] := TEmoji.MAN_POLICE_OFFICER_LIGHT_SKIN_TONE;
  Result[1068] := TEmoji.MAN_POLICE_OFFICER_MEDIUM_SKIN_TONE;
  Result[1069] := TEmoji.MAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE;
  Result[1070] := TEmoji.MAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1071] := TEmoji.MAN_POUTING;
  Result[1072] := TEmoji.MAN_POUTING_DARK_SKIN_TONE;
  Result[1073] := TEmoji.MAN_POUTING_LIGHT_SKIN_TONE;
  Result[1074] := TEmoji.MAN_POUTING_MEDIUM_SKIN_TONE;
  Result[1075] := TEmoji.MAN_POUTING_MEDIUM_DARK_SKIN_TONE;
  Result[1076] := TEmoji.MAN_POUTING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1077] := TEmoji.MAN_RAISING_HAND;
  Result[1078] := TEmoji.MAN_RAISING_HAND_DARK_SKIN_TONE;
  Result[1079] := TEmoji.MAN_RAISING_HAND_LIGHT_SKIN_TONE;
  Result[1080] := TEmoji.MAN_RAISING_HAND_MEDIUM_SKIN_TONE;
  Result[1081] := TEmoji.MAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1082] := TEmoji.MAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1083] := TEmoji.MAN_ROWING_BOAT;
  Result[1084] := TEmoji.MAN_ROWING_BOAT_DARK_SKIN_TONE;
  Result[1085] := TEmoji.MAN_ROWING_BOAT_LIGHT_SKIN_TONE;
  Result[1086] := TEmoji.MAN_ROWING_BOAT_MEDIUM_SKIN_TONE;
  Result[1087] := TEmoji.MAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE;
  Result[1088] := TEmoji.MAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1089] := TEmoji.MAN_RUNNING;
  Result[1090] := TEmoji.MAN_RUNNING_FACING_RIGHT;
  Result[1091] := TEmoji.MAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1092] := TEmoji.MAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1093] := TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1094] := TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1095] := TEmoji.MAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1096] := TEmoji.MAN_RUNNING_DARK_SKIN_TONE;
  Result[1097] := TEmoji.MAN_RUNNING_LIGHT_SKIN_TONE;
  Result[1098] := TEmoji.MAN_RUNNING_MEDIUM_SKIN_TONE;
  Result[1099] := TEmoji.MAN_RUNNING_MEDIUM_DARK_SKIN_TONE;
  Result[1100] := TEmoji.MAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1101] := TEmoji.MAN_SCIENTIST;
  Result[1102] := TEmoji.MAN_SCIENTIST_DARK_SKIN_TONE;
  Result[1103] := TEmoji.MAN_SCIENTIST_LIGHT_SKIN_TONE;
  Result[1104] := TEmoji.MAN_SCIENTIST_MEDIUM_SKIN_TONE;
  Result[1105] := TEmoji.MAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE;
  Result[1106] := TEmoji.MAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1107] := TEmoji.MAN_SHRUGGING;
  Result[1108] := TEmoji.MAN_SHRUGGING_DARK_SKIN_TONE;
  Result[1109] := TEmoji.MAN_SHRUGGING_LIGHT_SKIN_TONE;
  Result[1110] := TEmoji.MAN_SHRUGGING_MEDIUM_SKIN_TONE;
  Result[1111] := TEmoji.MAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE;
  Result[1112] := TEmoji.MAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1113] := TEmoji.MAN_SINGER;
  Result[1114] := TEmoji.MAN_SINGER_DARK_SKIN_TONE;
  Result[1115] := TEmoji.MAN_SINGER_LIGHT_SKIN_TONE;
  Result[1116] := TEmoji.MAN_SINGER_MEDIUM_SKIN_TONE;
  Result[1117] := TEmoji.MAN_SINGER_MEDIUM_DARK_SKIN_TONE;
  Result[1118] := TEmoji.MAN_SINGER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1119] := TEmoji.MAN_STANDING;
  Result[1120] := TEmoji.MAN_STANDING_DARK_SKIN_TONE;
  Result[1121] := TEmoji.MAN_STANDING_LIGHT_SKIN_TONE;
  Result[1122] := TEmoji.MAN_STANDING_MEDIUM_SKIN_TONE;
  Result[1123] := TEmoji.MAN_STANDING_MEDIUM_DARK_SKIN_TONE;
  Result[1124] := TEmoji.MAN_STANDING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1125] := TEmoji.MAN_STUDENT;
  Result[1126] := TEmoji.MAN_STUDENT_DARK_SKIN_TONE;
  Result[1127] := TEmoji.MAN_STUDENT_LIGHT_SKIN_TONE;
  Result[1128] := TEmoji.MAN_STUDENT_MEDIUM_SKIN_TONE;
  Result[1129] := TEmoji.MAN_STUDENT_MEDIUM_DARK_SKIN_TONE;
  Result[1130] := TEmoji.MAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1131] := TEmoji.MAN_SUPERHERO;
  Result[1132] := TEmoji.MAN_SUPERHERO_DARK_SKIN_TONE;
  Result[1133] := TEmoji.MAN_SUPERHERO_LIGHT_SKIN_TONE;
  Result[1134] := TEmoji.MAN_SUPERHERO_MEDIUM_SKIN_TONE;
  Result[1135] := TEmoji.MAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE;
  Result[1136] := TEmoji.MAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1137] := TEmoji.MAN_SUPERVILLAIN;
  Result[1138] := TEmoji.MAN_SUPERVILLAIN_DARK_SKIN_TONE;
  Result[1139] := TEmoji.MAN_SUPERVILLAIN_LIGHT_SKIN_TONE;
  Result[1140] := TEmoji.MAN_SUPERVILLAIN_MEDIUM_SKIN_TONE;
  Result[1141] := TEmoji.MAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE;
  Result[1142] := TEmoji.MAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1143] := TEmoji.MAN_SURFING;
  Result[1144] := TEmoji.MAN_SURFING_DARK_SKIN_TONE;
  Result[1145] := TEmoji.MAN_SURFING_LIGHT_SKIN_TONE;
  Result[1146] := TEmoji.MAN_SURFING_MEDIUM_SKIN_TONE;
  Result[1147] := TEmoji.MAN_SURFING_MEDIUM_DARK_SKIN_TONE;
  Result[1148] := TEmoji.MAN_SURFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1149] := TEmoji.MAN_SWIMMING;
  Result[1150] := TEmoji.MAN_SWIMMING_DARK_SKIN_TONE;
  Result[1151] := TEmoji.MAN_SWIMMING_LIGHT_SKIN_TONE;
  Result[1152] := TEmoji.MAN_SWIMMING_MEDIUM_SKIN_TONE;
  Result[1153] := TEmoji.MAN_SWIMMING_MEDIUM_DARK_SKIN_TONE;
  Result[1154] := TEmoji.MAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1155] := TEmoji.MAN_TEACHER;
  Result[1156] := TEmoji.MAN_TEACHER_DARK_SKIN_TONE;
  Result[1157] := TEmoji.MAN_TEACHER_LIGHT_SKIN_TONE;
  Result[1158] := TEmoji.MAN_TEACHER_MEDIUM_SKIN_TONE;
  Result[1159] := TEmoji.MAN_TEACHER_MEDIUM_DARK_SKIN_TONE;
  Result[1160] := TEmoji.MAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1161] := TEmoji.MAN_TECHNOLOGIST;
  Result[1162] := TEmoji.MAN_TECHNOLOGIST_DARK_SKIN_TONE;
  Result[1163] := TEmoji.MAN_TECHNOLOGIST_LIGHT_SKIN_TONE;
  Result[1164] := TEmoji.MAN_TECHNOLOGIST_MEDIUM_SKIN_TONE;
  Result[1165] := TEmoji.MAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE;
  Result[1166] := TEmoji.MAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1167] := TEmoji.MAN_TIPPING_HAND;
  Result[1168] := TEmoji.MAN_TIPPING_HAND_DARK_SKIN_TONE;
  Result[1169] := TEmoji.MAN_TIPPING_HAND_LIGHT_SKIN_TONE;
  Result[1170] := TEmoji.MAN_TIPPING_HAND_MEDIUM_SKIN_TONE;
  Result[1171] := TEmoji.MAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1172] := TEmoji.MAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1173] := TEmoji.MAN_VAMPIRE;
  Result[1174] := TEmoji.MAN_VAMPIRE_DARK_SKIN_TONE;
  Result[1175] := TEmoji.MAN_VAMPIRE_LIGHT_SKIN_TONE;
  Result[1176] := TEmoji.MAN_VAMPIRE_MEDIUM_SKIN_TONE;
  Result[1177] := TEmoji.MAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE;
  Result[1178] := TEmoji.MAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1179] := TEmoji.MAN_WALKING;
  Result[1180] := TEmoji.MAN_WALKING_FACING_RIGHT;
  Result[1181] := TEmoji.MAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1182] := TEmoji.MAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1183] := TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1184] := TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1185] := TEmoji.MAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1186] := TEmoji.MAN_WALKING_DARK_SKIN_TONE;
  Result[1187] := TEmoji.MAN_WALKING_LIGHT_SKIN_TONE;
  Result[1188] := TEmoji.MAN_WALKING_MEDIUM_SKIN_TONE;
  Result[1189] := TEmoji.MAN_WALKING_MEDIUM_DARK_SKIN_TONE;
  Result[1190] := TEmoji.MAN_WALKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1191] := TEmoji.MAN_WEARING_TURBAN;
  Result[1192] := TEmoji.MAN_WEARING_TURBAN_DARK_SKIN_TONE;
  Result[1193] := TEmoji.MAN_WEARING_TURBAN_LIGHT_SKIN_TONE;
  Result[1194] := TEmoji.MAN_WEARING_TURBAN_MEDIUM_SKIN_TONE;
  Result[1195] := TEmoji.MAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE;
  Result[1196] := TEmoji.MAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1197] := TEmoji.MAN_WITH_VEIL;
  Result[1198] := TEmoji.MAN_WITH_VEIL_DARK_SKIN_TONE;
  Result[1199] := TEmoji.MAN_WITH_VEIL_LIGHT_SKIN_TONE;
  Result[1200] := TEmoji.MAN_WITH_VEIL_MEDIUM_SKIN_TONE;
  Result[1201] := TEmoji.MAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE;
  Result[1202] := TEmoji.MAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1203] := TEmoji.MAN_WITH_WHITE_CANE;
  Result[1204] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT;
  Result[1205] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1206] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1207] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1208] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1209] := TEmoji.MAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1210] := TEmoji.MAN_WITH_WHITE_CANE_DARK_SKIN_TONE;
  Result[1211] := TEmoji.MAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE;
  Result[1212] := TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE;
  Result[1213] := TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE;
  Result[1214] := TEmoji.MAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1215] := TEmoji.MAN_ZOMBIE;
  Result[1216] := TEmoji.MAN_BALD;
  Result[1217] := TEmoji.MAN_BEARD;
  Result[1218] := TEmoji.MAN_BLOND_HAIR;
  Result[1219] := TEmoji.MAN_CURLY_HAIR;
  Result[1220] := TEmoji.MAN_DARK_SKIN_TONE;
  Result[1221] := TEmoji.MAN_DARK_SKIN_TONE_BALD;
  Result[1222] := TEmoji.MAN_DARK_SKIN_TONE_BEARD;
  Result[1223] := TEmoji.MAN_DARK_SKIN_TONE_BLOND_HAIR;
  Result[1224] := TEmoji.MAN_DARK_SKIN_TONE_CURLY_HAIR;
  Result[1225] := TEmoji.MAN_DARK_SKIN_TONE_RED_HAIR;
  Result[1226] := TEmoji.MAN_DARK_SKIN_TONE_WHITE_HAIR;
  Result[1227] := TEmoji.MAN_LIGHT_SKIN_TONE;
  Result[1228] := TEmoji.MAN_LIGHT_SKIN_TONE_BALD;
  Result[1229] := TEmoji.MAN_LIGHT_SKIN_TONE_BEARD;
  Result[1230] := TEmoji.MAN_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[1231] := TEmoji.MAN_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[1232] := TEmoji.MAN_LIGHT_SKIN_TONE_RED_HAIR;
  Result[1233] := TEmoji.MAN_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[1234] := TEmoji.MAN_MEDIUM_SKIN_TONE;
  Result[1235] := TEmoji.MAN_MEDIUM_SKIN_TONE_BALD;
  Result[1236] := TEmoji.MAN_MEDIUM_SKIN_TONE_BEARD;
  Result[1237] := TEmoji.MAN_MEDIUM_SKIN_TONE_BLOND_HAIR;
  Result[1238] := TEmoji.MAN_MEDIUM_SKIN_TONE_CURLY_HAIR;
  Result[1239] := TEmoji.MAN_MEDIUM_SKIN_TONE_RED_HAIR;
  Result[1240] := TEmoji.MAN_MEDIUM_SKIN_TONE_WHITE_HAIR;
  Result[1241] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE;
  Result[1242] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BALD;
  Result[1243] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BEARD;
  Result[1244] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR;
  Result[1245] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR;
  Result[1246] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR;
  Result[1247] := TEmoji.MAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR;
  Result[1248] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1249] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BALD;
  Result[1250] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BEARD;
  Result[1251] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[1252] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[1253] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR;
  Result[1254] := TEmoji.MAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[1255] := TEmoji.MAN_RED_HAIR;
  Result[1256] := TEmoji.MAN_WHITE_HAIR;
  Result[1257] := TEmoji.MECHANIC;
  Result[1258] := TEmoji.MECHANIC_DARK_SKIN_TONE;
  Result[1259] := TEmoji.MECHANIC_LIGHT_SKIN_TONE;
  Result[1260] := TEmoji.MECHANIC_MEDIUM_SKIN_TONE;
  Result[1261] := TEmoji.MECHANIC_MEDIUM_DARK_SKIN_TONE;
  Result[1262] := TEmoji.MECHANIC_MEDIUM_LIGHT_SKIN_TONE;
  Result[1263] := TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE;
  Result[1264] := TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1265] := TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1266] := TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1267] := TEmoji.MEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1268] := TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE;
  Result[1269] := TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1270] := TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1271] := TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1272] := TEmoji.MEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1273] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE;
  Result[1274] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[1275] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1276] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1277] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1278] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[1279] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[1280] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1281] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1282] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1283] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1284] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1285] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1286] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1287] := TEmoji.MEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1288] := TEmoji.MEN_WITH_BUNNY_EARS;
  Result[1289] := TEmoji.MEN_WRESTLING;
  Result[1290] := TEmoji.MENDING_HEART;
  Result[1291] := TEmoji.MERMAID;
  Result[1292] := TEmoji.MERMAID_DARK_SKIN_TONE;
  Result[1293] := TEmoji.MERMAID_LIGHT_SKIN_TONE;
  Result[1294] := TEmoji.MERMAID_MEDIUM_SKIN_TONE;
  Result[1295] := TEmoji.MERMAID_MEDIUM_DARK_SKIN_TONE;
  Result[1296] := TEmoji.MERMAID_MEDIUM_LIGHT_SKIN_TONE;
  Result[1297] := TEmoji.MERMAN;
  Result[1298] := TEmoji.MERMAN_DARK_SKIN_TONE;
  Result[1299] := TEmoji.MERMAN_LIGHT_SKIN_TONE;
  Result[1300] := TEmoji.MERMAN_MEDIUM_SKIN_TONE;
  Result[1301] := TEmoji.MERMAN_MEDIUM_DARK_SKIN_TONE;
  Result[1302] := TEmoji.MERMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1303] := TEmoji.MERPERSON_DARK_SKIN_TONE;
  Result[1304] := TEmoji.MERPERSON_LIGHT_SKIN_TONE;
  Result[1305] := TEmoji.MERPERSON_MEDIUM_SKIN_TONE;
  Result[1306] := TEmoji.MERPERSON_MEDIUM_DARK_SKIN_TONE;
  Result[1307] := TEmoji.MERPERSON_MEDIUM_LIGHT_SKIN_TONE;
  Result[1308] := TEmoji.MIDDLE_FINGER_DARK_SKIN_TONE;
  Result[1309] := TEmoji.MIDDLE_FINGER_LIGHT_SKIN_TONE;
  Result[1310] := TEmoji.MIDDLE_FINGER_MEDIUM_SKIN_TONE;
  Result[1311] := TEmoji.MIDDLE_FINGER_MEDIUM_DARK_SKIN_TONE;
  Result[1312] := TEmoji.MIDDLE_FINGER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1313] := TEmoji.NAIL_POLISH_DARK_SKIN_TONE;
  Result[1314] := TEmoji.NAIL_POLISH_LIGHT_SKIN_TONE;
  Result[1315] := TEmoji.NAIL_POLISH_MEDIUM_SKIN_TONE;
  Result[1316] := TEmoji.NAIL_POLISH_MEDIUM_DARK_SKIN_TONE;
  Result[1317] := TEmoji.NAIL_POLISH_MEDIUM_LIGHT_SKIN_TONE;
  Result[1318] := TEmoji.NINJA_DARK_SKIN_TONE;
  Result[1319] := TEmoji.NINJA_LIGHT_SKIN_TONE;
  Result[1320] := TEmoji.NINJA_MEDIUM_SKIN_TONE;
  Result[1321] := TEmoji.NINJA_MEDIUM_DARK_SKIN_TONE;
  Result[1322] := TEmoji.NINJA_MEDIUM_LIGHT_SKIN_TONE;
  Result[1323] := TEmoji.NOSE_DARK_SKIN_TONE;
  Result[1324] := TEmoji.NOSE_LIGHT_SKIN_TONE;
  Result[1325] := TEmoji.NOSE_MEDIUM_SKIN_TONE;
  Result[1326] := TEmoji.NOSE_MEDIUM_DARK_SKIN_TONE;
  Result[1327] := TEmoji.NOSE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1328] := TEmoji.OFFICE_WORKER;
  Result[1329] := TEmoji.OFFICE_WORKER_DARK_SKIN_TONE;
  Result[1330] := TEmoji.OFFICE_WORKER_LIGHT_SKIN_TONE;
  Result[1331] := TEmoji.OFFICE_WORKER_MEDIUM_SKIN_TONE;
  Result[1332] := TEmoji.OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[1333] := TEmoji.OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1334] := TEmoji.OLD_MAN_DARK_SKIN_TONE;
  Result[1335] := TEmoji.OLD_MAN_LIGHT_SKIN_TONE;
  Result[1336] := TEmoji.OLD_MAN_MEDIUM_SKIN_TONE;
  Result[1337] := TEmoji.OLD_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[1338] := TEmoji.OLD_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1339] := TEmoji.OLD_WOMAN_DARK_SKIN_TONE;
  Result[1340] := TEmoji.OLD_WOMAN_LIGHT_SKIN_TONE;
  Result[1341] := TEmoji.OLD_WOMAN_MEDIUM_SKIN_TONE;
  Result[1342] := TEmoji.OLD_WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[1343] := TEmoji.OLD_WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1344] := TEmoji.OLDER_PERSON_DARK_SKIN_TONE;
  Result[1345] := TEmoji.OLDER_PERSON_LIGHT_SKIN_TONE;
  Result[1346] := TEmoji.OLDER_PERSON_MEDIUM_SKIN_TONE;
  Result[1347] := TEmoji.OLDER_PERSON_MEDIUM_DARK_SKIN_TONE;
  Result[1348] := TEmoji.OLDER_PERSON_MEDIUM_LIGHT_SKIN_TONE;
  Result[1349] := TEmoji.ONCOMING_FIST_DARK_SKIN_TONE;
  Result[1350] := TEmoji.ONCOMING_FIST_LIGHT_SKIN_TONE;
  Result[1351] := TEmoji.ONCOMING_FIST_MEDIUM_SKIN_TONE;
  Result[1352] := TEmoji.ONCOMING_FIST_MEDIUM_DARK_SKIN_TONE;
  Result[1353] := TEmoji.ONCOMING_FIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1354] := TEmoji.OPEN_HANDS_DARK_SKIN_TONE;
  Result[1355] := TEmoji.OPEN_HANDS_LIGHT_SKIN_TONE;
  Result[1356] := TEmoji.OPEN_HANDS_MEDIUM_SKIN_TONE;
  Result[1357] := TEmoji.OPEN_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[1358] := TEmoji.OPEN_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1359] := TEmoji.PALM_DOWN_HAND_DARK_SKIN_TONE;
  Result[1360] := TEmoji.PALM_DOWN_HAND_LIGHT_SKIN_TONE;
  Result[1361] := TEmoji.PALM_DOWN_HAND_MEDIUM_SKIN_TONE;
  Result[1362] := TEmoji.PALM_DOWN_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1363] := TEmoji.PALM_DOWN_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1364] := TEmoji.PALM_UP_HAND_DARK_SKIN_TONE;
  Result[1365] := TEmoji.PALM_UP_HAND_LIGHT_SKIN_TONE;
  Result[1366] := TEmoji.PALM_UP_HAND_MEDIUM_SKIN_TONE;
  Result[1367] := TEmoji.PALM_UP_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1368] := TEmoji.PALM_UP_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1369] := TEmoji.PALMS_UP_TOGETHER_DARK_SKIN_TONE;
  Result[1370] := TEmoji.PALMS_UP_TOGETHER_LIGHT_SKIN_TONE;
  Result[1371] := TEmoji.PALMS_UP_TOGETHER_MEDIUM_SKIN_TONE;
  Result[1372] := TEmoji.PALMS_UP_TOGETHER_MEDIUM_DARK_SKIN_TONE;
  Result[1373] := TEmoji.PALMS_UP_TOGETHER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1374] := TEmoji.PEOPLE_HOLDING_HANDS;
  Result[1375] := TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE;
  Result[1376] := TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1377] := TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1378] := TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1379] := TEmoji.PEOPLE_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1380] := TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE;
  Result[1381] := TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1382] := TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1383] := TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1384] := TEmoji.PEOPLE_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1385] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE;
  Result[1386] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[1387] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1388] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1389] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1390] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[1391] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[1392] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1393] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1394] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1395] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1396] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1397] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1398] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1399] := TEmoji.PEOPLE_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1400] := TEmoji.PERSON_BIKING_DARK_SKIN_TONE;
  Result[1401] := TEmoji.PERSON_BIKING_LIGHT_SKIN_TONE;
  Result[1402] := TEmoji.PERSON_BIKING_MEDIUM_SKIN_TONE;
  Result[1403] := TEmoji.PERSON_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[1404] := TEmoji.PERSON_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1405] := TEmoji.PERSON_BOUNCING_BALL_DARK_SKIN_TONE;
  Result[1406] := TEmoji.PERSON_BOUNCING_BALL_LIGHT_SKIN_TONE;
  Result[1407] := TEmoji.PERSON_BOUNCING_BALL_MEDIUM_SKIN_TONE;
  Result[1408] := TEmoji.PERSON_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE;
  Result[1409] := TEmoji.PERSON_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1410] := TEmoji.PERSON_BOWING_DARK_SKIN_TONE;
  Result[1411] := TEmoji.PERSON_BOWING_LIGHT_SKIN_TONE;
  Result[1412] := TEmoji.PERSON_BOWING_MEDIUM_SKIN_TONE;
  Result[1413] := TEmoji.PERSON_BOWING_MEDIUM_DARK_SKIN_TONE;
  Result[1414] := TEmoji.PERSON_BOWING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1415] := TEmoji.PERSON_CARTWHEELING_DARK_SKIN_TONE;
  Result[1416] := TEmoji.PERSON_CARTWHEELING_LIGHT_SKIN_TONE;
  Result[1417] := TEmoji.PERSON_CARTWHEELING_MEDIUM_SKIN_TONE;
  Result[1418] := TEmoji.PERSON_CARTWHEELING_MEDIUM_DARK_SKIN_TONE;
  Result[1419] := TEmoji.PERSON_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1420] := TEmoji.PERSON_CLIMBING_DARK_SKIN_TONE;
  Result[1421] := TEmoji.PERSON_CLIMBING_LIGHT_SKIN_TONE;
  Result[1422] := TEmoji.PERSON_CLIMBING_MEDIUM_SKIN_TONE;
  Result[1423] := TEmoji.PERSON_CLIMBING_MEDIUM_DARK_SKIN_TONE;
  Result[1424] := TEmoji.PERSON_CLIMBING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1425] := TEmoji.PERSON_FACEPALMING_DARK_SKIN_TONE;
  Result[1426] := TEmoji.PERSON_FACEPALMING_LIGHT_SKIN_TONE;
  Result[1427] := TEmoji.PERSON_FACEPALMING_MEDIUM_SKIN_TONE;
  Result[1428] := TEmoji.PERSON_FACEPALMING_MEDIUM_DARK_SKIN_TONE;
  Result[1429] := TEmoji.PERSON_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1430] := TEmoji.PERSON_FEEDING_BABY;
  Result[1431] := TEmoji.PERSON_FEEDING_BABY_DARK_SKIN_TONE;
  Result[1432] := TEmoji.PERSON_FEEDING_BABY_LIGHT_SKIN_TONE;
  Result[1433] := TEmoji.PERSON_FEEDING_BABY_MEDIUM_SKIN_TONE;
  Result[1434] := TEmoji.PERSON_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE;
  Result[1435] := TEmoji.PERSON_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE;
  Result[1436] := TEmoji.PERSON_FROWNING_DARK_SKIN_TONE;
  Result[1437] := TEmoji.PERSON_FROWNING_LIGHT_SKIN_TONE;
  Result[1438] := TEmoji.PERSON_FROWNING_MEDIUM_SKIN_TONE;
  Result[1439] := TEmoji.PERSON_FROWNING_MEDIUM_DARK_SKIN_TONE;
  Result[1440] := TEmoji.PERSON_FROWNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1441] := TEmoji.PERSON_GESTURING_NO_DARK_SKIN_TONE;
  Result[1442] := TEmoji.PERSON_GESTURING_NO_LIGHT_SKIN_TONE;
  Result[1443] := TEmoji.PERSON_GESTURING_NO_MEDIUM_SKIN_TONE;
  Result[1444] := TEmoji.PERSON_GESTURING_NO_MEDIUM_DARK_SKIN_TONE;
  Result[1445] := TEmoji.PERSON_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1446] := TEmoji.PERSON_GESTURING_OK_DARK_SKIN_TONE;
  Result[1447] := TEmoji.PERSON_GESTURING_OK_LIGHT_SKIN_TONE;
  Result[1448] := TEmoji.PERSON_GESTURING_OK_MEDIUM_SKIN_TONE;
  Result[1449] := TEmoji.PERSON_GESTURING_OK_MEDIUM_DARK_SKIN_TONE;
  Result[1450] := TEmoji.PERSON_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE;
  Result[1451] := TEmoji.PERSON_GETTING_HAIRCUT_DARK_SKIN_TONE;
  Result[1452] := TEmoji.PERSON_GETTING_HAIRCUT_LIGHT_SKIN_TONE;
  Result[1453] := TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_SKIN_TONE;
  Result[1454] := TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE;
  Result[1455] := TEmoji.PERSON_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1456] := TEmoji.PERSON_GETTING_MASSAGE_DARK_SKIN_TONE;
  Result[1457] := TEmoji.PERSON_GETTING_MASSAGE_LIGHT_SKIN_TONE;
  Result[1458] := TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_SKIN_TONE;
  Result[1459] := TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE;
  Result[1460] := TEmoji.PERSON_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1461] := TEmoji.PERSON_GOLFING_DARK_SKIN_TONE;
  Result[1462] := TEmoji.PERSON_GOLFING_LIGHT_SKIN_TONE;
  Result[1463] := TEmoji.PERSON_GOLFING_MEDIUM_SKIN_TONE;
  Result[1464] := TEmoji.PERSON_GOLFING_MEDIUM_DARK_SKIN_TONE;
  Result[1465] := TEmoji.PERSON_GOLFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1466] := TEmoji.PERSON_IN_BED_DARK_SKIN_TONE;
  Result[1467] := TEmoji.PERSON_IN_BED_LIGHT_SKIN_TONE;
  Result[1468] := TEmoji.PERSON_IN_BED_MEDIUM_SKIN_TONE;
  Result[1469] := TEmoji.PERSON_IN_BED_MEDIUM_DARK_SKIN_TONE;
  Result[1470] := TEmoji.PERSON_IN_BED_MEDIUM_LIGHT_SKIN_TONE;
  Result[1471] := TEmoji.PERSON_IN_LOTUS_POSITION_DARK_SKIN_TONE;
  Result[1472] := TEmoji.PERSON_IN_LOTUS_POSITION_LIGHT_SKIN_TONE;
  Result[1473] := TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE;
  Result[1474] := TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE;
  Result[1475] := TEmoji.PERSON_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE;
  Result[1476] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR;
  Result[1477] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT;
  Result[1478] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1479] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1480] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1481] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1482] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1483] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE;
  Result[1484] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[1485] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[1486] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[1487] := TEmoji.PERSON_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[1488] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR;
  Result[1489] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT;
  Result[1490] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1491] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1492] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1493] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1494] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1495] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE;
  Result[1496] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[1497] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[1498] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[1499] := TEmoji.PERSON_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[1500] := TEmoji.PERSON_IN_STEAMY_ROOM_DARK_SKIN_TONE;
  Result[1501] := TEmoji.PERSON_IN_STEAMY_ROOM_LIGHT_SKIN_TONE;
  Result[1502] := TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE;
  Result[1503] := TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE;
  Result[1504] := TEmoji.PERSON_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE;
  Result[1505] := TEmoji.PERSON_IN_SUIT_LEVITATING_DARK_SKIN_TONE;
  Result[1506] := TEmoji.PERSON_IN_SUIT_LEVITATING_LIGHT_SKIN_TONE;
  Result[1507] := TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_SKIN_TONE;
  Result[1508] := TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_DARK_SKIN_TONE;
  Result[1509] := TEmoji.PERSON_IN_SUIT_LEVITATING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1510] := TEmoji.PERSON_IN_TUXEDO_DARK_SKIN_TONE;
  Result[1511] := TEmoji.PERSON_IN_TUXEDO_LIGHT_SKIN_TONE;
  Result[1512] := TEmoji.PERSON_IN_TUXEDO_MEDIUM_SKIN_TONE;
  Result[1513] := TEmoji.PERSON_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE;
  Result[1514] := TEmoji.PERSON_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1515] := TEmoji.PERSON_JUGGLING_DARK_SKIN_TONE;
  Result[1516] := TEmoji.PERSON_JUGGLING_LIGHT_SKIN_TONE;
  Result[1517] := TEmoji.PERSON_JUGGLING_MEDIUM_SKIN_TONE;
  Result[1518] := TEmoji.PERSON_JUGGLING_MEDIUM_DARK_SKIN_TONE;
  Result[1519] := TEmoji.PERSON_JUGGLING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1520] := TEmoji.PERSON_KNEELING_FACING_RIGHT;
  Result[1521] := TEmoji.PERSON_KNEELING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1522] := TEmoji.PERSON_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1523] := TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1524] := TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1525] := TEmoji.PERSON_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1526] := TEmoji.PERSON_KNEELING_DARK_SKIN_TONE;
  Result[1527] := TEmoji.PERSON_KNEELING_LIGHT_SKIN_TONE;
  Result[1528] := TEmoji.PERSON_KNEELING_MEDIUM_SKIN_TONE;
  Result[1529] := TEmoji.PERSON_KNEELING_MEDIUM_DARK_SKIN_TONE;
  Result[1530] := TEmoji.PERSON_KNEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1531] := TEmoji.PERSON_LIFTING_WEIGHTS_DARK_SKIN_TONE;
  Result[1532] := TEmoji.PERSON_LIFTING_WEIGHTS_LIGHT_SKIN_TONE;
  Result[1533] := TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE;
  Result[1534] := TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE;
  Result[1535] := TEmoji.PERSON_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1536] := TEmoji.PERSON_MOUNTAIN_BIKING_DARK_SKIN_TONE;
  Result[1537] := TEmoji.PERSON_MOUNTAIN_BIKING_LIGHT_SKIN_TONE;
  Result[1538] := TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE;
  Result[1539] := TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[1540] := TEmoji.PERSON_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1541] := TEmoji.PERSON_PLAYING_HANDBALL_DARK_SKIN_TONE;
  Result[1542] := TEmoji.PERSON_PLAYING_HANDBALL_LIGHT_SKIN_TONE;
  Result[1543] := TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_SKIN_TONE;
  Result[1544] := TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE;
  Result[1545] := TEmoji.PERSON_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1546] := TEmoji.PERSON_PLAYING_WATER_POLO_DARK_SKIN_TONE;
  Result[1547] := TEmoji.PERSON_PLAYING_WATER_POLO_LIGHT_SKIN_TONE;
  Result[1548] := TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE;
  Result[1549] := TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE;
  Result[1550] := TEmoji.PERSON_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1551] := TEmoji.PERSON_POUTING_DARK_SKIN_TONE;
  Result[1552] := TEmoji.PERSON_POUTING_LIGHT_SKIN_TONE;
  Result[1553] := TEmoji.PERSON_POUTING_MEDIUM_SKIN_TONE;
  Result[1554] := TEmoji.PERSON_POUTING_MEDIUM_DARK_SKIN_TONE;
  Result[1555] := TEmoji.PERSON_POUTING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1556] := TEmoji.PERSON_RAISING_HAND_DARK_SKIN_TONE;
  Result[1557] := TEmoji.PERSON_RAISING_HAND_LIGHT_SKIN_TONE;
  Result[1558] := TEmoji.PERSON_RAISING_HAND_MEDIUM_SKIN_TONE;
  Result[1559] := TEmoji.PERSON_RAISING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1560] := TEmoji.PERSON_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1561] := TEmoji.PERSON_ROWING_BOAT_DARK_SKIN_TONE;
  Result[1562] := TEmoji.PERSON_ROWING_BOAT_LIGHT_SKIN_TONE;
  Result[1563] := TEmoji.PERSON_ROWING_BOAT_MEDIUM_SKIN_TONE;
  Result[1564] := TEmoji.PERSON_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE;
  Result[1565] := TEmoji.PERSON_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1566] := TEmoji.PERSON_RUNNING_FACING_RIGHT;
  Result[1567] := TEmoji.PERSON_RUNNING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1568] := TEmoji.PERSON_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1569] := TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1570] := TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1571] := TEmoji.PERSON_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1572] := TEmoji.PERSON_RUNNING_DARK_SKIN_TONE;
  Result[1573] := TEmoji.PERSON_RUNNING_LIGHT_SKIN_TONE;
  Result[1574] := TEmoji.PERSON_RUNNING_MEDIUM_SKIN_TONE;
  Result[1575] := TEmoji.PERSON_RUNNING_MEDIUM_DARK_SKIN_TONE;
  Result[1576] := TEmoji.PERSON_RUNNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1577] := TEmoji.PERSON_SHRUGGING_DARK_SKIN_TONE;
  Result[1578] := TEmoji.PERSON_SHRUGGING_LIGHT_SKIN_TONE;
  Result[1579] := TEmoji.PERSON_SHRUGGING_MEDIUM_SKIN_TONE;
  Result[1580] := TEmoji.PERSON_SHRUGGING_MEDIUM_DARK_SKIN_TONE;
  Result[1581] := TEmoji.PERSON_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1582] := TEmoji.PERSON_STANDING_DARK_SKIN_TONE;
  Result[1583] := TEmoji.PERSON_STANDING_LIGHT_SKIN_TONE;
  Result[1584] := TEmoji.PERSON_STANDING_MEDIUM_SKIN_TONE;
  Result[1585] := TEmoji.PERSON_STANDING_MEDIUM_DARK_SKIN_TONE;
  Result[1586] := TEmoji.PERSON_STANDING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1587] := TEmoji.PERSON_SURFING_DARK_SKIN_TONE;
  Result[1588] := TEmoji.PERSON_SURFING_LIGHT_SKIN_TONE;
  Result[1589] := TEmoji.PERSON_SURFING_MEDIUM_SKIN_TONE;
  Result[1590] := TEmoji.PERSON_SURFING_MEDIUM_DARK_SKIN_TONE;
  Result[1591] := TEmoji.PERSON_SURFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1592] := TEmoji.PERSON_SWIMMING_DARK_SKIN_TONE;
  Result[1593] := TEmoji.PERSON_SWIMMING_LIGHT_SKIN_TONE;
  Result[1594] := TEmoji.PERSON_SWIMMING_MEDIUM_SKIN_TONE;
  Result[1595] := TEmoji.PERSON_SWIMMING_MEDIUM_DARK_SKIN_TONE;
  Result[1596] := TEmoji.PERSON_SWIMMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1597] := TEmoji.PERSON_TAKING_BATH_DARK_SKIN_TONE;
  Result[1598] := TEmoji.PERSON_TAKING_BATH_LIGHT_SKIN_TONE;
  Result[1599] := TEmoji.PERSON_TAKING_BATH_MEDIUM_SKIN_TONE;
  Result[1600] := TEmoji.PERSON_TAKING_BATH_MEDIUM_DARK_SKIN_TONE;
  Result[1601] := TEmoji.PERSON_TAKING_BATH_MEDIUM_LIGHT_SKIN_TONE;
  Result[1602] := TEmoji.PERSON_TIPPING_HAND_DARK_SKIN_TONE;
  Result[1603] := TEmoji.PERSON_TIPPING_HAND_LIGHT_SKIN_TONE;
  Result[1604] := TEmoji.PERSON_TIPPING_HAND_MEDIUM_SKIN_TONE;
  Result[1605] := TEmoji.PERSON_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1606] := TEmoji.PERSON_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1607] := TEmoji.PERSON_WALKING_FACING_RIGHT;
  Result[1608] := TEmoji.PERSON_WALKING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1609] := TEmoji.PERSON_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1610] := TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1611] := TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1612] := TEmoji.PERSON_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1613] := TEmoji.PERSON_WALKING_DARK_SKIN_TONE;
  Result[1614] := TEmoji.PERSON_WALKING_LIGHT_SKIN_TONE;
  Result[1615] := TEmoji.PERSON_WALKING_MEDIUM_SKIN_TONE;
  Result[1616] := TEmoji.PERSON_WALKING_MEDIUM_DARK_SKIN_TONE;
  Result[1617] := TEmoji.PERSON_WALKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1618] := TEmoji.PERSON_WEARING_TURBAN_DARK_SKIN_TONE;
  Result[1619] := TEmoji.PERSON_WEARING_TURBAN_LIGHT_SKIN_TONE;
  Result[1620] := TEmoji.PERSON_WEARING_TURBAN_MEDIUM_SKIN_TONE;
  Result[1621] := TEmoji.PERSON_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE;
  Result[1622] := TEmoji.PERSON_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1623] := TEmoji.PERSON_WITH_CROWN_DARK_SKIN_TONE;
  Result[1624] := TEmoji.PERSON_WITH_CROWN_LIGHT_SKIN_TONE;
  Result[1625] := TEmoji.PERSON_WITH_CROWN_MEDIUM_SKIN_TONE;
  Result[1626] := TEmoji.PERSON_WITH_CROWN_MEDIUM_DARK_SKIN_TONE;
  Result[1627] := TEmoji.PERSON_WITH_CROWN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1628] := TEmoji.PERSON_WITH_SKULLCAP_DARK_SKIN_TONE;
  Result[1629] := TEmoji.PERSON_WITH_SKULLCAP_LIGHT_SKIN_TONE;
  Result[1630] := TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_SKIN_TONE;
  Result[1631] := TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_DARK_SKIN_TONE;
  Result[1632] := TEmoji.PERSON_WITH_SKULLCAP_MEDIUM_LIGHT_SKIN_TONE;
  Result[1633] := TEmoji.PERSON_WITH_VEIL_DARK_SKIN_TONE;
  Result[1634] := TEmoji.PERSON_WITH_VEIL_LIGHT_SKIN_TONE;
  Result[1635] := TEmoji.PERSON_WITH_VEIL_MEDIUM_SKIN_TONE;
  Result[1636] := TEmoji.PERSON_WITH_VEIL_MEDIUM_DARK_SKIN_TONE;
  Result[1637] := TEmoji.PERSON_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1638] := TEmoji.PERSON_WITH_WHITE_CANE;
  Result[1639] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT;
  Result[1640] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE;
  Result[1641] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[1642] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[1643] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[1644] := TEmoji.PERSON_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1645] := TEmoji.PERSON_WITH_WHITE_CANE_DARK_SKIN_TONE;
  Result[1646] := TEmoji.PERSON_WITH_WHITE_CANE_LIGHT_SKIN_TONE;
  Result[1647] := TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_SKIN_TONE;
  Result[1648] := TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE;
  Result[1649] := TEmoji.PERSON_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1650] := TEmoji.PERSON_BALD;
  Result[1651] := TEmoji.PERSON_CURLY_HAIR;
  Result[1652] := TEmoji.PERSON_DARK_SKIN_TONE;
  Result[1653] := TEmoji.PERSON_DARK_SKIN_TONE_BALD;
  Result[1654] := TEmoji.PERSON_DARK_SKIN_TONE_BEARD;
  Result[1655] := TEmoji.PERSON_DARK_SKIN_TONE_BLOND_HAIR;
  Result[1656] := TEmoji.PERSON_DARK_SKIN_TONE_CURLY_HAIR;
  Result[1657] := TEmoji.PERSON_DARK_SKIN_TONE_RED_HAIR;
  Result[1658] := TEmoji.PERSON_DARK_SKIN_TONE_WHITE_HAIR;
  Result[1659] := TEmoji.PERSON_LIGHT_SKIN_TONE;
  Result[1660] := TEmoji.PERSON_LIGHT_SKIN_TONE_BALD;
  Result[1661] := TEmoji.PERSON_LIGHT_SKIN_TONE_BEARD;
  Result[1662] := TEmoji.PERSON_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[1663] := TEmoji.PERSON_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[1664] := TEmoji.PERSON_LIGHT_SKIN_TONE_RED_HAIR;
  Result[1665] := TEmoji.PERSON_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[1666] := TEmoji.PERSON_MEDIUM_SKIN_TONE;
  Result[1667] := TEmoji.PERSON_MEDIUM_SKIN_TONE_BALD;
  Result[1668] := TEmoji.PERSON_MEDIUM_SKIN_TONE_BEARD;
  Result[1669] := TEmoji.PERSON_MEDIUM_SKIN_TONE_BLOND_HAIR;
  Result[1670] := TEmoji.PERSON_MEDIUM_SKIN_TONE_CURLY_HAIR;
  Result[1671] := TEmoji.PERSON_MEDIUM_SKIN_TONE_RED_HAIR;
  Result[1672] := TEmoji.PERSON_MEDIUM_SKIN_TONE_WHITE_HAIR;
  Result[1673] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE;
  Result[1674] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BALD;
  Result[1675] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BEARD;
  Result[1676] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR;
  Result[1677] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR;
  Result[1678] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_RED_HAIR;
  Result[1679] := TEmoji.PERSON_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR;
  Result[1680] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE;
  Result[1681] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BALD;
  Result[1682] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BEARD;
  Result[1683] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[1684] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[1685] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR;
  Result[1686] := TEmoji.PERSON_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[1687] := TEmoji.PERSON_RED_HAIR;
  Result[1688] := TEmoji.PERSON_WHITE_HAIR;
  Result[1689] := TEmoji.PHOENIX;
  Result[1690] := TEmoji.PILOT;
  Result[1691] := TEmoji.PILOT_DARK_SKIN_TONE;
  Result[1692] := TEmoji.PILOT_LIGHT_SKIN_TONE;
  Result[1693] := TEmoji.PILOT_MEDIUM_SKIN_TONE;
  Result[1694] := TEmoji.PILOT_MEDIUM_DARK_SKIN_TONE;
  Result[1695] := TEmoji.PILOT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1696] := TEmoji.PINCHED_FINGERS_DARK_SKIN_TONE;
  Result[1697] := TEmoji.PINCHED_FINGERS_LIGHT_SKIN_TONE;
  Result[1698] := TEmoji.PINCHED_FINGERS_MEDIUM_SKIN_TONE;
  Result[1699] := TEmoji.PINCHED_FINGERS_MEDIUM_DARK_SKIN_TONE;
  Result[1700] := TEmoji.PINCHED_FINGERS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1701] := TEmoji.PINCHING_HAND_DARK_SKIN_TONE;
  Result[1702] := TEmoji.PINCHING_HAND_LIGHT_SKIN_TONE;
  Result[1703] := TEmoji.PINCHING_HAND_MEDIUM_SKIN_TONE;
  Result[1704] := TEmoji.PINCHING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1705] := TEmoji.PINCHING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1706] := TEmoji.PIRATE_FLAG;
  Result[1707] := TEmoji.POLAR_BEAR;
  Result[1708] := TEmoji.POLICE_OFFICER_DARK_SKIN_TONE;
  Result[1709] := TEmoji.POLICE_OFFICER_LIGHT_SKIN_TONE;
  Result[1710] := TEmoji.POLICE_OFFICER_MEDIUM_SKIN_TONE;
  Result[1711] := TEmoji.POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE;
  Result[1712] := TEmoji.POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1713] := TEmoji.PREGNANT_MAN_DARK_SKIN_TONE;
  Result[1714] := TEmoji.PREGNANT_MAN_LIGHT_SKIN_TONE;
  Result[1715] := TEmoji.PREGNANT_MAN_MEDIUM_SKIN_TONE;
  Result[1716] := TEmoji.PREGNANT_MAN_MEDIUM_DARK_SKIN_TONE;
  Result[1717] := TEmoji.PREGNANT_MAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1718] := TEmoji.PREGNANT_PERSON_DARK_SKIN_TONE;
  Result[1719] := TEmoji.PREGNANT_PERSON_LIGHT_SKIN_TONE;
  Result[1720] := TEmoji.PREGNANT_PERSON_MEDIUM_SKIN_TONE;
  Result[1721] := TEmoji.PREGNANT_PERSON_MEDIUM_DARK_SKIN_TONE;
  Result[1722] := TEmoji.PREGNANT_PERSON_MEDIUM_LIGHT_SKIN_TONE;
  Result[1723] := TEmoji.PREGNANT_WOMAN_DARK_SKIN_TONE;
  Result[1724] := TEmoji.PREGNANT_WOMAN_LIGHT_SKIN_TONE;
  Result[1725] := TEmoji.PREGNANT_WOMAN_MEDIUM_SKIN_TONE;
  Result[1726] := TEmoji.PREGNANT_WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[1727] := TEmoji.PREGNANT_WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1728] := TEmoji.PRINCE_DARK_SKIN_TONE;
  Result[1729] := TEmoji.PRINCE_LIGHT_SKIN_TONE;
  Result[1730] := TEmoji.PRINCE_MEDIUM_SKIN_TONE;
  Result[1731] := TEmoji.PRINCE_MEDIUM_DARK_SKIN_TONE;
  Result[1732] := TEmoji.PRINCE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1733] := TEmoji.PRINCESS_DARK_SKIN_TONE;
  Result[1734] := TEmoji.PRINCESS_LIGHT_SKIN_TONE;
  Result[1735] := TEmoji.PRINCESS_MEDIUM_SKIN_TONE;
  Result[1736] := TEmoji.PRINCESS_MEDIUM_DARK_SKIN_TONE;
  Result[1737] := TEmoji.PRINCESS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1738] := TEmoji.RAINBOW_FLAG;
  Result[1739] := TEmoji.RAISED_BACK_OF_HAND_DARK_SKIN_TONE;
  Result[1740] := TEmoji.RAISED_BACK_OF_HAND_LIGHT_SKIN_TONE;
  Result[1741] := TEmoji.RAISED_BACK_OF_HAND_MEDIUM_SKIN_TONE;
  Result[1742] := TEmoji.RAISED_BACK_OF_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1743] := TEmoji.RAISED_BACK_OF_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1744] := TEmoji.RAISED_FIST_DARK_SKIN_TONE;
  Result[1745] := TEmoji.RAISED_FIST_LIGHT_SKIN_TONE;
  Result[1746] := TEmoji.RAISED_FIST_MEDIUM_SKIN_TONE;
  Result[1747] := TEmoji.RAISED_FIST_MEDIUM_DARK_SKIN_TONE;
  Result[1748] := TEmoji.RAISED_FIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1749] := TEmoji.RAISED_HAND_DARK_SKIN_TONE;
  Result[1750] := TEmoji.RAISED_HAND_LIGHT_SKIN_TONE;
  Result[1751] := TEmoji.RAISED_HAND_MEDIUM_SKIN_TONE;
  Result[1752] := TEmoji.RAISED_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1753] := TEmoji.RAISED_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1754] := TEmoji.RAISING_HANDS_DARK_SKIN_TONE;
  Result[1755] := TEmoji.RAISING_HANDS_LIGHT_SKIN_TONE;
  Result[1756] := TEmoji.RAISING_HANDS_MEDIUM_SKIN_TONE;
  Result[1757] := TEmoji.RAISING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[1758] := TEmoji.RAISING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1759] := TEmoji.RIGHT_FACING_FIST_DARK_SKIN_TONE;
  Result[1760] := TEmoji.RIGHT_FACING_FIST_LIGHT_SKIN_TONE;
  Result[1761] := TEmoji.RIGHT_FACING_FIST_MEDIUM_SKIN_TONE;
  Result[1762] := TEmoji.RIGHT_FACING_FIST_MEDIUM_DARK_SKIN_TONE;
  Result[1763] := TEmoji.RIGHT_FACING_FIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1764] := TEmoji.RIGHTWARDS_HAND_DARK_SKIN_TONE;
  Result[1765] := TEmoji.RIGHTWARDS_HAND_LIGHT_SKIN_TONE;
  Result[1766] := TEmoji.RIGHTWARDS_HAND_MEDIUM_SKIN_TONE;
  Result[1767] := TEmoji.RIGHTWARDS_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1768] := TEmoji.RIGHTWARDS_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1769] := TEmoji.RIGHTWARDS_PUSHING_HAND_DARK_SKIN_TONE;
  Result[1770] := TEmoji.RIGHTWARDS_PUSHING_HAND_LIGHT_SKIN_TONE;
  Result[1771] := TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_SKIN_TONE;
  Result[1772] := TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1773] := TEmoji.RIGHTWARDS_PUSHING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1774] := TEmoji.SCIENTIST;
  Result[1775] := TEmoji.SCIENTIST_DARK_SKIN_TONE;
  Result[1776] := TEmoji.SCIENTIST_LIGHT_SKIN_TONE;
  Result[1777] := TEmoji.SCIENTIST_MEDIUM_SKIN_TONE;
  Result[1778] := TEmoji.SCIENTIST_MEDIUM_DARK_SKIN_TONE;
  Result[1779] := TEmoji.SCIENTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1780] := TEmoji.SELFIE_DARK_SKIN_TONE;
  Result[1781] := TEmoji.SELFIE_LIGHT_SKIN_TONE;
  Result[1782] := TEmoji.SELFIE_MEDIUM_SKIN_TONE;
  Result[1783] := TEmoji.SELFIE_MEDIUM_DARK_SKIN_TONE;
  Result[1784] := TEmoji.SELFIE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1785] := TEmoji.SERVICE_DOG;
  Result[1786] := TEmoji.SIGN_OF_THE_HORNS_DARK_SKIN_TONE;
  Result[1787] := TEmoji.SIGN_OF_THE_HORNS_LIGHT_SKIN_TONE;
  Result[1788] := TEmoji.SIGN_OF_THE_HORNS_MEDIUM_SKIN_TONE;
  Result[1789] := TEmoji.SIGN_OF_THE_HORNS_MEDIUM_DARK_SKIN_TONE;
  Result[1790] := TEmoji.SIGN_OF_THE_HORNS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1791] := TEmoji.SINGER;
  Result[1792] := TEmoji.SINGER_DARK_SKIN_TONE;
  Result[1793] := TEmoji.SINGER_LIGHT_SKIN_TONE;
  Result[1794] := TEmoji.SINGER_MEDIUM_SKIN_TONE;
  Result[1795] := TEmoji.SINGER_MEDIUM_DARK_SKIN_TONE;
  Result[1796] := TEmoji.SINGER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1797] := TEmoji.SNOWBOARDER_DARK_SKIN_TONE;
  Result[1798] := TEmoji.SNOWBOARDER_LIGHT_SKIN_TONE;
  Result[1799] := TEmoji.SNOWBOARDER_MEDIUM_SKIN_TONE;
  Result[1800] := TEmoji.SNOWBOARDER_MEDIUM_DARK_SKIN_TONE;
  Result[1801] := TEmoji.SNOWBOARDER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1802] := TEmoji.STUDENT;
  Result[1803] := TEmoji.STUDENT_DARK_SKIN_TONE;
  Result[1804] := TEmoji.STUDENT_LIGHT_SKIN_TONE;
  Result[1805] := TEmoji.STUDENT_MEDIUM_SKIN_TONE;
  Result[1806] := TEmoji.STUDENT_MEDIUM_DARK_SKIN_TONE;
  Result[1807] := TEmoji.STUDENT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1808] := TEmoji.SUPERHERO_DARK_SKIN_TONE;
  Result[1809] := TEmoji.SUPERHERO_LIGHT_SKIN_TONE;
  Result[1810] := TEmoji.SUPERHERO_MEDIUM_SKIN_TONE;
  Result[1811] := TEmoji.SUPERHERO_MEDIUM_DARK_SKIN_TONE;
  Result[1812] := TEmoji.SUPERHERO_MEDIUM_LIGHT_SKIN_TONE;
  Result[1813] := TEmoji.SUPERVILLAIN_DARK_SKIN_TONE;
  Result[1814] := TEmoji.SUPERVILLAIN_LIGHT_SKIN_TONE;
  Result[1815] := TEmoji.SUPERVILLAIN_MEDIUM_SKIN_TONE;
  Result[1816] := TEmoji.SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE;
  Result[1817] := TEmoji.SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1818] := TEmoji.TEACHER;
  Result[1819] := TEmoji.TEACHER_DARK_SKIN_TONE;
  Result[1820] := TEmoji.TEACHER_LIGHT_SKIN_TONE;
  Result[1821] := TEmoji.TEACHER_MEDIUM_SKIN_TONE;
  Result[1822] := TEmoji.TEACHER_MEDIUM_DARK_SKIN_TONE;
  Result[1823] := TEmoji.TEACHER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1824] := TEmoji.TECHNOLOGIST;
  Result[1825] := TEmoji.TECHNOLOGIST_DARK_SKIN_TONE;
  Result[1826] := TEmoji.TECHNOLOGIST_LIGHT_SKIN_TONE;
  Result[1827] := TEmoji.TECHNOLOGIST_MEDIUM_SKIN_TONE;
  Result[1828] := TEmoji.TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE;
  Result[1829] := TEmoji.TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1830] := TEmoji.THUMBS_DOWN_DARK_SKIN_TONE;
  Result[1831] := TEmoji.THUMBS_DOWN_LIGHT_SKIN_TONE;
  Result[1832] := TEmoji.THUMBS_DOWN_MEDIUM_SKIN_TONE;
  Result[1833] := TEmoji.THUMBS_DOWN_MEDIUM_DARK_SKIN_TONE;
  Result[1834] := TEmoji.THUMBS_DOWN_MEDIUM_LIGHT_SKIN_TONE;
  Result[1835] := TEmoji.THUMBS_UP_DARK_SKIN_TONE;
  Result[1836] := TEmoji.THUMBS_UP_LIGHT_SKIN_TONE;
  Result[1837] := TEmoji.THUMBS_UP_MEDIUM_SKIN_TONE;
  Result[1838] := TEmoji.THUMBS_UP_MEDIUM_DARK_SKIN_TONE;
  Result[1839] := TEmoji.THUMBS_UP_MEDIUM_LIGHT_SKIN_TONE;
  Result[1840] := TEmoji.TRANSGENDER_FLAG;
  Result[1841] := TEmoji.VAMPIRE_DARK_SKIN_TONE;
  Result[1842] := TEmoji.VAMPIRE_LIGHT_SKIN_TONE;
  Result[1843] := TEmoji.VAMPIRE_MEDIUM_SKIN_TONE;
  Result[1844] := TEmoji.VAMPIRE_MEDIUM_DARK_SKIN_TONE;
  Result[1845] := TEmoji.VAMPIRE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1846] := TEmoji.VICTORY_HAND_DARK_SKIN_TONE;
  Result[1847] := TEmoji.VICTORY_HAND_LIGHT_SKIN_TONE;
  Result[1848] := TEmoji.VICTORY_HAND_MEDIUM_SKIN_TONE;
  Result[1849] := TEmoji.VICTORY_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1850] := TEmoji.VICTORY_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1851] := TEmoji.VULCAN_SALUTE_DARK_SKIN_TONE;
  Result[1852] := TEmoji.VULCAN_SALUTE_LIGHT_SKIN_TONE;
  Result[1853] := TEmoji.VULCAN_SALUTE_MEDIUM_SKIN_TONE;
  Result[1854] := TEmoji.VULCAN_SALUTE_MEDIUM_DARK_SKIN_TONE;
  Result[1855] := TEmoji.VULCAN_SALUTE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1856] := TEmoji.WAVING_HAND_DARK_SKIN_TONE;
  Result[1857] := TEmoji.WAVING_HAND_LIGHT_SKIN_TONE;
  Result[1858] := TEmoji.WAVING_HAND_MEDIUM_SKIN_TONE;
  Result[1859] := TEmoji.WAVING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[1860] := TEmoji.WAVING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[1861] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE;
  Result[1862] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1863] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1864] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1865] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1866] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE;
  Result[1867] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1868] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1869] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1870] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1871] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE;
  Result[1872] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[1873] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1874] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1875] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1876] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[1877] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[1878] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1879] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1880] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1881] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[1882] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[1883] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[1884] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[1885] := TEmoji.WOMAN_AND_MAN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[1886] := TEmoji.WOMAN_ARTIST;
  Result[1887] := TEmoji.WOMAN_ARTIST_DARK_SKIN_TONE;
  Result[1888] := TEmoji.WOMAN_ARTIST_LIGHT_SKIN_TONE;
  Result[1889] := TEmoji.WOMAN_ARTIST_MEDIUM_SKIN_TONE;
  Result[1890] := TEmoji.WOMAN_ARTIST_MEDIUM_DARK_SKIN_TONE;
  Result[1891] := TEmoji.WOMAN_ARTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[1892] := TEmoji.WOMAN_ASTRONAUT;
  Result[1893] := TEmoji.WOMAN_ASTRONAUT_DARK_SKIN_TONE;
  Result[1894] := TEmoji.WOMAN_ASTRONAUT_LIGHT_SKIN_TONE;
  Result[1895] := TEmoji.WOMAN_ASTRONAUT_MEDIUM_SKIN_TONE;
  Result[1896] := TEmoji.WOMAN_ASTRONAUT_MEDIUM_DARK_SKIN_TONE;
  Result[1897] := TEmoji.WOMAN_ASTRONAUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[1898] := TEmoji.WOMAN_BIKING;
  Result[1899] := TEmoji.WOMAN_BIKING_DARK_SKIN_TONE;
  Result[1900] := TEmoji.WOMAN_BIKING_LIGHT_SKIN_TONE;
  Result[1901] := TEmoji.WOMAN_BIKING_MEDIUM_SKIN_TONE;
  Result[1902] := TEmoji.WOMAN_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[1903] := TEmoji.WOMAN_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1904] := TEmoji.WOMAN_BOUNCING_BALL;
  Result[1905] := TEmoji.WOMAN_BOUNCING_BALL_DARK_SKIN_TONE;
  Result[1906] := TEmoji.WOMAN_BOUNCING_BALL_LIGHT_SKIN_TONE;
  Result[1907] := TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_SKIN_TONE;
  Result[1908] := TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_DARK_SKIN_TONE;
  Result[1909] := TEmoji.WOMAN_BOUNCING_BALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[1910] := TEmoji.WOMAN_BOWING;
  Result[1911] := TEmoji.WOMAN_BOWING_DARK_SKIN_TONE;
  Result[1912] := TEmoji.WOMAN_BOWING_LIGHT_SKIN_TONE;
  Result[1913] := TEmoji.WOMAN_BOWING_MEDIUM_SKIN_TONE;
  Result[1914] := TEmoji.WOMAN_BOWING_MEDIUM_DARK_SKIN_TONE;
  Result[1915] := TEmoji.WOMAN_BOWING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1916] := TEmoji.WOMAN_CARTWHEELING;
  Result[1917] := TEmoji.WOMAN_CARTWHEELING_DARK_SKIN_TONE;
  Result[1918] := TEmoji.WOMAN_CARTWHEELING_LIGHT_SKIN_TONE;
  Result[1919] := TEmoji.WOMAN_CARTWHEELING_MEDIUM_SKIN_TONE;
  Result[1920] := TEmoji.WOMAN_CARTWHEELING_MEDIUM_DARK_SKIN_TONE;
  Result[1921] := TEmoji.WOMAN_CARTWHEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1922] := TEmoji.WOMAN_CLIMBING;
  Result[1923] := TEmoji.WOMAN_CLIMBING_DARK_SKIN_TONE;
  Result[1924] := TEmoji.WOMAN_CLIMBING_LIGHT_SKIN_TONE;
  Result[1925] := TEmoji.WOMAN_CLIMBING_MEDIUM_SKIN_TONE;
  Result[1926] := TEmoji.WOMAN_CLIMBING_MEDIUM_DARK_SKIN_TONE;
  Result[1927] := TEmoji.WOMAN_CLIMBING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1928] := TEmoji.WOMAN_CONSTRUCTION_WORKER;
  Result[1929] := TEmoji.WOMAN_CONSTRUCTION_WORKER_DARK_SKIN_TONE;
  Result[1930] := TEmoji.WOMAN_CONSTRUCTION_WORKER_LIGHT_SKIN_TONE;
  Result[1931] := TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_SKIN_TONE;
  Result[1932] := TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[1933] := TEmoji.WOMAN_CONSTRUCTION_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1934] := TEmoji.WOMAN_COOK;
  Result[1935] := TEmoji.WOMAN_COOK_DARK_SKIN_TONE;
  Result[1936] := TEmoji.WOMAN_COOK_LIGHT_SKIN_TONE;
  Result[1937] := TEmoji.WOMAN_COOK_MEDIUM_SKIN_TONE;
  Result[1938] := TEmoji.WOMAN_COOK_MEDIUM_DARK_SKIN_TONE;
  Result[1939] := TEmoji.WOMAN_COOK_MEDIUM_LIGHT_SKIN_TONE;
  Result[1940] := TEmoji.WOMAN_DANCING_DARK_SKIN_TONE;
  Result[1941] := TEmoji.WOMAN_DANCING_LIGHT_SKIN_TONE;
  Result[1942] := TEmoji.WOMAN_DANCING_MEDIUM_SKIN_TONE;
  Result[1943] := TEmoji.WOMAN_DANCING_MEDIUM_DARK_SKIN_TONE;
  Result[1944] := TEmoji.WOMAN_DANCING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1945] := TEmoji.WOMAN_DETECTIVE;
  Result[1946] := TEmoji.WOMAN_DETECTIVE_DARK_SKIN_TONE;
  Result[1947] := TEmoji.WOMAN_DETECTIVE_LIGHT_SKIN_TONE;
  Result[1948] := TEmoji.WOMAN_DETECTIVE_MEDIUM_SKIN_TONE;
  Result[1949] := TEmoji.WOMAN_DETECTIVE_MEDIUM_DARK_SKIN_TONE;
  Result[1950] := TEmoji.WOMAN_DETECTIVE_MEDIUM_LIGHT_SKIN_TONE;
  Result[1951] := TEmoji.WOMAN_ELF;
  Result[1952] := TEmoji.WOMAN_ELF_DARK_SKIN_TONE;
  Result[1953] := TEmoji.WOMAN_ELF_LIGHT_SKIN_TONE;
  Result[1954] := TEmoji.WOMAN_ELF_MEDIUM_SKIN_TONE;
  Result[1955] := TEmoji.WOMAN_ELF_MEDIUM_DARK_SKIN_TONE;
  Result[1956] := TEmoji.WOMAN_ELF_MEDIUM_LIGHT_SKIN_TONE;
  Result[1957] := TEmoji.WOMAN_FACEPALMING;
  Result[1958] := TEmoji.WOMAN_FACEPALMING_DARK_SKIN_TONE;
  Result[1959] := TEmoji.WOMAN_FACEPALMING_LIGHT_SKIN_TONE;
  Result[1960] := TEmoji.WOMAN_FACEPALMING_MEDIUM_SKIN_TONE;
  Result[1961] := TEmoji.WOMAN_FACEPALMING_MEDIUM_DARK_SKIN_TONE;
  Result[1962] := TEmoji.WOMAN_FACEPALMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1963] := TEmoji.WOMAN_FACTORY_WORKER;
  Result[1964] := TEmoji.WOMAN_FACTORY_WORKER_DARK_SKIN_TONE;
  Result[1965] := TEmoji.WOMAN_FACTORY_WORKER_LIGHT_SKIN_TONE;
  Result[1966] := TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_SKIN_TONE;
  Result[1967] := TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[1968] := TEmoji.WOMAN_FACTORY_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1969] := TEmoji.WOMAN_FAIRY;
  Result[1970] := TEmoji.WOMAN_FAIRY_DARK_SKIN_TONE;
  Result[1971] := TEmoji.WOMAN_FAIRY_LIGHT_SKIN_TONE;
  Result[1972] := TEmoji.WOMAN_FAIRY_MEDIUM_SKIN_TONE;
  Result[1973] := TEmoji.WOMAN_FAIRY_MEDIUM_DARK_SKIN_TONE;
  Result[1974] := TEmoji.WOMAN_FAIRY_MEDIUM_LIGHT_SKIN_TONE;
  Result[1975] := TEmoji.WOMAN_FARMER;
  Result[1976] := TEmoji.WOMAN_FARMER_DARK_SKIN_TONE;
  Result[1977] := TEmoji.WOMAN_FARMER_LIGHT_SKIN_TONE;
  Result[1978] := TEmoji.WOMAN_FARMER_MEDIUM_SKIN_TONE;
  Result[1979] := TEmoji.WOMAN_FARMER_MEDIUM_DARK_SKIN_TONE;
  Result[1980] := TEmoji.WOMAN_FARMER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1981] := TEmoji.WOMAN_FEEDING_BABY;
  Result[1982] := TEmoji.WOMAN_FEEDING_BABY_DARK_SKIN_TONE;
  Result[1983] := TEmoji.WOMAN_FEEDING_BABY_LIGHT_SKIN_TONE;
  Result[1984] := TEmoji.WOMAN_FEEDING_BABY_MEDIUM_SKIN_TONE;
  Result[1985] := TEmoji.WOMAN_FEEDING_BABY_MEDIUM_DARK_SKIN_TONE;
  Result[1986] := TEmoji.WOMAN_FEEDING_BABY_MEDIUM_LIGHT_SKIN_TONE;
  Result[1987] := TEmoji.WOMAN_FIREFIGHTER;
  Result[1988] := TEmoji.WOMAN_FIREFIGHTER_DARK_SKIN_TONE;
  Result[1989] := TEmoji.WOMAN_FIREFIGHTER_LIGHT_SKIN_TONE;
  Result[1990] := TEmoji.WOMAN_FIREFIGHTER_MEDIUM_SKIN_TONE;
  Result[1991] := TEmoji.WOMAN_FIREFIGHTER_MEDIUM_DARK_SKIN_TONE;
  Result[1992] := TEmoji.WOMAN_FIREFIGHTER_MEDIUM_LIGHT_SKIN_TONE;
  Result[1993] := TEmoji.WOMAN_FROWNING;
  Result[1994] := TEmoji.WOMAN_FROWNING_DARK_SKIN_TONE;
  Result[1995] := TEmoji.WOMAN_FROWNING_LIGHT_SKIN_TONE;
  Result[1996] := TEmoji.WOMAN_FROWNING_MEDIUM_SKIN_TONE;
  Result[1997] := TEmoji.WOMAN_FROWNING_MEDIUM_DARK_SKIN_TONE;
  Result[1998] := TEmoji.WOMAN_FROWNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[1999] := TEmoji.WOMAN_GENIE;
  Result[2000] := TEmoji.WOMAN_GESTURING_NO;
  Result[2001] := TEmoji.WOMAN_GESTURING_NO_DARK_SKIN_TONE;
  Result[2002] := TEmoji.WOMAN_GESTURING_NO_LIGHT_SKIN_TONE;
  Result[2003] := TEmoji.WOMAN_GESTURING_NO_MEDIUM_SKIN_TONE;
  Result[2004] := TEmoji.WOMAN_GESTURING_NO_MEDIUM_DARK_SKIN_TONE;
  Result[2005] := TEmoji.WOMAN_GESTURING_NO_MEDIUM_LIGHT_SKIN_TONE;
  Result[2006] := TEmoji.WOMAN_GESTURING_OK;
  Result[2007] := TEmoji.WOMAN_GESTURING_OK_DARK_SKIN_TONE;
  Result[2008] := TEmoji.WOMAN_GESTURING_OK_LIGHT_SKIN_TONE;
  Result[2009] := TEmoji.WOMAN_GESTURING_OK_MEDIUM_SKIN_TONE;
  Result[2010] := TEmoji.WOMAN_GESTURING_OK_MEDIUM_DARK_SKIN_TONE;
  Result[2011] := TEmoji.WOMAN_GESTURING_OK_MEDIUM_LIGHT_SKIN_TONE;
  Result[2012] := TEmoji.WOMAN_GETTING_HAIRCUT;
  Result[2013] := TEmoji.WOMAN_GETTING_HAIRCUT_DARK_SKIN_TONE;
  Result[2014] := TEmoji.WOMAN_GETTING_HAIRCUT_LIGHT_SKIN_TONE;
  Result[2015] := TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_SKIN_TONE;
  Result[2016] := TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_DARK_SKIN_TONE;
  Result[2017] := TEmoji.WOMAN_GETTING_HAIRCUT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2018] := TEmoji.WOMAN_GETTING_MASSAGE;
  Result[2019] := TEmoji.WOMAN_GETTING_MASSAGE_DARK_SKIN_TONE;
  Result[2020] := TEmoji.WOMAN_GETTING_MASSAGE_LIGHT_SKIN_TONE;
  Result[2021] := TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_SKIN_TONE;
  Result[2022] := TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_DARK_SKIN_TONE;
  Result[2023] := TEmoji.WOMAN_GETTING_MASSAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2024] := TEmoji.WOMAN_GOLFING;
  Result[2025] := TEmoji.WOMAN_GOLFING_DARK_SKIN_TONE;
  Result[2026] := TEmoji.WOMAN_GOLFING_LIGHT_SKIN_TONE;
  Result[2027] := TEmoji.WOMAN_GOLFING_MEDIUM_SKIN_TONE;
  Result[2028] := TEmoji.WOMAN_GOLFING_MEDIUM_DARK_SKIN_TONE;
  Result[2029] := TEmoji.WOMAN_GOLFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2030] := TEmoji.WOMAN_GUARD;
  Result[2031] := TEmoji.WOMAN_GUARD_DARK_SKIN_TONE;
  Result[2032] := TEmoji.WOMAN_GUARD_LIGHT_SKIN_TONE;
  Result[2033] := TEmoji.WOMAN_GUARD_MEDIUM_SKIN_TONE;
  Result[2034] := TEmoji.WOMAN_GUARD_MEDIUM_DARK_SKIN_TONE;
  Result[2035] := TEmoji.WOMAN_GUARD_MEDIUM_LIGHT_SKIN_TONE;
  Result[2036] := TEmoji.WOMAN_HEALTH_WORKER;
  Result[2037] := TEmoji.WOMAN_HEALTH_WORKER_DARK_SKIN_TONE;
  Result[2038] := TEmoji.WOMAN_HEALTH_WORKER_LIGHT_SKIN_TONE;
  Result[2039] := TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_SKIN_TONE;
  Result[2040] := TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[2041] := TEmoji.WOMAN_HEALTH_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[2042] := TEmoji.WOMAN_IN_LOTUS_POSITION;
  Result[2043] := TEmoji.WOMAN_IN_LOTUS_POSITION_DARK_SKIN_TONE;
  Result[2044] := TEmoji.WOMAN_IN_LOTUS_POSITION_LIGHT_SKIN_TONE;
  Result[2045] := TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_SKIN_TONE;
  Result[2046] := TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_DARK_SKIN_TONE;
  Result[2047] := TEmoji.WOMAN_IN_LOTUS_POSITION_MEDIUM_LIGHT_SKIN_TONE;
  Result[2048] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR;
  Result[2049] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT;
  Result[2050] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2051] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2052] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2053] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2054] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2055] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_DARK_SKIN_TONE;
  Result[2056] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[2057] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[2058] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[2059] := TEmoji.WOMAN_IN_MANUAL_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[2060] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR;
  Result[2061] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT;
  Result[2062] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2063] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2064] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2065] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2066] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2067] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_DARK_SKIN_TONE;
  Result[2068] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_LIGHT_SKIN_TONE;
  Result[2069] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_SKIN_TONE;
  Result[2070] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_DARK_SKIN_TONE;
  Result[2071] := TEmoji.WOMAN_IN_MOTORIZED_WHEELCHAIR_MEDIUM_LIGHT_SKIN_TONE;
  Result[2072] := TEmoji.WOMAN_IN_STEAMY_ROOM;
  Result[2073] := TEmoji.WOMAN_IN_STEAMY_ROOM_DARK_SKIN_TONE;
  Result[2074] := TEmoji.WOMAN_IN_STEAMY_ROOM_LIGHT_SKIN_TONE;
  Result[2075] := TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_SKIN_TONE;
  Result[2076] := TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_DARK_SKIN_TONE;
  Result[2077] := TEmoji.WOMAN_IN_STEAMY_ROOM_MEDIUM_LIGHT_SKIN_TONE;
  Result[2078] := TEmoji.WOMAN_IN_TUXEDO;
  Result[2079] := TEmoji.WOMAN_IN_TUXEDO_DARK_SKIN_TONE;
  Result[2080] := TEmoji.WOMAN_IN_TUXEDO_LIGHT_SKIN_TONE;
  Result[2081] := TEmoji.WOMAN_IN_TUXEDO_MEDIUM_SKIN_TONE;
  Result[2082] := TEmoji.WOMAN_IN_TUXEDO_MEDIUM_DARK_SKIN_TONE;
  Result[2083] := TEmoji.WOMAN_IN_TUXEDO_MEDIUM_LIGHT_SKIN_TONE;
  Result[2084] := TEmoji.WOMAN_JUDGE;
  Result[2085] := TEmoji.WOMAN_JUDGE_DARK_SKIN_TONE;
  Result[2086] := TEmoji.WOMAN_JUDGE_LIGHT_SKIN_TONE;
  Result[2087] := TEmoji.WOMAN_JUDGE_MEDIUM_SKIN_TONE;
  Result[2088] := TEmoji.WOMAN_JUDGE_MEDIUM_DARK_SKIN_TONE;
  Result[2089] := TEmoji.WOMAN_JUDGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2090] := TEmoji.WOMAN_JUGGLING;
  Result[2091] := TEmoji.WOMAN_JUGGLING_DARK_SKIN_TONE;
  Result[2092] := TEmoji.WOMAN_JUGGLING_LIGHT_SKIN_TONE;
  Result[2093] := TEmoji.WOMAN_JUGGLING_MEDIUM_SKIN_TONE;
  Result[2094] := TEmoji.WOMAN_JUGGLING_MEDIUM_DARK_SKIN_TONE;
  Result[2095] := TEmoji.WOMAN_JUGGLING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2096] := TEmoji.WOMAN_KNEELING;
  Result[2097] := TEmoji.WOMAN_KNEELING_FACING_RIGHT;
  Result[2098] := TEmoji.WOMAN_KNEELING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2099] := TEmoji.WOMAN_KNEELING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2100] := TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2101] := TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2102] := TEmoji.WOMAN_KNEELING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2103] := TEmoji.WOMAN_KNEELING_DARK_SKIN_TONE;
  Result[2104] := TEmoji.WOMAN_KNEELING_LIGHT_SKIN_TONE;
  Result[2105] := TEmoji.WOMAN_KNEELING_MEDIUM_SKIN_TONE;
  Result[2106] := TEmoji.WOMAN_KNEELING_MEDIUM_DARK_SKIN_TONE;
  Result[2107] := TEmoji.WOMAN_KNEELING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2108] := TEmoji.WOMAN_LIFTING_WEIGHTS;
  Result[2109] := TEmoji.WOMAN_LIFTING_WEIGHTS_DARK_SKIN_TONE;
  Result[2110] := TEmoji.WOMAN_LIFTING_WEIGHTS_LIGHT_SKIN_TONE;
  Result[2111] := TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_SKIN_TONE;
  Result[2112] := TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_DARK_SKIN_TONE;
  Result[2113] := TEmoji.WOMAN_LIFTING_WEIGHTS_MEDIUM_LIGHT_SKIN_TONE;
  Result[2114] := TEmoji.WOMAN_MAGE;
  Result[2115] := TEmoji.WOMAN_MAGE_DARK_SKIN_TONE;
  Result[2116] := TEmoji.WOMAN_MAGE_LIGHT_SKIN_TONE;
  Result[2117] := TEmoji.WOMAN_MAGE_MEDIUM_SKIN_TONE;
  Result[2118] := TEmoji.WOMAN_MAGE_MEDIUM_DARK_SKIN_TONE;
  Result[2119] := TEmoji.WOMAN_MAGE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2120] := TEmoji.WOMAN_MECHANIC;
  Result[2121] := TEmoji.WOMAN_MECHANIC_DARK_SKIN_TONE;
  Result[2122] := TEmoji.WOMAN_MECHANIC_LIGHT_SKIN_TONE;
  Result[2123] := TEmoji.WOMAN_MECHANIC_MEDIUM_SKIN_TONE;
  Result[2124] := TEmoji.WOMAN_MECHANIC_MEDIUM_DARK_SKIN_TONE;
  Result[2125] := TEmoji.WOMAN_MECHANIC_MEDIUM_LIGHT_SKIN_TONE;
  Result[2126] := TEmoji.WOMAN_MOUNTAIN_BIKING;
  Result[2127] := TEmoji.WOMAN_MOUNTAIN_BIKING_DARK_SKIN_TONE;
  Result[2128] := TEmoji.WOMAN_MOUNTAIN_BIKING_LIGHT_SKIN_TONE;
  Result[2129] := TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_SKIN_TONE;
  Result[2130] := TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_DARK_SKIN_TONE;
  Result[2131] := TEmoji.WOMAN_MOUNTAIN_BIKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2132] := TEmoji.WOMAN_OFFICE_WORKER;
  Result[2133] := TEmoji.WOMAN_OFFICE_WORKER_DARK_SKIN_TONE;
  Result[2134] := TEmoji.WOMAN_OFFICE_WORKER_LIGHT_SKIN_TONE;
  Result[2135] := TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_SKIN_TONE;
  Result[2136] := TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_DARK_SKIN_TONE;
  Result[2137] := TEmoji.WOMAN_OFFICE_WORKER_MEDIUM_LIGHT_SKIN_TONE;
  Result[2138] := TEmoji.WOMAN_PILOT;
  Result[2139] := TEmoji.WOMAN_PILOT_DARK_SKIN_TONE;
  Result[2140] := TEmoji.WOMAN_PILOT_LIGHT_SKIN_TONE;
  Result[2141] := TEmoji.WOMAN_PILOT_MEDIUM_SKIN_TONE;
  Result[2142] := TEmoji.WOMAN_PILOT_MEDIUM_DARK_SKIN_TONE;
  Result[2143] := TEmoji.WOMAN_PILOT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2144] := TEmoji.WOMAN_PLAYING_HANDBALL;
  Result[2145] := TEmoji.WOMAN_PLAYING_HANDBALL_DARK_SKIN_TONE;
  Result[2146] := TEmoji.WOMAN_PLAYING_HANDBALL_LIGHT_SKIN_TONE;
  Result[2147] := TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_SKIN_TONE;
  Result[2148] := TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_DARK_SKIN_TONE;
  Result[2149] := TEmoji.WOMAN_PLAYING_HANDBALL_MEDIUM_LIGHT_SKIN_TONE;
  Result[2150] := TEmoji.WOMAN_PLAYING_WATER_POLO;
  Result[2151] := TEmoji.WOMAN_PLAYING_WATER_POLO_DARK_SKIN_TONE;
  Result[2152] := TEmoji.WOMAN_PLAYING_WATER_POLO_LIGHT_SKIN_TONE;
  Result[2153] := TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_SKIN_TONE;
  Result[2154] := TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_DARK_SKIN_TONE;
  Result[2155] := TEmoji.WOMAN_PLAYING_WATER_POLO_MEDIUM_LIGHT_SKIN_TONE;
  Result[2156] := TEmoji.WOMAN_POLICE_OFFICER;
  Result[2157] := TEmoji.WOMAN_POLICE_OFFICER_DARK_SKIN_TONE;
  Result[2158] := TEmoji.WOMAN_POLICE_OFFICER_LIGHT_SKIN_TONE;
  Result[2159] := TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_SKIN_TONE;
  Result[2160] := TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_DARK_SKIN_TONE;
  Result[2161] := TEmoji.WOMAN_POLICE_OFFICER_MEDIUM_LIGHT_SKIN_TONE;
  Result[2162] := TEmoji.WOMAN_POUTING;
  Result[2163] := TEmoji.WOMAN_POUTING_DARK_SKIN_TONE;
  Result[2164] := TEmoji.WOMAN_POUTING_LIGHT_SKIN_TONE;
  Result[2165] := TEmoji.WOMAN_POUTING_MEDIUM_SKIN_TONE;
  Result[2166] := TEmoji.WOMAN_POUTING_MEDIUM_DARK_SKIN_TONE;
  Result[2167] := TEmoji.WOMAN_POUTING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2168] := TEmoji.WOMAN_RAISING_HAND;
  Result[2169] := TEmoji.WOMAN_RAISING_HAND_DARK_SKIN_TONE;
  Result[2170] := TEmoji.WOMAN_RAISING_HAND_LIGHT_SKIN_TONE;
  Result[2171] := TEmoji.WOMAN_RAISING_HAND_MEDIUM_SKIN_TONE;
  Result[2172] := TEmoji.WOMAN_RAISING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[2173] := TEmoji.WOMAN_RAISING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[2174] := TEmoji.WOMAN_ROWING_BOAT;
  Result[2175] := TEmoji.WOMAN_ROWING_BOAT_DARK_SKIN_TONE;
  Result[2176] := TEmoji.WOMAN_ROWING_BOAT_LIGHT_SKIN_TONE;
  Result[2177] := TEmoji.WOMAN_ROWING_BOAT_MEDIUM_SKIN_TONE;
  Result[2178] := TEmoji.WOMAN_ROWING_BOAT_MEDIUM_DARK_SKIN_TONE;
  Result[2179] := TEmoji.WOMAN_ROWING_BOAT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2180] := TEmoji.WOMAN_RUNNING;
  Result[2181] := TEmoji.WOMAN_RUNNING_FACING_RIGHT;
  Result[2182] := TEmoji.WOMAN_RUNNING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2183] := TEmoji.WOMAN_RUNNING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2184] := TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2185] := TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2186] := TEmoji.WOMAN_RUNNING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2187] := TEmoji.WOMAN_RUNNING_DARK_SKIN_TONE;
  Result[2188] := TEmoji.WOMAN_RUNNING_LIGHT_SKIN_TONE;
  Result[2189] := TEmoji.WOMAN_RUNNING_MEDIUM_SKIN_TONE;
  Result[2190] := TEmoji.WOMAN_RUNNING_MEDIUM_DARK_SKIN_TONE;
  Result[2191] := TEmoji.WOMAN_RUNNING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2192] := TEmoji.WOMAN_SCIENTIST;
  Result[2193] := TEmoji.WOMAN_SCIENTIST_DARK_SKIN_TONE;
  Result[2194] := TEmoji.WOMAN_SCIENTIST_LIGHT_SKIN_TONE;
  Result[2195] := TEmoji.WOMAN_SCIENTIST_MEDIUM_SKIN_TONE;
  Result[2196] := TEmoji.WOMAN_SCIENTIST_MEDIUM_DARK_SKIN_TONE;
  Result[2197] := TEmoji.WOMAN_SCIENTIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[2198] := TEmoji.WOMAN_SHRUGGING;
  Result[2199] := TEmoji.WOMAN_SHRUGGING_DARK_SKIN_TONE;
  Result[2200] := TEmoji.WOMAN_SHRUGGING_LIGHT_SKIN_TONE;
  Result[2201] := TEmoji.WOMAN_SHRUGGING_MEDIUM_SKIN_TONE;
  Result[2202] := TEmoji.WOMAN_SHRUGGING_MEDIUM_DARK_SKIN_TONE;
  Result[2203] := TEmoji.WOMAN_SHRUGGING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2204] := TEmoji.WOMAN_SINGER;
  Result[2205] := TEmoji.WOMAN_SINGER_DARK_SKIN_TONE;
  Result[2206] := TEmoji.WOMAN_SINGER_LIGHT_SKIN_TONE;
  Result[2207] := TEmoji.WOMAN_SINGER_MEDIUM_SKIN_TONE;
  Result[2208] := TEmoji.WOMAN_SINGER_MEDIUM_DARK_SKIN_TONE;
  Result[2209] := TEmoji.WOMAN_SINGER_MEDIUM_LIGHT_SKIN_TONE;
  Result[2210] := TEmoji.WOMAN_STANDING;
  Result[2211] := TEmoji.WOMAN_STANDING_DARK_SKIN_TONE;
  Result[2212] := TEmoji.WOMAN_STANDING_LIGHT_SKIN_TONE;
  Result[2213] := TEmoji.WOMAN_STANDING_MEDIUM_SKIN_TONE;
  Result[2214] := TEmoji.WOMAN_STANDING_MEDIUM_DARK_SKIN_TONE;
  Result[2215] := TEmoji.WOMAN_STANDING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2216] := TEmoji.WOMAN_STUDENT;
  Result[2217] := TEmoji.WOMAN_STUDENT_DARK_SKIN_TONE;
  Result[2218] := TEmoji.WOMAN_STUDENT_LIGHT_SKIN_TONE;
  Result[2219] := TEmoji.WOMAN_STUDENT_MEDIUM_SKIN_TONE;
  Result[2220] := TEmoji.WOMAN_STUDENT_MEDIUM_DARK_SKIN_TONE;
  Result[2221] := TEmoji.WOMAN_STUDENT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2222] := TEmoji.WOMAN_SUPERHERO;
  Result[2223] := TEmoji.WOMAN_SUPERHERO_DARK_SKIN_TONE;
  Result[2224] := TEmoji.WOMAN_SUPERHERO_LIGHT_SKIN_TONE;
  Result[2225] := TEmoji.WOMAN_SUPERHERO_MEDIUM_SKIN_TONE;
  Result[2226] := TEmoji.WOMAN_SUPERHERO_MEDIUM_DARK_SKIN_TONE;
  Result[2227] := TEmoji.WOMAN_SUPERHERO_MEDIUM_LIGHT_SKIN_TONE;
  Result[2228] := TEmoji.WOMAN_SUPERVILLAIN;
  Result[2229] := TEmoji.WOMAN_SUPERVILLAIN_DARK_SKIN_TONE;
  Result[2230] := TEmoji.WOMAN_SUPERVILLAIN_LIGHT_SKIN_TONE;
  Result[2231] := TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_SKIN_TONE;
  Result[2232] := TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_DARK_SKIN_TONE;
  Result[2233] := TEmoji.WOMAN_SUPERVILLAIN_MEDIUM_LIGHT_SKIN_TONE;
  Result[2234] := TEmoji.WOMAN_SURFING;
  Result[2235] := TEmoji.WOMAN_SURFING_DARK_SKIN_TONE;
  Result[2236] := TEmoji.WOMAN_SURFING_LIGHT_SKIN_TONE;
  Result[2237] := TEmoji.WOMAN_SURFING_MEDIUM_SKIN_TONE;
  Result[2238] := TEmoji.WOMAN_SURFING_MEDIUM_DARK_SKIN_TONE;
  Result[2239] := TEmoji.WOMAN_SURFING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2240] := TEmoji.WOMAN_SWIMMING;
  Result[2241] := TEmoji.WOMAN_SWIMMING_DARK_SKIN_TONE;
  Result[2242] := TEmoji.WOMAN_SWIMMING_LIGHT_SKIN_TONE;
  Result[2243] := TEmoji.WOMAN_SWIMMING_MEDIUM_SKIN_TONE;
  Result[2244] := TEmoji.WOMAN_SWIMMING_MEDIUM_DARK_SKIN_TONE;
  Result[2245] := TEmoji.WOMAN_SWIMMING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2246] := TEmoji.WOMAN_TEACHER;
  Result[2247] := TEmoji.WOMAN_TEACHER_DARK_SKIN_TONE;
  Result[2248] := TEmoji.WOMAN_TEACHER_LIGHT_SKIN_TONE;
  Result[2249] := TEmoji.WOMAN_TEACHER_MEDIUM_SKIN_TONE;
  Result[2250] := TEmoji.WOMAN_TEACHER_MEDIUM_DARK_SKIN_TONE;
  Result[2251] := TEmoji.WOMAN_TEACHER_MEDIUM_LIGHT_SKIN_TONE;
  Result[2252] := TEmoji.WOMAN_TECHNOLOGIST;
  Result[2253] := TEmoji.WOMAN_TECHNOLOGIST_DARK_SKIN_TONE;
  Result[2254] := TEmoji.WOMAN_TECHNOLOGIST_LIGHT_SKIN_TONE;
  Result[2255] := TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_SKIN_TONE;
  Result[2256] := TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_DARK_SKIN_TONE;
  Result[2257] := TEmoji.WOMAN_TECHNOLOGIST_MEDIUM_LIGHT_SKIN_TONE;
  Result[2258] := TEmoji.WOMAN_TIPPING_HAND;
  Result[2259] := TEmoji.WOMAN_TIPPING_HAND_DARK_SKIN_TONE;
  Result[2260] := TEmoji.WOMAN_TIPPING_HAND_LIGHT_SKIN_TONE;
  Result[2261] := TEmoji.WOMAN_TIPPING_HAND_MEDIUM_SKIN_TONE;
  Result[2262] := TEmoji.WOMAN_TIPPING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[2263] := TEmoji.WOMAN_TIPPING_HAND_MEDIUM_LIGHT_SKIN_TONE;
  Result[2264] := TEmoji.WOMAN_VAMPIRE;
  Result[2265] := TEmoji.WOMAN_VAMPIRE_DARK_SKIN_TONE;
  Result[2266] := TEmoji.WOMAN_VAMPIRE_LIGHT_SKIN_TONE;
  Result[2267] := TEmoji.WOMAN_VAMPIRE_MEDIUM_SKIN_TONE;
  Result[2268] := TEmoji.WOMAN_VAMPIRE_MEDIUM_DARK_SKIN_TONE;
  Result[2269] := TEmoji.WOMAN_VAMPIRE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2270] := TEmoji.WOMAN_WALKING;
  Result[2271] := TEmoji.WOMAN_WALKING_FACING_RIGHT;
  Result[2272] := TEmoji.WOMAN_WALKING_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2273] := TEmoji.WOMAN_WALKING_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2274] := TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2275] := TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2276] := TEmoji.WOMAN_WALKING_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2277] := TEmoji.WOMAN_WALKING_DARK_SKIN_TONE;
  Result[2278] := TEmoji.WOMAN_WALKING_LIGHT_SKIN_TONE;
  Result[2279] := TEmoji.WOMAN_WALKING_MEDIUM_SKIN_TONE;
  Result[2280] := TEmoji.WOMAN_WALKING_MEDIUM_DARK_SKIN_TONE;
  Result[2281] := TEmoji.WOMAN_WALKING_MEDIUM_LIGHT_SKIN_TONE;
  Result[2282] := TEmoji.WOMAN_WEARING_TURBAN;
  Result[2283] := TEmoji.WOMAN_WEARING_TURBAN_DARK_SKIN_TONE;
  Result[2284] := TEmoji.WOMAN_WEARING_TURBAN_LIGHT_SKIN_TONE;
  Result[2285] := TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_SKIN_TONE;
  Result[2286] := TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_DARK_SKIN_TONE;
  Result[2287] := TEmoji.WOMAN_WEARING_TURBAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[2288] := TEmoji.WOMAN_WITH_HEADSCARF_DARK_SKIN_TONE;
  Result[2289] := TEmoji.WOMAN_WITH_HEADSCARF_LIGHT_SKIN_TONE;
  Result[2290] := TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_SKIN_TONE;
  Result[2291] := TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_DARK_SKIN_TONE;
  Result[2292] := TEmoji.WOMAN_WITH_HEADSCARF_MEDIUM_LIGHT_SKIN_TONE;
  Result[2293] := TEmoji.WOMAN_WITH_VEIL;
  Result[2294] := TEmoji.WOMAN_WITH_VEIL_DARK_SKIN_TONE;
  Result[2295] := TEmoji.WOMAN_WITH_VEIL_LIGHT_SKIN_TONE;
  Result[2296] := TEmoji.WOMAN_WITH_VEIL_MEDIUM_SKIN_TONE;
  Result[2297] := TEmoji.WOMAN_WITH_VEIL_MEDIUM_DARK_SKIN_TONE;
  Result[2298] := TEmoji.WOMAN_WITH_VEIL_MEDIUM_LIGHT_SKIN_TONE;
  Result[2299] := TEmoji.WOMAN_WITH_WHITE_CANE;
  Result[2300] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT;
  Result[2301] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_DARK_SKIN_TONE;
  Result[2302] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_LIGHT_SKIN_TONE;
  Result[2303] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_SKIN_TONE;
  Result[2304] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_DARK_SKIN_TONE;
  Result[2305] := TEmoji.WOMAN_WITH_WHITE_CANE_FACING_RIGHT_MEDIUM_LIGHT_SKIN_TONE;
  Result[2306] := TEmoji.WOMAN_WITH_WHITE_CANE_DARK_SKIN_TONE;
  Result[2307] := TEmoji.WOMAN_WITH_WHITE_CANE_LIGHT_SKIN_TONE;
  Result[2308] := TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_SKIN_TONE;
  Result[2309] := TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_DARK_SKIN_TONE;
  Result[2310] := TEmoji.WOMAN_WITH_WHITE_CANE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2311] := TEmoji.WOMAN_ZOMBIE;
  Result[2312] := TEmoji.WOMAN_BALD;
  Result[2313] := TEmoji.WOMAN_BEARD;
  Result[2314] := TEmoji.WOMAN_BLOND_HAIR;
  Result[2315] := TEmoji.WOMAN_CURLY_HAIR;
  Result[2316] := TEmoji.WOMAN_DARK_SKIN_TONE;
  Result[2317] := TEmoji.WOMAN_DARK_SKIN_TONE_BALD;
  Result[2318] := TEmoji.WOMAN_DARK_SKIN_TONE_BEARD;
  Result[2319] := TEmoji.WOMAN_DARK_SKIN_TONE_BLOND_HAIR;
  Result[2320] := TEmoji.WOMAN_DARK_SKIN_TONE_CURLY_HAIR;
  Result[2321] := TEmoji.WOMAN_DARK_SKIN_TONE_RED_HAIR;
  Result[2322] := TEmoji.WOMAN_DARK_SKIN_TONE_WHITE_HAIR;
  Result[2323] := TEmoji.WOMAN_LIGHT_SKIN_TONE;
  Result[2324] := TEmoji.WOMAN_LIGHT_SKIN_TONE_BALD;
  Result[2325] := TEmoji.WOMAN_LIGHT_SKIN_TONE_BEARD;
  Result[2326] := TEmoji.WOMAN_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[2327] := TEmoji.WOMAN_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[2328] := TEmoji.WOMAN_LIGHT_SKIN_TONE_RED_HAIR;
  Result[2329] := TEmoji.WOMAN_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[2330] := TEmoji.WOMAN_MEDIUM_SKIN_TONE;
  Result[2331] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_BALD;
  Result[2332] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_BEARD;
  Result[2333] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_BLOND_HAIR;
  Result[2334] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_CURLY_HAIR;
  Result[2335] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_RED_HAIR;
  Result[2336] := TEmoji.WOMAN_MEDIUM_SKIN_TONE_WHITE_HAIR;
  Result[2337] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE;
  Result[2338] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BALD;
  Result[2339] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BEARD;
  Result[2340] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_BLOND_HAIR;
  Result[2341] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_CURLY_HAIR;
  Result[2342] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_RED_HAIR;
  Result[2343] := TEmoji.WOMAN_MEDIUM_DARK_SKIN_TONE_WHITE_HAIR;
  Result[2344] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE;
  Result[2345] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BALD;
  Result[2346] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BEARD;
  Result[2347] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_BLOND_HAIR;
  Result[2348] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_CURLY_HAIR;
  Result[2349] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_RED_HAIR;
  Result[2350] := TEmoji.WOMAN_MEDIUM_LIGHT_SKIN_TONE_WHITE_HAIR;
  Result[2351] := TEmoji.WOMAN_RED_HAIR;
  Result[2352] := TEmoji.WOMAN_WHITE_HAIR;
  Result[2353] := TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE;
  Result[2354] := TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[2355] := TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[2356] := TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[2357] := TEmoji.WOMEN_HOLDING_HANDS_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2358] := TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE;
  Result[2359] := TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[2360] := TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[2361] := TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[2362] := TEmoji.WOMEN_HOLDING_HANDS_LIGHT_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2363] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE;
  Result[2364] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_DARK_SKIN_TONE;
  Result[2365] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[2366] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[2367] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2368] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE;
  Result[2369] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_DARK_SKIN_TONE;
  Result[2370] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[2371] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[2372] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_DARK_SKIN_TONE_MEDIUM_LIGHT_SKIN_TONE;
  Result[2373] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE;
  Result[2374] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_DARK_SKIN_TONE;
  Result[2375] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_LIGHT_SKIN_TONE;
  Result[2376] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_SKIN_TONE;
  Result[2377] := TEmoji.WOMEN_HOLDING_HANDS_MEDIUM_LIGHT_SKIN_TONE_MEDIUM_DARK_SKIN_TONE;
  Result[2378] := TEmoji.WOMEN_WITH_BUNNY_EARS;
  Result[2379] := TEmoji.WOMEN_WRESTLING;
  Result[2380] := TEmoji.WRITING_HAND_DARK_SKIN_TONE;
  Result[2381] := TEmoji.WRITING_HAND_LIGHT_SKIN_TONE;
  Result[2382] := TEmoji.WRITING_HAND_MEDIUM_SKIN_TONE;
  Result[2383] := TEmoji.WRITING_HAND_MEDIUM_DARK_SKIN_TONE;
  Result[2384] := TEmoji.WRITING_HAND_MEDIUM_LIGHT_SKIN_TONE;
end;

function GetAllEmojiNames: TArray<string>;
begin
  SetLength(Result, 2385);
  Result[0] := 'Mrs. Claus: dark skin tone';
  Result[1] := 'Mrs. Claus: light skin tone';
  Result[2] := 'Mrs. Claus: medium skin tone';
  Result[3] := 'Mrs. Claus: medium-dark skin tone';
  Result[4] := 'Mrs. Claus: medium-light skin tone';
  Result[5] := 'Mx Claus';
  Result[6] := 'Mx Claus: dark skin tone';
  Result[7] := 'Mx Claus: light skin tone';
  Result[8] := 'Mx Claus: medium skin tone';
  Result[9] := 'Mx Claus: medium-dark skin tone';
  Result[10] := 'Mx Claus: medium-light skin tone';
  Result[11] := 'OK hand: dark skin tone';
  Result[12] := 'OK hand: light skin tone';
  Result[13] := 'OK hand: medium skin tone';
  Result[14] := 'OK hand: medium-dark skin tone';
  Result[15] := 'OK hand: medium-light skin tone';
  Result[16] := 'Santa Claus: dark skin tone';
  Result[17] := 'Santa Claus: light skin tone';
  Result[18] := 'Santa Claus: medium skin tone';
  Result[19] := 'Santa Claus: medium-dark skin tone';
  Result[20] := 'Santa Claus: medium-light skin tone';
  Result[21] := 'artist';
  Result[22] := 'artist: dark skin tone';
  Result[23] := 'artist: light skin tone';
  Result[24] := 'artist: medium skin tone';
  Result[25] := 'artist: medium-dark skin tone';
  Result[26] := 'artist: medium-light skin tone';
  Result[27] := 'astronaut';
  Result[28] := 'astronaut: dark skin tone';
  Result[29] := 'astronaut: light skin tone';
  Result[30] := 'astronaut: medium skin tone';
  Result[31] := 'astronaut: medium-dark skin tone';
  Result[32] := 'astronaut: medium-light skin tone';
  Result[33] := 'baby angel: dark skin tone';
  Result[34] := 'baby angel: light skin tone';
  Result[35] := 'baby angel: medium skin tone';
  Result[36] := 'baby angel: medium-dark skin tone';
  Result[37] := 'baby angel: medium-light skin tone';
  Result[38] := 'baby: dark skin tone';
  Result[39] := 'baby: light skin tone';
  Result[40] := 'baby: medium skin tone';
  Result[41] := 'baby: medium-dark skin tone';
  Result[42] := 'baby: medium-light skin tone';
  Result[43] := 'backhand index pointing down: dark skin tone';
  Result[44] := 'backhand index pointing down: light skin tone';
  Result[45] := 'backhand index pointing down: medium skin tone';
  Result[46] := 'backhand index pointing down: medium-dark skin tone';
  Result[47] := 'backhand index pointing down: medium-light skin tone';
  Result[48] := 'backhand index pointing left: dark skin tone';
  Result[49] := 'backhand index pointing left: light skin tone';
  Result[50] := 'backhand index pointing left: medium skin tone';
  Result[51] := 'backhand index pointing left: medium-dark skin tone';
  Result[52] := 'backhand index pointing left: medium-light skin tone';
  Result[53] := 'backhand index pointing right: dark skin tone';
  Result[54] := 'backhand index pointing right: light skin tone';
  Result[55] := 'backhand index pointing right: medium skin tone';
  Result[56] := 'backhand index pointing right: medium-dark skin tone';
  Result[57] := 'backhand index pointing right: medium-light skin tone';
  Result[58] := 'backhand index pointing up: dark skin tone';
  Result[59] := 'backhand index pointing up: light skin tone';
  Result[60] := 'backhand index pointing up: medium skin tone';
  Result[61] := 'backhand index pointing up: medium-dark skin tone';
  Result[62] := 'backhand index pointing up: medium-light skin tone';
  Result[63] := 'black bird';
  Result[64] := 'black cat';
  Result[65] := 'boy: dark skin tone';
  Result[66] := 'boy: light skin tone';
  Result[67] := 'boy: medium skin tone';
  Result[68] := 'boy: medium-dark skin tone';
  Result[69] := 'boy: medium-light skin tone';
  Result[70] := 'breast-feeding: dark skin tone';
  Result[71] := 'breast-feeding: light skin tone';
  Result[72] := 'breast-feeding: medium skin tone';
  Result[73] := 'breast-feeding: medium-dark skin tone';
  Result[74] := 'breast-feeding: medium-light skin tone';
  Result[75] := 'broken chain';
  Result[76] := 'brown mushroom';
  Result[77] := 'call me hand: dark skin tone';
  Result[78] := 'call me hand: light skin tone';
  Result[79] := 'call me hand: medium skin tone';
  Result[80] := 'call me hand: medium-dark skin tone';
  Result[81] := 'call me hand: medium-light skin tone';
  Result[82] := 'child: dark skin tone';
  Result[83] := 'child: light skin tone';
  Result[84] := 'child: medium skin tone';
  Result[85] := 'child: medium-dark skin tone';
  Result[86] := 'child: medium-light skin tone';
  Result[87] := 'clapping hands: dark skin tone';
  Result[88] := 'clapping hands: light skin tone';
  Result[89] := 'clapping hands: medium skin tone';
  Result[90] := 'clapping hands: medium-dark skin tone';
  Result[91] := 'clapping hands: medium-light skin tone';
  Result[92] := 'construction worker: dark skin tone';
  Result[93] := 'construction worker: light skin tone';
  Result[94] := 'construction worker: medium skin tone';
  Result[95] := 'construction worker: medium-dark skin tone';
  Result[96] := 'construction worker: medium-light skin tone';
  Result[97] := 'cook';
  Result[98] := 'cook: dark skin tone';
  Result[99] := 'cook: light skin tone';
  Result[100] := 'cook: medium skin tone';
  Result[101] := 'cook: medium-dark skin tone';
  Result[102] := 'cook: medium-light skin tone';
  Result[103] := 'couple with heart: dark skin tone';
  Result[104] := 'couple with heart: light skin tone';
  Result[105] := 'couple with heart: man, man';
  Result[106] := 'couple with heart: man, man, dark skin tone';
  Result[107] := 'couple with heart: man, man, dark skin tone, light skin tone';
  Result[108] := 'couple with heart: man, man, dark skin tone, medium skin tone';
  Result[109] := 'couple with heart: man, man, dark skin tone, medium-dark skin tone';
  Result[110] := 'couple with heart: man, man, dark skin tone, medium-light skin tone';
  Result[111] := 'couple with heart: man, man, light skin tone';
  Result[112] := 'couple with heart: man, man, light skin tone, dark skin tone';
  Result[113] := 'couple with heart: man, man, light skin tone, medium skin tone';
  Result[114] := 'couple with heart: man, man, light skin tone, medium-dark skin tone';
  Result[115] := 'couple with heart: man, man, light skin tone, medium-light skin tone';
  Result[116] := 'couple with heart: man, man, medium skin tone';
  Result[117] := 'couple with heart: man, man, medium skin tone, dark skin tone';
  Result[118] := 'couple with heart: man, man, medium skin tone, light skin tone';
  Result[119] := 'couple with heart: man, man, medium skin tone, medium-dark skin tone';
  Result[120] := 'couple with heart: man, man, medium skin tone, medium-light skin tone';
  Result[121] := 'couple with heart: man, man, medium-dark skin tone';
  Result[122] := 'couple with heart: man, man, medium-dark skin tone, dark skin tone';
  Result[123] := 'couple with heart: man, man, medium-dark skin tone, light skin tone';
  Result[124] := 'couple with heart: man, man, medium-dark skin tone, medium skin tone';
  Result[125] := 'couple with heart: man, man, medium-dark skin tone, medium-light skin tone';
  Result[126] := 'couple with heart: man, man, medium-light skin tone';
  Result[127] := 'couple with heart: man, man, medium-light skin tone, dark skin tone';
  Result[128] := 'couple with heart: man, man, medium-light skin tone, light skin tone';
  Result[129] := 'couple with heart: man, man, medium-light skin tone, medium skin tone';
  Result[130] := 'couple with heart: man, man, medium-light skin tone, medium-dark skin tone';
  Result[131] := 'couple with heart: medium skin tone';
  Result[132] := 'couple with heart: medium-dark skin tone';
  Result[133] := 'couple with heart: medium-light skin tone';
  Result[134] := 'couple with heart: person, person, dark skin tone, light skin tone';
  Result[135] := 'couple with heart: person, person, dark skin tone, medium skin tone';
  Result[136] := 'couple with heart: person, person, dark skin tone, medium-dark skin tone';
  Result[137] := 'couple with heart: person, person, dark skin tone, medium-light skin tone';
  Result[138] := 'couple with heart: person, person, light skin tone, dark skin tone';
  Result[139] := 'couple with heart: person, person, light skin tone, medium skin tone';
  Result[140] := 'couple with heart: person, person, light skin tone, medium-dark skin tone';
  Result[141] := 'couple with heart: person, person, light skin tone, medium-light skin tone';
  Result[142] := 'couple with heart: person, person, medium skin tone, dark skin tone';
  Result[143] := 'couple with heart: person, person, medium skin tone, light skin tone';
  Result[144] := 'couple with heart: person, person, medium skin tone, medium-dark skin tone';
  Result[145] := 'couple with heart: person, person, medium skin tone, medium-light skin tone';
  Result[146] := 'couple with heart: person, person, medium-dark skin tone, dark skin tone';
  Result[147] := 'couple with heart: person, person, medium-dark skin tone, light skin tone';
  Result[148] := 'couple with heart: person, person, medium-dark skin tone, medium skin tone';
  Result[149] := 'couple with heart: person, person, medium-dark skin tone, medium-light skin tone';
  Result[150] := 'couple with heart: person, person, medium-light skin tone, dark skin tone';
  Result[151] := 'couple with heart: person, person, medium-light skin tone, light skin tone';
  Result[152] := 'couple with heart: person, person, medium-light skin tone, medium skin tone';
  Result[153] := 'couple with heart: person, person, medium-light skin tone, medium-dark skin tone';
  Result[154] := 'couple with heart: woman, man';
  Result[155] := 'couple with heart: woman, man, dark skin tone';
  Result[156] := 'couple with heart: woman, man, dark skin tone, light skin tone';
  Result[157] := 'couple with heart: woman, man, dark skin tone, medium skin tone';
  Result[158] := 'couple with heart: woman, man, dark skin tone, medium-dark skin tone';
  Result[159] := 'couple with heart: woman, man, dark skin tone, medium-light skin tone';
  Result[160] := 'couple with heart: woman, man, light skin tone';
  Result[161] := 'couple with heart: woman, man, light skin tone, dark skin tone';
  Result[162] := 'couple with heart: woman, man, light skin tone, medium skin tone';
  Result[163] := 'couple with heart: woman, man, light skin tone, medium-dark skin tone';
  Result[164] := 'couple with heart: woman, man, light skin tone, medium-light skin tone';
  Result[165] := 'couple with heart: woman, man, medium skin tone';
  Result[166] := 'couple with heart: woman, man, medium skin tone, dark skin tone';
  Result[167] := 'couple with heart: woman, man, medium skin tone, light skin tone';
  Result[168] := 'couple with heart: woman, man, medium skin tone, medium-dark skin tone';
  Result[169] := 'couple with heart: woman, man, medium skin tone, medium-light skin tone';
  Result[170] := 'couple with heart: woman, man, medium-dark skin tone';
  Result[171] := 'couple with heart: woman, man, medium-dark skin tone, dark skin tone';
  Result[172] := 'couple with heart: woman, man, medium-dark skin tone, light skin tone';
  Result[173] := 'couple with heart: woman, man, medium-dark skin tone, medium skin tone';
  Result[174] := 'couple with heart: woman, man, medium-dark skin tone, medium-light skin tone';
  Result[175] := 'couple with heart: woman, man, medium-light skin tone';
  Result[176] := 'couple with heart: woman, man, medium-light skin tone, dark skin tone';
  Result[177] := 'couple with heart: woman, man, medium-light skin tone, light skin tone';
  Result[178] := 'couple with heart: woman, man, medium-light skin tone, medium skin tone';
  Result[179] := 'couple with heart: woman, man, medium-light skin tone, medium-dark skin tone';
  Result[180] := 'couple with heart: woman, woman';
  Result[181] := 'couple with heart: woman, woman, dark skin tone';
  Result[182] := 'couple with heart: woman, woman, dark skin tone, light skin tone';
  Result[183] := 'couple with heart: woman, woman, dark skin tone, medium skin tone';
  Result[184] := 'couple with heart: woman, woman, dark skin tone, medium-dark skin tone';
  Result[185] := 'couple with heart: woman, woman, dark skin tone, medium-light skin tone';
  Result[186] := 'couple with heart: woman, woman, light skin tone';
  Result[187] := 'couple with heart: woman, woman, light skin tone, dark skin tone';
  Result[188] := 'couple with heart: woman, woman, light skin tone, medium skin tone';
  Result[189] := 'couple with heart: woman, woman, light skin tone, medium-dark skin tone';
  Result[190] := 'couple with heart: woman, woman, light skin tone, medium-light skin tone';
  Result[191] := 'couple with heart: woman, woman, medium skin tone';
  Result[192] := 'couple with heart: woman, woman, medium skin tone, dark skin tone';
  Result[193] := 'couple with heart: woman, woman, medium skin tone, light skin tone';
  Result[194] := 'couple with heart: woman, woman, medium skin tone, medium-dark skin tone';
  Result[195] := 'couple with heart: woman, woman, medium skin tone, medium-light skin tone';
  Result[196] := 'couple with heart: woman, woman, medium-dark skin tone';
  Result[197] := 'couple with heart: woman, woman, medium-dark skin tone, dark skin tone';
  Result[198] := 'couple with heart: woman, woman, medium-dark skin tone, light skin tone';
  Result[199] := 'couple with heart: woman, woman, medium-dark skin tone, medium skin tone';
  Result[200] := 'couple with heart: woman, woman, medium-dark skin tone, medium-light skin tone';
  Result[201] := 'couple with heart: woman, woman, medium-light skin tone';
  Result[202] := 'couple with heart: woman, woman, medium-light skin tone, dark skin tone';
  Result[203] := 'couple with heart: woman, woman, medium-light skin tone, light skin tone';
  Result[204] := 'couple with heart: woman, woman, medium-light skin tone, medium skin tone';
  Result[205] := 'couple with heart: woman, woman, medium-light skin tone, medium-dark skin tone';
  Result[206] := 'crossed fingers: dark skin tone';
  Result[207] := 'crossed fingers: light skin tone';
  Result[208] := 'crossed fingers: medium skin tone';
  Result[209] := 'crossed fingers: medium-dark skin tone';
  Result[210] := 'crossed fingers: medium-light skin tone';
  Result[211] := 'deaf man';
  Result[212] := 'deaf man: dark skin tone';
  Result[213] := 'deaf man: light skin tone';
  Result[214] := 'deaf man: medium skin tone';
  Result[215] := 'deaf man: medium-dark skin tone';
  Result[216] := 'deaf man: medium-light skin tone';
  Result[217] := 'deaf person: dark skin tone';
  Result[218] := 'deaf person: light skin tone';
  Result[219] := 'deaf person: medium skin tone';
  Result[220] := 'deaf person: medium-dark skin tone';
  Result[221] := 'deaf person: medium-light skin tone';
  Result[222] := 'deaf woman';
  Result[223] := 'deaf woman: dark skin tone';
  Result[224] := 'deaf woman: light skin tone';
  Result[225] := 'deaf woman: medium skin tone';
  Result[226] := 'deaf woman: medium-dark skin tone';
  Result[227] := 'deaf woman: medium-light skin tone';
  Result[228] := 'detective: dark skin tone';
  Result[229] := 'detective: light skin tone';
  Result[230] := 'detective: medium skin tone';
  Result[231] := 'detective: medium-dark skin tone';
  Result[232] := 'detective: medium-light skin tone';
  Result[233] := 'ear with hearing aid: dark skin tone';
  Result[234] := 'ear with hearing aid: light skin tone';
  Result[235] := 'ear with hearing aid: medium skin tone';
  Result[236] := 'ear with hearing aid: medium-dark skin tone';
  Result[237] := 'ear with hearing aid: medium-light skin tone';
  Result[238] := 'ear: dark skin tone';
  Result[239] := 'ear: light skin tone';
  Result[240] := 'ear: medium skin tone';
  Result[241] := 'ear: medium-dark skin tone';
  Result[242] := 'ear: medium-light skin tone';
  Result[243] := 'elf: dark skin tone';
  Result[244] := 'elf: light skin tone';
  Result[245] := 'elf: medium skin tone';
  Result[246] := 'elf: medium-dark skin tone';
  Result[247] := 'elf: medium-light skin tone';
  Result[248] := 'eye in speech bubble';
  Result[249] := 'face exhaling';
  Result[250] := 'face in clouds';
  Result[251] := 'face with spiral eyes';
  Result[252] := 'factory worker';
  Result[253] := 'factory worker: dark skin tone';
  Result[254] := 'factory worker: light skin tone';
  Result[255] := 'factory worker: medium skin tone';
  Result[256] := 'factory worker: medium-dark skin tone';
  Result[257] := 'factory worker: medium-light skin tone';
  Result[258] := 'fairy: dark skin tone';
  Result[259] := 'fairy: light skin tone';
  Result[260] := 'fairy: medium skin tone';
  Result[261] := 'fairy: medium-dark skin tone';
  Result[262] := 'fairy: medium-light skin tone';
  Result[263] := 'family: adult, adult, child';
  Result[264] := 'family: adult, adult, child, child';
  Result[265] := 'family: adult, child';
  Result[266] := 'family: adult, child, child';
  Result[267] := 'family: man, boy';
  Result[268] := 'family: man, boy, boy';
  Result[269] := 'family: man, girl';
  Result[270] := 'family: man, girl, boy';
  Result[271] := 'family: man, girl, girl';
  Result[272] := 'family: man, man, boy';
  Result[273] := 'family: man, man, boy, boy';
  Result[274] := 'family: man, man, girl';
  Result[275] := 'family: man, man, girl, boy';
  Result[276] := 'family: man, man, girl, girl';
  Result[277] := 'family: man, woman, boy';
  Result[278] := 'family: man, woman, boy, boy';
  Result[279] := 'family: man, woman, girl';
  Result[280] := 'family: man, woman, girl, boy';
  Result[281] := 'family: man, woman, girl, girl';
  Result[282] := 'family: woman, boy';
  Result[283] := 'family: woman, boy, boy';
  Result[284] := 'family: woman, girl';
  Result[285] := 'family: woman, girl, boy';
  Result[286] := 'family: woman, girl, girl';
  Result[287] := 'family: woman, woman, boy';
  Result[288] := 'family: woman, woman, boy, boy';
  Result[289] := 'family: woman, woman, girl';
  Result[290] := 'family: woman, woman, girl, boy';
  Result[291] := 'family: woman, woman, girl, girl';
  Result[292] := 'farmer';
  Result[293] := 'farmer: dark skin tone';
  Result[294] := 'farmer: light skin tone';
  Result[295] := 'farmer: medium skin tone';
  Result[296] := 'farmer: medium-dark skin tone';
  Result[297] := 'farmer: medium-light skin tone';
  Result[298] := 'firefighter';
  Result[299] := 'firefighter: dark skin tone';
  Result[300] := 'firefighter: light skin tone';
  Result[301] := 'firefighter: medium skin tone';
  Result[302] := 'firefighter: medium-dark skin tone';
  Result[303] := 'firefighter: medium-light skin tone';
  Result[304] := 'flag: Afghanistan';
  Result[305] := 'flag: Albania';
  Result[306] := 'flag: Algeria';
  Result[307] := 'flag: American Samoa';
  Result[308] := 'flag: Andorra';
  Result[309] := 'flag: Angola';
  Result[310] := 'flag: Anguilla';
  Result[311] := 'flag: Antarctica';
  Result[312] := 'flag: Antigua & Barbuda';
  Result[313] := 'flag: Argentina';
  Result[314] := 'flag: Armenia';
  Result[315] := 'flag: Aruba';
  Result[316] := 'flag: Ascension Island';
  Result[317] := 'flag: Australia';
  Result[318] := 'flag: Austria';
  Result[319] := 'flag: Azerbaijan';
  Result[320] := 'flag: Bahamas';
  Result[321] := 'flag: Bahrain';
  Result[322] := 'flag: Bangladesh';
  Result[323] := 'flag: Barbados';
  Result[324] := 'flag: Belarus';
  Result[325] := 'flag: Belgium';
  Result[326] := 'flag: Belize';
  Result[327] := 'flag: Benin';
  Result[328] := 'flag: Bermuda';
  Result[329] := 'flag: Bhutan';
  Result[330] := 'flag: Bolivia';
  Result[331] := 'flag: Bosnia & Herzegovina';
  Result[332] := 'flag: Botswana';
  Result[333] := 'flag: Bouvet Island';
  Result[334] := 'flag: Brazil';
  Result[335] := 'flag: British Indian Ocean Territory';
  Result[336] := 'flag: British Virgin Islands';
  Result[337] := 'flag: Brunei';
  Result[338] := 'flag: Bulgaria';
  Result[339] := 'flag: Burkina Faso';
  Result[340] := 'flag: Burundi';
  Result[341] := 'flag: Cambodia';
  Result[342] := 'flag: Cameroon';
  Result[343] := 'flag: Canada';
  Result[344] := 'flag: Canary Islands';
  Result[345] := 'flag: Cape Verde';
  Result[346] := 'flag: Caribbean Netherlands';
  Result[347] := 'flag: Cayman Islands';
  Result[348] := 'flag: Central African Republic';
  Result[349] := 'flag: Ceuta & Melilla';
  Result[350] := 'flag: Chad';
  Result[351] := 'flag: Chile';
  Result[352] := 'flag: China';
  Result[353] := 'flag: Christmas Island';
  Result[354] := 'flag: Clipperton Island';
  Result[355] := 'flag: Cocos (Keeling) Islands';
  Result[356] := 'flag: Colombia';
  Result[357] := 'flag: Comoros';
  Result[358] := 'flag: Congo - Brazzaville';
  Result[359] := 'flag: Congo - Kinshasa';
  Result[360] := 'flag: Cook Islands';
  Result[361] := 'flag: Costa Rica';
  Result[362] := 'flag: Croatia';
  Result[363] := 'flag: Cuba';
  Result[364] := 'flag: Curaçao';
  Result[365] := 'flag: Cyprus';
  Result[366] := 'flag: Czechia';
  Result[367] := 'flag: Côte d’Ivoire';
  Result[368] := 'flag: Denmark';
  Result[369] := 'flag: Diego Garcia';
  Result[370] := 'flag: Djibouti';
  Result[371] := 'flag: Dominica';
  Result[372] := 'flag: Dominican Republic';
  Result[373] := 'flag: Ecuador';
  Result[374] := 'flag: Egypt';
  Result[375] := 'flag: El Salvador';
  Result[376] := 'flag: England';
  Result[377] := 'flag: Equatorial Guinea';
  Result[378] := 'flag: Eritrea';
  Result[379] := 'flag: Estonia';
  Result[380] := 'flag: Eswatini';
  Result[381] := 'flag: Ethiopia';
  Result[382] := 'flag: European Union';
  Result[383] := 'flag: Falkland Islands';
  Result[384] := 'flag: Faroe Islands';
  Result[385] := 'flag: Fiji';
  Result[386] := 'flag: Finland';
  Result[387] := 'flag: France';
  Result[388] := 'flag: French Guiana';
  Result[389] := 'flag: French Polynesia';
  Result[390] := 'flag: French Southern Territories';
  Result[391] := 'flag: Gabon';
  Result[392] := 'flag: Gambia';
  Result[393] := 'flag: Georgia';
  Result[394] := 'flag: Germany';
  Result[395] := 'flag: Ghana';
  Result[396] := 'flag: Gibraltar';
  Result[397] := 'flag: Greece';
  Result[398] := 'flag: Greenland';
  Result[399] := 'flag: Grenada';
  Result[400] := 'flag: Guadeloupe';
  Result[401] := 'flag: Guam';
  Result[402] := 'flag: Guatemala';
  Result[403] := 'flag: Guernsey';
  Result[404] := 'flag: Guinea';
  Result[405] := 'flag: Guinea-Bissau';
  Result[406] := 'flag: Guyana';
  Result[407] := 'flag: Haiti';
  Result[408] := 'flag: Heard & McDonald Islands';
  Result[409] := 'flag: Honduras';
  Result[410] := 'flag: Hong Kong SAR China';
  Result[411] := 'flag: Hungary';
  Result[412] := 'flag: Iceland';
  Result[413] := 'flag: India';
  Result[414] := 'flag: Indonesia';
  Result[415] := 'flag: Iran';
  Result[416] := 'flag: Iraq';
  Result[417] := 'flag: Ireland';
  Result[418] := 'flag: Isle of Man';
  Result[419] := 'flag: Israel';
  Result[420] := 'flag: Italy';
  Result[421] := 'flag: Jamaica';
  Result[422] := 'flag: Japan';
  Result[423] := 'flag: Jersey';
  Result[424] := 'flag: Jordan';
  Result[425] := 'flag: Kazakhstan';
  Result[426] := 'flag: Kenya';
  Result[427] := 'flag: Kiribati';
  Result[428] := 'flag: Kosovo';
  Result[429] := 'flag: Kuwait';
  Result[430] := 'flag: Kyrgyzstan';
  Result[431] := 'flag: Laos';
  Result[432] := 'flag: Latvia';
  Result[433] := 'flag: Lebanon';
  Result[434] := 'flag: Lesotho';
  Result[435] := 'flag: Liberia';
  Result[436] := 'flag: Libya';
  Result[437] := 'flag: Liechtenstein';
  Result[438] := 'flag: Lithuania';
  Result[439] := 'flag: Luxembourg';
  Result[440] := 'flag: Macao SAR China';
  Result[441] := 'flag: Madagascar';
  Result[442] := 'flag: Malawi';
  Result[443] := 'flag: Malaysia';
  Result[444] := 'flag: Maldives';
  Result[445] := 'flag: Mali';
  Result[446] := 'flag: Malta';
  Result[447] := 'flag: Marshall Islands';
  Result[448] := 'flag: Martinique';
  Result[449] := 'flag: Mauritania';
  Result[450] := 'flag: Mauritius';
  Result[451] := 'flag: Mayotte';
  Result[452] := 'flag: Mexico';
  Result[453] := 'flag: Micronesia';
  Result[454] := 'flag: Moldova';
  Result[455] := 'flag: Monaco';
  Result[456] := 'flag: Mongolia';
  Result[457] := 'flag: Montenegro';
  Result[458] := 'flag: Montserrat';
  Result[459] := 'flag: Morocco';
  Result[460] := 'flag: Mozambique';
  Result[461] := 'flag: Myanmar (Burma)';
  Result[462] := 'flag: Namibia';
  Result[463] := 'flag: Nauru';
  Result[464] := 'flag: Nepal';
  Result[465] := 'flag: Netherlands';
  Result[466] := 'flag: New Caledonia';
  Result[467] := 'flag: New Zealand';
  Result[468] := 'flag: Nicaragua';
  Result[469] := 'flag: Niger';
  Result[470] := 'flag: Nigeria';
  Result[471] := 'flag: Niue';
  Result[472] := 'flag: Norfolk Island';
  Result[473] := 'flag: North Korea';
  Result[474] := 'flag: North Macedonia';
  Result[475] := 'flag: Northern Mariana Islands';
  Result[476] := 'flag: Norway';
  Result[477] := 'flag: Oman';
  Result[478] := 'flag: Pakistan';
  Result[479] := 'flag: Palau';
  Result[480] := 'flag: Palestinian Territories';
  Result[481] := 'flag: Panama';
  Result[482] := 'flag: Papua New Guinea';
  Result[483] := 'flag: Paraguay';
  Result[484] := 'flag: Peru';
  Result[485] := 'flag: Philippines';
  Result[486] := 'flag: Pitcairn Islands';
  Result[487] := 'flag: Poland';
  Result[488] := 'flag: Portugal';
  Result[489] := 'flag: Puerto Rico';
  Result[490] := 'flag: Qatar';
  Result[491] := 'flag: Romania';
  Result[492] := 'flag: Russia';
  Result[493] := 'flag: Rwanda';
  Result[494] := 'flag: Réunion';
  Result[495] := 'flag: Samoa';
  Result[496] := 'flag: San Marino';
  Result[497] := 'flag: Sark';
  Result[498] := 'flag: Saudi Arabia';
  Result[499] := 'flag: Scotland';
  Result[500] := 'flag: Senegal';
  Result[501] := 'flag: Serbia';
  Result[502] := 'flag: Seychelles';
  Result[503] := 'flag: Sierra Leone';
  Result[504] := 'flag: Singapore';
  Result[505] := 'flag: Sint Maarten';
  Result[506] := 'flag: Slovakia';
  Result[507] := 'flag: Slovenia';
  Result[508] := 'flag: Solomon Islands';
  Result[509] := 'flag: Somalia';
  Result[510] := 'flag: South Africa';
  Result[511] := 'flag: South Georgia & South Sandwich Islands';
  Result[512] := 'flag: South Korea';
  Result[513] := 'flag: South Sudan';
  Result[514] := 'flag: Spain';
  Result[515] := 'flag: Sri Lanka';
  Result[516] := 'flag: St. Barthélemy';
  Result[517] := 'flag: St. Helena';
  Result[518] := 'flag: St. Kitts & Nevis';
  Result[519] := 'flag: St. Lucia';
  Result[520] := 'flag: St. Martin';
  Result[521] := 'flag: St. Pierre & Miquelon';
  Result[522] := 'flag: St. Vincent & Grenadines';
  Result[523] := 'flag: Sudan';
  Result[524] := 'flag: Suriname';
  Result[525] := 'flag: Svalbard & Jan Mayen';
  Result[526] := 'flag: Sweden';
  Result[527] := 'flag: Switzerland';
  Result[528] := 'flag: Syria';
  Result[529] := 'flag: São Tomé & Príncipe';
  Result[530] := 'flag: Taiwan';
  Result[531] := 'flag: Tajikistan';
  Result[532] := 'flag: Tanzania';
  Result[533] := 'flag: Thailand';
  Result[534] := 'flag: Timor-Leste';
  Result[535] := 'flag: Togo';
  Result[536] := 'flag: Tokelau';
  Result[537] := 'flag: Tonga';
  Result[538] := 'flag: Trinidad & Tobago';
  Result[539] := 'flag: Tristan da Cunha';
  Result[540] := 'flag: Tunisia';
  Result[541] := 'flag: Turkmenistan';
  Result[542] := 'flag: Turks & Caicos Islands';
  Result[543] := 'flag: Tuvalu';
  Result[544] := 'flag: Türkiye';
  Result[545] := 'flag: U.S. Outlying Islands';
  Result[546] := 'flag: U.S. Virgin Islands';
  Result[547] := 'flag: Uganda';
  Result[548] := 'flag: Ukraine';
  Result[549] := 'flag: United Arab Emirates';
  Result[550] := 'flag: United Kingdom';
  Result[551] := 'flag: United Nations';
  Result[552] := 'flag: United States';
  Result[553] := 'flag: Uruguay';
  Result[554] := 'flag: Uzbekistan';
  Result[555] := 'flag: Vanuatu';
  Result[556] := 'flag: Vatican City';
  Result[557] := 'flag: Venezuela';
  Result[558] := 'flag: Vietnam';
  Result[559] := 'flag: Wales';
  Result[560] := 'flag: Wallis & Futuna';
  Result[561] := 'flag: Western Sahara';
  Result[562] := 'flag: Yemen';
  Result[563] := 'flag: Zambia';
  Result[564] := 'flag: Zimbabwe';
  Result[565] := 'flag: Åland Islands';
  Result[566] := 'flexed biceps: dark skin tone';
  Result[567] := 'flexed biceps: light skin tone';
  Result[568] := 'flexed biceps: medium skin tone';
  Result[569] := 'flexed biceps: medium-dark skin tone';
  Result[570] := 'flexed biceps: medium-light skin tone';
  Result[571] := 'folded hands: dark skin tone';
  Result[572] := 'folded hands: light skin tone';
  Result[573] := 'folded hands: medium skin tone';
  Result[574] := 'folded hands: medium-dark skin tone';
  Result[575] := 'folded hands: medium-light skin tone';
  Result[576] := 'foot: dark skin tone';
  Result[577] := 'foot: light skin tone';
  Result[578] := 'foot: medium skin tone';
  Result[579] := 'foot: medium-dark skin tone';
  Result[580] := 'foot: medium-light skin tone';
  Result[581] := 'girl: dark skin tone';
  Result[582] := 'girl: light skin tone';
  Result[583] := 'girl: medium skin tone';
  Result[584] := 'girl: medium-dark skin tone';
  Result[585] := 'girl: medium-light skin tone';
  Result[586] := 'guard: dark skin tone';
  Result[587] := 'guard: light skin tone';
  Result[588] := 'guard: medium skin tone';
  Result[589] := 'guard: medium-dark skin tone';
  Result[590] := 'guard: medium-light skin tone';
  Result[591] := 'hand with fingers splayed: dark skin tone';
  Result[592] := 'hand with fingers splayed: light skin tone';
  Result[593] := 'hand with fingers splayed: medium skin tone';
  Result[594] := 'hand with fingers splayed: medium-dark skin tone';
  Result[595] := 'hand with fingers splayed: medium-light skin tone';
  Result[596] := 'hand with index finger and thumb crossed: dark skin tone';
  Result[597] := 'hand with index finger and thumb crossed: light skin tone';
  Result[598] := 'hand with index finger and thumb crossed: medium skin tone';
  Result[599] := 'hand with index finger and thumb crossed: medium-dark skin tone';
  Result[600] := 'hand with index finger and thumb crossed: medium-light skin tone';
  Result[601] := 'handshake: dark skin tone';
  Result[602] := 'handshake: dark skin tone, light skin tone';
  Result[603] := 'handshake: dark skin tone, medium skin tone';
  Result[604] := 'handshake: dark skin tone, medium-dark skin tone';
  Result[605] := 'handshake: dark skin tone, medium-light skin tone';
  Result[606] := 'handshake: light skin tone';
  Result[607] := 'handshake: light skin tone, dark skin tone';
  Result[608] := 'handshake: light skin tone, medium skin tone';
  Result[609] := 'handshake: light skin tone, medium-dark skin tone';
  Result[610] := 'handshake: light skin tone, medium-light skin tone';
  Result[611] := 'handshake: medium skin tone';
  Result[612] := 'handshake: medium skin tone, dark skin tone';
  Result[613] := 'handshake: medium skin tone, light skin tone';
  Result[614] := 'handshake: medium skin tone, medium-dark skin tone';
  Result[615] := 'handshake: medium skin tone, medium-light skin tone';
  Result[616] := 'handshake: medium-dark skin tone';
  Result[617] := 'handshake: medium-dark skin tone, dark skin tone';
  Result[618] := 'handshake: medium-dark skin tone, light skin tone';
  Result[619] := 'handshake: medium-dark skin tone, medium skin tone';
  Result[620] := 'handshake: medium-dark skin tone, medium-light skin tone';
  Result[621] := 'handshake: medium-light skin tone';
  Result[622] := 'handshake: medium-light skin tone, dark skin tone';
  Result[623] := 'handshake: medium-light skin tone, light skin tone';
  Result[624] := 'handshake: medium-light skin tone, medium skin tone';
  Result[625] := 'handshake: medium-light skin tone, medium-dark skin tone';
  Result[626] := 'head shaking horizontally';
  Result[627] := 'head shaking vertically';
  Result[628] := 'health worker';
  Result[629] := 'health worker: dark skin tone';
  Result[630] := 'health worker: light skin tone';
  Result[631] := 'health worker: medium skin tone';
  Result[632] := 'health worker: medium-dark skin tone';
  Result[633] := 'health worker: medium-light skin tone';
  Result[634] := 'heart hands: dark skin tone';
  Result[635] := 'heart hands: light skin tone';
  Result[636] := 'heart hands: medium skin tone';
  Result[637] := 'heart hands: medium-dark skin tone';
  Result[638] := 'heart hands: medium-light skin tone';
  Result[639] := 'heart on fire';
  Result[640] := 'horse racing: dark skin tone';
  Result[641] := 'horse racing: light skin tone';
  Result[642] := 'horse racing: medium skin tone';
  Result[643] := 'horse racing: medium-dark skin tone';
  Result[644] := 'horse racing: medium-light skin tone';
  Result[645] := 'index pointing at the viewer: dark skin tone';
  Result[646] := 'index pointing at the viewer: light skin tone';
  Result[647] := 'index pointing at the viewer: medium skin tone';
  Result[648] := 'index pointing at the viewer: medium-dark skin tone';
  Result[649] := 'index pointing at the viewer: medium-light skin tone';
  Result[650] := 'index pointing up: dark skin tone';
  Result[651] := 'index pointing up: light skin tone';
  Result[652] := 'index pointing up: medium skin tone';
  Result[653] := 'index pointing up: medium-dark skin tone';
  Result[654] := 'index pointing up: medium-light skin tone';
  Result[655] := 'judge';
  Result[656] := 'judge: dark skin tone';
  Result[657] := 'judge: light skin tone';
  Result[658] := 'judge: medium skin tone';
  Result[659] := 'judge: medium-dark skin tone';
  Result[660] := 'judge: medium-light skin tone';
  Result[661] := 'kiss: dark skin tone';
  Result[662] := 'kiss: light skin tone';
  Result[663] := 'kiss: man, man';
  Result[664] := 'kiss: man, man, dark skin tone';
  Result[665] := 'kiss: man, man, dark skin tone, light skin tone';
  Result[666] := 'kiss: man, man, dark skin tone, medium skin tone';
  Result[667] := 'kiss: man, man, dark skin tone, medium-dark skin tone';
  Result[668] := 'kiss: man, man, dark skin tone, medium-light skin tone';
  Result[669] := 'kiss: man, man, light skin tone';
  Result[670] := 'kiss: man, man, light skin tone, dark skin tone';
  Result[671] := 'kiss: man, man, light skin tone, medium skin tone';
  Result[672] := 'kiss: man, man, light skin tone, medium-dark skin tone';
  Result[673] := 'kiss: man, man, light skin tone, medium-light skin tone';
  Result[674] := 'kiss: man, man, medium skin tone';
  Result[675] := 'kiss: man, man, medium skin tone, dark skin tone';
  Result[676] := 'kiss: man, man, medium skin tone, light skin tone';
  Result[677] := 'kiss: man, man, medium skin tone, medium-dark skin tone';
  Result[678] := 'kiss: man, man, medium skin tone, medium-light skin tone';
  Result[679] := 'kiss: man, man, medium-dark skin tone';
  Result[680] := 'kiss: man, man, medium-dark skin tone, dark skin tone';
  Result[681] := 'kiss: man, man, medium-dark skin tone, light skin tone';
  Result[682] := 'kiss: man, man, medium-dark skin tone, medium skin tone';
  Result[683] := 'kiss: man, man, medium-dark skin tone, medium-light skin tone';
  Result[684] := 'kiss: man, man, medium-light skin tone';
  Result[685] := 'kiss: man, man, medium-light skin tone, dark skin tone';
  Result[686] := 'kiss: man, man, medium-light skin tone, light skin tone';
  Result[687] := 'kiss: man, man, medium-light skin tone, medium skin tone';
  Result[688] := 'kiss: man, man, medium-light skin tone, medium-dark skin tone';
  Result[689] := 'kiss: medium skin tone';
  Result[690] := 'kiss: medium-dark skin tone';
  Result[691] := 'kiss: medium-light skin tone';
  Result[692] := 'kiss: person, person, dark skin tone, light skin tone';
  Result[693] := 'kiss: person, person, dark skin tone, medium skin tone';
  Result[694] := 'kiss: person, person, dark skin tone, medium-dark skin tone';
  Result[695] := 'kiss: person, person, dark skin tone, medium-light skin tone';
  Result[696] := 'kiss: person, person, light skin tone, dark skin tone';
  Result[697] := 'kiss: person, person, light skin tone, medium skin tone';
  Result[698] := 'kiss: person, person, light skin tone, medium-dark skin tone';
  Result[699] := 'kiss: person, person, light skin tone, medium-light skin tone';
  Result[700] := 'kiss: person, person, medium skin tone, dark skin tone';
  Result[701] := 'kiss: person, person, medium skin tone, light skin tone';
  Result[702] := 'kiss: person, person, medium skin tone, medium-dark skin tone';
  Result[703] := 'kiss: person, person, medium skin tone, medium-light skin tone';
  Result[704] := 'kiss: person, person, medium-dark skin tone, dark skin tone';
  Result[705] := 'kiss: person, person, medium-dark skin tone, light skin tone';
  Result[706] := 'kiss: person, person, medium-dark skin tone, medium skin tone';
  Result[707] := 'kiss: person, person, medium-dark skin tone, medium-light skin tone';
  Result[708] := 'kiss: person, person, medium-light skin tone, dark skin tone';
  Result[709] := 'kiss: person, person, medium-light skin tone, light skin tone';
  Result[710] := 'kiss: person, person, medium-light skin tone, medium skin tone';
  Result[711] := 'kiss: person, person, medium-light skin tone, medium-dark skin tone';
  Result[712] := 'kiss: woman, man';
  Result[713] := 'kiss: woman, man, dark skin tone';
  Result[714] := 'kiss: woman, man, dark skin tone, light skin tone';
  Result[715] := 'kiss: woman, man, dark skin tone, medium skin tone';
  Result[716] := 'kiss: woman, man, dark skin tone, medium-dark skin tone';
  Result[717] := 'kiss: woman, man, dark skin tone, medium-light skin tone';
  Result[718] := 'kiss: woman, man, light skin tone';
  Result[719] := 'kiss: woman, man, light skin tone, dark skin tone';
  Result[720] := 'kiss: woman, man, light skin tone, medium skin tone';
  Result[721] := 'kiss: woman, man, light skin tone, medium-dark skin tone';
  Result[722] := 'kiss: woman, man, light skin tone, medium-light skin tone';
  Result[723] := 'kiss: woman, man, medium skin tone';
  Result[724] := 'kiss: woman, man, medium skin tone, dark skin tone';
  Result[725] := 'kiss: woman, man, medium skin tone, light skin tone';
  Result[726] := 'kiss: woman, man, medium skin tone, medium-dark skin tone';
  Result[727] := 'kiss: woman, man, medium skin tone, medium-light skin tone';
  Result[728] := 'kiss: woman, man, medium-dark skin tone';
  Result[729] := 'kiss: woman, man, medium-dark skin tone, dark skin tone';
  Result[730] := 'kiss: woman, man, medium-dark skin tone, light skin tone';
  Result[731] := 'kiss: woman, man, medium-dark skin tone, medium skin tone';
  Result[732] := 'kiss: woman, man, medium-dark skin tone, medium-light skin tone';
  Result[733] := 'kiss: woman, man, medium-light skin tone';
  Result[734] := 'kiss: woman, man, medium-light skin tone, dark skin tone';
  Result[735] := 'kiss: woman, man, medium-light skin tone, light skin tone';
  Result[736] := 'kiss: woman, man, medium-light skin tone, medium skin tone';
  Result[737] := 'kiss: woman, man, medium-light skin tone, medium-dark skin tone';
  Result[738] := 'kiss: woman, woman';
  Result[739] := 'kiss: woman, woman, dark skin tone';
  Result[740] := 'kiss: woman, woman, dark skin tone, light skin tone';
  Result[741] := 'kiss: woman, woman, dark skin tone, medium skin tone';
  Result[742] := 'kiss: woman, woman, dark skin tone, medium-dark skin tone';
  Result[743] := 'kiss: woman, woman, dark skin tone, medium-light skin tone';
  Result[744] := 'kiss: woman, woman, light skin tone';
  Result[745] := 'kiss: woman, woman, light skin tone, dark skin tone';
  Result[746] := 'kiss: woman, woman, light skin tone, medium skin tone';
  Result[747] := 'kiss: woman, woman, light skin tone, medium-dark skin tone';
  Result[748] := 'kiss: woman, woman, light skin tone, medium-light skin tone';
  Result[749] := 'kiss: woman, woman, medium skin tone';
  Result[750] := 'kiss: woman, woman, medium skin tone, dark skin tone';
  Result[751] := 'kiss: woman, woman, medium skin tone, light skin tone';
  Result[752] := 'kiss: woman, woman, medium skin tone, medium-dark skin tone';
  Result[753] := 'kiss: woman, woman, medium skin tone, medium-light skin tone';
  Result[754] := 'kiss: woman, woman, medium-dark skin tone';
  Result[755] := 'kiss: woman, woman, medium-dark skin tone, dark skin tone';
  Result[756] := 'kiss: woman, woman, medium-dark skin tone, light skin tone';
  Result[757] := 'kiss: woman, woman, medium-dark skin tone, medium skin tone';
  Result[758] := 'kiss: woman, woman, medium-dark skin tone, medium-light skin tone';
  Result[759] := 'kiss: woman, woman, medium-light skin tone';
  Result[760] := 'kiss: woman, woman, medium-light skin tone, dark skin tone';
  Result[761] := 'kiss: woman, woman, medium-light skin tone, light skin tone';
  Result[762] := 'kiss: woman, woman, medium-light skin tone, medium skin tone';
  Result[763] := 'kiss: woman, woman, medium-light skin tone, medium-dark skin tone';
  Result[764] := 'left-facing fist: dark skin tone';
  Result[765] := 'left-facing fist: light skin tone';
  Result[766] := 'left-facing fist: medium skin tone';
  Result[767] := 'left-facing fist: medium-dark skin tone';
  Result[768] := 'left-facing fist: medium-light skin tone';
  Result[769] := 'leftwards hand: dark skin tone';
  Result[770] := 'leftwards hand: light skin tone';
  Result[771] := 'leftwards hand: medium skin tone';
  Result[772] := 'leftwards hand: medium-dark skin tone';
  Result[773] := 'leftwards hand: medium-light skin tone';
  Result[774] := 'leftwards pushing hand: dark skin tone';
  Result[775] := 'leftwards pushing hand: light skin tone';
  Result[776] := 'leftwards pushing hand: medium skin tone';
  Result[777] := 'leftwards pushing hand: medium-dark skin tone';
  Result[778] := 'leftwards pushing hand: medium-light skin tone';
  Result[779] := 'leg: dark skin tone';
  Result[780] := 'leg: light skin tone';
  Result[781] := 'leg: medium skin tone';
  Result[782] := 'leg: medium-dark skin tone';
  Result[783] := 'leg: medium-light skin tone';
  Result[784] := 'lime';
  Result[785] := 'love-you gesture: dark skin tone';
  Result[786] := 'love-you gesture: light skin tone';
  Result[787] := 'love-you gesture: medium skin tone';
  Result[788] := 'love-you gesture: medium-dark skin tone';
  Result[789] := 'love-you gesture: medium-light skin tone';
  Result[790] := 'mage: dark skin tone';
  Result[791] := 'mage: light skin tone';
  Result[792] := 'mage: medium skin tone';
  Result[793] := 'mage: medium-dark skin tone';
  Result[794] := 'mage: medium-light skin tone';
  Result[795] := 'man artist';
  Result[796] := 'man artist: dark skin tone';
  Result[797] := 'man artist: light skin tone';
  Result[798] := 'man artist: medium skin tone';
  Result[799] := 'man artist: medium-dark skin tone';
  Result[800] := 'man artist: medium-light skin tone';
  Result[801] := 'man astronaut';
  Result[802] := 'man astronaut: dark skin tone';
  Result[803] := 'man astronaut: light skin tone';
  Result[804] := 'man astronaut: medium skin tone';
  Result[805] := 'man astronaut: medium-dark skin tone';
  Result[806] := 'man astronaut: medium-light skin tone';
  Result[807] := 'man biking';
  Result[808] := 'man biking: dark skin tone';
  Result[809] := 'man biking: light skin tone';
  Result[810] := 'man biking: medium skin tone';
  Result[811] := 'man biking: medium-dark skin tone';
  Result[812] := 'man biking: medium-light skin tone';
  Result[813] := 'man bouncing ball';
  Result[814] := 'man bouncing ball: dark skin tone';
  Result[815] := 'man bouncing ball: light skin tone';
  Result[816] := 'man bouncing ball: medium skin tone';
  Result[817] := 'man bouncing ball: medium-dark skin tone';
  Result[818] := 'man bouncing ball: medium-light skin tone';
  Result[819] := 'man bowing';
  Result[820] := 'man bowing: dark skin tone';
  Result[821] := 'man bowing: light skin tone';
  Result[822] := 'man bowing: medium skin tone';
  Result[823] := 'man bowing: medium-dark skin tone';
  Result[824] := 'man bowing: medium-light skin tone';
  Result[825] := 'man cartwheeling';
  Result[826] := 'man cartwheeling: dark skin tone';
  Result[827] := 'man cartwheeling: light skin tone';
  Result[828] := 'man cartwheeling: medium skin tone';
  Result[829] := 'man cartwheeling: medium-dark skin tone';
  Result[830] := 'man cartwheeling: medium-light skin tone';
  Result[831] := 'man climbing';
  Result[832] := 'man climbing: dark skin tone';
  Result[833] := 'man climbing: light skin tone';
  Result[834] := 'man climbing: medium skin tone';
  Result[835] := 'man climbing: medium-dark skin tone';
  Result[836] := 'man climbing: medium-light skin tone';
  Result[837] := 'man construction worker';
  Result[838] := 'man construction worker: dark skin tone';
  Result[839] := 'man construction worker: light skin tone';
  Result[840] := 'man construction worker: medium skin tone';
  Result[841] := 'man construction worker: medium-dark skin tone';
  Result[842] := 'man construction worker: medium-light skin tone';
  Result[843] := 'man cook';
  Result[844] := 'man cook: dark skin tone';
  Result[845] := 'man cook: light skin tone';
  Result[846] := 'man cook: medium skin tone';
  Result[847] := 'man cook: medium-dark skin tone';
  Result[848] := 'man cook: medium-light skin tone';
  Result[849] := 'man dancing: dark skin tone';
  Result[850] := 'man dancing: light skin tone';
  Result[851] := 'man dancing: medium skin tone';
  Result[852] := 'man dancing: medium-dark skin tone';
  Result[853] := 'man dancing: medium-light skin tone';
  Result[854] := 'man detective';
  Result[855] := 'man detective: dark skin tone';
  Result[856] := 'man detective: light skin tone';
  Result[857] := 'man detective: medium skin tone';
  Result[858] := 'man detective: medium-dark skin tone';
  Result[859] := 'man detective: medium-light skin tone';
  Result[860] := 'man elf';
  Result[861] := 'man elf: dark skin tone';
  Result[862] := 'man elf: light skin tone';
  Result[863] := 'man elf: medium skin tone';
  Result[864] := 'man elf: medium-dark skin tone';
  Result[865] := 'man elf: medium-light skin tone';
  Result[866] := 'man facepalming';
  Result[867] := 'man facepalming: dark skin tone';
  Result[868] := 'man facepalming: light skin tone';
  Result[869] := 'man facepalming: medium skin tone';
  Result[870] := 'man facepalming: medium-dark skin tone';
  Result[871] := 'man facepalming: medium-light skin tone';
  Result[872] := 'man factory worker';
  Result[873] := 'man factory worker: dark skin tone';
  Result[874] := 'man factory worker: light skin tone';
  Result[875] := 'man factory worker: medium skin tone';
  Result[876] := 'man factory worker: medium-dark skin tone';
  Result[877] := 'man factory worker: medium-light skin tone';
  Result[878] := 'man fairy';
  Result[879] := 'man fairy: dark skin tone';
  Result[880] := 'man fairy: light skin tone';
  Result[881] := 'man fairy: medium skin tone';
  Result[882] := 'man fairy: medium-dark skin tone';
  Result[883] := 'man fairy: medium-light skin tone';
  Result[884] := 'man farmer';
  Result[885] := 'man farmer: dark skin tone';
  Result[886] := 'man farmer: light skin tone';
  Result[887] := 'man farmer: medium skin tone';
  Result[888] := 'man farmer: medium-dark skin tone';
  Result[889] := 'man farmer: medium-light skin tone';
  Result[890] := 'man feeding baby';
  Result[891] := 'man feeding baby: dark skin tone';
  Result[892] := 'man feeding baby: light skin tone';
  Result[893] := 'man feeding baby: medium skin tone';
  Result[894] := 'man feeding baby: medium-dark skin tone';
  Result[895] := 'man feeding baby: medium-light skin tone';
  Result[896] := 'man firefighter';
  Result[897] := 'man firefighter: dark skin tone';
  Result[898] := 'man firefighter: light skin tone';
  Result[899] := 'man firefighter: medium skin tone';
  Result[900] := 'man firefighter: medium-dark skin tone';
  Result[901] := 'man firefighter: medium-light skin tone';
  Result[902] := 'man frowning';
  Result[903] := 'man frowning: dark skin tone';
  Result[904] := 'man frowning: light skin tone';
  Result[905] := 'man frowning: medium skin tone';
  Result[906] := 'man frowning: medium-dark skin tone';
  Result[907] := 'man frowning: medium-light skin tone';
  Result[908] := 'man genie';
  Result[909] := 'man gesturing NO';
  Result[910] := 'man gesturing NO: dark skin tone';
  Result[911] := 'man gesturing NO: light skin tone';
  Result[912] := 'man gesturing NO: medium skin tone';
  Result[913] := 'man gesturing NO: medium-dark skin tone';
  Result[914] := 'man gesturing NO: medium-light skin tone';
  Result[915] := 'man gesturing OK';
  Result[916] := 'man gesturing OK: dark skin tone';
  Result[917] := 'man gesturing OK: light skin tone';
  Result[918] := 'man gesturing OK: medium skin tone';
  Result[919] := 'man gesturing OK: medium-dark skin tone';
  Result[920] := 'man gesturing OK: medium-light skin tone';
  Result[921] := 'man getting haircut';
  Result[922] := 'man getting haircut: dark skin tone';
  Result[923] := 'man getting haircut: light skin tone';
  Result[924] := 'man getting haircut: medium skin tone';
  Result[925] := 'man getting haircut: medium-dark skin tone';
  Result[926] := 'man getting haircut: medium-light skin tone';
  Result[927] := 'man getting massage';
  Result[928] := 'man getting massage: dark skin tone';
  Result[929] := 'man getting massage: light skin tone';
  Result[930] := 'man getting massage: medium skin tone';
  Result[931] := 'man getting massage: medium-dark skin tone';
  Result[932] := 'man getting massage: medium-light skin tone';
  Result[933] := 'man golfing';
  Result[934] := 'man golfing: dark skin tone';
  Result[935] := 'man golfing: light skin tone';
  Result[936] := 'man golfing: medium skin tone';
  Result[937] := 'man golfing: medium-dark skin tone';
  Result[938] := 'man golfing: medium-light skin tone';
  Result[939] := 'man guard';
  Result[940] := 'man guard: dark skin tone';
  Result[941] := 'man guard: light skin tone';
  Result[942] := 'man guard: medium skin tone';
  Result[943] := 'man guard: medium-dark skin tone';
  Result[944] := 'man guard: medium-light skin tone';
  Result[945] := 'man health worker';
  Result[946] := 'man health worker: dark skin tone';
  Result[947] := 'man health worker: light skin tone';
  Result[948] := 'man health worker: medium skin tone';
  Result[949] := 'man health worker: medium-dark skin tone';
  Result[950] := 'man health worker: medium-light skin tone';
  Result[951] := 'man in lotus position';
  Result[952] := 'man in lotus position: dark skin tone';
  Result[953] := 'man in lotus position: light skin tone';
  Result[954] := 'man in lotus position: medium skin tone';
  Result[955] := 'man in lotus position: medium-dark skin tone';
  Result[956] := 'man in lotus position: medium-light skin tone';
  Result[957] := 'man in manual wheelchair';
  Result[958] := 'man in manual wheelchair facing right';
  Result[959] := 'man in manual wheelchair facing right: dark skin tone';
  Result[960] := 'man in manual wheelchair facing right: light skin tone';
  Result[961] := 'man in manual wheelchair facing right: medium skin tone';
  Result[962] := 'man in manual wheelchair facing right: medium-dark skin tone';
  Result[963] := 'man in manual wheelchair facing right: medium-light skin tone';
  Result[964] := 'man in manual wheelchair: dark skin tone';
  Result[965] := 'man in manual wheelchair: light skin tone';
  Result[966] := 'man in manual wheelchair: medium skin tone';
  Result[967] := 'man in manual wheelchair: medium-dark skin tone';
  Result[968] := 'man in manual wheelchair: medium-light skin tone';
  Result[969] := 'man in motorized wheelchair';
  Result[970] := 'man in motorized wheelchair facing right';
  Result[971] := 'man in motorized wheelchair facing right: dark skin tone';
  Result[972] := 'man in motorized wheelchair facing right: light skin tone';
  Result[973] := 'man in motorized wheelchair facing right: medium skin tone';
  Result[974] := 'man in motorized wheelchair facing right: medium-dark skin tone';
  Result[975] := 'man in motorized wheelchair facing right: medium-light skin tone';
  Result[976] := 'man in motorized wheelchair: dark skin tone';
  Result[977] := 'man in motorized wheelchair: light skin tone';
  Result[978] := 'man in motorized wheelchair: medium skin tone';
  Result[979] := 'man in motorized wheelchair: medium-dark skin tone';
  Result[980] := 'man in motorized wheelchair: medium-light skin tone';
  Result[981] := 'man in steamy room';
  Result[982] := 'man in steamy room: dark skin tone';
  Result[983] := 'man in steamy room: light skin tone';
  Result[984] := 'man in steamy room: medium skin tone';
  Result[985] := 'man in steamy room: medium-dark skin tone';
  Result[986] := 'man in steamy room: medium-light skin tone';
  Result[987] := 'man in tuxedo';
  Result[988] := 'man in tuxedo: dark skin tone';
  Result[989] := 'man in tuxedo: light skin tone';
  Result[990] := 'man in tuxedo: medium skin tone';
  Result[991] := 'man in tuxedo: medium-dark skin tone';
  Result[992] := 'man in tuxedo: medium-light skin tone';
  Result[993] := 'man judge';
  Result[994] := 'man judge: dark skin tone';
  Result[995] := 'man judge: light skin tone';
  Result[996] := 'man judge: medium skin tone';
  Result[997] := 'man judge: medium-dark skin tone';
  Result[998] := 'man judge: medium-light skin tone';
  Result[999] := 'man juggling';
  Result[1000] := 'man juggling: dark skin tone';
  Result[1001] := 'man juggling: light skin tone';
  Result[1002] := 'man juggling: medium skin tone';
  Result[1003] := 'man juggling: medium-dark skin tone';
  Result[1004] := 'man juggling: medium-light skin tone';
  Result[1005] := 'man kneeling';
  Result[1006] := 'man kneeling facing right';
  Result[1007] := 'man kneeling facing right: dark skin tone';
  Result[1008] := 'man kneeling facing right: light skin tone';
  Result[1009] := 'man kneeling facing right: medium skin tone';
  Result[1010] := 'man kneeling facing right: medium-dark skin tone';
  Result[1011] := 'man kneeling facing right: medium-light skin tone';
  Result[1012] := 'man kneeling: dark skin tone';
  Result[1013] := 'man kneeling: light skin tone';
  Result[1014] := 'man kneeling: medium skin tone';
  Result[1015] := 'man kneeling: medium-dark skin tone';
  Result[1016] := 'man kneeling: medium-light skin tone';
  Result[1017] := 'man lifting weights';
  Result[1018] := 'man lifting weights: dark skin tone';
  Result[1019] := 'man lifting weights: light skin tone';
  Result[1020] := 'man lifting weights: medium skin tone';
  Result[1021] := 'man lifting weights: medium-dark skin tone';
  Result[1022] := 'man lifting weights: medium-light skin tone';
  Result[1023] := 'man mage';
  Result[1024] := 'man mage: dark skin tone';
  Result[1025] := 'man mage: light skin tone';
  Result[1026] := 'man mage: medium skin tone';
  Result[1027] := 'man mage: medium-dark skin tone';
  Result[1028] := 'man mage: medium-light skin tone';
  Result[1029] := 'man mechanic';
  Result[1030] := 'man mechanic: dark skin tone';
  Result[1031] := 'man mechanic: light skin tone';
  Result[1032] := 'man mechanic: medium skin tone';
  Result[1033] := 'man mechanic: medium-dark skin tone';
  Result[1034] := 'man mechanic: medium-light skin tone';
  Result[1035] := 'man mountain biking';
  Result[1036] := 'man mountain biking: dark skin tone';
  Result[1037] := 'man mountain biking: light skin tone';
  Result[1038] := 'man mountain biking: medium skin tone';
  Result[1039] := 'man mountain biking: medium-dark skin tone';
  Result[1040] := 'man mountain biking: medium-light skin tone';
  Result[1041] := 'man office worker';
  Result[1042] := 'man office worker: dark skin tone';
  Result[1043] := 'man office worker: light skin tone';
  Result[1044] := 'man office worker: medium skin tone';
  Result[1045] := 'man office worker: medium-dark skin tone';
  Result[1046] := 'man office worker: medium-light skin tone';
  Result[1047] := 'man pilot';
  Result[1048] := 'man pilot: dark skin tone';
  Result[1049] := 'man pilot: light skin tone';
  Result[1050] := 'man pilot: medium skin tone';
  Result[1051] := 'man pilot: medium-dark skin tone';
  Result[1052] := 'man pilot: medium-light skin tone';
  Result[1053] := 'man playing handball';
  Result[1054] := 'man playing handball: dark skin tone';
  Result[1055] := 'man playing handball: light skin tone';
  Result[1056] := 'man playing handball: medium skin tone';
  Result[1057] := 'man playing handball: medium-dark skin tone';
  Result[1058] := 'man playing handball: medium-light skin tone';
  Result[1059] := 'man playing water polo';
  Result[1060] := 'man playing water polo: dark skin tone';
  Result[1061] := 'man playing water polo: light skin tone';
  Result[1062] := 'man playing water polo: medium skin tone';
  Result[1063] := 'man playing water polo: medium-dark skin tone';
  Result[1064] := 'man playing water polo: medium-light skin tone';
  Result[1065] := 'man police officer';
  Result[1066] := 'man police officer: dark skin tone';
  Result[1067] := 'man police officer: light skin tone';
  Result[1068] := 'man police officer: medium skin tone';
  Result[1069] := 'man police officer: medium-dark skin tone';
  Result[1070] := 'man police officer: medium-light skin tone';
  Result[1071] := 'man pouting';
  Result[1072] := 'man pouting: dark skin tone';
  Result[1073] := 'man pouting: light skin tone';
  Result[1074] := 'man pouting: medium skin tone';
  Result[1075] := 'man pouting: medium-dark skin tone';
  Result[1076] := 'man pouting: medium-light skin tone';
  Result[1077] := 'man raising hand';
  Result[1078] := 'man raising hand: dark skin tone';
  Result[1079] := 'man raising hand: light skin tone';
  Result[1080] := 'man raising hand: medium skin tone';
  Result[1081] := 'man raising hand: medium-dark skin tone';
  Result[1082] := 'man raising hand: medium-light skin tone';
  Result[1083] := 'man rowing boat';
  Result[1084] := 'man rowing boat: dark skin tone';
  Result[1085] := 'man rowing boat: light skin tone';
  Result[1086] := 'man rowing boat: medium skin tone';
  Result[1087] := 'man rowing boat: medium-dark skin tone';
  Result[1088] := 'man rowing boat: medium-light skin tone';
  Result[1089] := 'man running';
  Result[1090] := 'man running facing right';
  Result[1091] := 'man running facing right: dark skin tone';
  Result[1092] := 'man running facing right: light skin tone';
  Result[1093] := 'man running facing right: medium skin tone';
  Result[1094] := 'man running facing right: medium-dark skin tone';
  Result[1095] := 'man running facing right: medium-light skin tone';
  Result[1096] := 'man running: dark skin tone';
  Result[1097] := 'man running: light skin tone';
  Result[1098] := 'man running: medium skin tone';
  Result[1099] := 'man running: medium-dark skin tone';
  Result[1100] := 'man running: medium-light skin tone';
  Result[1101] := 'man scientist';
  Result[1102] := 'man scientist: dark skin tone';
  Result[1103] := 'man scientist: light skin tone';
  Result[1104] := 'man scientist: medium skin tone';
  Result[1105] := 'man scientist: medium-dark skin tone';
  Result[1106] := 'man scientist: medium-light skin tone';
  Result[1107] := 'man shrugging';
  Result[1108] := 'man shrugging: dark skin tone';
  Result[1109] := 'man shrugging: light skin tone';
  Result[1110] := 'man shrugging: medium skin tone';
  Result[1111] := 'man shrugging: medium-dark skin tone';
  Result[1112] := 'man shrugging: medium-light skin tone';
  Result[1113] := 'man singer';
  Result[1114] := 'man singer: dark skin tone';
  Result[1115] := 'man singer: light skin tone';
  Result[1116] := 'man singer: medium skin tone';
  Result[1117] := 'man singer: medium-dark skin tone';
  Result[1118] := 'man singer: medium-light skin tone';
  Result[1119] := 'man standing';
  Result[1120] := 'man standing: dark skin tone';
  Result[1121] := 'man standing: light skin tone';
  Result[1122] := 'man standing: medium skin tone';
  Result[1123] := 'man standing: medium-dark skin tone';
  Result[1124] := 'man standing: medium-light skin tone';
  Result[1125] := 'man student';
  Result[1126] := 'man student: dark skin tone';
  Result[1127] := 'man student: light skin tone';
  Result[1128] := 'man student: medium skin tone';
  Result[1129] := 'man student: medium-dark skin tone';
  Result[1130] := 'man student: medium-light skin tone';
  Result[1131] := 'man superhero';
  Result[1132] := 'man superhero: dark skin tone';
  Result[1133] := 'man superhero: light skin tone';
  Result[1134] := 'man superhero: medium skin tone';
  Result[1135] := 'man superhero: medium-dark skin tone';
  Result[1136] := 'man superhero: medium-light skin tone';
  Result[1137] := 'man supervillain';
  Result[1138] := 'man supervillain: dark skin tone';
  Result[1139] := 'man supervillain: light skin tone';
  Result[1140] := 'man supervillain: medium skin tone';
  Result[1141] := 'man supervillain: medium-dark skin tone';
  Result[1142] := 'man supervillain: medium-light skin tone';
  Result[1143] := 'man surfing';
  Result[1144] := 'man surfing: dark skin tone';
  Result[1145] := 'man surfing: light skin tone';
  Result[1146] := 'man surfing: medium skin tone';
  Result[1147] := 'man surfing: medium-dark skin tone';
  Result[1148] := 'man surfing: medium-light skin tone';
  Result[1149] := 'man swimming';
  Result[1150] := 'man swimming: dark skin tone';
  Result[1151] := 'man swimming: light skin tone';
  Result[1152] := 'man swimming: medium skin tone';
  Result[1153] := 'man swimming: medium-dark skin tone';
  Result[1154] := 'man swimming: medium-light skin tone';
  Result[1155] := 'man teacher';
  Result[1156] := 'man teacher: dark skin tone';
  Result[1157] := 'man teacher: light skin tone';
  Result[1158] := 'man teacher: medium skin tone';
  Result[1159] := 'man teacher: medium-dark skin tone';
  Result[1160] := 'man teacher: medium-light skin tone';
  Result[1161] := 'man technologist';
  Result[1162] := 'man technologist: dark skin tone';
  Result[1163] := 'man technologist: light skin tone';
  Result[1164] := 'man technologist: medium skin tone';
  Result[1165] := 'man technologist: medium-dark skin tone';
  Result[1166] := 'man technologist: medium-light skin tone';
  Result[1167] := 'man tipping hand';
  Result[1168] := 'man tipping hand: dark skin tone';
  Result[1169] := 'man tipping hand: light skin tone';
  Result[1170] := 'man tipping hand: medium skin tone';
  Result[1171] := 'man tipping hand: medium-dark skin tone';
  Result[1172] := 'man tipping hand: medium-light skin tone';
  Result[1173] := 'man vampire';
  Result[1174] := 'man vampire: dark skin tone';
  Result[1175] := 'man vampire: light skin tone';
  Result[1176] := 'man vampire: medium skin tone';
  Result[1177] := 'man vampire: medium-dark skin tone';
  Result[1178] := 'man vampire: medium-light skin tone';
  Result[1179] := 'man walking';
  Result[1180] := 'man walking facing right';
  Result[1181] := 'man walking facing right: dark skin tone';
  Result[1182] := 'man walking facing right: light skin tone';
  Result[1183] := 'man walking facing right: medium skin tone';
  Result[1184] := 'man walking facing right: medium-dark skin tone';
  Result[1185] := 'man walking facing right: medium-light skin tone';
  Result[1186] := 'man walking: dark skin tone';
  Result[1187] := 'man walking: light skin tone';
  Result[1188] := 'man walking: medium skin tone';
  Result[1189] := 'man walking: medium-dark skin tone';
  Result[1190] := 'man walking: medium-light skin tone';
  Result[1191] := 'man wearing turban';
  Result[1192] := 'man wearing turban: dark skin tone';
  Result[1193] := 'man wearing turban: light skin tone';
  Result[1194] := 'man wearing turban: medium skin tone';
  Result[1195] := 'man wearing turban: medium-dark skin tone';
  Result[1196] := 'man wearing turban: medium-light skin tone';
  Result[1197] := 'man with veil';
  Result[1198] := 'man with veil: dark skin tone';
  Result[1199] := 'man with veil: light skin tone';
  Result[1200] := 'man with veil: medium skin tone';
  Result[1201] := 'man with veil: medium-dark skin tone';
  Result[1202] := 'man with veil: medium-light skin tone';
  Result[1203] := 'man with white cane';
  Result[1204] := 'man with white cane facing right';
  Result[1205] := 'man with white cane facing right: dark skin tone';
  Result[1206] := 'man with white cane facing right: light skin tone';
  Result[1207] := 'man with white cane facing right: medium skin tone';
  Result[1208] := 'man with white cane facing right: medium-dark skin tone';
  Result[1209] := 'man with white cane facing right: medium-light skin tone';
  Result[1210] := 'man with white cane: dark skin tone';
  Result[1211] := 'man with white cane: light skin tone';
  Result[1212] := 'man with white cane: medium skin tone';
  Result[1213] := 'man with white cane: medium-dark skin tone';
  Result[1214] := 'man with white cane: medium-light skin tone';
  Result[1215] := 'man zombie';
  Result[1216] := 'man: bald';
  Result[1217] := 'man: beard';
  Result[1218] := 'man: blond hair';
  Result[1219] := 'man: curly hair';
  Result[1220] := 'man: dark skin tone';
  Result[1221] := 'man: dark skin tone, bald';
  Result[1222] := 'man: dark skin tone, beard';
  Result[1223] := 'man: dark skin tone, blond hair';
  Result[1224] := 'man: dark skin tone, curly hair';
  Result[1225] := 'man: dark skin tone, red hair';
  Result[1226] := 'man: dark skin tone, white hair';
  Result[1227] := 'man: light skin tone';
  Result[1228] := 'man: light skin tone, bald';
  Result[1229] := 'man: light skin tone, beard';
  Result[1230] := 'man: light skin tone, blond hair';
  Result[1231] := 'man: light skin tone, curly hair';
  Result[1232] := 'man: light skin tone, red hair';
  Result[1233] := 'man: light skin tone, white hair';
  Result[1234] := 'man: medium skin tone';
  Result[1235] := 'man: medium skin tone, bald';
  Result[1236] := 'man: medium skin tone, beard';
  Result[1237] := 'man: medium skin tone, blond hair';
  Result[1238] := 'man: medium skin tone, curly hair';
  Result[1239] := 'man: medium skin tone, red hair';
  Result[1240] := 'man: medium skin tone, white hair';
  Result[1241] := 'man: medium-dark skin tone';
  Result[1242] := 'man: medium-dark skin tone, bald';
  Result[1243] := 'man: medium-dark skin tone, beard';
  Result[1244] := 'man: medium-dark skin tone, blond hair';
  Result[1245] := 'man: medium-dark skin tone, curly hair';
  Result[1246] := 'man: medium-dark skin tone, red hair';
  Result[1247] := 'man: medium-dark skin tone, white hair';
  Result[1248] := 'man: medium-light skin tone';
  Result[1249] := 'man: medium-light skin tone, bald';
  Result[1250] := 'man: medium-light skin tone, beard';
  Result[1251] := 'man: medium-light skin tone, blond hair';
  Result[1252] := 'man: medium-light skin tone, curly hair';
  Result[1253] := 'man: medium-light skin tone, red hair';
  Result[1254] := 'man: medium-light skin tone, white hair';
  Result[1255] := 'man: red hair';
  Result[1256] := 'man: white hair';
  Result[1257] := 'mechanic';
  Result[1258] := 'mechanic: dark skin tone';
  Result[1259] := 'mechanic: light skin tone';
  Result[1260] := 'mechanic: medium skin tone';
  Result[1261] := 'mechanic: medium-dark skin tone';
  Result[1262] := 'mechanic: medium-light skin tone';
  Result[1263] := 'men holding hands: dark skin tone';
  Result[1264] := 'men holding hands: dark skin tone, light skin tone';
  Result[1265] := 'men holding hands: dark skin tone, medium skin tone';
  Result[1266] := 'men holding hands: dark skin tone, medium-dark skin tone';
  Result[1267] := 'men holding hands: dark skin tone, medium-light skin tone';
  Result[1268] := 'men holding hands: light skin tone';
  Result[1269] := 'men holding hands: light skin tone, dark skin tone';
  Result[1270] := 'men holding hands: light skin tone, medium skin tone';
  Result[1271] := 'men holding hands: light skin tone, medium-dark skin tone';
  Result[1272] := 'men holding hands: light skin tone, medium-light skin tone';
  Result[1273] := 'men holding hands: medium skin tone';
  Result[1274] := 'men holding hands: medium skin tone, dark skin tone';
  Result[1275] := 'men holding hands: medium skin tone, light skin tone';
  Result[1276] := 'men holding hands: medium skin tone, medium-dark skin tone';
  Result[1277] := 'men holding hands: medium skin tone, medium-light skin tone';
  Result[1278] := 'men holding hands: medium-dark skin tone';
  Result[1279] := 'men holding hands: medium-dark skin tone, dark skin tone';
  Result[1280] := 'men holding hands: medium-dark skin tone, light skin tone';
  Result[1281] := 'men holding hands: medium-dark skin tone, medium skin tone';
  Result[1282] := 'men holding hands: medium-dark skin tone, medium-light skin tone';
  Result[1283] := 'men holding hands: medium-light skin tone';
  Result[1284] := 'men holding hands: medium-light skin tone, dark skin tone';
  Result[1285] := 'men holding hands: medium-light skin tone, light skin tone';
  Result[1286] := 'men holding hands: medium-light skin tone, medium skin tone';
  Result[1287] := 'men holding hands: medium-light skin tone, medium-dark skin tone';
  Result[1288] := 'men with bunny ears';
  Result[1289] := 'men wrestling';
  Result[1290] := 'mending heart';
  Result[1291] := 'mermaid';
  Result[1292] := 'mermaid: dark skin tone';
  Result[1293] := 'mermaid: light skin tone';
  Result[1294] := 'mermaid: medium skin tone';
  Result[1295] := 'mermaid: medium-dark skin tone';
  Result[1296] := 'mermaid: medium-light skin tone';
  Result[1297] := 'merman';
  Result[1298] := 'merman: dark skin tone';
  Result[1299] := 'merman: light skin tone';
  Result[1300] := 'merman: medium skin tone';
  Result[1301] := 'merman: medium-dark skin tone';
  Result[1302] := 'merman: medium-light skin tone';
  Result[1303] := 'merperson: dark skin tone';
  Result[1304] := 'merperson: light skin tone';
  Result[1305] := 'merperson: medium skin tone';
  Result[1306] := 'merperson: medium-dark skin tone';
  Result[1307] := 'merperson: medium-light skin tone';
  Result[1308] := 'middle finger: dark skin tone';
  Result[1309] := 'middle finger: light skin tone';
  Result[1310] := 'middle finger: medium skin tone';
  Result[1311] := 'middle finger: medium-dark skin tone';
  Result[1312] := 'middle finger: medium-light skin tone';
  Result[1313] := 'nail polish: dark skin tone';
  Result[1314] := 'nail polish: light skin tone';
  Result[1315] := 'nail polish: medium skin tone';
  Result[1316] := 'nail polish: medium-dark skin tone';
  Result[1317] := 'nail polish: medium-light skin tone';
  Result[1318] := 'ninja: dark skin tone';
  Result[1319] := 'ninja: light skin tone';
  Result[1320] := 'ninja: medium skin tone';
  Result[1321] := 'ninja: medium-dark skin tone';
  Result[1322] := 'ninja: medium-light skin tone';
  Result[1323] := 'nose: dark skin tone';
  Result[1324] := 'nose: light skin tone';
  Result[1325] := 'nose: medium skin tone';
  Result[1326] := 'nose: medium-dark skin tone';
  Result[1327] := 'nose: medium-light skin tone';
  Result[1328] := 'office worker';
  Result[1329] := 'office worker: dark skin tone';
  Result[1330] := 'office worker: light skin tone';
  Result[1331] := 'office worker: medium skin tone';
  Result[1332] := 'office worker: medium-dark skin tone';
  Result[1333] := 'office worker: medium-light skin tone';
  Result[1334] := 'old man: dark skin tone';
  Result[1335] := 'old man: light skin tone';
  Result[1336] := 'old man: medium skin tone';
  Result[1337] := 'old man: medium-dark skin tone';
  Result[1338] := 'old man: medium-light skin tone';
  Result[1339] := 'old woman: dark skin tone';
  Result[1340] := 'old woman: light skin tone';
  Result[1341] := 'old woman: medium skin tone';
  Result[1342] := 'old woman: medium-dark skin tone';
  Result[1343] := 'old woman: medium-light skin tone';
  Result[1344] := 'older person: dark skin tone';
  Result[1345] := 'older person: light skin tone';
  Result[1346] := 'older person: medium skin tone';
  Result[1347] := 'older person: medium-dark skin tone';
  Result[1348] := 'older person: medium-light skin tone';
  Result[1349] := 'oncoming fist: dark skin tone';
  Result[1350] := 'oncoming fist: light skin tone';
  Result[1351] := 'oncoming fist: medium skin tone';
  Result[1352] := 'oncoming fist: medium-dark skin tone';
  Result[1353] := 'oncoming fist: medium-light skin tone';
  Result[1354] := 'open hands: dark skin tone';
  Result[1355] := 'open hands: light skin tone';
  Result[1356] := 'open hands: medium skin tone';
  Result[1357] := 'open hands: medium-dark skin tone';
  Result[1358] := 'open hands: medium-light skin tone';
  Result[1359] := 'palm down hand: dark skin tone';
  Result[1360] := 'palm down hand: light skin tone';
  Result[1361] := 'palm down hand: medium skin tone';
  Result[1362] := 'palm down hand: medium-dark skin tone';
  Result[1363] := 'palm down hand: medium-light skin tone';
  Result[1364] := 'palm up hand: dark skin tone';
  Result[1365] := 'palm up hand: light skin tone';
  Result[1366] := 'palm up hand: medium skin tone';
  Result[1367] := 'palm up hand: medium-dark skin tone';
  Result[1368] := 'palm up hand: medium-light skin tone';
  Result[1369] := 'palms up together: dark skin tone';
  Result[1370] := 'palms up together: light skin tone';
  Result[1371] := 'palms up together: medium skin tone';
  Result[1372] := 'palms up together: medium-dark skin tone';
  Result[1373] := 'palms up together: medium-light skin tone';
  Result[1374] := 'people holding hands';
  Result[1375] := 'people holding hands: dark skin tone';
  Result[1376] := 'people holding hands: dark skin tone, light skin tone';
  Result[1377] := 'people holding hands: dark skin tone, medium skin tone';
  Result[1378] := 'people holding hands: dark skin tone, medium-dark skin tone';
  Result[1379] := 'people holding hands: dark skin tone, medium-light skin tone';
  Result[1380] := 'people holding hands: light skin tone';
  Result[1381] := 'people holding hands: light skin tone, dark skin tone';
  Result[1382] := 'people holding hands: light skin tone, medium skin tone';
  Result[1383] := 'people holding hands: light skin tone, medium-dark skin tone';
  Result[1384] := 'people holding hands: light skin tone, medium-light skin tone';
  Result[1385] := 'people holding hands: medium skin tone';
  Result[1386] := 'people holding hands: medium skin tone, dark skin tone';
  Result[1387] := 'people holding hands: medium skin tone, light skin tone';
  Result[1388] := 'people holding hands: medium skin tone, medium-dark skin tone';
  Result[1389] := 'people holding hands: medium skin tone, medium-light skin tone';
  Result[1390] := 'people holding hands: medium-dark skin tone';
  Result[1391] := 'people holding hands: medium-dark skin tone, dark skin tone';
  Result[1392] := 'people holding hands: medium-dark skin tone, light skin tone';
  Result[1393] := 'people holding hands: medium-dark skin tone, medium skin tone';
  Result[1394] := 'people holding hands: medium-dark skin tone, medium-light skin tone';
  Result[1395] := 'people holding hands: medium-light skin tone';
  Result[1396] := 'people holding hands: medium-light skin tone, dark skin tone';
  Result[1397] := 'people holding hands: medium-light skin tone, light skin tone';
  Result[1398] := 'people holding hands: medium-light skin tone, medium skin tone';
  Result[1399] := 'people holding hands: medium-light skin tone, medium-dark skin tone';
  Result[1400] := 'person biking: dark skin tone';
  Result[1401] := 'person biking: light skin tone';
  Result[1402] := 'person biking: medium skin tone';
  Result[1403] := 'person biking: medium-dark skin tone';
  Result[1404] := 'person biking: medium-light skin tone';
  Result[1405] := 'person bouncing ball: dark skin tone';
  Result[1406] := 'person bouncing ball: light skin tone';
  Result[1407] := 'person bouncing ball: medium skin tone';
  Result[1408] := 'person bouncing ball: medium-dark skin tone';
  Result[1409] := 'person bouncing ball: medium-light skin tone';
  Result[1410] := 'person bowing: dark skin tone';
  Result[1411] := 'person bowing: light skin tone';
  Result[1412] := 'person bowing: medium skin tone';
  Result[1413] := 'person bowing: medium-dark skin tone';
  Result[1414] := 'person bowing: medium-light skin tone';
  Result[1415] := 'person cartwheeling: dark skin tone';
  Result[1416] := 'person cartwheeling: light skin tone';
  Result[1417] := 'person cartwheeling: medium skin tone';
  Result[1418] := 'person cartwheeling: medium-dark skin tone';
  Result[1419] := 'person cartwheeling: medium-light skin tone';
  Result[1420] := 'person climbing: dark skin tone';
  Result[1421] := 'person climbing: light skin tone';
  Result[1422] := 'person climbing: medium skin tone';
  Result[1423] := 'person climbing: medium-dark skin tone';
  Result[1424] := 'person climbing: medium-light skin tone';
  Result[1425] := 'person facepalming: dark skin tone';
  Result[1426] := 'person facepalming: light skin tone';
  Result[1427] := 'person facepalming: medium skin tone';
  Result[1428] := 'person facepalming: medium-dark skin tone';
  Result[1429] := 'person facepalming: medium-light skin tone';
  Result[1430] := 'person feeding baby';
  Result[1431] := 'person feeding baby: dark skin tone';
  Result[1432] := 'person feeding baby: light skin tone';
  Result[1433] := 'person feeding baby: medium skin tone';
  Result[1434] := 'person feeding baby: medium-dark skin tone';
  Result[1435] := 'person feeding baby: medium-light skin tone';
  Result[1436] := 'person frowning: dark skin tone';
  Result[1437] := 'person frowning: light skin tone';
  Result[1438] := 'person frowning: medium skin tone';
  Result[1439] := 'person frowning: medium-dark skin tone';
  Result[1440] := 'person frowning: medium-light skin tone';
  Result[1441] := 'person gesturing NO: dark skin tone';
  Result[1442] := 'person gesturing NO: light skin tone';
  Result[1443] := 'person gesturing NO: medium skin tone';
  Result[1444] := 'person gesturing NO: medium-dark skin tone';
  Result[1445] := 'person gesturing NO: medium-light skin tone';
  Result[1446] := 'person gesturing OK: dark skin tone';
  Result[1447] := 'person gesturing OK: light skin tone';
  Result[1448] := 'person gesturing OK: medium skin tone';
  Result[1449] := 'person gesturing OK: medium-dark skin tone';
  Result[1450] := 'person gesturing OK: medium-light skin tone';
  Result[1451] := 'person getting haircut: dark skin tone';
  Result[1452] := 'person getting haircut: light skin tone';
  Result[1453] := 'person getting haircut: medium skin tone';
  Result[1454] := 'person getting haircut: medium-dark skin tone';
  Result[1455] := 'person getting haircut: medium-light skin tone';
  Result[1456] := 'person getting massage: dark skin tone';
  Result[1457] := 'person getting massage: light skin tone';
  Result[1458] := 'person getting massage: medium skin tone';
  Result[1459] := 'person getting massage: medium-dark skin tone';
  Result[1460] := 'person getting massage: medium-light skin tone';
  Result[1461] := 'person golfing: dark skin tone';
  Result[1462] := 'person golfing: light skin tone';
  Result[1463] := 'person golfing: medium skin tone';
  Result[1464] := 'person golfing: medium-dark skin tone';
  Result[1465] := 'person golfing: medium-light skin tone';
  Result[1466] := 'person in bed: dark skin tone';
  Result[1467] := 'person in bed: light skin tone';
  Result[1468] := 'person in bed: medium skin tone';
  Result[1469] := 'person in bed: medium-dark skin tone';
  Result[1470] := 'person in bed: medium-light skin tone';
  Result[1471] := 'person in lotus position: dark skin tone';
  Result[1472] := 'person in lotus position: light skin tone';
  Result[1473] := 'person in lotus position: medium skin tone';
  Result[1474] := 'person in lotus position: medium-dark skin tone';
  Result[1475] := 'person in lotus position: medium-light skin tone';
  Result[1476] := 'person in manual wheelchair';
  Result[1477] := 'person in manual wheelchair facing right';
  Result[1478] := 'person in manual wheelchair facing right: dark skin tone';
  Result[1479] := 'person in manual wheelchair facing right: light skin tone';
  Result[1480] := 'person in manual wheelchair facing right: medium skin tone';
  Result[1481] := 'person in manual wheelchair facing right: medium-dark skin tone';
  Result[1482] := 'person in manual wheelchair facing right: medium-light skin tone';
  Result[1483] := 'person in manual wheelchair: dark skin tone';
  Result[1484] := 'person in manual wheelchair: light skin tone';
  Result[1485] := 'person in manual wheelchair: medium skin tone';
  Result[1486] := 'person in manual wheelchair: medium-dark skin tone';
  Result[1487] := 'person in manual wheelchair: medium-light skin tone';
  Result[1488] := 'person in motorized wheelchair';
  Result[1489] := 'person in motorized wheelchair facing right';
  Result[1490] := 'person in motorized wheelchair facing right: dark skin tone';
  Result[1491] := 'person in motorized wheelchair facing right: light skin tone';
  Result[1492] := 'person in motorized wheelchair facing right: medium skin tone';
  Result[1493] := 'person in motorized wheelchair facing right: medium-dark skin tone';
  Result[1494] := 'person in motorized wheelchair facing right: medium-light skin tone';
  Result[1495] := 'person in motorized wheelchair: dark skin tone';
  Result[1496] := 'person in motorized wheelchair: light skin tone';
  Result[1497] := 'person in motorized wheelchair: medium skin tone';
  Result[1498] := 'person in motorized wheelchair: medium-dark skin tone';
  Result[1499] := 'person in motorized wheelchair: medium-light skin tone';
  Result[1500] := 'person in steamy room: dark skin tone';
  Result[1501] := 'person in steamy room: light skin tone';
  Result[1502] := 'person in steamy room: medium skin tone';
  Result[1503] := 'person in steamy room: medium-dark skin tone';
  Result[1504] := 'person in steamy room: medium-light skin tone';
  Result[1505] := 'person in suit levitating: dark skin tone';
  Result[1506] := 'person in suit levitating: light skin tone';
  Result[1507] := 'person in suit levitating: medium skin tone';
  Result[1508] := 'person in suit levitating: medium-dark skin tone';
  Result[1509] := 'person in suit levitating: medium-light skin tone';
  Result[1510] := 'person in tuxedo: dark skin tone';
  Result[1511] := 'person in tuxedo: light skin tone';
  Result[1512] := 'person in tuxedo: medium skin tone';
  Result[1513] := 'person in tuxedo: medium-dark skin tone';
  Result[1514] := 'person in tuxedo: medium-light skin tone';
  Result[1515] := 'person juggling: dark skin tone';
  Result[1516] := 'person juggling: light skin tone';
  Result[1517] := 'person juggling: medium skin tone';
  Result[1518] := 'person juggling: medium-dark skin tone';
  Result[1519] := 'person juggling: medium-light skin tone';
  Result[1520] := 'person kneeling facing right';
  Result[1521] := 'person kneeling facing right: dark skin tone';
  Result[1522] := 'person kneeling facing right: light skin tone';
  Result[1523] := 'person kneeling facing right: medium skin tone';
  Result[1524] := 'person kneeling facing right: medium-dark skin tone';
  Result[1525] := 'person kneeling facing right: medium-light skin tone';
  Result[1526] := 'person kneeling: dark skin tone';
  Result[1527] := 'person kneeling: light skin tone';
  Result[1528] := 'person kneeling: medium skin tone';
  Result[1529] := 'person kneeling: medium-dark skin tone';
  Result[1530] := 'person kneeling: medium-light skin tone';
  Result[1531] := 'person lifting weights: dark skin tone';
  Result[1532] := 'person lifting weights: light skin tone';
  Result[1533] := 'person lifting weights: medium skin tone';
  Result[1534] := 'person lifting weights: medium-dark skin tone';
  Result[1535] := 'person lifting weights: medium-light skin tone';
  Result[1536] := 'person mountain biking: dark skin tone';
  Result[1537] := 'person mountain biking: light skin tone';
  Result[1538] := 'person mountain biking: medium skin tone';
  Result[1539] := 'person mountain biking: medium-dark skin tone';
  Result[1540] := 'person mountain biking: medium-light skin tone';
  Result[1541] := 'person playing handball: dark skin tone';
  Result[1542] := 'person playing handball: light skin tone';
  Result[1543] := 'person playing handball: medium skin tone';
  Result[1544] := 'person playing handball: medium-dark skin tone';
  Result[1545] := 'person playing handball: medium-light skin tone';
  Result[1546] := 'person playing water polo: dark skin tone';
  Result[1547] := 'person playing water polo: light skin tone';
  Result[1548] := 'person playing water polo: medium skin tone';
  Result[1549] := 'person playing water polo: medium-dark skin tone';
  Result[1550] := 'person playing water polo: medium-light skin tone';
  Result[1551] := 'person pouting: dark skin tone';
  Result[1552] := 'person pouting: light skin tone';
  Result[1553] := 'person pouting: medium skin tone';
  Result[1554] := 'person pouting: medium-dark skin tone';
  Result[1555] := 'person pouting: medium-light skin tone';
  Result[1556] := 'person raising hand: dark skin tone';
  Result[1557] := 'person raising hand: light skin tone';
  Result[1558] := 'person raising hand: medium skin tone';
  Result[1559] := 'person raising hand: medium-dark skin tone';
  Result[1560] := 'person raising hand: medium-light skin tone';
  Result[1561] := 'person rowing boat: dark skin tone';
  Result[1562] := 'person rowing boat: light skin tone';
  Result[1563] := 'person rowing boat: medium skin tone';
  Result[1564] := 'person rowing boat: medium-dark skin tone';
  Result[1565] := 'person rowing boat: medium-light skin tone';
  Result[1566] := 'person running facing right';
  Result[1567] := 'person running facing right: dark skin tone';
  Result[1568] := 'person running facing right: light skin tone';
  Result[1569] := 'person running facing right: medium skin tone';
  Result[1570] := 'person running facing right: medium-dark skin tone';
  Result[1571] := 'person running facing right: medium-light skin tone';
  Result[1572] := 'person running: dark skin tone';
  Result[1573] := 'person running: light skin tone';
  Result[1574] := 'person running: medium skin tone';
  Result[1575] := 'person running: medium-dark skin tone';
  Result[1576] := 'person running: medium-light skin tone';
  Result[1577] := 'person shrugging: dark skin tone';
  Result[1578] := 'person shrugging: light skin tone';
  Result[1579] := 'person shrugging: medium skin tone';
  Result[1580] := 'person shrugging: medium-dark skin tone';
  Result[1581] := 'person shrugging: medium-light skin tone';
  Result[1582] := 'person standing: dark skin tone';
  Result[1583] := 'person standing: light skin tone';
  Result[1584] := 'person standing: medium skin tone';
  Result[1585] := 'person standing: medium-dark skin tone';
  Result[1586] := 'person standing: medium-light skin tone';
  Result[1587] := 'person surfing: dark skin tone';
  Result[1588] := 'person surfing: light skin tone';
  Result[1589] := 'person surfing: medium skin tone';
  Result[1590] := 'person surfing: medium-dark skin tone';
  Result[1591] := 'person surfing: medium-light skin tone';
  Result[1592] := 'person swimming: dark skin tone';
  Result[1593] := 'person swimming: light skin tone';
  Result[1594] := 'person swimming: medium skin tone';
  Result[1595] := 'person swimming: medium-dark skin tone';
  Result[1596] := 'person swimming: medium-light skin tone';
  Result[1597] := 'person taking bath: dark skin tone';
  Result[1598] := 'person taking bath: light skin tone';
  Result[1599] := 'person taking bath: medium skin tone';
  Result[1600] := 'person taking bath: medium-dark skin tone';
  Result[1601] := 'person taking bath: medium-light skin tone';
  Result[1602] := 'person tipping hand: dark skin tone';
  Result[1603] := 'person tipping hand: light skin tone';
  Result[1604] := 'person tipping hand: medium skin tone';
  Result[1605] := 'person tipping hand: medium-dark skin tone';
  Result[1606] := 'person tipping hand: medium-light skin tone';
  Result[1607] := 'person walking facing right';
  Result[1608] := 'person walking facing right: dark skin tone';
  Result[1609] := 'person walking facing right: light skin tone';
  Result[1610] := 'person walking facing right: medium skin tone';
  Result[1611] := 'person walking facing right: medium-dark skin tone';
  Result[1612] := 'person walking facing right: medium-light skin tone';
  Result[1613] := 'person walking: dark skin tone';
  Result[1614] := 'person walking: light skin tone';
  Result[1615] := 'person walking: medium skin tone';
  Result[1616] := 'person walking: medium-dark skin tone';
  Result[1617] := 'person walking: medium-light skin tone';
  Result[1618] := 'person wearing turban: dark skin tone';
  Result[1619] := 'person wearing turban: light skin tone';
  Result[1620] := 'person wearing turban: medium skin tone';
  Result[1621] := 'person wearing turban: medium-dark skin tone';
  Result[1622] := 'person wearing turban: medium-light skin tone';
  Result[1623] := 'person with crown: dark skin tone';
  Result[1624] := 'person with crown: light skin tone';
  Result[1625] := 'person with crown: medium skin tone';
  Result[1626] := 'person with crown: medium-dark skin tone';
  Result[1627] := 'person with crown: medium-light skin tone';
  Result[1628] := 'person with skullcap: dark skin tone';
  Result[1629] := 'person with skullcap: light skin tone';
  Result[1630] := 'person with skullcap: medium skin tone';
  Result[1631] := 'person with skullcap: medium-dark skin tone';
  Result[1632] := 'person with skullcap: medium-light skin tone';
  Result[1633] := 'person with veil: dark skin tone';
  Result[1634] := 'person with veil: light skin tone';
  Result[1635] := 'person with veil: medium skin tone';
  Result[1636] := 'person with veil: medium-dark skin tone';
  Result[1637] := 'person with veil: medium-light skin tone';
  Result[1638] := 'person with white cane';
  Result[1639] := 'person with white cane facing right';
  Result[1640] := 'person with white cane facing right: dark skin tone';
  Result[1641] := 'person with white cane facing right: light skin tone';
  Result[1642] := 'person with white cane facing right: medium skin tone';
  Result[1643] := 'person with white cane facing right: medium-dark skin tone';
  Result[1644] := 'person with white cane facing right: medium-light skin tone';
  Result[1645] := 'person with white cane: dark skin tone';
  Result[1646] := 'person with white cane: light skin tone';
  Result[1647] := 'person with white cane: medium skin tone';
  Result[1648] := 'person with white cane: medium-dark skin tone';
  Result[1649] := 'person with white cane: medium-light skin tone';
  Result[1650] := 'person: bald';
  Result[1651] := 'person: curly hair';
  Result[1652] := 'person: dark skin tone';
  Result[1653] := 'person: dark skin tone, bald';
  Result[1654] := 'person: dark skin tone, beard';
  Result[1655] := 'person: dark skin tone, blond hair';
  Result[1656] := 'person: dark skin tone, curly hair';
  Result[1657] := 'person: dark skin tone, red hair';
  Result[1658] := 'person: dark skin tone, white hair';
  Result[1659] := 'person: light skin tone';
  Result[1660] := 'person: light skin tone, bald';
  Result[1661] := 'person: light skin tone, beard';
  Result[1662] := 'person: light skin tone, blond hair';
  Result[1663] := 'person: light skin tone, curly hair';
  Result[1664] := 'person: light skin tone, red hair';
  Result[1665] := 'person: light skin tone, white hair';
  Result[1666] := 'person: medium skin tone';
  Result[1667] := 'person: medium skin tone, bald';
  Result[1668] := 'person: medium skin tone, beard';
  Result[1669] := 'person: medium skin tone, blond hair';
  Result[1670] := 'person: medium skin tone, curly hair';
  Result[1671] := 'person: medium skin tone, red hair';
  Result[1672] := 'person: medium skin tone, white hair';
  Result[1673] := 'person: medium-dark skin tone';
  Result[1674] := 'person: medium-dark skin tone, bald';
  Result[1675] := 'person: medium-dark skin tone, beard';
  Result[1676] := 'person: medium-dark skin tone, blond hair';
  Result[1677] := 'person: medium-dark skin tone, curly hair';
  Result[1678] := 'person: medium-dark skin tone, red hair';
  Result[1679] := 'person: medium-dark skin tone, white hair';
  Result[1680] := 'person: medium-light skin tone';
  Result[1681] := 'person: medium-light skin tone, bald';
  Result[1682] := 'person: medium-light skin tone, beard';
  Result[1683] := 'person: medium-light skin tone, blond hair';
  Result[1684] := 'person: medium-light skin tone, curly hair';
  Result[1685] := 'person: medium-light skin tone, red hair';
  Result[1686] := 'person: medium-light skin tone, white hair';
  Result[1687] := 'person: red hair';
  Result[1688] := 'person: white hair';
  Result[1689] := 'phoenix';
  Result[1690] := 'pilot';
  Result[1691] := 'pilot: dark skin tone';
  Result[1692] := 'pilot: light skin tone';
  Result[1693] := 'pilot: medium skin tone';
  Result[1694] := 'pilot: medium-dark skin tone';
  Result[1695] := 'pilot: medium-light skin tone';
  Result[1696] := 'pinched fingers: dark skin tone';
  Result[1697] := 'pinched fingers: light skin tone';
  Result[1698] := 'pinched fingers: medium skin tone';
  Result[1699] := 'pinched fingers: medium-dark skin tone';
  Result[1700] := 'pinched fingers: medium-light skin tone';
  Result[1701] := 'pinching hand: dark skin tone';
  Result[1702] := 'pinching hand: light skin tone';
  Result[1703] := 'pinching hand: medium skin tone';
  Result[1704] := 'pinching hand: medium-dark skin tone';
  Result[1705] := 'pinching hand: medium-light skin tone';
  Result[1706] := 'pirate flag';
  Result[1707] := 'polar bear';
  Result[1708] := 'police officer: dark skin tone';
  Result[1709] := 'police officer: light skin tone';
  Result[1710] := 'police officer: medium skin tone';
  Result[1711] := 'police officer: medium-dark skin tone';
  Result[1712] := 'police officer: medium-light skin tone';
  Result[1713] := 'pregnant man: dark skin tone';
  Result[1714] := 'pregnant man: light skin tone';
  Result[1715] := 'pregnant man: medium skin tone';
  Result[1716] := 'pregnant man: medium-dark skin tone';
  Result[1717] := 'pregnant man: medium-light skin tone';
  Result[1718] := 'pregnant person: dark skin tone';
  Result[1719] := 'pregnant person: light skin tone';
  Result[1720] := 'pregnant person: medium skin tone';
  Result[1721] := 'pregnant person: medium-dark skin tone';
  Result[1722] := 'pregnant person: medium-light skin tone';
  Result[1723] := 'pregnant woman: dark skin tone';
  Result[1724] := 'pregnant woman: light skin tone';
  Result[1725] := 'pregnant woman: medium skin tone';
  Result[1726] := 'pregnant woman: medium-dark skin tone';
  Result[1727] := 'pregnant woman: medium-light skin tone';
  Result[1728] := 'prince: dark skin tone';
  Result[1729] := 'prince: light skin tone';
  Result[1730] := 'prince: medium skin tone';
  Result[1731] := 'prince: medium-dark skin tone';
  Result[1732] := 'prince: medium-light skin tone';
  Result[1733] := 'princess: dark skin tone';
  Result[1734] := 'princess: light skin tone';
  Result[1735] := 'princess: medium skin tone';
  Result[1736] := 'princess: medium-dark skin tone';
  Result[1737] := 'princess: medium-light skin tone';
  Result[1738] := 'rainbow flag';
  Result[1739] := 'raised back of hand: dark skin tone';
  Result[1740] := 'raised back of hand: light skin tone';
  Result[1741] := 'raised back of hand: medium skin tone';
  Result[1742] := 'raised back of hand: medium-dark skin tone';
  Result[1743] := 'raised back of hand: medium-light skin tone';
  Result[1744] := 'raised fist: dark skin tone';
  Result[1745] := 'raised fist: light skin tone';
  Result[1746] := 'raised fist: medium skin tone';
  Result[1747] := 'raised fist: medium-dark skin tone';
  Result[1748] := 'raised fist: medium-light skin tone';
  Result[1749] := 'raised hand: dark skin tone';
  Result[1750] := 'raised hand: light skin tone';
  Result[1751] := 'raised hand: medium skin tone';
  Result[1752] := 'raised hand: medium-dark skin tone';
  Result[1753] := 'raised hand: medium-light skin tone';
  Result[1754] := 'raising hands: dark skin tone';
  Result[1755] := 'raising hands: light skin tone';
  Result[1756] := 'raising hands: medium skin tone';
  Result[1757] := 'raising hands: medium-dark skin tone';
  Result[1758] := 'raising hands: medium-light skin tone';
  Result[1759] := 'right-facing fist: dark skin tone';
  Result[1760] := 'right-facing fist: light skin tone';
  Result[1761] := 'right-facing fist: medium skin tone';
  Result[1762] := 'right-facing fist: medium-dark skin tone';
  Result[1763] := 'right-facing fist: medium-light skin tone';
  Result[1764] := 'rightwards hand: dark skin tone';
  Result[1765] := 'rightwards hand: light skin tone';
  Result[1766] := 'rightwards hand: medium skin tone';
  Result[1767] := 'rightwards hand: medium-dark skin tone';
  Result[1768] := 'rightwards hand: medium-light skin tone';
  Result[1769] := 'rightwards pushing hand: dark skin tone';
  Result[1770] := 'rightwards pushing hand: light skin tone';
  Result[1771] := 'rightwards pushing hand: medium skin tone';
  Result[1772] := 'rightwards pushing hand: medium-dark skin tone';
  Result[1773] := 'rightwards pushing hand: medium-light skin tone';
  Result[1774] := 'scientist';
  Result[1775] := 'scientist: dark skin tone';
  Result[1776] := 'scientist: light skin tone';
  Result[1777] := 'scientist: medium skin tone';
  Result[1778] := 'scientist: medium-dark skin tone';
  Result[1779] := 'scientist: medium-light skin tone';
  Result[1780] := 'selfie: dark skin tone';
  Result[1781] := 'selfie: light skin tone';
  Result[1782] := 'selfie: medium skin tone';
  Result[1783] := 'selfie: medium-dark skin tone';
  Result[1784] := 'selfie: medium-light skin tone';
  Result[1785] := 'service dog';
  Result[1786] := 'sign of the horns: dark skin tone';
  Result[1787] := 'sign of the horns: light skin tone';
  Result[1788] := 'sign of the horns: medium skin tone';
  Result[1789] := 'sign of the horns: medium-dark skin tone';
  Result[1790] := 'sign of the horns: medium-light skin tone';
  Result[1791] := 'singer';
  Result[1792] := 'singer: dark skin tone';
  Result[1793] := 'singer: light skin tone';
  Result[1794] := 'singer: medium skin tone';
  Result[1795] := 'singer: medium-dark skin tone';
  Result[1796] := 'singer: medium-light skin tone';
  Result[1797] := 'snowboarder: dark skin tone';
  Result[1798] := 'snowboarder: light skin tone';
  Result[1799] := 'snowboarder: medium skin tone';
  Result[1800] := 'snowboarder: medium-dark skin tone';
  Result[1801] := 'snowboarder: medium-light skin tone';
  Result[1802] := 'student';
  Result[1803] := 'student: dark skin tone';
  Result[1804] := 'student: light skin tone';
  Result[1805] := 'student: medium skin tone';
  Result[1806] := 'student: medium-dark skin tone';
  Result[1807] := 'student: medium-light skin tone';
  Result[1808] := 'superhero: dark skin tone';
  Result[1809] := 'superhero: light skin tone';
  Result[1810] := 'superhero: medium skin tone';
  Result[1811] := 'superhero: medium-dark skin tone';
  Result[1812] := 'superhero: medium-light skin tone';
  Result[1813] := 'supervillain: dark skin tone';
  Result[1814] := 'supervillain: light skin tone';
  Result[1815] := 'supervillain: medium skin tone';
  Result[1816] := 'supervillain: medium-dark skin tone';
  Result[1817] := 'supervillain: medium-light skin tone';
  Result[1818] := 'teacher';
  Result[1819] := 'teacher: dark skin tone';
  Result[1820] := 'teacher: light skin tone';
  Result[1821] := 'teacher: medium skin tone';
  Result[1822] := 'teacher: medium-dark skin tone';
  Result[1823] := 'teacher: medium-light skin tone';
  Result[1824] := 'technologist';
  Result[1825] := 'technologist: dark skin tone';
  Result[1826] := 'technologist: light skin tone';
  Result[1827] := 'technologist: medium skin tone';
  Result[1828] := 'technologist: medium-dark skin tone';
  Result[1829] := 'technologist: medium-light skin tone';
  Result[1830] := 'thumbs down: dark skin tone';
  Result[1831] := 'thumbs down: light skin tone';
  Result[1832] := 'thumbs down: medium skin tone';
  Result[1833] := 'thumbs down: medium-dark skin tone';
  Result[1834] := 'thumbs down: medium-light skin tone';
  Result[1835] := 'thumbs up: dark skin tone';
  Result[1836] := 'thumbs up: light skin tone';
  Result[1837] := 'thumbs up: medium skin tone';
  Result[1838] := 'thumbs up: medium-dark skin tone';
  Result[1839] := 'thumbs up: medium-light skin tone';
  Result[1840] := 'transgender flag';
  Result[1841] := 'vampire: dark skin tone';
  Result[1842] := 'vampire: light skin tone';
  Result[1843] := 'vampire: medium skin tone';
  Result[1844] := 'vampire: medium-dark skin tone';
  Result[1845] := 'vampire: medium-light skin tone';
  Result[1846] := 'victory hand: dark skin tone';
  Result[1847] := 'victory hand: light skin tone';
  Result[1848] := 'victory hand: medium skin tone';
  Result[1849] := 'victory hand: medium-dark skin tone';
  Result[1850] := 'victory hand: medium-light skin tone';
  Result[1851] := 'vulcan salute: dark skin tone';
  Result[1852] := 'vulcan salute: light skin tone';
  Result[1853] := 'vulcan salute: medium skin tone';
  Result[1854] := 'vulcan salute: medium-dark skin tone';
  Result[1855] := 'vulcan salute: medium-light skin tone';
  Result[1856] := 'waving hand: dark skin tone';
  Result[1857] := 'waving hand: light skin tone';
  Result[1858] := 'waving hand: medium skin tone';
  Result[1859] := 'waving hand: medium-dark skin tone';
  Result[1860] := 'waving hand: medium-light skin tone';
  Result[1861] := 'woman and man holding hands: dark skin tone';
  Result[1862] := 'woman and man holding hands: dark skin tone, light skin tone';
  Result[1863] := 'woman and man holding hands: dark skin tone, medium skin tone';
  Result[1864] := 'woman and man holding hands: dark skin tone, medium-dark skin tone';
  Result[1865] := 'woman and man holding hands: dark skin tone, medium-light skin tone';
  Result[1866] := 'woman and man holding hands: light skin tone';
  Result[1867] := 'woman and man holding hands: light skin tone, dark skin tone';
  Result[1868] := 'woman and man holding hands: light skin tone, medium skin tone';
  Result[1869] := 'woman and man holding hands: light skin tone, medium-dark skin tone';
  Result[1870] := 'woman and man holding hands: light skin tone, medium-light skin tone';
  Result[1871] := 'woman and man holding hands: medium skin tone';
  Result[1872] := 'woman and man holding hands: medium skin tone, dark skin tone';
  Result[1873] := 'woman and man holding hands: medium skin tone, light skin tone';
  Result[1874] := 'woman and man holding hands: medium skin tone, medium-dark skin tone';
  Result[1875] := 'woman and man holding hands: medium skin tone, medium-light skin tone';
  Result[1876] := 'woman and man holding hands: medium-dark skin tone';
  Result[1877] := 'woman and man holding hands: medium-dark skin tone, dark skin tone';
  Result[1878] := 'woman and man holding hands: medium-dark skin tone, light skin tone';
  Result[1879] := 'woman and man holding hands: medium-dark skin tone, medium skin tone';
  Result[1880] := 'woman and man holding hands: medium-dark skin tone, medium-light skin tone';
  Result[1881] := 'woman and man holding hands: medium-light skin tone';
  Result[1882] := 'woman and man holding hands: medium-light skin tone, dark skin tone';
  Result[1883] := 'woman and man holding hands: medium-light skin tone, light skin tone';
  Result[1884] := 'woman and man holding hands: medium-light skin tone, medium skin tone';
  Result[1885] := 'woman and man holding hands: medium-light skin tone, medium-dark skin tone';
  Result[1886] := 'woman artist';
  Result[1887] := 'woman artist: dark skin tone';
  Result[1888] := 'woman artist: light skin tone';
  Result[1889] := 'woman artist: medium skin tone';
  Result[1890] := 'woman artist: medium-dark skin tone';
  Result[1891] := 'woman artist: medium-light skin tone';
  Result[1892] := 'woman astronaut';
  Result[1893] := 'woman astronaut: dark skin tone';
  Result[1894] := 'woman astronaut: light skin tone';
  Result[1895] := 'woman astronaut: medium skin tone';
  Result[1896] := 'woman astronaut: medium-dark skin tone';
  Result[1897] := 'woman astronaut: medium-light skin tone';
  Result[1898] := 'woman biking';
  Result[1899] := 'woman biking: dark skin tone';
  Result[1900] := 'woman biking: light skin tone';
  Result[1901] := 'woman biking: medium skin tone';
  Result[1902] := 'woman biking: medium-dark skin tone';
  Result[1903] := 'woman biking: medium-light skin tone';
  Result[1904] := 'woman bouncing ball';
  Result[1905] := 'woman bouncing ball: dark skin tone';
  Result[1906] := 'woman bouncing ball: light skin tone';
  Result[1907] := 'woman bouncing ball: medium skin tone';
  Result[1908] := 'woman bouncing ball: medium-dark skin tone';
  Result[1909] := 'woman bouncing ball: medium-light skin tone';
  Result[1910] := 'woman bowing';
  Result[1911] := 'woman bowing: dark skin tone';
  Result[1912] := 'woman bowing: light skin tone';
  Result[1913] := 'woman bowing: medium skin tone';
  Result[1914] := 'woman bowing: medium-dark skin tone';
  Result[1915] := 'woman bowing: medium-light skin tone';
  Result[1916] := 'woman cartwheeling';
  Result[1917] := 'woman cartwheeling: dark skin tone';
  Result[1918] := 'woman cartwheeling: light skin tone';
  Result[1919] := 'woman cartwheeling: medium skin tone';
  Result[1920] := 'woman cartwheeling: medium-dark skin tone';
  Result[1921] := 'woman cartwheeling: medium-light skin tone';
  Result[1922] := 'woman climbing';
  Result[1923] := 'woman climbing: dark skin tone';
  Result[1924] := 'woman climbing: light skin tone';
  Result[1925] := 'woman climbing: medium skin tone';
  Result[1926] := 'woman climbing: medium-dark skin tone';
  Result[1927] := 'woman climbing: medium-light skin tone';
  Result[1928] := 'woman construction worker';
  Result[1929] := 'woman construction worker: dark skin tone';
  Result[1930] := 'woman construction worker: light skin tone';
  Result[1931] := 'woman construction worker: medium skin tone';
  Result[1932] := 'woman construction worker: medium-dark skin tone';
  Result[1933] := 'woman construction worker: medium-light skin tone';
  Result[1934] := 'woman cook';
  Result[1935] := 'woman cook: dark skin tone';
  Result[1936] := 'woman cook: light skin tone';
  Result[1937] := 'woman cook: medium skin tone';
  Result[1938] := 'woman cook: medium-dark skin tone';
  Result[1939] := 'woman cook: medium-light skin tone';
  Result[1940] := 'woman dancing: dark skin tone';
  Result[1941] := 'woman dancing: light skin tone';
  Result[1942] := 'woman dancing: medium skin tone';
  Result[1943] := 'woman dancing: medium-dark skin tone';
  Result[1944] := 'woman dancing: medium-light skin tone';
  Result[1945] := 'woman detective';
  Result[1946] := 'woman detective: dark skin tone';
  Result[1947] := 'woman detective: light skin tone';
  Result[1948] := 'woman detective: medium skin tone';
  Result[1949] := 'woman detective: medium-dark skin tone';
  Result[1950] := 'woman detective: medium-light skin tone';
  Result[1951] := 'woman elf';
  Result[1952] := 'woman elf: dark skin tone';
  Result[1953] := 'woman elf: light skin tone';
  Result[1954] := 'woman elf: medium skin tone';
  Result[1955] := 'woman elf: medium-dark skin tone';
  Result[1956] := 'woman elf: medium-light skin tone';
  Result[1957] := 'woman facepalming';
  Result[1958] := 'woman facepalming: dark skin tone';
  Result[1959] := 'woman facepalming: light skin tone';
  Result[1960] := 'woman facepalming: medium skin tone';
  Result[1961] := 'woman facepalming: medium-dark skin tone';
  Result[1962] := 'woman facepalming: medium-light skin tone';
  Result[1963] := 'woman factory worker';
  Result[1964] := 'woman factory worker: dark skin tone';
  Result[1965] := 'woman factory worker: light skin tone';
  Result[1966] := 'woman factory worker: medium skin tone';
  Result[1967] := 'woman factory worker: medium-dark skin tone';
  Result[1968] := 'woman factory worker: medium-light skin tone';
  Result[1969] := 'woman fairy';
  Result[1970] := 'woman fairy: dark skin tone';
  Result[1971] := 'woman fairy: light skin tone';
  Result[1972] := 'woman fairy: medium skin tone';
  Result[1973] := 'woman fairy: medium-dark skin tone';
  Result[1974] := 'woman fairy: medium-light skin tone';
  Result[1975] := 'woman farmer';
  Result[1976] := 'woman farmer: dark skin tone';
  Result[1977] := 'woman farmer: light skin tone';
  Result[1978] := 'woman farmer: medium skin tone';
  Result[1979] := 'woman farmer: medium-dark skin tone';
  Result[1980] := 'woman farmer: medium-light skin tone';
  Result[1981] := 'woman feeding baby';
  Result[1982] := 'woman feeding baby: dark skin tone';
  Result[1983] := 'woman feeding baby: light skin tone';
  Result[1984] := 'woman feeding baby: medium skin tone';
  Result[1985] := 'woman feeding baby: medium-dark skin tone';
  Result[1986] := 'woman feeding baby: medium-light skin tone';
  Result[1987] := 'woman firefighter';
  Result[1988] := 'woman firefighter: dark skin tone';
  Result[1989] := 'woman firefighter: light skin tone';
  Result[1990] := 'woman firefighter: medium skin tone';
  Result[1991] := 'woman firefighter: medium-dark skin tone';
  Result[1992] := 'woman firefighter: medium-light skin tone';
  Result[1993] := 'woman frowning';
  Result[1994] := 'woman frowning: dark skin tone';
  Result[1995] := 'woman frowning: light skin tone';
  Result[1996] := 'woman frowning: medium skin tone';
  Result[1997] := 'woman frowning: medium-dark skin tone';
  Result[1998] := 'woman frowning: medium-light skin tone';
  Result[1999] := 'woman genie';
  Result[2000] := 'woman gesturing NO';
  Result[2001] := 'woman gesturing NO: dark skin tone';
  Result[2002] := 'woman gesturing NO: light skin tone';
  Result[2003] := 'woman gesturing NO: medium skin tone';
  Result[2004] := 'woman gesturing NO: medium-dark skin tone';
  Result[2005] := 'woman gesturing NO: medium-light skin tone';
  Result[2006] := 'woman gesturing OK';
  Result[2007] := 'woman gesturing OK: dark skin tone';
  Result[2008] := 'woman gesturing OK: light skin tone';
  Result[2009] := 'woman gesturing OK: medium skin tone';
  Result[2010] := 'woman gesturing OK: medium-dark skin tone';
  Result[2011] := 'woman gesturing OK: medium-light skin tone';
  Result[2012] := 'woman getting haircut';
  Result[2013] := 'woman getting haircut: dark skin tone';
  Result[2014] := 'woman getting haircut: light skin tone';
  Result[2015] := 'woman getting haircut: medium skin tone';
  Result[2016] := 'woman getting haircut: medium-dark skin tone';
  Result[2017] := 'woman getting haircut: medium-light skin tone';
  Result[2018] := 'woman getting massage';
  Result[2019] := 'woman getting massage: dark skin tone';
  Result[2020] := 'woman getting massage: light skin tone';
  Result[2021] := 'woman getting massage: medium skin tone';
  Result[2022] := 'woman getting massage: medium-dark skin tone';
  Result[2023] := 'woman getting massage: medium-light skin tone';
  Result[2024] := 'woman golfing';
  Result[2025] := 'woman golfing: dark skin tone';
  Result[2026] := 'woman golfing: light skin tone';
  Result[2027] := 'woman golfing: medium skin tone';
  Result[2028] := 'woman golfing: medium-dark skin tone';
  Result[2029] := 'woman golfing: medium-light skin tone';
  Result[2030] := 'woman guard';
  Result[2031] := 'woman guard: dark skin tone';
  Result[2032] := 'woman guard: light skin tone';
  Result[2033] := 'woman guard: medium skin tone';
  Result[2034] := 'woman guard: medium-dark skin tone';
  Result[2035] := 'woman guard: medium-light skin tone';
  Result[2036] := 'woman health worker';
  Result[2037] := 'woman health worker: dark skin tone';
  Result[2038] := 'woman health worker: light skin tone';
  Result[2039] := 'woman health worker: medium skin tone';
  Result[2040] := 'woman health worker: medium-dark skin tone';
  Result[2041] := 'woman health worker: medium-light skin tone';
  Result[2042] := 'woman in lotus position';
  Result[2043] := 'woman in lotus position: dark skin tone';
  Result[2044] := 'woman in lotus position: light skin tone';
  Result[2045] := 'woman in lotus position: medium skin tone';
  Result[2046] := 'woman in lotus position: medium-dark skin tone';
  Result[2047] := 'woman in lotus position: medium-light skin tone';
  Result[2048] := 'woman in manual wheelchair';
  Result[2049] := 'woman in manual wheelchair facing right';
  Result[2050] := 'woman in manual wheelchair facing right: dark skin tone';
  Result[2051] := 'woman in manual wheelchair facing right: light skin tone';
  Result[2052] := 'woman in manual wheelchair facing right: medium skin tone';
  Result[2053] := 'woman in manual wheelchair facing right: medium-dark skin tone';
  Result[2054] := 'woman in manual wheelchair facing right: medium-light skin tone';
  Result[2055] := 'woman in manual wheelchair: dark skin tone';
  Result[2056] := 'woman in manual wheelchair: light skin tone';
  Result[2057] := 'woman in manual wheelchair: medium skin tone';
  Result[2058] := 'woman in manual wheelchair: medium-dark skin tone';
  Result[2059] := 'woman in manual wheelchair: medium-light skin tone';
  Result[2060] := 'woman in motorized wheelchair';
  Result[2061] := 'woman in motorized wheelchair facing right';
  Result[2062] := 'woman in motorized wheelchair facing right: dark skin tone';
  Result[2063] := 'woman in motorized wheelchair facing right: light skin tone';
  Result[2064] := 'woman in motorized wheelchair facing right: medium skin tone';
  Result[2065] := 'woman in motorized wheelchair facing right: medium-dark skin tone';
  Result[2066] := 'woman in motorized wheelchair facing right: medium-light skin tone';
  Result[2067] := 'woman in motorized wheelchair: dark skin tone';
  Result[2068] := 'woman in motorized wheelchair: light skin tone';
  Result[2069] := 'woman in motorized wheelchair: medium skin tone';
  Result[2070] := 'woman in motorized wheelchair: medium-dark skin tone';
  Result[2071] := 'woman in motorized wheelchair: medium-light skin tone';
  Result[2072] := 'woman in steamy room';
  Result[2073] := 'woman in steamy room: dark skin tone';
  Result[2074] := 'woman in steamy room: light skin tone';
  Result[2075] := 'woman in steamy room: medium skin tone';
  Result[2076] := 'woman in steamy room: medium-dark skin tone';
  Result[2077] := 'woman in steamy room: medium-light skin tone';
  Result[2078] := 'woman in tuxedo';
  Result[2079] := 'woman in tuxedo: dark skin tone';
  Result[2080] := 'woman in tuxedo: light skin tone';
  Result[2081] := 'woman in tuxedo: medium skin tone';
  Result[2082] := 'woman in tuxedo: medium-dark skin tone';
  Result[2083] := 'woman in tuxedo: medium-light skin tone';
  Result[2084] := 'woman judge';
  Result[2085] := 'woman judge: dark skin tone';
  Result[2086] := 'woman judge: light skin tone';
  Result[2087] := 'woman judge: medium skin tone';
  Result[2088] := 'woman judge: medium-dark skin tone';
  Result[2089] := 'woman judge: medium-light skin tone';
  Result[2090] := 'woman juggling';
  Result[2091] := 'woman juggling: dark skin tone';
  Result[2092] := 'woman juggling: light skin tone';
  Result[2093] := 'woman juggling: medium skin tone';
  Result[2094] := 'woman juggling: medium-dark skin tone';
  Result[2095] := 'woman juggling: medium-light skin tone';
  Result[2096] := 'woman kneeling';
  Result[2097] := 'woman kneeling facing right';
  Result[2098] := 'woman kneeling facing right: dark skin tone';
  Result[2099] := 'woman kneeling facing right: light skin tone';
  Result[2100] := 'woman kneeling facing right: medium skin tone';
  Result[2101] := 'woman kneeling facing right: medium-dark skin tone';
  Result[2102] := 'woman kneeling facing right: medium-light skin tone';
  Result[2103] := 'woman kneeling: dark skin tone';
  Result[2104] := 'woman kneeling: light skin tone';
  Result[2105] := 'woman kneeling: medium skin tone';
  Result[2106] := 'woman kneeling: medium-dark skin tone';
  Result[2107] := 'woman kneeling: medium-light skin tone';
  Result[2108] := 'woman lifting weights';
  Result[2109] := 'woman lifting weights: dark skin tone';
  Result[2110] := 'woman lifting weights: light skin tone';
  Result[2111] := 'woman lifting weights: medium skin tone';
  Result[2112] := 'woman lifting weights: medium-dark skin tone';
  Result[2113] := 'woman lifting weights: medium-light skin tone';
  Result[2114] := 'woman mage';
  Result[2115] := 'woman mage: dark skin tone';
  Result[2116] := 'woman mage: light skin tone';
  Result[2117] := 'woman mage: medium skin tone';
  Result[2118] := 'woman mage: medium-dark skin tone';
  Result[2119] := 'woman mage: medium-light skin tone';
  Result[2120] := 'woman mechanic';
  Result[2121] := 'woman mechanic: dark skin tone';
  Result[2122] := 'woman mechanic: light skin tone';
  Result[2123] := 'woman mechanic: medium skin tone';
  Result[2124] := 'woman mechanic: medium-dark skin tone';
  Result[2125] := 'woman mechanic: medium-light skin tone';
  Result[2126] := 'woman mountain biking';
  Result[2127] := 'woman mountain biking: dark skin tone';
  Result[2128] := 'woman mountain biking: light skin tone';
  Result[2129] := 'woman mountain biking: medium skin tone';
  Result[2130] := 'woman mountain biking: medium-dark skin tone';
  Result[2131] := 'woman mountain biking: medium-light skin tone';
  Result[2132] := 'woman office worker';
  Result[2133] := 'woman office worker: dark skin tone';
  Result[2134] := 'woman office worker: light skin tone';
  Result[2135] := 'woman office worker: medium skin tone';
  Result[2136] := 'woman office worker: medium-dark skin tone';
  Result[2137] := 'woman office worker: medium-light skin tone';
  Result[2138] := 'woman pilot';
  Result[2139] := 'woman pilot: dark skin tone';
  Result[2140] := 'woman pilot: light skin tone';
  Result[2141] := 'woman pilot: medium skin tone';
  Result[2142] := 'woman pilot: medium-dark skin tone';
  Result[2143] := 'woman pilot: medium-light skin tone';
  Result[2144] := 'woman playing handball';
  Result[2145] := 'woman playing handball: dark skin tone';
  Result[2146] := 'woman playing handball: light skin tone';
  Result[2147] := 'woman playing handball: medium skin tone';
  Result[2148] := 'woman playing handball: medium-dark skin tone';
  Result[2149] := 'woman playing handball: medium-light skin tone';
  Result[2150] := 'woman playing water polo';
  Result[2151] := 'woman playing water polo: dark skin tone';
  Result[2152] := 'woman playing water polo: light skin tone';
  Result[2153] := 'woman playing water polo: medium skin tone';
  Result[2154] := 'woman playing water polo: medium-dark skin tone';
  Result[2155] := 'woman playing water polo: medium-light skin tone';
  Result[2156] := 'woman police officer';
  Result[2157] := 'woman police officer: dark skin tone';
  Result[2158] := 'woman police officer: light skin tone';
  Result[2159] := 'woman police officer: medium skin tone';
  Result[2160] := 'woman police officer: medium-dark skin tone';
  Result[2161] := 'woman police officer: medium-light skin tone';
  Result[2162] := 'woman pouting';
  Result[2163] := 'woman pouting: dark skin tone';
  Result[2164] := 'woman pouting: light skin tone';
  Result[2165] := 'woman pouting: medium skin tone';
  Result[2166] := 'woman pouting: medium-dark skin tone';
  Result[2167] := 'woman pouting: medium-light skin tone';
  Result[2168] := 'woman raising hand';
  Result[2169] := 'woman raising hand: dark skin tone';
  Result[2170] := 'woman raising hand: light skin tone';
  Result[2171] := 'woman raising hand: medium skin tone';
  Result[2172] := 'woman raising hand: medium-dark skin tone';
  Result[2173] := 'woman raising hand: medium-light skin tone';
  Result[2174] := 'woman rowing boat';
  Result[2175] := 'woman rowing boat: dark skin tone';
  Result[2176] := 'woman rowing boat: light skin tone';
  Result[2177] := 'woman rowing boat: medium skin tone';
  Result[2178] := 'woman rowing boat: medium-dark skin tone';
  Result[2179] := 'woman rowing boat: medium-light skin tone';
  Result[2180] := 'woman running';
  Result[2181] := 'woman running facing right';
  Result[2182] := 'woman running facing right: dark skin tone';
  Result[2183] := 'woman running facing right: light skin tone';
  Result[2184] := 'woman running facing right: medium skin tone';
  Result[2185] := 'woman running facing right: medium-dark skin tone';
  Result[2186] := 'woman running facing right: medium-light skin tone';
  Result[2187] := 'woman running: dark skin tone';
  Result[2188] := 'woman running: light skin tone';
  Result[2189] := 'woman running: medium skin tone';
  Result[2190] := 'woman running: medium-dark skin tone';
  Result[2191] := 'woman running: medium-light skin tone';
  Result[2192] := 'woman scientist';
  Result[2193] := 'woman scientist: dark skin tone';
  Result[2194] := 'woman scientist: light skin tone';
  Result[2195] := 'woman scientist: medium skin tone';
  Result[2196] := 'woman scientist: medium-dark skin tone';
  Result[2197] := 'woman scientist: medium-light skin tone';
  Result[2198] := 'woman shrugging';
  Result[2199] := 'woman shrugging: dark skin tone';
  Result[2200] := 'woman shrugging: light skin tone';
  Result[2201] := 'woman shrugging: medium skin tone';
  Result[2202] := 'woman shrugging: medium-dark skin tone';
  Result[2203] := 'woman shrugging: medium-light skin tone';
  Result[2204] := 'woman singer';
  Result[2205] := 'woman singer: dark skin tone';
  Result[2206] := 'woman singer: light skin tone';
  Result[2207] := 'woman singer: medium skin tone';
  Result[2208] := 'woman singer: medium-dark skin tone';
  Result[2209] := 'woman singer: medium-light skin tone';
  Result[2210] := 'woman standing';
  Result[2211] := 'woman standing: dark skin tone';
  Result[2212] := 'woman standing: light skin tone';
  Result[2213] := 'woman standing: medium skin tone';
  Result[2214] := 'woman standing: medium-dark skin tone';
  Result[2215] := 'woman standing: medium-light skin tone';
  Result[2216] := 'woman student';
  Result[2217] := 'woman student: dark skin tone';
  Result[2218] := 'woman student: light skin tone';
  Result[2219] := 'woman student: medium skin tone';
  Result[2220] := 'woman student: medium-dark skin tone';
  Result[2221] := 'woman student: medium-light skin tone';
  Result[2222] := 'woman superhero';
  Result[2223] := 'woman superhero: dark skin tone';
  Result[2224] := 'woman superhero: light skin tone';
  Result[2225] := 'woman superhero: medium skin tone';
  Result[2226] := 'woman superhero: medium-dark skin tone';
  Result[2227] := 'woman superhero: medium-light skin tone';
  Result[2228] := 'woman supervillain';
  Result[2229] := 'woman supervillain: dark skin tone';
  Result[2230] := 'woman supervillain: light skin tone';
  Result[2231] := 'woman supervillain: medium skin tone';
  Result[2232] := 'woman supervillain: medium-dark skin tone';
  Result[2233] := 'woman supervillain: medium-light skin tone';
  Result[2234] := 'woman surfing';
  Result[2235] := 'woman surfing: dark skin tone';
  Result[2236] := 'woman surfing: light skin tone';
  Result[2237] := 'woman surfing: medium skin tone';
  Result[2238] := 'woman surfing: medium-dark skin tone';
  Result[2239] := 'woman surfing: medium-light skin tone';
  Result[2240] := 'woman swimming';
  Result[2241] := 'woman swimming: dark skin tone';
  Result[2242] := 'woman swimming: light skin tone';
  Result[2243] := 'woman swimming: medium skin tone';
  Result[2244] := 'woman swimming: medium-dark skin tone';
  Result[2245] := 'woman swimming: medium-light skin tone';
  Result[2246] := 'woman teacher';
  Result[2247] := 'woman teacher: dark skin tone';
  Result[2248] := 'woman teacher: light skin tone';
  Result[2249] := 'woman teacher: medium skin tone';
  Result[2250] := 'woman teacher: medium-dark skin tone';
  Result[2251] := 'woman teacher: medium-light skin tone';
  Result[2252] := 'woman technologist';
  Result[2253] := 'woman technologist: dark skin tone';
  Result[2254] := 'woman technologist: light skin tone';
  Result[2255] := 'woman technologist: medium skin tone';
  Result[2256] := 'woman technologist: medium-dark skin tone';
  Result[2257] := 'woman technologist: medium-light skin tone';
  Result[2258] := 'woman tipping hand';
  Result[2259] := 'woman tipping hand: dark skin tone';
  Result[2260] := 'woman tipping hand: light skin tone';
  Result[2261] := 'woman tipping hand: medium skin tone';
  Result[2262] := 'woman tipping hand: medium-dark skin tone';
  Result[2263] := 'woman tipping hand: medium-light skin tone';
  Result[2264] := 'woman vampire';
  Result[2265] := 'woman vampire: dark skin tone';
  Result[2266] := 'woman vampire: light skin tone';
  Result[2267] := 'woman vampire: medium skin tone';
  Result[2268] := 'woman vampire: medium-dark skin tone';
  Result[2269] := 'woman vampire: medium-light skin tone';
  Result[2270] := 'woman walking';
  Result[2271] := 'woman walking facing right';
  Result[2272] := 'woman walking facing right: dark skin tone';
  Result[2273] := 'woman walking facing right: light skin tone';
  Result[2274] := 'woman walking facing right: medium skin tone';
  Result[2275] := 'woman walking facing right: medium-dark skin tone';
  Result[2276] := 'woman walking facing right: medium-light skin tone';
  Result[2277] := 'woman walking: dark skin tone';
  Result[2278] := 'woman walking: light skin tone';
  Result[2279] := 'woman walking: medium skin tone';
  Result[2280] := 'woman walking: medium-dark skin tone';
  Result[2281] := 'woman walking: medium-light skin tone';
  Result[2282] := 'woman wearing turban';
  Result[2283] := 'woman wearing turban: dark skin tone';
  Result[2284] := 'woman wearing turban: light skin tone';
  Result[2285] := 'woman wearing turban: medium skin tone';
  Result[2286] := 'woman wearing turban: medium-dark skin tone';
  Result[2287] := 'woman wearing turban: medium-light skin tone';
  Result[2288] := 'woman with headscarf: dark skin tone';
  Result[2289] := 'woman with headscarf: light skin tone';
  Result[2290] := 'woman with headscarf: medium skin tone';
  Result[2291] := 'woman with headscarf: medium-dark skin tone';
  Result[2292] := 'woman with headscarf: medium-light skin tone';
  Result[2293] := 'woman with veil';
  Result[2294] := 'woman with veil: dark skin tone';
  Result[2295] := 'woman with veil: light skin tone';
  Result[2296] := 'woman with veil: medium skin tone';
  Result[2297] := 'woman with veil: medium-dark skin tone';
  Result[2298] := 'woman with veil: medium-light skin tone';
  Result[2299] := 'woman with white cane';
  Result[2300] := 'woman with white cane facing right';
  Result[2301] := 'woman with white cane facing right: dark skin tone';
  Result[2302] := 'woman with white cane facing right: light skin tone';
  Result[2303] := 'woman with white cane facing right: medium skin tone';
  Result[2304] := 'woman with white cane facing right: medium-dark skin tone';
  Result[2305] := 'woman with white cane facing right: medium-light skin tone';
  Result[2306] := 'woman with white cane: dark skin tone';
  Result[2307] := 'woman with white cane: light skin tone';
  Result[2308] := 'woman with white cane: medium skin tone';
  Result[2309] := 'woman with white cane: medium-dark skin tone';
  Result[2310] := 'woman with white cane: medium-light skin tone';
  Result[2311] := 'woman zombie';
  Result[2312] := 'woman: bald';
  Result[2313] := 'woman: beard';
  Result[2314] := 'woman: blond hair';
  Result[2315] := 'woman: curly hair';
  Result[2316] := 'woman: dark skin tone';
  Result[2317] := 'woman: dark skin tone, bald';
  Result[2318] := 'woman: dark skin tone, beard';
  Result[2319] := 'woman: dark skin tone, blond hair';
  Result[2320] := 'woman: dark skin tone, curly hair';
  Result[2321] := 'woman: dark skin tone, red hair';
  Result[2322] := 'woman: dark skin tone, white hair';
  Result[2323] := 'woman: light skin tone';
  Result[2324] := 'woman: light skin tone, bald';
  Result[2325] := 'woman: light skin tone, beard';
  Result[2326] := 'woman: light skin tone, blond hair';
  Result[2327] := 'woman: light skin tone, curly hair';
  Result[2328] := 'woman: light skin tone, red hair';
  Result[2329] := 'woman: light skin tone, white hair';
  Result[2330] := 'woman: medium skin tone';
  Result[2331] := 'woman: medium skin tone, bald';
  Result[2332] := 'woman: medium skin tone, beard';
  Result[2333] := 'woman: medium skin tone, blond hair';
  Result[2334] := 'woman: medium skin tone, curly hair';
  Result[2335] := 'woman: medium skin tone, red hair';
  Result[2336] := 'woman: medium skin tone, white hair';
  Result[2337] := 'woman: medium-dark skin tone';
  Result[2338] := 'woman: medium-dark skin tone, bald';
  Result[2339] := 'woman: medium-dark skin tone, beard';
  Result[2340] := 'woman: medium-dark skin tone, blond hair';
  Result[2341] := 'woman: medium-dark skin tone, curly hair';
  Result[2342] := 'woman: medium-dark skin tone, red hair';
  Result[2343] := 'woman: medium-dark skin tone, white hair';
  Result[2344] := 'woman: medium-light skin tone';
  Result[2345] := 'woman: medium-light skin tone, bald';
  Result[2346] := 'woman: medium-light skin tone, beard';
  Result[2347] := 'woman: medium-light skin tone, blond hair';
  Result[2348] := 'woman: medium-light skin tone, curly hair';
  Result[2349] := 'woman: medium-light skin tone, red hair';
  Result[2350] := 'woman: medium-light skin tone, white hair';
  Result[2351] := 'woman: red hair';
  Result[2352] := 'woman: white hair';
  Result[2353] := 'women holding hands: dark skin tone';
  Result[2354] := 'women holding hands: dark skin tone, light skin tone';
  Result[2355] := 'women holding hands: dark skin tone, medium skin tone';
  Result[2356] := 'women holding hands: dark skin tone, medium-dark skin tone';
  Result[2357] := 'women holding hands: dark skin tone, medium-light skin tone';
  Result[2358] := 'women holding hands: light skin tone';
  Result[2359] := 'women holding hands: light skin tone, dark skin tone';
  Result[2360] := 'women holding hands: light skin tone, medium skin tone';
  Result[2361] := 'women holding hands: light skin tone, medium-dark skin tone';
  Result[2362] := 'women holding hands: light skin tone, medium-light skin tone';
  Result[2363] := 'women holding hands: medium skin tone';
  Result[2364] := 'women holding hands: medium skin tone, dark skin tone';
  Result[2365] := 'women holding hands: medium skin tone, light skin tone';
  Result[2366] := 'women holding hands: medium skin tone, medium-dark skin tone';
  Result[2367] := 'women holding hands: medium skin tone, medium-light skin tone';
  Result[2368] := 'women holding hands: medium-dark skin tone';
  Result[2369] := 'women holding hands: medium-dark skin tone, dark skin tone';
  Result[2370] := 'women holding hands: medium-dark skin tone, light skin tone';
  Result[2371] := 'women holding hands: medium-dark skin tone, medium skin tone';
  Result[2372] := 'women holding hands: medium-dark skin tone, medium-light skin tone';
  Result[2373] := 'women holding hands: medium-light skin tone';
  Result[2374] := 'women holding hands: medium-light skin tone, dark skin tone';
  Result[2375] := 'women holding hands: medium-light skin tone, light skin tone';
  Result[2376] := 'women holding hands: medium-light skin tone, medium skin tone';
  Result[2377] := 'women holding hands: medium-light skin tone, medium-dark skin tone';
  Result[2378] := 'women with bunny ears';
  Result[2379] := 'women wrestling';
  Result[2380] := 'writing hand: dark skin tone';
  Result[2381] := 'writing hand: light skin tone';
  Result[2382] := 'writing hand: medium skin tone';
  Result[2383] := 'writing hand: medium-dark skin tone';
  Result[2384] := 'writing hand: medium-light skin tone';
end;

end.