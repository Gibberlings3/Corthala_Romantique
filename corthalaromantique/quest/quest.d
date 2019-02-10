ADD_TRANS_ACTION ~MGTEOS01~
BEGIN 81 82 END
BEGIN END
~SetGlobal("H#Leo_SphereFree","GLOBAL",1)~


// Still pretty messy.
//////////////////////////////////////
//THE QUEST STARTS
//Lavok is dead. Questtimer expired
//Valygar wants to take care of the sphere
//H#LeoQuest=2

APPEND VALYGARJ // was BVALYGA, CORRECT THE SCRIPTS!!!!!

IF WEIGHT #-200
~Global("H#LeoQuest","GLOBAL",2)~ THEN BEGIN QuestStartsHere
SAY @0
= @1
= @2
++ @3 DO ~SetGlobal("H#LeoQuestStart1","LOCALS",1)~ GOTO QuestStart5
++ @4 DO ~SetGlobal("H#LeoQuestStart1","LOCALS",1)~ GOTO QuestStart5
++ @5 GOTO QuestStart1
++ @6 + QuestStart1
++ @7 GOTO QuestStart2
+ ~Global("PlayerHasStronghold","GLOBAL",1)
   OR(2) Class(Player1,MAGE_ALL)
         Class(Player1,MAGE)~ + @8 GOTO QuestStart3
+ ~Global("PlayerHasStronghold","GLOBAL",1)
   OR(2) Class(Player1,MAGE_ALL)
         Class(Player1,MAGE)~ + @9 GOTO QuestStart4
END

IF ~~ THEN BEGIN QuestStart1
SAY @10
++ @11 GOTO QuestStart7
++ @12 + QuestStart7
++ @13 GOTO QuestStart6
++ @14 GOTO QuestStart8
END

IF ~~ THEN BEGIN QuestStart2
SAY @15
IF ~~ THEN + QuestStart1
END

IF ~~ THEN BEGIN QuestStart3
SAY @16
IF ~~ THEN + QuestStart1
END

IF ~~ THEN BEGIN QuestStart4
SAY @17
IF ~~ THEN + QuestStart3
END

IF ~~ THEN BEGIN QuestStart5
SAY @18
++ @5 GOTO QuestStart1
++ @19 GOTO QuestStart2
+ ~Global("PlayerHasStronghold","GLOBAL",1)
   OR(2) Class(Player1,MAGE_ALL)
         Class(Player1,MAGE)~ + @8 GOTO QuestStart3
+ ~Global("PlayerHasStronghold","GLOBAL",1)
   OR(2) Class(Player1,MAGE_ALL)
         Class(Player1,MAGE)~ + @9 GOTO QuestStart4
++ @6 + QuestStart1
++ @20 + QuestStart9
END

IF ~~ THEN BEGIN QuestStart6
SAY @21
    = @22
++ @23 GOTO QuestStart11
++ @24 GOTO QuestStart7
++ @25 + QuestStart7
++ @14 GOTO QuestStart8
END

IF ~~ THEN BEGIN QuestStart7
SAY @26
++ @27 GOTO QuestStart12
++ @28 + QuestStart13
++ @29 GOTO QuestStart13
++ @30 GOTO QuestStart15
++ @14 GOTO QuestStart8
END

IF ~~ THEN BEGIN QuestStart8
SAY @31 
IF ~~ THEN + QuestStart19
END

IF ~~ THEN BEGIN QuestStart9
SAY @32 
IF ~~ THEN + QuestStart1
END

IF ~~ THEN BEGIN QuestStart11
SAY @33
++ @24 GOTO QuestStart7
++ @25 + QuestStart7
++ @14 GOTO QuestStart8
END

IF ~~ THEN BEGIN QuestStart12
SAY @34
++ @28 + QuestStart13
++ @29 GOTO QuestStart13
++ @30 GOTO QuestStart15
++ @14 GOTO QuestStart8
END

IF ~~ THEN BEGIN QuestStart13
SAY @35
IF ~~ THEN + QuestStart14
END

END //APPEND

CHAIN
IF ~~ THEN VALYGARJ QuestStart14
@36
== VALYGARJ IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN @37
== VALYGARJ IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN @38
== VALYGARJ @39
END
++ @40 GOTO QuestStart20
++ @41 + QuestStart16
++ @14 GOTO QuestStart8
+ ~Global("H#LeoQuestStart1","LOCALS",0)~ + @42 GOTO QuestStart17
++ @43 GOTO QuestStart18

