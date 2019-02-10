BEGIN ~P#MAGDEL~
BEGIN ~P#ANDREA~


EXTEND_BOTTOM HGWRA01 18
IF ~InParty("valygar") !Dead("Valygar") OR(2) Global("H#ValygarRomanceActive","GLOBAL",1) Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN GOTO P#ValWraith
END


EXTEND_BOTTOM HGWRA01 24
IF ~Global("P#VALovedOne","GLOBAL",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("P#VAMW")
~ EXIT
END


APPEND HGWRA01

IF ~~ P#ValWraith
SAY #65910 /* ~What of the inevitable pain you must give to the one you love?  The ranger you name 'Valygar'.~ [HGWRA108] */
IF ~~ THEN DO ~SetGlobal("P#VALovedOne","GLOBAL",1)~ EXTERN ~VALYG25J~ 0
END

END


APPEND VALYG25J


IF ~~ P#ValWraith2
SAY @0
IF ~~ THEN EXTERN ~HGWRA01~ 25
END

IF ~~ P#ValWraith3
SAY @1
IF ~~ THEN EXTERN ~HGWRA01~ 25
END

IF ~~ P#ValWraith4
SAY @2
IF ~~ THEN EXTERN ~HGWRA01~ 25
END

IF ~~ P#ValWraith5
SAY @3
IF ~~ THEN EXTERN ~HGWRA01~ 25
END

IF ~~ P#ValWraith6
SAY @4
IF ~~ THEN EXTERN ~HGWRA01~ 25
END

END

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN ~P#MAGDEL~ P#MagdelenaDialogue
@5
== P#ANDREA @6
== VALYG25J @7
== P#ANDREA @8
== P#MAGDEL @9
== VALYG25J @10
== P#ANDREA @11
== P#ANDREA @12
== VALYG25J @13
== P#ANDREA @14
== VALYG25J @15
== P#ANDREA @16
== VALYG25J @17
== P#ANDREA @18
== P#ANDREA @19
= @20
== P#MAGDEL @21
== VALYG25J @22
END
++ @23 EXTERN VALYG25J P#ValWraith2
++ @24 EXTERN VALYG25J P#ValWraith3
++ @25 EXTERN VALYG25J P#ValWraith4
++ @26 EXTERN VALYG25J P#ValWraith5
++ @27 EXTERN VALYG25J P#ValWraith6
++ @28 EXTERN ~HGWRA01~ 25






