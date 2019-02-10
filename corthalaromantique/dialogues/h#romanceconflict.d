/* adding action states to ensure AnomenRomanceActive has the right value depending on the PC's behaviour */

ADD_TRANS_ACTION BANOMEN BEGIN 434 END BEGIN END ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~

ADD_TRANS_ACTION BANOMEN BEGIN 464 437 399 END BEGIN END ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~




////////////////////////////////////////////////////////
//Anomen_LG, Romance conflict
//Anomen1: Conflict Banter for Anomen (not CN)
CHAIN
IF WEIGHT #-50
~InParty(Myself)
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !Global("AnomenIsNotKnight","GLOBAL",1)
    Global("AnomenRomanceActive","GLOBAL",1)
    Global("H#ValygarRomanceActive","GLOBAL",1)
    Global("H#LGAnomenConflict","LOCALS",0)~ THEN BANOMEN Anomen3Chain
@0
DO ~SetGlobal("H#LGAnomenConflict","LOCALS",1)~
== BVALYGA @1
== BANOMEN @2
=
@3
== BVALYGA @4
== BANOMEN @5
== BVALYGA @6
== BANOMEN @7
== BVALYGA @8
EXIT

//Anomen_LG2:
CHAIN
IF WEIGHT #-50
~InParty(Myself)
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    Global("AnomenIsKnight","GLOBAL",1)
    Global("AnomenRomanceActive","GLOBAL",1)
    Global("H#ValygarRomanceActive","GLOBAL",1)
    Global("H#LGAnomenConflict","LOCALS",1)~ THEN BANOMEN Anomen2Chain
@9 
DO ~SetGlobal("H#LGAnomenConflict","LOCALS",2)~
== BVALYGA @10
== BANOMEN @11
== BVALYGA @12
== BANOMEN @13
== BVALYGA @14
= @15
== BANOMEN @16
=
@17
== BVALYGA @18
EXIT


/////////////////////////////////////////////////////////
//Anomen_CN
//Anomen_CN1: Conflict Banter for CN Anomen
CHAIN
IF WEIGHT #-50
~InParty(Myself)
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    Global("AnomenIsNotKnight","GLOBAL",1)
    Global("AnomenRomanceActive","GLOBAL",1)
    Global("H#ValygarRomanceActive","GLOBAL",1)
    Global("H#CNAnomenConflict","LOCALS",0)~ THEN BANOMEN Anomen3Chain_cn
@19
DO ~SetGlobal("H#CNAnomenConflict","GLOBAL",1)~
== BVALYGA @20
== BANOMEN @21
== BVALYGA @22
== BANOMEN @23
== BVALYGA @24
== BANOMEN @25
== BVALYGA @26
== BANOMEN @27
== BVALYGA @28
EXIT

//Anomen_CN
//Anomen_CN2: Conflict Banter for CN Anomen
CHAIN
IF WEIGHT #-50
~InParty(Myself)
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    Global("AnomenIsNotKnight","GLOBAL",1)
    Global("AnomenRomanceActive","GLOBAL",1)
    Global("H#ValygarRomanceActive","GLOBAL",1)
    Global("H#CNAnomenConflict","LOCALS",1)~ THEN BANOMEN Anomen4Chain_cn
@29
DO ~SetGlobal("H#CNAnomenConflict","GLOBAL",2)~
== BVALYGA @30
== BANOMEN @31
== BVALYGA @32
== BANOMEN @33
           =
           @34
== BVALYGA @35
== BANOMEN @36
== BVALYGA @37
== BANOMEN @38
== BVALYGA @39
== BANOMEN @40
== BVALYGA @41
== BANOMEN @42
== BVALYGA @43
EXIT

//Anomen_CN
//Anomen_CN3: Conflict Banter for CN Anomen
//Anomen forces a decision
CHAIN
IF WEIGHT #-50
~InParty(Myself)
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    Global("AnomenIsNotKnight","GLOBAL",1)
    Global("AnomenRomanceActive","GLOBAL",1)
    Global("H#ValygarRomanceActive","GLOBAL",1)
    Global("H#CNAnomenConflict","LOCALS",2)~ THEN BVALYGA Anomen4Chain
