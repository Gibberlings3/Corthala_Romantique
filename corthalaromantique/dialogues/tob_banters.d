//Encouragement by Aerie
CHAIN
IF WEIGHT #-50 
~InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#ValygarRomanceActive","GLOBAL",2)
GlobalGT("P#VaLoveTalk","GLOBAL",2)
Global("H#Aerie4","LOCALS",0)~ THEN BVALYG25 FinallyChain
@0
DO ~SetGlobal("H#Aerie4","LOCALS",1)~
== BAERIE25 @1
== BVALYG25 @2
== BAERIE25 @3
=
@4
== BVALYG25 @5
== BAERIE25 @6
== BVALYG25 @7
EXIT