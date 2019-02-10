////////////////////////////////////////////////////////
//Valygar gets his two cents about Solaufein
//If Solaufein_RA = 1
APPEND BVALYGA
IF ~InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    See(Player1)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
InParty("Sola")
Detect("C#Solaufein")
Global("H#SolaufeinWarning","GLOBAL",0)~ THEN BEGIN SolaWarning
SAY @0
    =
    @1
    =
    @2
++ @3 GOTO SolaWarning1
++ @4 GOTO SolaWarning2
++ @5 GOTO SolaWarning3
+ ~InParty("Sola")~ + @6 GOTO SolaWarning4
+ ~OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)~ + @7 GOTO SolaWarning4
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN SolaWarning1
SAY @8
IF ~~ THEN DO ~SetGlobal("H#SolaufeinWarning","GLOBAL",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN SolaWarning2
SAY @9
IF ~~ THEN DO ~SetGlobal("H#SolaufeinWarning","GLOBAL",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN SolaWarning3
SAY @10
IF ~~ THEN DO ~SetGlobal("H#SolaufeinWarning","GLOBAL",1)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN SolaWarning4
SAY @11
IF ~~ THEN DO ~SetGlobal("H#SolaufeinWarning","GLOBAL",1)~ EXIT
END
END

//The PC couldn't let her fingers off of Solaufein
APPEND VALYGARJ
IF ~InParty("Sola")
Global("H#SolaufeinWarning","GLOBAL",2)~ THEN BEGIN YouCanHaveHim
SAY @12
    =
    @13
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
SetGlobal("H#SolaufeinWarning","GLOBAL",3) ~ EXIT
END
END

//ToB
//The PC couldn't let her fingers off of Solaufein
APPEND VALYG25J
IF ~InParty("Sola")
Global("H#SolaufeinWarning","GLOBAL",2)~ THEN BEGIN YouCanHaveHim
SAY @12
    =
    @13
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
SetGlobal("H#SolaufeinWarning","GLOBAL",3) ~ EXIT
END
END