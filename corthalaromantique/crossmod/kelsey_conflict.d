////////////////////////////////////////////////////////
//Valygar gets his two cents about Kelsey
//If Kelsey_RA = 1
APPEND BVALYGA
IF WEIGHT #-1
~InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    See(Player1)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
InParty("J#Kelsey")
    OR(2)
        Global("J#KelseyRomanceActive","GLOBAL",1)
        Global("J#KelseyRomanceAcitve","GLOBAL",2)
    Global("FWKelseyStartFlirtSOA","GLOBAL",1)
    OR(2)
        Global("H#ValygarRomanceActive","GLOBAL",1)
        Global("H#ValygarRomanceActive","GLOBAL",2)
    Global("H#KelseyWarning","LOCALS",0)~ THEN BEGIN KelseyWarning
SAY @0
+ ~!Class(Player1,SORCERER)~ + @1 GOTO Warn1
+ ~Class(Player1,SORCERER)~ + @1 GOTO S_Warn1
+ ~!Class(Player1,SORCERER)~ + @2 GOTO Warn2
+ ~Class(Player1,SORCERER)~ + @2 GOTO S_Warn2
+ ~!Class(Player1,SORCERER)~ + @3 GOTO Warn3
+ ~Class(Player1,SORCERER)~ + @3 GOTO Warn3
+ ~!Class(Player1,SORCERER)~ + @4 GOTO Warn1
+ ~Class(Player1,SORCERER)~ + @4 GOTO S_Warn1
++ @5 GOTO Warn3
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn1
SAY @6
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN S_Warn1
SAY @7
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn2
SAY @8
    =
    @9
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN S_Warn2
SAY @8
    =
    @10
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn3
SAY @11
    =
    @12
+ ~!Class(Player1,SORCERER)~ + @13 GOTO Warn6
+ ~Class(Player1,SORCERER)~ + @14 GOTO Warn6
+ ~Class(Player1,SORCERER)~ + @15 GOTO Warn7
++ @16 GOTO Warn8
++ @17 GOTO Warn9
+ ~InParty("Minsc")~ + @18 GOTO Warn10
++ @19 GOTO Warn11
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn6
SAY @20
++ @21 GOTO Warn12
++ @22 GOTO Warn13
++ @23 GOTO Warn8
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn7
SAY @24
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn8
SAY @25
    =
    @26
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn9
SAY @27
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn10
SAY @28
    =
    @29
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn11
SAY @30
    =
    @31
    =
    @32
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn12
SAY @33
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Warn13
SAY @34
IF ~~ THEN DO ~SetGlobal("H#KelseyWarning","LOCALS",1)~ EXIT
END
END