APPEND VALYGARJ 

IF ~~ THEN BEGIN QuestStart15
SAY @44
IF ~~ THEN + QuestStart14
END

IF ~~ THEN BEGIN QuestStart16
SAY @45
++ @40 GOTO QuestStart20
++ @14 GOTO QuestStart8
+ ~Global("H#LeoQuestStart1","LOCALS",0)~ + @42 GOTO QuestStart17
++ @43 GOTO QuestStart18
END

IF ~~ THEN BEGIN QuestStart17
SAY @18
++ @14 GOTO QuestStart8
++ @46 GOTO QuestStart4
END

IF ~~ THEN BEGIN QuestStart18
SAY @47
IF ~~ THEN + QuestStart19
END 

IF ~~ THEN BEGIN QuestStart19
SAY @48
IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",3)~ UNSOLVED_JOURNAL @49 EXIT //
END

IF ~~ THEN BEGIN QuestStart20
SAY @50
++ @41 + QuestStart16
++ @14 GOTO QuestStart8
+ ~Global("H#LeoQuestStart1","LOCALS",0)~ + @42 GOTO QuestStart17
++ @43 GOTO QuestStart18
END


//First Talk, in the cabin
IF WEIGHT #-50
~Global("H#LeoQuest","GLOBAL",4)~ THEN BEGIN Initial
SAY @51
IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",5)
           CreateCreatureDoor("H#LEON",[568.312],3)
           SetGlobal("H#LeonExists","GLOBAL",1)
           Wait(3)~ EXIT
END

END //APPEND

BEGIN ~H#LEON~

CHAIN
IF WEIGHT #-50
~Global("H#LeoQuest","GLOBAL",6)~ THEN H#LEON InitialChain
   @52
   =
   @53
== BVALYGA @54
== H#LEON @55
= @56
== BVALYGA @57
== H#LEON @58
== BVALYGA @59
== H#LEON @60
= @61
== BVALYGA @62
== H#LEON @63
= @64
== BVALYGA @65
== H#LEON @66
= @67
== BVALYGA @68
END
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
          Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN GOTO InRomanceHelp
IF ~!Global("H#ValygarRomanceActive","GLOBAL",1) !Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN GOTO NoRomanceHelp

APPEND H#LEON

IF ~~ THEN BEGIN NoRomanceHelp
SAY @69
= @70
++ @71 + leonora_queststart_01
++ @72 + leonora_queststart_01 
++ @73 EXTERN VALYGARJ Leon2
++ @74 GOTO NoRomanceLeon3
END

IF ~~ THEN BEGIN InRomanceHelp
SAY @75
++ @71 + leonora_queststart_01
++ @72 + leonora_queststart_01 
++ @73 EXTERN VALYGARJ Leon2
++ @74 GOTO RomanceLeon3
END 

IF ~~ THEN BEGIN RomanceLeon3
SAY @76
IF ~~ THEN GOTO M#TalkAllYouWant
END

IF ~~ THEN BEGIN NoRomanceLeon3
SAY @77
IF ~~ THEN GOTO M#TalkAllYouWant
END

IF ~~ THEN BEGIN leonora_queststart_01
  SAY @78
IF ~~ THEN + M#TalkAllYouWant
END

IF ~~ THEN BEGIN M#TalkAllYouWant
  SAY @79
  IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",7)~ EXIT
END

END //APPEND H#LEON

APPEND VALYGARJ

IF ~~ THEN BEGIN Leon2
SAY @80
IF ~~ THEN EXTERN H#LEON M#TalkAllYouWant
END


IF ~Global("H#LeoQuest","GLOBAL",8)~ THEN BEGIN WhatIsIt
SAY @81
++ @82 + TheQuest9
++ @83 + TheQuest1
++ @84 + TheQuest8
++ @85 GOTO TheQuest1
++ @86 GOTO TheQuest9
++ @87 GOTO TheQuest9 
++ @88 GOTO TheQuest11
++ @89 GOTO TheQuest11
END

IF ~~ THEN BEGIN TheQuest1
SAY @90
++ @91 + TheQuest12
++ @84 + TheQuest8
++ @85 GOTO TheQuest1
++ @86 GOTO TheQuest9
++ @87 GOTO TheQuest9 
++ @92 GOTO TheQuest10
++ @88 GOTO TheQuest11
++ @89 GOTO TheQuest11
END