@44
DO ~SetGlobal("H#CNAnomenConflict","GLOBAL",3)~
== BANOMEN @45
== BVALYGA @46
== BANOMEN @47
== BVALYGA @48
END BANOMEN Anomen_4_1

APPEND BANOMEN
IF ~~ THEN BEGIN Anomen_4_1
   SAY @49
       =
       @50
   ++ @51 EXTERN BVALYGA Dec1
   ++ @52 EXTERN BVALYGA Dec2
   + ~//RandomNum(1,2)
~ + @53 EXTERN BVALYGA Dec3AnomenStays
/*
   + ~RandomNum(2,2)~ + @53 EXTERN BVALYGA Dec3AnomenLeaves
*/
  ++ @54 EXTERN BVALYGA Dec4
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Dec1
SAY @55
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Dec2
SAY @56
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXTERN BANOMEN Dec2_1
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Dec2_1
SAY @57
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN BVALYGA Dec2_2
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Dec2_2
SAY @58
IF ~~ THEN EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Dec3AnomenStays
SAY @59
IF ~~ THEN EXTERN BANOMEN Dec3_1AnomenStays
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Dec3_1AnomenStays
SAY @60
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END
END

/*
APPEND BVALYGA
IF ~~ THEN BEGIN Dec3AnomenLeaves
SAY @59
IF ~~ THEN EXTERN BANOMEN Dec3_1AnomenLeaves
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Dec3_1AnomenLeaves
SAY @60
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END
END
*/

APPEND BVALYGA
IF ~~ THEN BEGIN Dec4
SAY @61
IF ~~ THEN EXTERN BANOMEN Dec4_1
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Dec4_1
SAY @62
IF ~~ THEN EXTERN BVALYGA Dec4_2
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Dec4_2
SAY @63
    =
    @64
IF ~~ THEN DO ~SetGlobal("H#AnomenValygarFight","GLOBAL",1)~ EXIT//EXTERN BANOMEN Dec4_3
END
END
/*
APPEND BANOMEN
IF ~~ THEN BEGIN Dec4_3
SAY @62
IF ~~ THEN DO ~SetGlobal("H#AnomenValygarFight","GLOBAL",1)~ EXIT
END
END
*/

APPEND BVALYGA
IF WEIGHT #-50
 ~Global("H#ValygarStopsFight","GLOBAL",1)
  Global("H#AnomenLooser","GLOBAL",1)~ THEN BEGIN AnomenHPLT10Perc
SAY @65
+ ~RandomNum(1,2)~ + @66 GOTO Fight5AnomenLeaves
+ ~RandomNum(2,2)~ + @66 GOTO Fight5AnomenTorch
++ @67 EXTERN BANOMEN Fight6
++ @68 GOTO Fight7
END
END

APPEND BVALYGA
IF WEIGHT #-50
  ~Global("H#ValygarStopsFight","GLOBAL",1)
   Global("H#ValygarLooser","GLOBAL",1)~ THEN BEGIN ValygarHPLT10Perc
SAY @69
/*
+ ~RandomNum(1,2)~ + @66 GOTO Fight5AnomenLeaves
*/
+ ~//
RandomNum(2,2)~ + @66 GOTO Fight5AnomenTorch
++ @67 EXTERN BANOMEN Fight6
++ @68 GOTO Fight7
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Fight5AnomenLeaves
SAY @70
IF ~~ THEN EXTERN BANOMEN Fight5_1AnomenLeaves
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight5_1AnomenLeaves
SAY @60
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Fight5AnomenTorch
SAY @70
IF ~~ THEN EXTERN BANOMEN Fight5_1AnomenTorch
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight5_1AnomenTorch
SAY @60
    =
    @71
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
               //SetGlobal("H#CNAnomenTorch","GLOBAL",1)
               //SetGlobalTimer("H#AnomenTorchTimer","GLOBAL",TEN_DAYS)
~ EXIT
END
END

//Valygar: Anomen…(Anomen turns away) Oh, Nine Hells! (Anomen romance Active=3/or Anomen leaves group/or Anomen enters the  "courtship from afar" mode)

