/*
@170  = ~Suna Seni!  Oh, how I have longed to see your beautiful face once again!  I have missed you so much since I fled the city.  I am sorry I had to leave you so suddenly and without explanation.  It pained my soul to know that I might have hurt you.~
*/

REPLACE_SAY VALYGARJ %valygar_state_1% @0

/* 
@172  = ~Yes, my love, I am fine.  <CHARNAME> paid me a visit in my cabin and has offered to aid me in my quest to stop Lavok.~
*/

REPLACE_SAY VALYGARJ %valygar_state_2% @1

/*
@188  = @188  = ~I'm so sorry for leaving you, my love.  If I had only known, I would have hunted down the wizard myself.  It seems my family's curse runs deeper than I'd feared.~
*/

REPLACE_SAY VALYGARJ %valygar_state_3% @2


///////
//Is there something on your mind? - After Suna Seni encounter from UB. After the meeting in the slums. Before meeting in Spellhold

APPEND VALYGARJ

IF WEIGHT #-1
~Global("H#SunaEncounter","GLOBAL",1)~ THEN BEGIN Apples
SAY @3 
++ @4 + Apples3
++ @5 GOTO Apples1
++ @6 GOTO Apples2
++ @7 GOTO Apples2
END

IF ~~ THEN BEGIN Apples1
SAY @8
IF ~~ THEN + Apples3
END

IF ~~ THEN BEGIN Apples2
SAY @9
IF ~~ THEN + Apples3
END

IF ~~ THEN BEGIN Apples3
SAY @10
++ @11 + Apples13
++ @12 + Apples4
++ @13 + Apples6
++ @14 + Apples7
++ @15 + Apples5
++ @16 + Apples6
++ @17 GOTO Apples12
++ @18 + Apples5
++ @19 GOTO Apples10
END

IF ~~ THEN BEGIN Apples4
SAY @20
++ @13 + Apples6
++ @14 + Apples7
++ @15 + Apples5
++ @21 GOTO Apples12
++ @22 + Apples5
END

IF ~~ THEN BEGIN Apples5
SAY @23
IF ~~ THEN + Apples7
END

IF ~~ THEN BEGIN Apples6
SAY @24
IF ~~ THEN + Apples7
END

IF ~~ THEN BEGIN Apples7
SAY @25
= @26
++ @27 + Apples8
++ @28 + Apples11
++ @29 + Apples9
++ @30 + Apples18
++ @22 + Apples9
END

IF ~~ THEN BEGIN Apples8
SAY @31
++ @28 + Apples11
++ @29 + Apples9
++ @30 + Apples18
++ @22 + Apples9
END

IF ~~ THEN BEGIN Apples9
SAY @32
IF ~~ THEN + Apples11
END

IF ~~ THEN BEGIN Apples10
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Apples11
SAY @34
= @35
= @36
++ @37 + Apples14
++ @38 + Apples15
++ @39 + Apples14
++ @40 + Apples14
++ @41 + Apples16
++ @42 + Apples17
END

IF ~~ THEN BEGIN Apples12
SAY @43 
IF ~~ THEN + Apples5
END

IF ~~ THEN BEGIN Apples13
SAY @44
++ @12 + Apples4
++ @13 + Apples6
++ @14 + Apples7
++ @15 + Apples5
++ @16 + Apples6
++ @17 GOTO Apples12
++ @18 + Apples5
++ @19 GOTO Apples10
END

IF ~~ THEN BEGIN Apples14
SAY @45
IF ~~ THEN + Apples17
END

IF ~~ THEN BEGIN Apples15
SAY @46
IF ~~ THEN + Apples17
END

IF ~~ THEN BEGIN Apples16
SAY @47
IF ~~ THEN + Apples17
END

IF ~~ THEN BEGIN Apples17
SAY @48
IF ~~ THEN DO ~SetGlobal("H#SunaEncounter","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Apples18
SAY @49
IF ~~ THEN + Apples17
END

END