IF ~~ THEN BEGIN TheQuest8
SAY @93
++ @91 + TheQuest12
++ @85 GOTO TheQuest1
++ @86 GOTO TheQuest9
++ @87 GOTO TheQuest9 
++ @92 GOTO TheQuest10
++ @88 GOTO TheQuest11
++ @89 GOTO TheQuest11
END

IF ~~ THEN BEGIN TheQuest9
SAY @94
++ @91 + TheQuest12
++ @85 GOTO TheQuest1
++ @84 + TheQuest8
++ @92 GOTO TheQuest10
++ @88 GOTO TheQuest11
++ @89 GOTO TheQuest11
END

IF ~~ THEN BEGIN TheQuest10
SAY @95
++ @91 + TheQuest12
++ @96 GOTO TheQuest11
++ @97 GOTO TheQuest11
++ @84 + TheQuest8
++ @85 GOTO TheQuest1
++ @86 GOTO TheQuest9
++ @87 GOTO TheQuest9 
++ @88 GOTO TheQuest11
++ @89 GOTO TheQuest11
END

IF ~~ THEN BEGIN TheQuest11
SAY @98
++ @99 GOTO TheQuest12
+ ~Global("H#ValygarRomanceActive","GLOBAL",2)~ + @100 GOTO TheQuest15RA
+ ~!Global("H#ValygarRomanceActive","GLOBAL",1) !Global("H#ValygarRomanceActive","GLOBAL",2)~ + @100 GOTO TheQuest15RA2
END

IF ~~ THEN BEGIN TheQuest12
SAY @101
    = @51
IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN TheQuest15RA
SAY @102
IF ~~ THEN + TheQuest15RA2
END

IF ~~ THEN BEGIN TheQuest15RA2
SAY @103
IF ~~ THEN + TheQuest15RA3
END

IF ~~ THEN BEGIN TheQuest15RA3
SAY @104
IF ~~ THEN DO ~SetGlobal("M#PCNotHelping","GLOBAL",1)
	       SetGlobal("H#LeoQuest","GLOBAL",9)~ EXIT
END

END //APPEND VALYGARJ

CHAIN
IF WEIGHT #-1
~See("H#LEON")
    Global("H#LeoQuest","GLOBAL",10)
    Global("M#PCNotHelping","GLOBAL",1)~ THEN VALYGARJ DidTalkInPrivate2
@105 
== H#LEON @106
END
IF ~~ THEN EXTERN VALYGARJ DidTalkInPrivate3

CHAIN
IF WEIGHT #-1
~~THEN VALYGARJ DidTalkInPrivate3
@107
== H#LEON @108
== VALYGARJ @109
== H#LEON @110
== VALYGARJ @111
== H#LEON @112
END
IF ~~ THEN DO ~SetGlobal("H#GuardTheSphere","GLOBAL",0)
SetGlobal("H#LockTheSphere","GLOBAL",0)
SetGlobal("H#LeoQuest","GLOBAL",23)
EraseJournalEntry(@49)
EraseJournalEntry(@142)

EraseJournalEntry(@143)
ActionOverride("H#LEON",CreateVisualEffectObject("SPDIMNDR",Myself))
PlaySound("EFF_M29")
DestroySelf()~ SOLVED_JOURNAL @113 EXIT

CHAIN
IF WEIGHT #-1
~See("H#LEON")
    Global("H#LeoQuest","GLOBAL",10)
    Global("M#PCNotHelping","GLOBAL",0)~ THEN VALYGARJ DidTalkInPrivate
@114
== H#LEON @115
== VALYGARJ @116
== H#LEON @117
== VALYGARJ @118
== H#LEON @119
== VALYGARJ @120
== H#LEON @121
== VALYGARJ @122
END
++ @123 EXTERN VALYGARJ Guard1 
++ @124 + LockItUp
++ @125 EXTERN VALYGARJ DidTalkInPrivate3


CHAIN
IF WEIGHT #-1
~~ THEN VALYGARJ Guard1
@126
== H#LEON
@127
= @128
= @129 // Guard1_1
= @130
END
IF ~~ THEN EXTERN VALYGARJ Guard1_2

CHAIN
IF WEIGHT #-1
~~ THEN VALYGARJ Guard1_2
@131
END
++ @132 EXTERN H#LEON Guard6
++ @133 DO ~SetGlobal("H#LeoQuest","GLOBAL",12)~ EXTERN H#LEON Guard7
++ @134 EXTERN H#LEON Guard8
++ @135 EXTERN VALYGARJ DidTalkInPrivate3



APPEND H#LEON 


