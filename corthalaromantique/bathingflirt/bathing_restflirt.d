//20 > LT 
//Umar Hills or Windspear Hills
APPEND VALYGARJ

// Could not resist

IF WEIGHT #-1
~Global("H#GoneSwimming","LOCALS",1)~ THEN BEGIN ValygarGoesSwimming
SAY @0
++ @1 DO ~SetGlobal("H#GoneSwimming","LOCALS",2)~ GOTO Splash1a
++ @2 DO ~SetGlobal("H#GoneSwimming","LOCALS",2)~ GOTO Splash1
++ @3 DO ~SetGlobal("H#GoneSwimming","LOCALS",2)~ GOTO Splash2
END

IF ~~ THEN BEGIN Splash1
SAY @4
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash2
SAY @5
++ @6 GOTO Splash3
++ @7 GOTO Splash4
++ @8 GOTO Splash1
END

IF ~~ THEN BEGIN Splash3
SAY @9
    =
    @10
    =
    @11
IF ~~ THEN GOTO Splash9
END

IF ~~ THEN BEGIN Splash4
SAY @12
    =
    @10
    =
    @13
    =
    @14
++ @15 GOTO Splash9
++ @16 GOTO Splash10
END

IF ~~ THEN BEGIN Splash9
SAY @17
++ @18 GOTO Splash6
++ @19 GOTO Splash7
++ @20 GOTO Splash8
++ @21 GOTO Splash8a
END

IF ~~ THEN BEGIN Splash6
SAY @22
    =
    @23
    =
    @24
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN BEGIN Splash7
SAY @25
    =
    @26
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash8
SAY @27
    =
    @23
    =
    @24
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash10
SAY @28
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN BEGIN Splash8a
SAY @29
++ @30 GOTO Splash11
++ @31 GOTO Splash12
++ @32 GOTO Splash7
++ @33 GOTO Splash8
END

IF ~~ THEN BEGIN Splash11
SAY @34
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash12
SAY @35
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash1a
SAY @36
++ @37 GOTO Splash15
++ @38 GOTO Splash16
++ @39 GOTO Splash17
END

IF ~~ THEN BEGIN Splash15
SAY @40
++ @41 GOTO Splash18
++ @42 GOTO Splash1
END

IF ~~ THEN BEGIN Splash16
SAY @43
++ @44 GOTO Splash20
++ @45 GOTO Splash21
++ @46 GOTO Splash22
END

IF ~~ THEN BEGIN Splash17
SAY @47
++ @48 GOTO Splash23
++ @49 GOTO Splash22
++ @50 GOTO Splash22
END

IF ~~ THEN BEGIN Splash18
SAY @51
++ @52 GOTO Splash26
++ @53 GOTO Splash27
++ @54 GOTO Splash28
END

IF ~~ THEN BEGIN Splash20
SAY @55
IF ~~ THEN + Splash29
END

IF ~~ THEN BEGIN Splash21
SAY @56
= @57
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash22
SAY @58
IF ~~ THEN + Splash29
END

IF ~~ THEN BEGIN Splash23
SAY @59
IF ~~ THEN + Splash29
END
    

IF ~~ THEN BEGIN Splash26
SAY @60
IF ~~ THEN + Splash29
END

IF ~~ THEN BEGIN Splash27
SAY @61
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Splash28
SAY @62
IF ~~ THEN + Splash29
END


IF ~~ THEN BEGIN Splash29
SAY @63
IF ~~ THEN DO ~RestParty()~ EXIT 
END

END