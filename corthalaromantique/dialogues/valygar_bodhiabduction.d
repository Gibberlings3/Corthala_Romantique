//Abduction by Bodhi

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("Valygar")
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN BODHIAMB BODHIAMB_01
END


APPEND BODHIAMB

IF ~~ THEN BEGIN BODHIAMB_01
SAY #56544 /* ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~ */
IF ~OR(2)
 !InPartyAllowDead("Valygar")
 Dead("Valygar")~ THEN GOTO 6
 IF ~InPartyAllowDead("Valygar")
 !Dead("Valygar")~ THEN + BODHIAMB_02
END

IF ~~ THEN BEGIN BODHIAMB_02
SAY @0
IF ~~ THEN EXTERN ~VALYGARJ~ Bodhi1
END

END

APPEND VALYGARJ
IF ~~ THEN BEGIN Bodhi1
SAY @1 
IF ~~ THEN EXTERN ~BODHIAMB~ BODHIAMB_22
END
END

APPEND ~BODHIAMB~
IF ~~ THEN BEGIN BODHIAMB_22
SAY @2
IF ~~ THEN DO ~ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#cut53f")~ UNSOLVED_JOURNAL @3
EXIT
END
END


EXTEND_BOTTOM IMNBOOK1 0
 IF ~PartyHasItem("H#VALBDY") // Valygar's Body
 Global("RevealUmar","GLOBAL",1)~
 THEN REPLY #59383 EXTERN IMNBOOK1 4
END

EXTEND_BOTTOM WARSAGE 0 
IF ~OR(2)
Global("C#AjantisVampire","GLOBAL",1) 
Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY #56579 /* ~Jemand, den ich liebte, wurde von einem Vampir genommen. Was erwartet mich, wenn ich sie finde?~ */ + 6
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #56580 /* ~Someone I care about has fallen to a vampire. Is there any way to save them?~ */ GOTO 5
END

EXTEND_BOTTOM DOGHMA 0
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 7
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 9
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY @10 GOTO 76
END

EXTEND_BOTTOM SUDEMIN 2
IF ~PartyHasItem("H#VALBDY")~ THEN REPLY #59237 /* ~Ich verlor einen geliebten Menschen in einem Kampf mit seiner Schwester Bodhi. Ich suche nach einer Möglichkeit, ihn zu heilen.~ */ GOTO 3
END

//OGHMONK1.dlg
ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("H#VALBDY")~ 
ADD_STATE_TRIGGER OGHMONK1 1 ~!PartyHasItem("H#VALBDY")~ 
ADD_STATE_TRIGGER OGHMONK1 2 ~!PartyHasItem("H#VALBDY")~ 
ADD_STATE_TRIGGER OGHMONK1 3 ~!PartyHasItem("H#VALBDY")~ 

APPEND OGHMONK1

IF WEIGHT #-1
~PartyHasItem("H#VALBDY")~ THEN BEGIN ajantis_vamp
  SAY #57510 /* ~Seid Ihr gekommen, um Weisheit vom Sammler alles Wissens zu erhalten? Der Weise Gott steht zur Verfügung.~ */
  IF ~~ THEN REPLY #57511 /* ~Danke, aber wir brauchen derzeit keine Hilfe.~ */ GOTO 5
  IF ~~ THEN REPLY #57512 /* ~Ein Freund ist vom Vampirismus befallen. Ein altes Buch erwähnte, dass Anhänger von Oghma vielleicht mehr darüber wissen könnten.~ */ GOTO 6
END

END