IF WEIGHT #-1
~OR(3)
!InParty("Valygar")
!Detect("Valygar")
StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN no_valygar
SAY @136
IF ~~ THEN EXIT
END

IF ~OR(2)
Global("H#LeoQuest","GLOBAL",12)
Global("H#LeoQuest","GLOBAL",14)
InParty("Valygar")
Detect("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN Guard1_3
SAY @137
+ ~Global("H#LeoQuest","GLOBAL",12)~ + @132 EXTERN H#LEON Guard6
+ ~Global("H#LeoQuest","GLOBAL",12)~ + @134 EXTERN H#LEON Guard8
+ ~Global("H#LeoQuest","GLOBAL",14)~ + @138 + Guard9
+ ~Global("H#LeoQuest","GLOBAL",14)~ + @139 + Guard6
++ @133 EXTERN H#LEON Guard7
++ @135 EXTERN VALYGARJ DidTalkInPrivate3
END


IF ~~ THEN BEGIN Guard6
SAY @140
IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",13)
		SetGlobal("H#GuardTheSphere","GLOBAL",1)
               ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#Guard")~ EXIT //Party teleports to Sphere 
IF ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",13)
               ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#Guard")~ EXIT
END

IF ~~ THEN BEGIN Guard7
SAY @141
IF  ~Global("H#LockTheSphere","GLOBAL",0)~ THEN DO ~EraseJournalEntry(@49)~ UNSOLVED_JOURNAL @142 EXIT
IF  ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@49)~ UNSOLVED_JOURNAL @143 EXIT
END

IF ~~ THEN BEGIN Guard8
SAY @144
IF ~~ THEN + Guard8_01
END

IF ~~ THEN BEGIN Guard8_01
SAY @145
++ @138 + Guard9
++ @139 + Guard6
++ @133 DO ~SetGlobal("H#LeoQuest","GLOBAL",14)~ EXTERN H#LEON Guard7
++ @135 EXTERN VALYGARJ DidTalkInPrivate3
END

IF ~~ THEN BEGIN Guard9
SAY @146
IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",15)
		SetGlobal("H#GuardTheSphere","GLOBAL",1)
		ClearAllActions()
               StartCutSceneMode()
               StartCutScene("M#Guard3")~ EXIT //
IF ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",15)
		ClearAllActions()
               StartCutSceneMode()
               StartCutScene("M#Lock1")~ EXIT //Party walks to slums - no fight
END

END //APPEND H#LEON 

/* Cowled Wizard in the slums */
BEGIN ~H#TOLGER~

CHAIN
IF ~Global("H#CWFight","GLOBAL",1)~ THEN H#TOLGER FightChain
@147
= @148
== VALYGARJ @149
DO ~SetGlobal("H#CWFight","GLOBAL",2)~
== H#LEON @150
=  @151
== H#TOLGER @152

== H#LEON IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @153
== H#TOLGER IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @154
== H#LEON IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",2)
                    Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @155 // [HLEO20]
== H#TOLGER @156
== H#LEON IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @157
== H#LEON @158
== H#TOLGER @159
== VALYGARJ @160
== H#LEON @161 
END
IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN DO ~ClearAllActions()
    	       StartCutSceneMode()
   	       StartCutScene("M#Guard2")~ EXIT
IF ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~ClearAllActions()
    	       StartCutSceneMode()
   	       StartCutScene("M#Guard4")~ EXIT


CHAIN
IF WEIGHT #-1
~Global("H#LeoQuest","GLOBAL",18)~ THEN H#LEON M#TolgeriasGone
@162
== VALYGARJ
@163
== VALYGARJ IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @164
== H#LEON IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @165
== VALYGARJ IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @166

== VALYGARJ @167
== H#LEON @168
END
+ ~Global("H#LockTheSphere","GLOBAL",0)~ + @169 GOTO M#TolgeriasGoneA
+ ~Global("H#LockTheSphere","GLOBAL",0)~ + @170 GOTO M#TolgeriasGoneB
+ ~Global("H#LockTheSphere","GLOBAL",0)~ + @171 GOTO M#TolgeriasGoneC
IF ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("M#Lock2")~ EXIT

/* came to sphere without a fight */
CHAIN
IF WEIGHT #-1
~Global("H#LeoQuest","GLOBAL",20)~ THEN H#LEON Inside_sphere
@172
END
IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN + M#TolgeriasGoneD
IF ~Global("H#LockTheSphere","GLOBAL",1)~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("M#Lock2")~ EXIT