APPEND BANOMEN
IF ~~ THEN BEGIN Fight6
SAY @72
IF ~Global("H#UnderdarkKiss","GLOBAL",1)~ THEN EXTERN BVALYGA Fight6a
IF ~Global("H#UnderdarkKiss","GLOBAL",0)~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Fight6a
SAY @73
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN Fight7
SAY @74
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END
END

//Valygar is killed by Anomen
APPEND BANOMEN
IF WEIGHT #-50
 ~Global("H#ValygarKilled","GLOBAL",2)~ THEN BEGIN ValygarKilledByAnomen
SAY @75
++ @76 GOTO Fight8
+ ~RandomNum(1,2)~ + @77 GOTO Fight9Attack
+ ~RandomNum(2,2)~ + @77 GOTO Fight9Leave
++ @78 GOTO Fight8
++ @79 GOTO Fight11
++ @80 GOTO Fight12
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight8
SAY @81
IF ~~ THEN DO ~ForceSpell("Valygar",CLERIC_RESURRECTION)
               Wait(4)
               SetGlobal("H#ResurrectedAfterFight","GLOBAL",1)
               SetGlobal("H#ValygarRomanceActive3","GLOBAL",3)
               SetGlobal("H#ValygarKilled","GLOBAL",3)~ EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight9Attack
SAY @82
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
               SetGlobal("H#ValygarKilled","GLOBAL",3)
               AttackOneRound([PC])
               LeaveParty()
               EscapeArea()~ EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight9Leave
SAY @82
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
               SetGlobal("H#ValygarKilled","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight11
SAY @83
IF ~~ THEN DO ~ForceSpell("Valygar",CLERIC_RESURRECTION)
               Wait(4)
               SetGlobal("H#ResurrectedAfterFight","GLOBAL",1)
               SetGlobal("H#ValygarKilled","GLOBAL",3)
               SetGlobal("H#ValygarRomanceActive3","GLOBAL",3)~ EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN Fight12
SAY @84
IF ~~ THEN DO ~ForceSpell("Valygar",CLERIC_RESURRECTION)
               Wait(4)
               SetGlobal("H#ResurrectedAfterFight","GLOBAL",1)
               SetGlobal("AnomenRomanceActive","GLOBAL",3)
               SetGlobal("H#ValygarKilled","GLOBAL",3)~ EXIT
END
END


APPEND BVALYGA
IF ~Global("H#ResurrectedAfterFight","GLOBAL",2)~ THEN BEGIN AnomenRA3
SAY @85
IF ~//RandomNum(1,2)
~ THEN EXTERN BANOMEN AnomenRA3_1Torch
//IF ~RandomNum(2,2)~ THEN EXTERN BANOMEN AnomenRA3_1Leave
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenRA3_1Torch
SAY @60
IF ~~ THEN EXTERN BVALYGA AnomenRA3_2Torch
END
END

/*
APPEND BANOMEN
IF ~~ THEN BEGIN AnomenRA3_1Leave
SAY @60
IF ~~ THEN DO ~SetGlobal("H#ResurrectedAfterFight","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END
END
*/

APPEND BVALYGA
IF ~~ THEN BEGIN AnomenRA3_2Torch
SAY @86
IF ~~ THEN DO ~SetGlobal("H#ResurrectedAfterFight","GLOBAL",3)
               //SetGlobalTimer("H#AnomenTorchTimer","GLOBAL",TEN_DAYS)
~ EXIT
END
END

APPEND BVALYGA
IF ~Global("H#ResurrectedAfterFight","GLOBAL",2)~ BEGIN AnoKilledVal
SAY @87
IF ~~ THEN EXTERN BANOMEN ResurrectedValygar
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN ResurrectedValygar
SAY @88
IF ~~ THEN EXTERN BVALYGA ResurrectedValygar_1
END
END

APPEND BVALYGA
IF ~~ THEN BEGIN ResurrectedValygar_1
SAY @86
    =
    @89
IF ~~ THEN DO ~SetGlobal("H#ResurrectedAfterFight","GLOBAL",3)~ EXIT
END
END