/////////////////////////////
//Retrieving Valygar

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("H#ValygarVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
IF ~Global("H#ValygarVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("H#ValygarVampire","GLOBAL",2)~ + @4     EXTERN C6BODHI C6Bodhi29
+ ~Global("H#ValygarVampire","GLOBAL",2)~ + @5 EXTERN C6BODHI C6Bodhi29
+ ~Global("H#ValygarVampire","GLOBAL",2)~ + @6 EXTERN C6BODHI C6Bodhi29
+ ~Global("H#ValygarVampire","GLOBAL",2)~ + @7 EXTERN C6BODHI C6Bodhi30
END

APPEND C6BODHI
IF ~~ THEN BEGIN C6Bodhi29
SAY @8
IF ~~ THEN DO ~EraseJournalEntry(@3)~ UNSOLVED_JOURNAL @9
EXTERN ~H#VMPVAL~ NotMeIWont
END

IF ~~ THEN BEGIN C6Bodhi30
SAY @10
IF ~~ THEN GOTO C6Bodhi29
END
END



//Vampire Valygar's Dialogue File
BEGIN ~H#VMPVAL~
/*
If Val does not survive, his corpse is dropped by UndeadValygar
he + bodhi's blackheart=ressurection in the temple.
If Valygar survived Bodhi Fight he wants to be killed
*/

IF ~~ THEN BEGIN NotMeIWont // from:
SAY @11
    =
    @12 
IF ~~ THEN EXTERN ~C6BODHI~ C6Bodhi31a
END

APPEND C6BODHI
IF ~~ THEN BEGIN C6Bodhi31a
SAY @13
IF ~~ THEN EXTERN H#VMPVAL valyvamp1
END
END

APPEND ~H#VMPVAL~

IF ~~ THEN BEGIN valyvamp1
SAY @14 
    =
    @15
IF ~~ THEN DO ~RealSetGlobalTimer("H#AttackBodhi","GLOBAL",1)~ EXTERN ~C6BODHI~ 28
END


IF ~Global("H#VampireTalk","GLOBAL",1)~ THEN BEGIN KillMe
SAY @16
    =
    @17
++ @18 GOTO KillMe1
++ @19  DO ~SetGlobal("H#VampireTalk","GLOBAL",2) Kill("H#VMPVAL")~ EXIT
++ @20 DO ~SetGlobal("H#VampireTalk","GLOBAL",2) Kill("H#VMPVAL")~ EXIT 
++ @21 GOTO KillMe3
++ @22 GOTO KillMe4
++ @23 GOTO KillMe5
END

IF ~~ THEN BEGIN KillMe1
SAY @24
++ @25
 DO ~SetGlobal("H#VampireTalk","GLOBAL",2) Kill("H#VMPVAL")~ EXIT //Kill("H#VMPVAL")
++ @26 GOTO KillMe7
++ @22 GOTO KillMe4
END

IF ~~ THEN BEGIN KillMe3
SAY @27
++ @28 + KillMe7
++ @29
 DO ~SetGlobal("H#VampireTalk","GLOBAL",2) Kill("H#VMPVAL")~ EXIT //Kill("H#VMPVAL")
END

IF ~~ THEN BEGIN KillMe4
SAY @30
++ @31
 DO ~SetGlobal("H#VampireTalk","GLOBAL",2) Kill("H#VMPVAL")~ EXIT // Kill("H#VMPVAL")
++ @26 GOTO KillMe7
++ @32 GOTO KillMe7
END


IF ~~ THEN BEGIN KillMe5
SAY @33
    =
    @34
++ @35
 DO ~SetGlobal("H#VampireTalk","GLOBAL",2)~ EXIT //Kill("H#VMPVAL")
++ @36 GOTO KillMe3
++ @37 GOTO KillMe7
END

IF ~~ THEN BEGIN KillMe7
SAY @38
    =
    @39
    =
    @40
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
               SetGlobal("H#VampireTalk","GLOBAL",2)
               ApplySpell(Myself,VAMPIRE_BAT_FORM_CHANGE)
		EraseJournalEntry(@3)
		EraseJournalEntry(@9)
               EscapeArea()~ EXIT
END

END


///////////////////////////////////////////////////////////////////
//Valygar has been resurrected
APPEND VALYGARP
IF WEIGHT #-100
~Global("H#ValygarVampire","GLOBAL",5)~ THEN BEGIN Resurrected
SAY @41 
++ @42 GOTO Resurrected1
++ @43 GOTO Resurrected2
++ @44 GOTO Resurrected3
END

IF ~~ THEN BEGIN Resurrected1
SAY @45
IF ~~ THEN + Resurrected4
END

IF ~~ THEN BEGIN Resurrected2
SAY @46
IF ~~ THEN + Resurrected4
END

IF ~~ THEN BEGIN Resurrected3
SAY @47
IF ~~ THEN + Resurrected4
END

IF ~~ THEN BEGIN Resurrected4
SAY @48
IF ~~ THEN DO ~SetGlobal("H#ValygarVampire","GLOBAL",6)
               SetGlobal("H#Resurrected","GLOBAL",1)
               RealSetGlobalTimer("H#ResTimer","GLOBAL",10)
		EraseJournalEntry(@3)
		EraseJournalEntry(@9)
		SetGlobal("KickedOut","LOCALS",0)
               JoinParty()~ EXIT
END
END



//Resurrection talk on rest 
APPEND VALYGARJ
IF WEIGHT #-1
~Global("H#Resurrected","GLOBAL",2)~ THEN BEGIN Resurrection
SAY @49
= @50 
++ @51
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1
++ @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2
++ @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3
++ @54
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4
++ @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5
++ @56
 DO ~SetGlobal("H#Res6Done","LOCALS",1)~ GOTO Res6
++ @57 GOTO Res21
END

IF ~~ THEN BEGIN Res1
SAY @58
    =
    @59
+ ~!Global("H#Res2Done","LOCALS",1)~ + @60 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2
+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @61 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7
+ ~!Global("H#Res3Done","LOCALS",1)~ + @62 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

++ @63 GOTO Res11
+ ~!Global("H#Res12Done","LOCALS",1)~ + @64 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5
+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

++ @67 GOTO Res22

++ @56 GOTO Res6
END


IF ~~ THEN BEGIN Res2
SAY @68
    =
    @69
+ ~OR(4) Class(Player1,MAGE)
         Class(Player1,MAGE_ALL)
         Class(Player1,BARD)
         Class(Player1,SORCERER)~ + @70 GOTO Res13
++ @71 GOTO Res14
+ ~!Global("H#Res12Done","LOCALS",1)~ + @72 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

+ ~!Global("H#Res3Done","LOCALS",1)~ + @73 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3


+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1
+ ~!Global("H#Res3Done","LOCALS",1)~ + @53 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3
+ ~!Global("H#Res4Done","LOCALS",1)~ + @54  DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4
+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5
++ @75 GOTO Res22
+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12
++ @56
 DO ~SetGlobal("H#Res6Done","LOCALS",1)~ GOTO Res6
++ @57 GOTO Res21
END



IF ~~ THEN BEGIN Res13
SAY @76
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~!Global("H#Res3Done","LOCALS",1)~ + @77 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @61 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END



IF ~~ THEN BEGIN Res14
SAY @79
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~!Global("H#Res3Done","LOCALS",1)~ + @77 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @61 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END



IF ~~ THEN BEGIN Res3
SAY @80
    =
    @81
    =
    @82
    =
    @83
    =
    @84
    =
    @85

+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res4
SAY @87
    =
    @88
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res5
SAY @89
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res6
SAY @90
IF ~~ THEN 
 DO ~SetGlobal("H#Resurrected","GLOBAL",7)
 RestParty()~ EXIT
END


IF ~~ THEN BEGIN Res7
SAY @91
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res11
SAY @92
++ @93 GOTO Res31
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res12
SAY @94
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res31
SAY @95
+ ~!Global("H#Res1Done","LOCALS",1)~ + @74
 DO ~SetGlobal("H#Res1Done","LOCALS",1)~ GOTO Res1

+ ~!Global("H#Res2Done","LOCALS",1)~ + @52
 DO ~SetGlobal("H#Res2Done","LOCALS",1)~ GOTO Res2

+ ~!Global("H#Res3Done","LOCALS",1)~ + @53
 DO ~SetGlobal("H#Res3Done","LOCALS",1)~ GOTO Res3

+ ~!Global("H#Res4Done","LOCALS",1)~ + @65
 DO ~SetGlobal("H#Res4Done","LOCALS",1)~ GOTO Res4

+ ~!Global("H#Res5Done","LOCALS",1)~ + @55
 DO ~SetGlobal("H#Res5Done","LOCALS",1)~ GOTO Res5

+ ~Global("HiredByCowled","GLOBAL",1) !Global("H#Res7Done","LOCALS",1)~ + @86 DO ~SetGlobal("H#Res7Done","LOCALS",1)~ GOTO Res7

+ ~!Global("H#Res12Done","LOCALS",1)~ + @66 DO ~SetGlobal("H#Res12Done","LOCALS",1)~ GOTO Res12


++ @67 GOTO Res22

++ @56 GOTO Res6

++ @57 GOTO Res21

++ @78 + Res6
END


IF ~~ THEN BEGIN Res22
SAY @96
++ @97 DO ~SetGlobal("H#Resurrected","GLOBAL",4)~ GOTO Res35
++ @98 GOTO Res36
END


IF ~~ THEN BEGIN Res35
SAY @99
IF ~~ THEN DO ~ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END


IF ~~ THEN BEGIN Res36
SAY @100
IF ~~ THEN
 DO ~SetGlobal("H#Resurrected","GLOBAL",7)
 RestParty()~ EXIT
END


IF ~~ THEN BEGIN Res21
SAY @101
IF ~~ THEN
 DO ~SetGlobal("H#Resurrected","GLOBAL",7)
 SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
 RestParty()~ EXIT
END

//Morning After Resurrection IF PC stayed with him

IF WEIGHT #-200
~Global("H#Resurrected","GLOBAL",6)~ THEN BEGIN FirstNight
SAY @102 
++ @103 GOTO FN1
++ @104 GOTO FN2
++ @105 GOTO FN3
++ @106 GOTO FN4
++ @107 GOTO FN5
END

IF ~~ THEN BEGIN FN1
SAY @108
IF ~~ THEN + FN9
END

IF ~~ THEN BEGIN FN2
SAY @109
IF ~~ THEN + FN9
END

IF ~~THEN BEGIN FN3
SAY @110
    =
    @111
++ @112 GOTO FN6
++ @113 GOTO FN7
++ @114 GOTO FN8
END


IF ~~ THEN BEGIN FN4
SAY @115
IF ~~ THEN + FN9
END


IF ~~ THEN BEGIN FN5
SAY @116
IF ~~ THEN + FN9
END


IF ~~ THEN BEGIN FN6
SAY @117
IF ~~ THEN + FN9
END


IF ~~ THEN BEGIN FN7
SAY @118
IF ~~ THEN + FN9
END


IF ~~ THEN BEGIN FN8
SAY @119
IF ~~ THEN + FN9
END

IF ~~ THEN BEGIN FN9
SAY @120
IF ~~ THEN
 DO ~SetGlobal("H#Resurrected","GLOBAL",7)~ EXIT
END

END //APPEND 