APPEND H#LEON 

IF ~~ THEN BEGIN M#TolgeriasGoneA
  SAY @173
  IF ~~ THEN GOTO M#TolgeriasGoneD
END

IF ~~ THEN BEGIN M#TolgeriasGoneB
  SAY @174
  IF ~~ THEN GOTO M#TolgeriasGoneD
END

IF ~~ THEN BEGIN M#TolgeriasGoneC
  SAY @175
  IF ~~ THEN GOTO M#TolgeriasGoneD
END

END //APPEND H#LEON 

CHAIN
IF ~~ THEN H#LEON M#TolgeriasGoneD
@176
== VALYGARJ
@177
== VALYGARJ IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN @178
== H#LEON IF ~Global("H#LockTheSphere","GLOBAL",0)~ THEN 
@179
== VALYGARJ IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)
		GlobalGT("H#CWFight","GLOBAL",0)~ THEN @180
== H#LEON IF ~!Global("H#ValygarRomanceActive","GLOBAL",2)
              !Global("H#ValygarRomanceActive","GLOBAL",1)
		GlobalGT("H#CWFight","GLOBAL",0)~ THEN @181
== H#LEON @182
END
IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",19)
EraseJournalEntry(@49)
EraseJournalEntry(@142)~ SOLVED_JOURNAL @183
EXIT


/* lock the sphere completely */

CHAIN
IF WEIGHT #-1
~~ THEN VALYGARJ LockItUp
@184 // LockIt1
== H#LEON @185
= @186 // LockIt1_1
END
++ @187 EXTERN VALYGARJ Guard1
++ @188 EXTERN H#LEON Item1 
+ ~PartyHasItem("H#AMUL")~ + @189 EXTERN VALYGARJ Item2
+ ~PartyHasItem("NPSW04")~ + @190 GOTO Item3
+ ~PartyHasItem("NPCHAN")~ + @191 GOTO Item4
+ ~!PartyHasItem("H#AMUL")
   !PartyHasItem("NPSW04")
   !PartyHasItem("NPCHAN")~ + @192 EXTERN H#LEON Item5


/*
DestroyItem("H#AMUL")
Global("H#NecklaceGiven","GLOBAL",1) -> Global("H#Leon_ItemToLock","GLOBAL",1)
DestroyItem("NPSW04")
Global("H#KatanaGiven","GLOBAL",1) -> Global("H#Leon_ItemToLock","GLOBAL",2)
DestroyItem("NPCHAN")
Global("H#ArmorGiven","GLOBAL",1) -> Global("H#Leon_ItemToLock","GLOBAL",3)

Global("H#Leon_ItemToLock","GLOBAL",4): blood
*/

APPEND VALYGARJ

IF ~~ THEN BEGIN Item2
SAY @193
++ @194 GOTO Item9
++ @195 GOTO Item10
+ ~PartyHasItem("NPSW04")~ + @196 GOTO Item3
+ ~PartyHasItem("NPCHAN")~ + @191 GOTO Item4
+ ~!PartyHasItem("NPSW04")
  !PartyHasItem("NPCHAN")~ + @197 EXTERN H#LEON Item5
END

IF ~~ THEN BEGIN Item3
SAY @198
IF ~~ THEN DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",2)~ EXTERN ~H#LEON~ Item6
END

IF ~~ THEN BEGIN Item4
SAY @199
IF ~~ THEN DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",3)~ EXTERN ~H#LEON~ Item6
END

IF ~~ THEN BEGIN Item9
SAY @200
IF ~~ THEN DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",1)~ EXTERN ~H#Leon~ Item6
END

IF ~~ THEN BEGIN Item10
SAY @201
IF ~~ THEN DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",1)~ EXTERN ~H#Leon~ Item6
END

END //APPEND VALYGARJ
 

CHAIN
IF WEIGHT #-1
~~ THEN H#LEON Item1
@202
== VALYGARJ @203
== H#LEON @204
END
++ @187 EXTERN VALYGARJ Guard1
++ @205 + Item5
+ ~PartyHasItem("H#AMUL")~ + @189 EXTERN VALYGARJ Item2
+ ~PartyHasItem("NPSW04")~ + @190 EXTERN VALYGARJ Item3
+ ~PartyHasItem("NPCHAN")~ + @191 EXTERN VALYGARJ Item4
+ ~!PartyHasItem("H#AMUL")
   !PartyHasItem("NPSW04")
   !PartyHasItem("NPCHAN")~ + @192 EXTERN H#LEON Item5


CHAIN
IF WEIGHT #-1
~~ THEN H#LEON Item5
@206 DO ~SetGlobal("H#Leon_KnowsBlood","LOCALS",1)~
== VALYGARJ @207
END
++ @187 EXTERN VALYGARJ Guard1
+ ~PartyHasItem("H#AMUL")~ + @189 EXTERN VALYGARJ Item2
+ ~PartyHasItem("NPSW04")~ + @190 EXTERN VALYGARJ Item3
+ ~PartyHasItem("NPCHAN")~ + @191 EXTERN VALYGARJ Item4
+ ~!PartyHasItem("H#AMUL")
   !PartyHasItem("NPSW04")
   !PartyHasItem("NPCHAN")~ + @192 EXTERN H#LEON Item7
++ @208 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",4)~ + Item6



APPEND H#LEON

IF ~~ THEN BEGIN Item6
SAY @209
= @210
++ @187 EXTERN VALYGARJ Guard1
+ ~Global("H#Leon_ItemToLock","GLOBAL",1)
PartyHasItem("H#AMUL")~ + @211 DO ~TakePartyItem("H#AMUL") DestroyItem("H#AMUL")~ + ItemGiven
+ ~Global("H#Leon_ItemToLock","GLOBAL",2)
PartyHasItem("NPSW04")~ + @211 DO ~TakePartyItem("NPSW04") DestroyItem("NPSW04")~ + ItemGiven
+ ~Global("H#Leon_ItemToLock","GLOBAL",3)
PartyHasItem("NPCHAN")~ + @211 DO ~TakePartyItem("NPCHAN") DestroyItem("NPCHAN")~ + ItemGiven
+ ~Global("H#Leon_ItemToLock","GLOBAL",4)~ + @211 + Item12
+ ~OR(4)
PartyHasItem("H#AMUL")
PartyHasItem("NPSW04")
PartyHasItem("NPCHAN")
Global("H#Leon_KnowsBlood","LOCALS",1)~ + @212 + Item8
++ @213 + M#ItemExit
END


IF ~~ THEN BEGIN Item7
SAY @214
++ @215 + M#ItemExit
++ @208 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",4)~ + Item6
END

IF ~~ THEN BEGIN Item8
SAY @216
++ @187 EXTERN VALYGARJ Guard1
+ ~PartyHasItem("H#AMUL")~ + @217 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",1)~ + Item6
+ ~PartyHasItem("NPSW04")~ + @218 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",2)~ + Item6
+ ~PartyHasItem("NPCHAN")~ + @219 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",3)~ + Item6
+ ~Global("H#Leon_KnowsBlood","LOCALS",1)~ + @220 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",4)~ + Item6
++ @213 DO ~SetGlobal("H#Leon_ItemToLock","GLOBAL",0)~ + M#ItemExit
END

IF ~~ THEN BEGIN Item11
SAY @221
IF ~~ THEN + Item6
END

IF ~~ THEN BEGIN M#ItemExit
  SAY @141
  IF ~~ THEN DO ~SetGlobal("M#NoItemForSphere","LOCALS",1) SetGlobal("H#LeoQuest","GLOBAL",11)
EraseJournalEntry(@49)~ UNSOLVED_JOURNAL @222 EXIT
END

IF ~~ THEN BEGIN ItemGiven
SAY @223
IF ~~ THEN DO ~SetGlobal("M#NoItemForSphere","LOCALS",0)
SetGlobal("H#LockTheSphere","GLOBAL",1)
      SetGlobal("H#LeoQuest","GLOBAL",16)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("M#Lock3")~ EXIT
END

END //APPEND

CHAIN
IF WEIGHT #-1
~~ THEN H#LEON Item12
@224
== VALYGARJ @225
END
IF ~~ THEN EXTERN H#LEON ItemGiven

CHAIN
IF WEIGHT #-1
~Global("H#LeoQuest","GLOBAL",16)~ THEN H#LEON Item13
@226
DO ~SetGlobal("H#LeoPreparesGlyph","LOCALS",0)~
= @128
= @227
END
IF ~~ THEN EXTERN VALYGARJ Guard1_2

 
APPEND ~H#LEON~

IF WEIGHT #-1
~Global("M#NoItemForSphere","LOCALS",1) GlobalLT("H#LeoQuest","GLOBAL",17)
InParty("Valygar")
Detect("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BEGIN NoItemBegin
  SAY @228
++ @187 DO ~EraseJournalEntry(@222)~ EXTERN VALYGARJ Guard1
+ ~OR(3)
PartyHasItem("H#AMUL")
PartyHasItem("NPSW04")
PartyHasItem("NPCHAN")~ + @229 DO ~EraseJournalEntry(@222)~ DO ~SetGlobal("M#NoItemForSphere","LOCALS",0)~ + Item8
+ ~Global("H#Leon_KnowsBlood","LOCALS",1)~ + @230 DO ~EraseJournalEntry(@222)~ DO ~SetGlobal("M#NoItemForSphere","LOCALS",0)~ + Item6
++ @231 EXTERN H#LEON M#ItemExit
+ ~!PartyHasItem("H#AMUL")
   !PartyHasItem("NPSW04")
   !PartyHasItem("NPCHAN")
   Global("H#Leon_KnowsBlood","LOCALS",0)~ + @192 EXTERN H#LEON Item5
END

END //APPEND


CHAIN
IF ~Global("H#LeoQuest","GLOBAL",21)~ THEN H#LEON LockItUpA
@232
== VALYGARJ
@233
= @234
== H#LEON
@235
== VALYGARJ 
@236
== H#LEON
@237
= @238
== VALYGARJ
@239
== H#LEON
@240
END
IF ~~ THEN DO ~SetGlobal("H#LeoQuest","GLOBAL",22)
EraseJournalEntry(@49)
EraseJournalEntry(@143)
   	       CreateVisualEffectObject("SPDIMNDR",Myself)
    	       PlaySound("EFF_M29")
	       DestroySelf()~ SOLVED_JOURNAL @241 EXIT



/* Leonora is inside the sphere and guarding */

APPEND H#LEON 
IF ~Global("H#LeoQuest","GLOBAL",19)~ THEN BEGIN M#LeoComeInBegin
  SAY @242
+ ~RandomNum(10,1)~ + @243 + P#LeoFun1
+ ~RandomNum(10,2)~ + @243 + P#LeoFun2
+ ~RandomNum(10,3)~ + @243 + P#LeoFun3
+ ~RandomNum(10,4)~ + @243 + P#LeoFun4
+ ~RandomNum(10,5)~ + @244 + P#LeoFun5
+ ~RandomNum(10,6)~ + @243 + P#LeoFun6
+ ~RandomNum(10,7)~ + @243 + P#LeoFun7
+ ~RandomNum(10,8)~ + @243 + P#LeoFun8
+ ~RandomNum(10,9)~ + @243 + P#LeoFun9
+ ~RandomNum(10,10)~ + @243 + P#LeoFun10
++ @245 + P#LeoComeIn
++ @246 + P#LeoOops
++ @247 + P#LeoFarewell
END

IF ~~ THEN BEGIN P#LeoComeIn
SAY @248
+ ~RandomNum(10,1)~ + @243 + P#LeoFun1
+ ~RandomNum(10,2)~ + @243 + P#LeoFun2
+ ~RandomNum(10,3)~ + @243 + P#LeoFun3
+ ~RandomNum(10,4)~ + @243 + P#LeoFun4
+ ~RandomNum(10,5)~ + @244 + P#LeoFun5
+ ~RandomNum(10,6)~ + @243 + P#LeoFun6
+ ~RandomNum(10,7)~ + @243 + P#LeoFun7
+ ~RandomNum(10,8)~ + @243 + P#LeoFun8
+ ~RandomNum(10,9)~ + @243 + P#LeoFun9
+ ~RandomNum(10,10)~ + @243 + P#LeoFun10
++ @247 + P#LeoFarewell
END

IF ~~ P#LeoOops
SAY @249
IF ~~ THEN EXIT
END

IF ~~ P#LeoFarewell
SAY @250
IF ~~ THEN EXIT
END

IF ~~ P#LeoTime
SAY @251
= @252
IF ~~ THEN EXIT
END

END //APPEND

CHAIN 
IF ~~ THEN H#LEON P#LeoFun1
@253
== VALYGARJ IF ~Global("H#Leon_Fun1","LOCALS",0)
		InParty("Valygar")
		Detect("Valygar")
		!StateCheck("Valygar",CD_STATE_NOTVALID)~ @254
== H#LEON IF ~Global("H#Leon_Fun1","LOCALS",0)
		InParty("Valygar")
		Detect("Valygar")
	      !StateCheck("Valygar",CD_STATE_NOTVALID)~ @255
== VALYGARJ IF ~Global("H#Leon_Fun1","LOCALS",0)
		InParty("Valygar")
		Detect("Valygar")
		!StateCheck("Valygar",CD_STATE_NOTVALID)~ @256
== H#LEON IF ~Global("H#Leon_Fun1","LOCALS",0)~ THEN @257		
END
+ ~Global("H#Leon_Fun1","LOCALS",0)~ + @258 DO ~SetGlobal("H#Leon_Fun1","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun1","LOCALS",0)~ + @259 DO ~SetGlobal("H#Leon_Fun1","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun1","LOCALS",0)~ + @260 DO ~SetGlobal("H#Leon_Fun1","LOCALS",1)~ GOTO P#LeoFarewell
IF ~Global("H#Leon_Fun1","LOCALS",1)~ THEN EXIT

CHAIN
IF ~~ THEN H#LEON P#LeoFun2
@261
== VALYGARJ IF ~Global("H#Leon_Fun2","LOCALS",0)
		InParty("Valygar")
		!StateCheck("Valygar",CD_STATE_NOTVALID)~ @262
== H#LEON IF ~Global("H#Leon_Fun2","LOCALS",0)
		InParty("Valygar")
	      !StateCheck("Valygar",CD_STATE_NOTVALID)~ @263
== VALYGARJ IF ~Global("H#Leon_Fun2","LOCALS",0)
		InParty("Valygar")
		!StateCheck("Valygar",CD_STATE_NOTVALID)~ @264
== H#LEON IF ~Global("H#Leon_Fun2","LOCALS",0)~ THEN @265
END
+ ~Global("H#Leon_Fun2","LOCALS",0)~ + @266 DO ~SetGlobal("H#Leon_Fun2","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun2","LOCALS",0)~ + @267 DO ~SetGlobal("H#Leon_Fun2","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun2","LOCALS",0)~ + @268 DO ~SetGlobal("H#Leon_Fun2","LOCALS",1)~ GOTO P#LeoFarewell
IF ~Global("H#Leon_Fun2","LOCALS",1)~ THEN EXIT

CHAIN 
IF ~~ THEN H#LEON P#LeoFun3
@269
== VALYGARJ IF ~Global("H#Leon_Fun3","LOCALS",0)
		InParty("Valygar")
		!StateCheck("Valygar",CD_STATE_NOTVALID)~ @270
== H#LEON IF ~Global("H#Leon_Fun3","LOCALS",0)
		InParty("Valygar")
	      !StateCheck("Valygar",CD_STATE_NOTVALID)~ @271
== H#LEON IF ~Global("H#Leon_Fun3","LOCALS",0)~ THEN @272	      
= @273
END
+ ~Global("H#Leon_Fun3","LOCALS",0)~ + @274 DO ~SetGlobal("H#Leon_Fun3","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun3","LOCALS",0)~ + @275 DO ~SetGlobal("H#Leon_Fun3","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun3","LOCALS",0)~ + @276 DO ~SetGlobal("H#Leon_Fun3","LOCALS",1)~ GOTO P#LeoFarewell
IF ~Global("H#Leon_Fun3","LOCALS",1)~ THEN EXIT

CHAIN 
IF ~~ THEN H#LEON P#LeoFun4
@277
== H#LEON IF ~Global("H#Leon_Fun4","LOCALS",0)~ THEN @278
END
+ ~Global("H#Leon_Fun4","LOCALS",0)~ + @279 DO ~SetGlobal("H#Leon_Fun4","LOCALS",1)~ GOTO P#LeoTime
+ ~Global("H#Leon_Fun4","LOCALS",0)~ + @280 DO ~SetGlobal("H#Leon_Fun4","LOCALS",1)~ GOTO P#LeoFarewell
+ ~Global("H#Leon_Fun4","LOCALS",0)~ + @281 DO ~SetGlobal("H#Leon_Fun4","LOCALS",1)~ GOTO P#LeoTime
IF ~Global("H#Leon_Fun4","LOCALS",1)~ THEN EXIT

CHAIN H#LEON P#LeoFun5
@282
EXIT

CHAIN 
IF ~~ THEN H#LEON P#LeoFun6
@283
EXIT

CHAIN 
IF ~~ THEN H#LEON P#LeoFun7
@284
EXIT

CHAIN
IF ~~ THEN H#LEON P#LeoFun8
@285
EXIT

CHAIN
IF ~~ THEN H#LEON P#LeoFun9
@286
EXIT

CHAIN
IF ~~ THEN H#LEON P#LeoFun10
@287
EXIT


