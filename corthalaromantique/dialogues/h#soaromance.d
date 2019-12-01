



/**************************
*   CORTHALA ROMANTIQUE   *
*   LoveTalks             *
**************************/

//first talk after joining
//Shadow Lord NOT done

/* Dead("SHADEL") - Shadow lord (and Merella) dead
Global("mazzytold","GLOBAL",1) - PC knows it's a Shade Lord
Global("MinisterKnowShade","GLOBAL",1) - Mayor knows about Shade Lord
Global("WainwrightJob","GLOBAL",1) - PC promised to help the village
PartyHasItem("BOOK92") // Merella's Journal

Global("RangerProtector","GLOBAL",1) - PC has Merella's hut
*/

APPEND VALYGARJ


IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",2)~ THEN KickStart
SAY @0
+ ~Dead("SHADEL")~ + @1 GOTO KickStart3
+ ~Dead("SHADEL")~ + @2 GOTO KickStart3
+ ~Dead("SHADEL")~ + @3 GOTO KickStart3

+ ~Global("WainwrightJob","GLOBAL",1) !Dead("SHADEL")~ + @4 + lt1_01
+ ~Global("WainwrightJob","GLOBAL",0) !Dead("SHADEL") !Global("mazzytold","GLOBAL",1)~ + @5 + lt1_02
+ ~Global("mazzytold","GLOBAL",1) !Dead("SHADEL")~ + @6 + lt1_10
+ ~Global("WainwrightJob","GLOBAL",0) !Dead("SHADEL")~ + @7 + lt1_03
+ ~!Dead("SHADEL")~ + @8 + lt1_03
+ ~!Dead("SHADEL")~ + @9 GOTO lt1_04

+ ~Dead("SHADEL")~ + @10 GOTO KickStart5
++ @11 GOTO KickStart1
END

IF ~~ THEN BEGIN KickStart1
SAY @12
++ @13 + KickStart4
++ @14 + KickStart2
++ @15 GOTO KickStart8
END

IF ~~ THEN BEGIN KickStart2
SAY @16
+ ~Dead("SHADEL")~ + @1 GOTO KickStart3
+ ~Dead("SHADEL")~ + @2 GOTO KickStart3
+ ~Dead("SHADEL")~ + @3 GOTO KickStart3

+ ~Global("WainwrightJob","GLOBAL",1) !Dead("SHADEL")~ + @4 + lt1_01
+ ~Global("WainwrightJob","GLOBAL",0) !Dead("SHADEL") !Global("mazzytold","GLOBAL",1)~ + @5 + lt1_02
+ ~Global("mazzytold","GLOBAL",1) !Dead("SHADEL")~ + @6 + lt1_10
+ ~Global("WainwrightJob","GLOBAL",0) !Dead("SHADEL")~ + @7 + lt1_03
+ ~!Dead("SHADEL")~ + @8 + lt1_03
+ ~!Dead("SHADEL")~ + @9 GOTO lt1_04

+ ~Dead("SHADEL")~ + @10 GOTO KickStart5
END

IF ~~ THEN BEGIN KickStart3
SAY @17
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",3)~ + H#MerDead
END

IF ~~ THEN BEGIN KickStart4
SAY @18
IF ~~ THEN + KickStart2
END

IF ~~ THEN BEGIN KickStart5
SAY @19
+ ~Dead("SHADEL")~ + @1 GOTO KickStart3
+ ~Dead("SHADEL")~ + @2 GOTO KickStart3
+ ~Dead("SHADEL")~ + @3 GOTO KickStart3
+ ~Dead("SHADEL")~ + @20 GOTO KickStart3
END

IF ~~ THEN BEGIN KickStart8
SAY @21
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + KickStart2
END

IF ~~ THEN lt1_01
SAY @22
IF ~~ THEN + lt1_04
END

IF ~~ THEN lt1_02
SAY @23
IF ~~ THEN + lt1_03
END

IF ~~ THEN lt1_03
SAY @24
IF ~~ THEN + lt1_04
END

IF ~~ THEN lt1_04
SAY @25
IF ~~ THEN + lt1_05
END

IF ~~ THEN lt1_05
SAY @26
++ @27 + lt1_06
++ @28 + lt1_07
++ @29 + lt1_08
++ @30 + lt1_09 
END

IF ~~ THEN lt1_06
SAY @31
IF ~~ THEN + lt1_07
END

IF ~~ THEN lt1_07
SAY @32
= @33
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",3)~ EXIT
END

IF ~~ THEN lt1_08
SAY @34
IF ~~ THEN + lt1_09
END

IF ~~ THEN lt1_09
SAY @35
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",3)~ EXIT
END

IF ~~ THEN lt1_10
SAY @36
IF ~~ THEN + lt1_05
END

//Merella dead
//Global("H#TalkedToMerella","GLOBAL",1): if Valygar was in Party

IF WEIGHT #-100
~Global("H#MerellaDead","GLOBAL",1)~ THEN BEGIN H#MerDead
SAY @37

/* PC and Valygar already talked about it */
+ ~Global("H#MerellaDead","GLOBAL",1)~ + @38 + H#MerDead_01
+ ~Global("H#TalkedToMerella","GLOBAL",1)~ + @39 + H#MerDead_02
+ ~Global("H#MerellaDead","GLOBAL",1)~ + @40 + H#MerDead_04

/* PC and Valygar didn't talk about it - latestart */
+ ~!Global("H#MerellaDead","GLOBAL",1)~ + @38 GOTO H#MerIsDead3 
+ ~!Global("H#MerellaDead","GLOBAL",1)~ + @41 + H#MerIsDead1
+ ~!Global("H#MerellaDead","GLOBAL",1)~ + @40 + H#MerIsDead2
END

IF ~~ THEN H#MerDead_01
SAY @42
++ @43 + H#MerDead_03
+ ~Global("H#TalkedToMerella","GLOBAL",1)~ + @39 + H#MerDead_02
++ @40 + H#MerDead_04
END

IF ~~ THEN H#MerDead_02
SAY @44
IF ~~ THEN + H#MerDead_03
END

IF ~~ THEN H#MerDead_03
SAY @45 
IF ~~ THEN DO ~SetGlobal("H#MerellaDead","GLOBAL",2)~ EXIT
IF ~PartyHasItem("BOOK92")~ THEN DO ~SetGlobal("H#MerellaDead","GLOBAL",2)~ + H#MerDead_05
END

IF ~~ THEN H#MerDead_04
SAY @46
IF ~~ THEN + H#MerDead_03
END

IF ~~ THEN H#MerDead_05
SAY @47 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN H#MerIsDead1
SAY @48
IF ~~ THEN DO ~SetGlobal("H#MerellaDead","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN H#MerIsDead2
SAY @49
IF ~~ THEN DO ~SetGlobal("H#MerellaDead","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN H#MerIsDead3
SAY @50
IF ~~ THEN DO ~SetGlobal("H#MerellaDead","GLOBAL",3)~ EXIT
END



//Valygar apologizes if Merella Talk was done

IF WEIGHT #-100
~Global("H#LoveTalk","LOCALS",4)~ THEN BEGIN IamSorry
SAY @51
+ ~Global("H#MerellaDead","GLOBAL",3)~ + @52 GOTO H#IamSorry2 // EDITED
+ ~Global("H#MerellaDead","GLOBAL",3)~ + @53 GOTO H#IamSorry3
++ @54 + H#IamSorry1
++ @55 GOTO H#IamSorry1
++ @56 + H#IamSorry2
++ @57 + H#IamSorry3 
++ @58 + H#IamSorry3_01
END

IF ~~ THEN BEGIN H#IamSorry1
SAY @59
IF ~~ THEN + H#IamSorry3_01
END

IF ~~ THEN BEGIN H#IamSorry2
SAY @60
IF ~~ THEN + H#IamSorry3_01
END

IF ~~ THEN BEGIN H#IamSorry3
SAY @61
IF ~~ THEN + H#IamSorry3_01
END

IF ~~ THEN BEGIN H#IamSorry3_01
SAY @62
= @63
++ @64 + H#IamSorry3_03
++ @65 + H#IamSorry3_03
++ @66 + H#IamSorry3_02
END

IF ~~ THEN BEGIN H#IamSorry3_02
SAY @67
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN H#IamSorry3_03
SAY @68
++ @69 GOTO H#IamSorry1p1
++ @70 GOTO M#IAmSorry1A //NEW
++ @66 + H#IamSorry3_02
END

IF ~~ THEN BEGIN M#IAmSorry1A
SAY @71
IF ~~ THEN + H#IamSorry1p1_01
END

IF ~~ THEN BEGIN H#IamSorry1p1
SAY @72
IF ~~ THEN + H#IamSorry1p1_01
END

IF ~~ THEN BEGIN H#IamSorry1p1_01
SAY @73
++ @74 + H#IamSorry4
++ @75 + H#IamSorry5
++ @76 GOTO H#IamSorry3p1
++ @77 GOTO H#IamSorry3p1
END

IF ~~ THEN BEGIN H#IamSorry3p1
SAY @78
IF ~~ THEN + H#IamSorry7
END

IF ~~ THEN BEGIN H#IamSorry4
SAY @79
++ @80 + H#IamSorry6
++ @75 + H#IamSorry5
++ @76 GOTO H#IamSorry3p1
++ @77 GOTO H#IamSorry3p1
END

IF ~~ THEN BEGIN H#IamSorry5
SAY @81
IF ~~ THEN + H#IamSorry7
END

IF ~~ THEN BEGIN H#IamSorry6
SAY @82
IF ~~ THEN + H#IamSorry5
END

END //APPEND VALYGARJ

CHAIN
IF ~~ THEN VALYGARJ H#IamSorry7
@83
== VALYGARJ IF ~!Dead("UHRANG01")~ THEN @84
== VALYGARJ IF ~Dead("UHRANG01")~ THEN @85
END
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",5) RealSetGlobalTimer("H#RestBanter","GLOBAL",10) //Inital timer for banters at rest
~ EXIT
IF ~Global("H#MerellaDead","GLOBAL",3) PartyHasItem("BOOK92")~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",5) RealSetGlobalTimer("H#RestBanter","GLOBAL",10)~ + H#MerDead_05



APPEND VALYGARJ

// Valygar comments on PC having the ranger stronghold
IF ~Global("H#RangerProtector","GLOBAL",1)~ THEN ranger_protector
SAY @86
++ @87 + ranger_protector_02
++ @88 + ranger_protector_02
++ @89 + ranger_protector_02
++ @90 + ranger_protector_01
END

IF ~~ THEN ranger_protector_01
SAY @91
IF ~~ THEN + ranger_protector_02
END

IF ~~ THEN ranger_protector_02
SAY @92
IF ~~ THEN DO ~SetGlobal("H#RangerProtector","GLOBAL",2)~ EXIT
END

END //APPEND VALYGARJ
 

//Biowares's banters shamelessly stolen for romancing purposes
//~I am curious.  How much experience have you had with magic?~
/* deactivate this dlg state for romance - banter will be started by mod added state, but enable it for Valygar Friendship mod */
ADD_STATE_TRIGGER BVALYGA 91 ~%CR_FRIENDSHIP_DISABLED%~


APPEND VALYGARJ

IF ~Global("H#LoveTalk","LOCALS",6)~ THEN experience_magic
SAY @93
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",7)~ EXTERN BVALYGA 91
END

END //APPEND VALYGARJ


//BioWare banter: ~Tell me... what kind of family did you have?~
/* deactivate this dlg state for romance - banter will be started by mod added state, but enable it for Valygar Friendship mod */
ADD_STATE_TRIGGER BVALYGA 122 ~%CR_FRIENDSHIP_DISABLED%~

APPEND VALYGARJ

IF ~Global("H#LoveTalk","LOCALS",8)~ THEN what_family
SAY @94
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",9)~ EXTERN BVALYGA 122
END

END //APPEND VALYGARJ

ADD_TRANS_ACTION BVALYGA BEGIN 127 END BEGIN END ~SetGlobal("H#KnowsOrphan","GLOBAL",1)~
ADD_TRANS_ACTION BVALYGA BEGIN 131 END BEGIN END ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",1)~
ADD_TRANS_ACTION BVALYGA BEGIN 136 END BEGIN END ~SetGlobal("H#KnowsParents","GLOBAL",1)~

ADD_TRANS_TRIGGER BVALYGA 128 ~False()~

EXTEND_BOTTOM BVALYGA 128
  IF ~~ THEN REPLY #21598 /* ~You were not part of the happiest of families, I take it.~ */ GOTO 129
  IF ~~ THEN REPLY #21604 /* ~What about your father?  What happened to him?~ */ GOTO 134
  IF ~~ THEN REPLY #21605 /* ~Let's just keep going, Valygar.~ */ GOTO 126
END

EXTEND_BOTTOM BVALYGA 129
  IF ~~ THEN GOTO 134
END

EXTEND_BOTTOM BVALYGA 138
  IF ~~ THEN GOTO 135
END


//PC is the Bhaalspawn!

APPEND VALYGARJ
IF WEIGHT #-1
~Global("H#KnowsBhaalspawn","GLOBAL",2)~ THEN BEGIN TheBhaalspawn 
SAY @95
+ ~Gender(Player1,FEMALE)~ + @96 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ GOTO H#TheBhaalspawn2
+ ~!Gender(Player1,FEMALE)~ + @97 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ + H#TheBhaalspawn2p1 
++ @98 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~  + H#TheBhaalspawn3
++ @99 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ GOTO H#TheBhaalspawn3
+ ~Global("H#KnowsOrphan","GLOBAL",1)~ + @100 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ GOTO H#TheBhaalspawn1
+ ~Global("H#KnowsOrphan","GLOBAL",0)~ + @100 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ GOTO TheBhaalspawn_01
++ @101 DO ~SetGlobal("H#KnowsBhaalspawn","GLOBAL",3)~ GOTO M#TheBhaalspawnEXIT 
END

IF ~~ THEN TheBhaalspawn_01
SAY @102
IF ~~ THEN + H#TheBhaalspawn1
END

IF ~~ THEN BEGIN H#TheBhaalspawn1
SAY @103
+ ~Gender(Player1,FEMALE)~ + @96 GOTO H#TheBhaalspawn2
+ ~!Gender(Player1,FEMALE)~ + @97 + H#TheBhaalspawn2p1  
++ @98 + H#TheBhaalspawn3
++ @99 + H#TheBhaalspawn3
++ @101 + M#TheBhaalspawnEXIT 
END

IF ~~ THEN BEGIN H#TheBhaalspawn2
SAY #21609 /* ~You are...the child of a god?  How is that possible?~ */
= @104
=
@105
++ @106 GOTO H#TheBhaalspawn2p1
++ @101 GOTO M#TheBhaalspawnEXIT 
END

IF ~~ THEN BEGIN M#TheBhaalspawnEXIT
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN H#TheBhaalspawn3
SAY @108
++ @109 GOTO H#TheBhaalspawn2p1
++ @101 + M#TheBhaalspawnEXIT 
END

IF ~~ THEN BEGIN H#TheBhaalspawn2p1
SAY #21617 /* ~A child of the dead god of murder: no offense, but that makes my own troubles seem trite in comparison.  I understand a little of what you are about, now.~ */
= @110
IF ~~ THEN EXIT
END




// Valygar talks about how his parents died

IF ~Global("H#KnowsParents","GLOBAL",2)~ THEN valygar_parents
SAY @111
++ @112 + valygar_parents_01
++ @113 + valygar_parents_01
++ @114 + valygar_parents_01
++ @115 + valygar_parents_03
END

IF ~~ THEN valygar_parents_01
SAY @116
= #21613 /* ~My father grew ill and my mother realized too late what she had missed.  Her magical efforts to sustain him made him undead, a vile mimic of what my father was.~ */
= #21614 /* ~She grew obsessed with him, and with her own power, eventually joining him in his unliving existence.  I was forced to slay them both to put them at rest.~ */
++ @117 + valygar_parents_02
++ @118 + valygar_parents_02
++ @119 + valygar_parents_02
++ @120 + valygar_parents_02
++ @121 + valygar_parents_02
++ @122 + valygar_parents_03
END

IF ~Global("H#KnowsParents","GLOBAL",3)~ THEN valygar_parents_told
SAY @123
++ @117 + valygar_parents_02
++ @118 + valygar_parents_02
++ @119 + valygar_parents_02
++ @120 + valygar_parents_02
++ @121 + valygar_parents_02
++ @122 + valygar_parents_03
END

IF ~~ THEN valygar_parents_02
SAY @124
= @125
IF ~~ THEN DO ~SetGlobal("H#KnowsParents","GLOBAL",4)~ EXIT
END

IF ~~ THEN valygar_parents_03
SAY @126
IF ~~ THEN DO ~SetGlobal("H#KnowsParents","GLOBAL",5)~ EXIT
END

END //APPEND VALYGARJ

//Only If PC is mage
//Valygar_6a
//LoveTalk 3
CHAIN
IF WEIGHT #-1
~Global("H#Player1MageTalk","GLOBAL",1)~ THEN VALYGARJ H#IHateMages
@127
DO ~SetGlobal("H#Player1MageTalk","GLOBAL",2)~ 
== VALYGARJ IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @128
== VALYGARJ @129 
END
++ @130 GOTO H#IHateMages1
+ ~Class(Player1,MAGE_ALL)~ + @131 GOTO H#IHateMages2
+ ~Class(Player1,SORCERER)~ + @132 GOTO H#IHateMages3
+ ~Class(Player1,BARD)~ + @133 GOTO H#IHateMages4
++ @134 + H#IHateMages5
++ @135 GOTO H#IHateMages6


APPEND VALYGARJ

IF ~~ THEN BEGIN H#IHateMages1
SAY @136
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages2
SAY @137
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages3
SAY @138
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages4
SAY @139
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages5
SAY @140
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages6
SAY @141
IF ~~ THEN + H#IHateMages7
END

IF ~~ THEN BEGIN H#IHateMages7
SAY @142
IF ~~ THEN EXIT
END



//Being a Ranger

IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",10)~ THEN RangerTalk
SAY @143
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",11)~ + RangerTalk7
IF ~OR(3)
       Class(Player1,RANGER)
       Class(Player1,CLERIC_RANGER)
       Class(Player1,RANGER_ALL)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",11)~ + RangerTalk_01
END

IF ~~ THEN RangerTalk_01
SAY @144
++ @145 GOTO RangerTalk1
+ ~Global("H#RangerTalk2","LOCALS",0)~ + @146 DO ~SetGlobal("H#RangerTalk2","LOCALS",1)~ GOTO RangerTalk2
+ ~Global("H#RangerTalk3","LOCALS",0)~ + @147 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
+ ~Global("H#RangerTalk3","LOCALS",0)
OR(2)
	Race(Player1,HUMAN)
	Race(Player1,HALF_ELF)~ + @148 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
+ ~Global("H#RangerTalk2","LOCALS",0)~ + @149 DO ~SetGlobal("H#RangerTalk2","LOCALS",1)~ GOTO RangerTalk2
+ ~OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @150 GOTO RangerTalk6
++ @151 + RangerTalk4
++ @152 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk1
SAY @153
++ @154 GOTO RangerTalk8
+ ~Global("H#RangerTalk3","LOCALS",0)~ + @147 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
+ ~Global("H#RangerTalk3","LOCALS",0)
OR(2)
	Race(Player1,HUMAN)
	Race(Player1,HALF_ELF)~ + @148 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
+ ~Global("H#RangerTalk2","LOCALS",0)~ + @149 DO ~SetGlobal("H#RangerTalk2","LOCALS",1)~ GOTO RangerTalk2
++ @155 GOTO RangerTalk9
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk2
SAY @157
+ ~Global("H#RangerTalk3","LOCALS",0)~ + @147 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
+ ~Global("H#RangerTalk3","LOCALS",0)
OR(2)
	Race(Player1,HUMAN)
	Race(Player1,HALF_ELF)~ + @148 DO ~SetGlobal("H#RangerTalk3","LOCALS",1)~ GOTO RangerTalk3
++ @158 + RangerTalk10
++ @155 GOTO RangerTalk9
++ @159 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk3
SAY @160
+ ~Global("H#RangerTalk2","LOCALS",0)~ + @149 DO ~SetGlobal("H#RangerTalk2","LOCALS",1)~ GOTO RangerTalk2
++ @161 GOTO RangerTalk10
++ @155 GOTO RangerTalk9
++ @162 GOTO RangerTalk12
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk4
SAY @163
IF ~~ THEN + RangerTalk7
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk6
SAY @164
++ @165 GOTO RangerTalk16
++ @166 GOTO RangerTalk17
++ @167 GOTO RangerTalk18
++ @155 GOTO RangerTalk9
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk7
SAY @168
++ @169 + RangerTalk9
++ @170 + RangerTalk11
++ @152 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk8
SAY @171
= @172
++ @173 GOTO RangerTalk19
++ @174 GOTO RangerTalk9
++ @159 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk9
SAY @175 
= @176 
++ @177 GOTO RangerTalk13
++ @159 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk10
SAY @178
++ @179 GOTO RangerTalk12
++ @180 GOTO RangerTalk27
++ @181 GOTO RangerTalk9
++ @159 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk11
SAY @182
++ @183 + RangerTalk8
++ @174 GOTO RangerTalk9
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk12
SAY @184
++ @185 GOTO RangerTalk30
++ @186 GOTO RangerTalk30
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk13
SAY @188
IF ~~ THEN + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk14
SAY @189
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RangerTalk15
SAY @190
IF ~~ THEN EXIT
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk16
SAY @191
++ @192 GOTO RangerTalk33
++ @193 GOTO RangerTalk34
++ @194 GOTO RangerTalk35
++ @195 GOTO RangerTalk9
++ @156 + RangerTalk14
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk17
SAY @196
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk18
SAY @197
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END

IF ~~ THEN BEGIN RangerTalk19
SAY @198
++ @174 GOTO RangerTalk9
++ @159 GOTO RangerTalk15
++ @156 + RangerTalk14
END


IF ~~ THEN BEGIN RangerTalk27
SAY @199
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END


IF ~~ THEN BEGIN RangerTalk30
SAY @200
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END


/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk33
SAY @201
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk34
SAY @202
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END

/* Global("H#ValygarRomanceActive","GLOBAL",1) */
IF ~~ THEN BEGIN RangerTalk35
SAY @203
++ @155 GOTO RangerTalk9
++ @187 GOTO RangerTalk15
++ @156 + RangerTalk14
END



//PC is a brave fighter ReputationGT(Player1,13)

IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",12)~ THEN BEGIN Disturbing
SAY @204 
++ @205 + Disturbing1
++ @206 GOTO Disturbing1
++ @207 GOTO Disturbing2
++ @208 GOTO M#DisturbingExit
END

IF ~~ THEN BEGIN M#DisturbingExit
SAY @209
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + Disturbing1p3
END

IF ~~ THEN BEGIN Disturbing1
SAY @210 
IF ~~ THEN + Disturbing3
END

IF ~~ THEN BEGIN Disturbing2
SAY @211 
IF ~~ THEN + Disturbing3
END

IF ~~ THEN BEGIN Disturbing3
SAY @212 
++ @213 GOTO Disturbing1p1
++ @214 GOTO Disturbing1p3
++ @215 GOTO  Disturbing1p3
++ @216 GOTO Disturbing1p2
END

IF ~~ THEN BEGIN Disturbing1p1
SAY @217
IF ~~ THEN + Disturbing1p3
END

IF ~~ THEN BEGIN Disturbing1p2
SAY @218
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + Disturbing1p3
END

IF ~~ THEN BEGIN Disturbing1p3
SAY @219
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",13)~ EXIT
END



//event trigggered, not to clogg up the romance sequel
//Valygar is a man of the woods
//(Any district in Athkatla and Trademeet)

IF WEIGHT #-1
~Global("H#CityTalk","GLOBAL",1)~ THEN BEGIN H#LetsGetOut
SAY @220
++ @221 + H#LetsGetOut1
++ @222 GOTO H#LetsGetOut2
++ @223 GOTO H#LetsGetOut3
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut1
SAY @225
++ @226 GOTO H#LetsGetOut4
++ @223 GOTO H#LetsGetOut3
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut2
SAY @227
++ @226 GOTO H#LetsGetOut4
++ @223 GOTO H#LetsGetOut3
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut3
SAY @228
++ @229 + H#LetsGetOut6
++ @226 GOTO H#LetsGetOut4
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut4
SAY @230
++ @231 + H#LetsGetOut1p1
++ @232 GOTO H#LetsGetOut1p1
++ @233 GOTO H#LetsGetOut1p2
++ @234 GOTO M#LetsGetOutExit
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut5
SAY @235
IF ~~ THEN DO ~SetGlobal("H#CityTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN H#LetsGetOut6
SAY @236
++ @226 GOTO H#LetsGetOut4
++ @224 + H#LetsGetOut5
END

IF ~~ THEN BEGIN H#LetsGetOut1p1
SAY @237
IF ~~ THEN DO ~SetGlobal("H#CityTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN H#LetsGetOut1p2
SAY @238
IF ~~ THEN DO ~SetGlobal("H#CityTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN M#LetsGetOutExit
SAY @239
IF ~~ THEN DO ~SetGlobal("H#CityTalk","GLOBAL",2)~ EXIT
END



//What is a hero

IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",14)~ THEN BEGIN GreatHero
SAY @240
= @241
++ @242 GOTO H#GreatHero1
++ @243 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ GOTO H#GreatHero2
+ ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @244 GOTO H#GreatHero3
+ ~!Global("H#ValygarRomanceActive","GLOBAL",1)
!Global("H#ValygarRomanceActive","GLOBAL",2)~ + @244 GOTO H#GreatHero1p3
++ @245 + H#GreatHero2
++ @246 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ + H#GreatHero2
++ @247 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ GOTO H#GreatHero1p1 
++ @248 + H#GreatHero5
++ @249 GOTO H#GreatHero4
++ @250 + H#GreatHero6
END

IF ~~ THEN BEGIN H#GreatHero1
SAY @251
IF ~~ THEN + H#GreatHero1p3
END

IF ~~ THEN BEGIN H#GreatHero1p1
SAY @252
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero1p2
SAY @253 
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero1p3
SAY @254
++ @255 GOTO H#GreatHero1p1
++ @256 GOTO H#GreatHero1p1
++ @257 GOTO H#GreatHero1p2
++ @258 GOTO M#GreatHeroExit
END

IF ~~ THEN BEGIN H#GreatHero2
SAY @259
+ ~Global("H#LoveTalk14","LOCALS",0)~ + @260 GOTO H#GreatHero2p1
+ ~Global("H#LoveTalk14","LOCALS",1)~ + @260 + H#GreatHero2p4
++ @261 + H#GreatHero2p4
++ @262 GOTO M#GreatHero2A 
++ @263 GOTO H#GreatHero2p3
++ @250 + H#GreatHero6
END

IF ~~ THEN BEGIN H#GreatHero2p1
SAY @264
IF ~~ THEN + H#GreatHero2p4
END

IF ~~ THEN BEGIN M#GreatHero2A
SAY @265 
IF ~~ THEN + H#GreatHero2p4
END

IF ~~ THEN BEGIN H#GreatHero2p3
SAY @266 
IF ~~ THEN + H#GreatHero2p4
END

IF ~~ THEN BEGIN H#GreatHero2p4
SAY @267 
= @268
IF ~~ THEN + H#GreatHero6
END

IF ~~ THEN BEGIN H#GreatHero3
SAY @269
++ @270 GOTO H#GreatHero3p1
++ @271 GOTO H#GreatHero3p2
++ @272 GOTO M#GreatHero3A
END

IF ~~ THEN BEGIN M#GreatHero3A
SAY @273 
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero3p1
SAY @274
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero3p2
SAY @275 
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero4
SAY @276
IF ~~ THEN + H#GreatHero2
END

IF ~~ THEN BEGIN H#GreatHero5
SAY @277
++ @242 GOTO H#GreatHero1
++ @243 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ GOTO H#GreatHero2
++ @244 GOTO H#GreatHero3
++ @245 + H#GreatHero2
++ @246 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ + H#GreatHero2
++ @278 DO ~SetGlobal("H#LoveTalk14","LOCALS",1)~ GOTO H#GreatHero1p1 
++ @249 GOTO H#GreatHero4
++ @250 + H#GreatHero6
END

IF ~~ THEN BEGIN H#GreatHero6
SAY @279
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",15)~ EXIT
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN + H#GreatHero7
END

IF ~~ THEN BEGIN H#GreatHero7
SAY @280
++ @281 GOTO H#GreatHero3p3p1
++ @282 GOTO H#GreatHero3p3p1
++ @283 GOTO H#GreatHero3p3p1
++ @284 GOTO H#GreatHero3p3p2
END

IF ~~ THEN BEGIN H#GreatHero3p3p1
SAY @285
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN H#GreatHero3p3p2
SAY @286
IF ~~ THEN + H#GreatHero3p3p1
END

IF ~~ THEN BEGIN M#GreatHeroExit
SAY @287
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#LoveTalk","LOCALS",15)~ EXIT
END


// triggered if in city GlobalGT("H#LoveTalk","LOCALS",4)
//Temples everywhere

IF WEIGHT #-1
~Global("H#TempleTalk","GLOBAL",1)~ THEN BEGIN TemplesEverywhere
SAY @288
=
@289
++ @290 GOTO H#Temples1
++ @291 GOTO H#Temples2
+ ~!Global("H#ValygarRomanceActive","GLOBAL",1)~ + @292 GOTO M#TemplesOut
+ ~Global("H#ValygarRomanceActive","GLOBAL",1)~ + @292 GOTO H#Temples4
++ @293 GOTO H#Temples3
END

IF ~~ THEN BEGIN H#Temples1
SAY @294
IF ~~ THEN + H#Temples1p2
END

IF ~~ THEN BEGIN H#Temples1p1
SAY @295
IF ~~ THEN DO ~SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN + H#Temples4
END

IF ~~ THEN BEGIN H#Temples1p2
SAY @296
++ @297 GOTO H#Temples1p1
++ @298 + H#Temples1p1
++ @299 GOTO M#TemplesKillRomance
++ @300 GOTO M#TemplesOut
END

IF ~~ THEN BEGIN H#Temples2
SAY @301
= @302
IF ~~ THEN + H#Temples1p2
END

IF ~~ THEN BEGIN H#Temples2p1
SAY @303
IF ~~ THEN DO ~SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN H#Temples3
SAY @304
IF ~~ THEN DO ~SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN + H#Temples4
END

IF ~~ THEN BEGIN H#Temples4
SAY @305
++ @306 + H#Temples4p1
++ @307 + H#Temples4p1
++ @308 GOTO H#Temples2p1
++ @309 + M#TemplesKillRomance
++ @310 GOTO M#TemplesOut
END

IF ~~ THEN BEGIN H#Temples4p1
SAY @311
IF ~~ THEN DO ~SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN M#TemplesOut
SAY @312
IF ~~ THEN DO ~SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN M#TemplesKillRomance
SAY @313
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#TempleTalk","GLOBAL",2)~ EXIT
END




//Bedtime reading
//(at rest)

IF WEIGHT #-100
~Global("H#LoveTalkRest","LOCALS",1)~ THEN BEGIN Bedtime
SAY @314
++ @315 + H#Bedtime1p2
++ @316 GOTO H#Bedtime3
++ @317 GOTO H#Bedtime1
++ @318 GOTO H#Bedtime2
++ @319 + H#Bedtime2
++ @320 + M#BedtimeOut1
END

IF ~~ THEN BEGIN H#Bedtime1
SAY @321
++ @322 GOTO H#Bedtime1p1
++ @323 + H#Bedtime1p3
++ @324 + H#Bedtime1p4
++ @325 + M#BedtimeOut
++ @326 GOTO M#BedtimeOut
END

IF ~~ THEN BEGIN H#Bedtime1p1
SAY @327
IF ~~ THEN + H#Bedtime1p3
END 

IF ~~ THEN BEGIN H#Bedtime1p2
SAY @328
++ @316 GOTO H#Bedtime3
++ @317 GOTO H#Bedtime1
++ @318 GOTO H#Bedtime2
++ @319 + H#Bedtime2
++ @320 + M#BedtimeOut1
++ @329 + M#BedtimeOut
END

IF ~~ THEN BEGIN H#Bedtime1p3
SAY @330
=
@331 
IF ~~ THEN + M#BedtimeOut
END

IF ~~ THEN BEGIN H#Bedtime1p4
SAY @332
IF ~~ THEN + H#Bedtime1p3
END

IF ~~ THEN BEGIN H#Bedtime2
SAY @333
++ @334 GOTO H#Bedtime2p1
++ @335 GOTO H#Bedtime2p1
++ @320 + M#BedtimeOut1
END

IF ~~ THEN BEGIN H#Bedtime2p1
SAY @336
++ @337 GOTO H#Bedtime1
++ @329 + M#BedtimeOut
++ @320 + M#BedtimeOut1
END

IF ~~ THEN BEGIN H#Bedtime3
SAY @338
++ @339 + H#Bedtime4
++ @340 + H#Bedtime4
++ @341 GOTO H#Bedtime1
++ @342 GOTO H#Bedtime5
++ @343  GOTO M#BedtimeOut
END

IF ~~ THEN BEGIN H#Bedtime4
SAY @344
++ @317 GOTO H#Bedtime1
++ @318 GOTO H#Bedtime2
++ @319 + H#Bedtime2
++ @320 + M#BedtimeOut1
END

IF ~~ THEN BEGIN H#Bedtime5
SAY @345
++ @317 GOTO H#Bedtime1
++ @318 GOTO H#Bedtime2
++ @319 + H#Bedtime2
++ @320 + M#BedtimeOut1
++ @346 + M#BedtimeOut
END

IF ~~ THEN BEGIN M#BedtimeOut
SAY @347
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",2)
RestParty()
/*
DisplayStringHead(Myself,%Cutscene rest!%)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")
*/~ EXIT
END

IF ~~ THEN BEGIN M#BedtimeOut1
SAY @348
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",2)
RestParty()~ EXIT
END





//My fearless leader
//(at rest)

IF WEIGHT #-1
~Global("H#LoveTalkRest","LOCALS",3)~ THEN BEGIN WithoutGear
SAY @349
=
@350 // EDITED
++ @351 GOTO H#WithoutGear2
++ @352 GOTO H#WithoutGear3
++ @353 + H#WithoutGear4
++ @354 GOTO H#WithoutGear1
++ @355 + H#WithoutGear1p1p2
END

IF ~~ THEN BEGIN H#WithoutGear1
SAY @356
++ @357 + H#WithoutGear1p4
++ @358 GOTO H#WithoutGear1p1 
++ @359 GOTO H#WithoutGear1p2 
++ @360 + H#WithoutGear4
++ @361 GOTO H#WithoutGear1p3 
++ @362 + H#WithoutGearOut
++ @355 + H#WithoutGear1p1p2
END

IF ~~ THEN BEGIN H#WithoutGear1p1
SAY @363
++ @364 GOTO H#WithoutGear1p1p1
++ @365 + H#WithoutGear4
++ @366 GOTO H#WithoutGear1p1p2 
END

IF ~~ THEN BEGIN H#WithoutGear1p1p1
SAY @367
IF ~~ THEN + H#WithoutGear4
END

IF ~~ THEN BEGIN H#WithoutGear1p1p2
SAY @368
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + H#WithoutGearOut
END

IF ~~ THEN BEGIN H#WithoutGear1p2
SAY @369
IF ~~ THEN + H#WithoutGear4
END

IF ~~ THEN BEGIN H#WithoutGear1p3
SAY @370 IF ~~ THEN + H#WithoutGearOut
END

IF ~~ THEN BEGIN H#WithoutGear1p4
SAY @371
IF ~~ THEN + H#WithoutGear4
END

IF ~~ THEN BEGIN H#WithoutGear2
SAY @372
IF ~~ THEN + H#WithoutGear1
END

IF ~~ THEN BEGIN H#WithoutGear3
SAY @373
IF ~~ THEN + H#WithoutGear1
END

IF ~~ THEN BEGIN H#WithoutGear4
SAY @374
= @375
IF ~~ THEN + H#WithoutGearOut
END

IF ~~ THEN BEGIN H#WithoutGearOut
SAY @347
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",4)
RestParty()~ EXIT
END

END //APPEND VALYGARJ

//Lavok finally dead

ADD_TRANS_ACTION VALYGARJ BEGIN 107 END BEGIN END ~RealSetGlobalTimer("H#ValygarRomance","GLOBAL",%ValygarRomanceTimer_short%)~

APPEND VALYGARJ

//(after Lavok's quest done)
//LoveTalk 11

IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",16)~ THEN BEGIN LavokDead
SAY @376
++ @377 + H#LavokIsDead2 
++ @378 GOTO H#LavokIsDead2
++ @379 + H#LavokIsDead2
++ @380 + H#LavokIsDead2
++ @381 GOTO H#LavokIsDead3
+ ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @382 GOTO H#LavokIsDead1
++ @383 + H#LavokIsDead2
END

IF ~~ THEN BEGIN H#LavokIsDead1
SAY @384
++ @385 GOTO H#LavokIsDead1p1 // EDITED
++ @386 GOTO H#LavokIsDead1p1
++ @387 GOTO H#LavokIsDead1p1
END

IF ~~ THEN BEGIN H#LavokIsDead1p1
SAY @388
++ @389 GOTO M#LavokIsDeadEnd
++ @390 GOTO M#LavokIsDeadEnd2
++ @391 GOTO H#LavokIsDead2
END

IF ~~ THEN BEGIN H#LavokIsDead2
SAY @392
= @393
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",17)~ EXIT
END

IF ~~ THEN BEGIN H#LavokIsDead3
SAY @394 
IF ~~ THEN + H#LavokIsDead2
END

IF ~~ THEN BEGIN M#LavokIsDeadEnd
SAY @395
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",17)~ EXIT
END

IF ~~ THEN BEGIN M#LavokIsDeadEnd2
SAY @396
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + H#LavokIsDead2
END

END //APPEND VALYGARJ

//BioWare banter: ~May I ask you for your opinion on something?~

/* deactivate this dlg state for romance - banter will be started by mod added state, but enable it for Valygar Friendship mod */
ADD_STATE_TRIGGER BVALYGA 139 ~%CR_FRIENDSHIP_DISABLED%~


APPEND VALYGARJ

IF ~Global("H#LoveTalk","LOCALS",18)~ THEN experience_magic
SAY @397
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",19)~ EXTERN BVALYGA 139
END

//I almost killed someone

IF WEIGHT #-100
~Global("H#LoveTalk","LOCALS",20)~ THEN BEGIN ASadDay
SAY @398
=
@399
=
@400
++ @401 GOTO H#ASadDay1
++ @402 GOTO H#ASadDay1
++ @403 GOTO M#ASadDayEnd
END

IF ~~ THEN BEGIN M#ASadDayEnd
SAY @404
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN H#ASadDay1
SAY @405
=
@406
++ @407 GOTO H#ASadDay2
++ @408 GOTO H#ASadDay3
++ @409 GOTO M#ASadDayEnd
END

IF ~~THEN BEGIN H#ASadDay2
SAY @410
++ @411 GOTO H#ASadDay3
++ @412 GOTO H#ASadDay4
++ @409 GOTO M#ASadDayEnd
END

IF ~~ THEN BEGIN H#ASadDay3
SAY @413
= @414
=
@415
+ ~Global("AsylumPlot","GLOBAL",0)~ + @416 GOTO H#ASadDay5
+ ~GlobalGT("AsylumPlot","GLOBAL",0)~ + @416 GOTO H#ASadDay5_01
++ @417 GOTO H#ASadDay6
++ @418 GOTO H#ASadDay8
++ @419 GOTO H#ASadDay9
++ @409 GOTO M#ASadDayEnd
END

IF ~~ THEN BEGIN H#ASadDay4
SAY @420
IF ~~ THEN + H#ASadDay3
END

IF ~~ THEN BEGIN H#ASadDay5
SAY @421
IF ~~ THEN + H#ASadDay5_02
END

IF ~~ THEN BEGIN H#ASadDay5_01
SAY @422
IF ~~ THEN + H#ASadDay5_02
END

IF ~~ THEN BEGIN H#ASadDay5_02
SAY @423
++ @418 GOTO H#ASadDay8
++ @419 GOTO H#ASadDay6
++ @409 GOTO M#ASadDayEnd
END

IF ~~ THEN BEGIN H#ASadDay6
SAY @424
+ ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @425 GOTO H#ASadDay7
++ @426 GOTO H#ASadDay11
++ @418 GOTO H#ASadDay8
++ @419 GOTO H#ASadDay9
++ @409 GOTO M#ASadDayEnd
END

END //APPEND

CHAIN
IF ~~ THEN VALYGARJ H#ASadDay7
@427 
== VALYGARJ IF ~Global("H#KnowsParents","GLOBAL",0)~ THEN @125
END
++ @418 GOTO H#ASadDay8
++ @419 GOTO H#ASadDay9
+ ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @428 GOTO H#ASadDay10
++ @409 GOTO M#ASadDayEnd

CHAIN
IF ~~ THEN VALYGARJ H#ASadDay8
@429
== VALYGARJ IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @430
END
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",21)~ EXIT

APPEND VALYGARJ

IF ~~ THEN BEGIN H#ASadDay9
SAY @431
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN H#ASadDay10
SAY @432
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#LoveTalk","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN H#ASadDay11
SAY @433
+ ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @425 GOTO H#ASadDay7
++ @418 GOTO H#ASadDay8
++ @419 GOTO H#ASadDay9
++ @409 GOTO M#ASadDayEnd
END





//Do you miss Candlekeep?

IF WEIGHT #-1
~Global("H#LoveTalk","LOCALS",22)~ THEN BEGIN MissingC
SAY @434
++ @435 GOTO H#MissingC1
++ @436 GOTO H#MissingC2
++ @437 + H#MissingC1
++ @438 GOTO H#MissingC3
END

IF ~~ THEN BEGIN H#MissingC1
SAY @439
++ @440 GOTO H#MissingC1p1
++ @441 GOTO H#MissingC1p2
++ @442 GOTO M#MissingEnd
END

IF ~~ THEN BEGIN H#MissingC1p1
SAY @443
=
@444
=
@445
=
@446
++ @447 + M#MissingEnd2
++ @448 GOTO M#MissingEnd2
++ @449 GOTO M#MissingEnd3
END

IF ~~ THEN BEGIN H#MissingC1p2
SAY @450
++ @451 GOTO H#MissingC1p2p1
++ @452 + M#MissingEnd
++ @453 GOTO M#MissingEnd3
END

IF ~~ THEN BEGIN H#MissingC1p2p1
SAY @454
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ + LoveMe //he will not ask this if PC already stated her love!
END

IF ~~ THEN BEGIN H#MissingC2
SAY @455
=
@456
=
@457
++ @458 GOTO H#MissingC3 
++ @459 GOTO H#MissingC2p1
END

IF ~~ THEN BEGIN H#MissingC2p1
SAY @460
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ + LoveMe
END

IF ~~ THEN BEGIN H#MissingC3
SAY @461
=
@462
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ + LoveMe
END

IF ~~ THEN BEGIN M#MissingEnd
SAY @463
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ + LoveMe
END

IF ~~ THEN BEGIN M#MissingEnd2
SAY @464
IF ~~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#LoveTalk","LOCALS",23)~ + LoveMe
END

IF ~~ THEN BEGIN M#MissingEnd3
SAY @465
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#LoveTalk","LOCALS",23)~ EXIT
END

IF ~~ THEN BEGIN LoveMe
SAY @466 
++ @467 GOTO LoveMe3
++ @468 GOTO M#LoveMeExit 
++ @469 GOTO LoveMe3
++ @470 GOTO LoveMe4
++ @471 GOTO LoveMe5
++ @472 GOTO LoveMe6
++ @473 GOTO LoveMe7
++ @474 GOTO LoveMe8
++ @475 GOTO LoveMe9
++ @476 GOTO LoveMe10
++ @477 + LoveMe3
++ @478 + LoveMe11
END

IF ~~ THEN BEGIN M#LoveMeExit
  SAY @479
  IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LoveMe3
SAY @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LoveMe4
SAY @481
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LoveMe5
SAY @482
++ @483 GOTO LoveMe3
++ @484 GOTO LoveMe6
END

IF ~~ THEN BEGIN LoveMe6
SAY @485
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LoveMe7
SAY @486
++ @487 GOTO LoveMe13
++ @488 GOTO LoveMe8
END

IF ~~ THEN BEGIN LoveMe8
SAY @489
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LoveMe9
SAY @490 // EDITED
IF ~~ THEN DO ~IncrementGlobal("H#LoveTalk","LOCALS",1)
RealSetGlobalTimer("H#ValygarRomance","GLOBAL",1000)~ EXIT
END

IF ~~ THEN BEGIN LoveMe10
SAY @491
++ @492 GOTO LoveMe8
++ @493 GOTO LoveMe8
END

IF ~~ THEN BEGIN LoveMe11
SAY @494
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LoveMe13
SAY @495
IF ~~ THEN EXIT
END





//A tired Bhaalspawn - after soul is taken

IF WEIGHT #-1
~Global("H#TiredBhaalSpawn","GLOBAL",1)~ THEN BEGIN LetMeHelp
SAY @496
++ @497 GOTO H#LetMeHelp1
++ @498 GOTO H#LetMeHelp2
++ @499 GOTO H#CNNeedsMe // NEW
END


IF ~~ THEN BEGIN H#LetMeHelp1
SAY @500
IF ~~ THEN + H#LetMeHelp3
END


IF ~~ THEN BEGIN H#LetMeHelp2
SAY @501
IF ~~ THEN + H#LetMeHelp3
END

IF ~~ THEN BEGIN H#LetMeHelp3
SAY @502
IF ~~ THEN DO ~SetGlobal("H#TiredBhaalSpawn","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN H#CNNeedsMe
SAY @503
++ @497 GOTO H#LetMeHelp1
++ @498 GOTO H#LetMeHelp2
END



//The Slayer
//(After Slayer Change)

IF WEIGHT #-1
~Global("H#EndangeredLovedOne","GLOBAL",3)~ THEN BEGIN SlayerTalk
SAY @504 
=
@505
=
@506
++ @507 GOTO H#Slayer1
++ @508 GOTO H#Slayer2
++ @509 GOTO H#Slayer3 
++ @510 GOTO H#Slayer4
END

IF ~~ THEN BEGIN H#Slayer1
SAY @511
++ @512 GOTO H#Slayer3
++ @513 GOTO H#Slayer3
++ @514 GOTO M#SlayerExit
END

IF ~~ THEN BEGIN M#SlayerExit
  SAY @515
  IF ~~ THEN DO ~SetGlobal("H#EndangeredLovedOne","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN H#Slayer2
SAY @516 
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#EndangeredLovedOne","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN H#Slayer3
SAY @517
++ @518 GOTO H#Slayer4
++ @519 GOTO M#SlayerExit
END

IF ~~ THEN BEGIN H#Slayer4
SAY @520
++ @521 GOTO M#SlayerExit // EDITED
++ @522 GOTO M#SlayerExit
++ @523 + M#SlayerExit 
++ @524 GOTO H#Slayer4p1
END

IF ~~ THEN BEGIN H#Slayer4p1
SAY @525
++ @526 GOTO M#SlayerExit 
++ @527  GOTO M#SlayerExit 
END




// Underdark Humor
//

IF WEIGHT #-1
~Global("H#UnderdarkHumor","GLOBAL",2)~ THEN BEGIN beind_drow
SAY @528
++ @529 + beind_drow_03
++ @530 + beind_drow_03
++ @531 + beind_drow_02
++ @532 + beind_drow_01
++ @533 + beind_drow_05
END

IF ~~ THEN beind_drow_01
SAY @534
IF ~~ THEN + beind_drow_04
END

IF ~~ THEN beind_drow_02
SAY @535
IF ~~ THEN + beind_drow_04
END

IF ~~ THEN beind_drow_03
SAY @536
IF ~~ THEN + beind_drow_04
END

IF ~~ THEN beind_drow_04
SAY @537
IF ~~ THEN + beind_drow_05
END

IF ~~ THEN beind_drow_05
SAY @538
IF ~~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",9)~ EXIT
IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",3)~ EXIT
END


IF WEIGHT #-1
~Global("H#UnderdarkHumor","GLOBAL",4)~ THEN BEGIN Underdark
SAY @539
++ @540 GOTO H#Underdark2 
++ @541 GOTO H#Underdark1 
++ @542 GOTO H#Underdark2
END

IF ~~ THEN BEGIN H#Underdark1
SAY @543 
IF ~~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN H#Underdark2
SAY @544
=
@545
++ @546 GOTO H#Underdark1
++ @547 + H#Underdark3
++ @548 GOTO H#Underdark3
++ @549 GOTO H#Underdark1
END

IF ~~ THEN BEGIN H#Underdark3
SAY @550
IF ~~ THEN + H#Underdark1
END


//Drow Turn-On

IF WEIGHT #-1
~Global("H#UnderdarkHumor","GLOBAL",6)~THEN BEGIN Finally
SAY @551
++ @552 + BeingDrow2
++ @553 + BeingDrow6
++ @554 GOTO BeingDrow6
++ @555 + BeingDrow6
++ @556 + BeingDrow7
++ @557 + BeingDrow7
++ @558 GOTO BeingDrow3
++ @559 GOTO M#BeingDrowExit 
END

IF ~~ THEN BEGIN BeingDrow2
SAY @560
IF ~~ THEN + BeingDrow7
END

IF ~~ THEN BEGIN BeingDrow3
SAY @561  
IF ~~ THEN + BeingDrow7
END

IF ~~ THEN BEGIN M#BeingDrowExit
  SAY @562
  IF ~~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN BeingDrow4
SAY @563
IF ~~ THEN + BeingDrow5
END

IF ~~ THEN BEGIN BeingDrow5
SAY @564
=
@565
++ @566 GOTO BeingDrow10
++ @567 + BeingDrow8
++ @568 GOTO BeingDrow11
++ @569 GOTO BeingDrow12 
++ @570 + BeingDrow9
++ @571 GOTO BeingDrow13
END

IF ~~ THEN BEGIN BeingDrow6
SAY @572
= @573
++ @574 GOTO BeingDrow4
++ @575 GOTO BeingDrow5
++ @567 + BeingDrow8
++ @576 GOTO M#BeingDrowExit
END

IF ~~ THEN BEGIN BeingDrow7
SAY @577
IF ~~ THEN + BeingDrow6
END

IF ~~ THEN BEGIN BeingDrow8
SAY @578
++ @566 GOTO BeingDrow10
++ @568 GOTO BeingDrow11
++ @569 GOTO BeingDrow12 
++ @571 GOTO BeingDrow13
END

IF ~~ THEN BEGIN BeingDrow9
SAY @579
IF ~~ THEN + BeingDrow14
END

IF ~~ THEN BEGIN BeingDrow10
SAY @580
IF ~~ THEN + BeingDrow14
END

IF ~~ THEN BEGIN BeingDrow11
SAY @581
IF ~~ THEN + BeingDrow14
END


IF ~~ THEN BEGIN BeingDrow12
SAY @582
IF ~~ THEN + BeingDrow14
END

IF ~~ THEN BEGIN BeingDrow13
SAY @583
IF ~~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN BeingDrow14
SAY @584
++ @585 GOTO BeingDrow18
++ @586 GOTO BeingDrow19 
++ @587 GOTO BeingDrow20
++ @588 GOTO BeingDrow21
++ @589 + BeingDrow18 
++ @590 GOTO BeingDrow22
END


IF ~~ THEN BEGIN BeingDrow18
SAY @591
= @592
IF ~~ THEN DO ~SetGlobal("H#UnderdarkHumor","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN BeingDrow19
SAY @593
=
@594
IF ~~ THEN + BeingDrow18
END

IF ~~ THEN BEGIN BeingDrow20
SAY @595
=
@596
++ @585 GOTO BeingDrow18
++ @586 GOTO BeingDrow19 
++ @588 GOTO BeingDrow21
++ @590 GOTO BeingDrow22
END

IF ~~ THEN BEGIN BeingDrow21
SAY @597
IF ~~ THEN + BeingDrow18
END

IF ~~ THEN BEGIN BeingDrow22
SAY @598
=
@599
IF ~~ THEN + BeingDrow18
END

END //APPEND VALYGARJ

//Now he's sorry
// after change back from drow (but not in Ust Natha...)

CHAIN
IF WEIGHT #-1
~Global("H#NoLongerDrow","LOCALS",1)~ THEN VALYGARJ former_self
@600
DO ~SetGlobal("H#NoLongerDrow","LOCALS",2)~ 
== VALYGARJ IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @601
== VALYGARJ @602
EXIT


/* Apology, romance committment, necklace - romance only */


CHAIN
IF WEIGHT #-1
~Global("H#Committment","GLOBAL",1)~ THEN VALYGARJ Clueless
@603

/* in case the talk in Ust Natha played */
== VALYGARJ IF ~GlobalGT("H#UnderdarkHumor","GLOBAL",6)~ THEN @604

/* just in case the Underdark Humor dialogues didn#t fire. */
== VALYGARJ IF ~GlobalLT("H#UnderdarkHumor","GLOBAL",7)~ THEN @605
END
IF ~~ THEN + Clueless_00


APPEND VALYGARJ

IF ~~ THEN Clueless_00
SAY @606
= @607
++ @608 + H#Clueless2
++ @609 + H#Clueless2
++ @610 GOTO H#Clueless5
++ @611 GOTO H#Clueless1
++ @612 GOTO H#Clueless3
++ @613 + H#Clueless3
++ @614 GOTO H#Clueless2
++ @615 GOTO H#Clueless2
++ @616 GOTO H#Clueless4
++ @617 GOTO M#CluelessExit 
END

IF ~~ THEN BEGIN M#CluelessExit 
  SAY @618
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN BEGIN H#Clueless1
SAY @619
IF ~~ THEN + H#Clueless5
END

IF ~~ THEN BEGIN H#Clueless2
SAY @620
IF ~~ THEN + H#Clueless5
END

IF ~~ THEN BEGIN H#Clueless3
SAY @621
IF ~~ THEN + H#Clueless5
END

IF ~~ THEN BEGIN H#Clueless4
SAY @622
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("H#Committment","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN H#Clueless5
SAY @623
++ @624 + H#Clueless6
++ @625 + H#Clueless9
++ @626 + H#Clueless9
++ @627 + H#Clueless9
++ @628 + H#Clueless8
++ @629 + H#Clueless8
END

IF ~~ THEN BEGIN H#Clueless6
SAY @630
IF ~~ THEN + H#Clueless9
END

IF ~~ THEN H#Clueless7
SAY @631
= @632
++ @633 + confession1_06
++ @634 + confession1_06
++ @635 + confession1_03
++ @636 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN BEGIN H#Clueless8
SAY @637
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN BEGIN H#Clueless9
SAY @638
IF ~~ THEN + H#Clueless7
END

IF ~~ THEN confession1_02
SAY @639
IF ~~ THEN + confession1_06
END

IF ~~ THEN confession1_03
SAY @640
IF ~~ THEN + confession1_06
END

IF ~~ THEN confession1_04
SAY @641
++ @642 + H#Pearls2
++ @643 + H#Pearls4
++ @644 + H#Pearls5
++ @645 + H#Pearls5
++ @646 GOTO H#Pearls3
++ @647 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN confession1_05
SAY @648
IF ~~ THEN DO ~SetGlobal("H#Committment","GLOBAL",2)~ EXIT
END

IF ~~ THEN confession1_06
SAY @649
= @650
=
@651

= @652
IF ~~ THEN + confession1_04
END

IF ~~ THEN BEGIN H#Pearls2
SAY @653
++ @644 + H#Pearls3
++ @645 + H#Pearls5
++ @646 GOTO H#Pearls3
++ @647 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN BEGIN H#Pearls3
SAY @654
++ @655 + H#Pearls5
++ @645 + H#Pearls5
++ @647 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + confession1_05
END

IF ~~ THEN BEGIN H#Pearls4
SAY @656 
IF ~~ THEN DO ~GiveItemCreate("H#NECKL",Player1,1,1,1) SetGlobal("H#ValygarRomanceActive","GLOBAL",2)~ + confession1_05
END

IF ~~ THEN BEGIN H#Pearls5
SAY @657
IF ~~ THEN + H#Pearls4
END


//It's freezing
//(at rest)


IF WEIGHT #-1
~Global("H#LoveTalkRest","LOCALS",5)~ THEN BEGIN AColdEve
SAY @658
++ @659 GOTO H#ColdEve1
++ @660 GOTO H#ColdEve2
++ @661 GOTO M#ColdEveExit
END

IF ~~ THEN BEGIN M#ColdEveExit
SAY @662
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",6)
	       RestParty()~ EXIT
END

IF ~~ THEN BEGIN H#ColdEve1
SAY @663
IF ~~ THEN + H#ColdEve3
END

IF ~~ THEN BEGIN H#ColdEve2
SAY @663
= @664
IF ~~ THEN + H#ColdEve3
END

IF ~~ THEN BEGIN H#ColdEve3
SAY @665
++ @666 GOTO H#ColdEve2p1
+ ~InParty("Jaheira")~ + @667 GOTO H#ColdEve2p2
+ ~!InParty("Jaheira")~ + @668 GOTO H#ColdEve2p2
++ @669 GOTO M#ColdEveGoodTea 
++ @670 GOTO H#ColdEveGoodNight
END

IF ~~ THEN BEGIN H#ColdEve2p1
SAY @671
++ @672 GOTO H#ColdEveBlessedDreams
++ @673 + H#ColdEveGoodNight
++ @674 GOTO H#ColdEve4
++ @675 GOTO H#ColdEve2p2p2
END

IF ~~ THEN BEGIN H#ColdEveGoodNight
SAY @676
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",6)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN H#ColdEve2p2
SAY @677
++ @666 GOTO H#ColdEve2p1
++ @669 GOTO M#ColdEveGoodTea 
++ @670 GOTO H#ColdEveGoodNight
END

IF ~~ THEN BEGIN H#ColdEve2p2p2
SAY @678
++ @679 GOTO H#ColdEveBlessedDreams
++ @680 GOTO H#ColdEveGoodNight
END

IF ~~ THEN BEGIN H#ColdEveBlessedDreams
SAY @681
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",6)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN M#ColdEveGoodTea
SAY @682
++ @683 GOTO H#ColdEveGoodNight
++ @674 GOTO H#ColdEve4
++ @680 GOTO H#ColdEveGoodNight
++ @684 GOTO H#ColdEve2p2p2
END

IF ~~ THEN BEGIN H#ColdEve4
SAY @685
IF ~~ THEN + H#ColdEveGoodNight
END




//star gazing
// (at rest)

IF WEIGHT #-1
~Global("H#LoveTalkRest","LOCALS",7)~ THEN BEGIN Finally
SAY @686
=
@687
++ @688 GOTO Finally1
++ @689 GOTO Finally2
++ @690 GOTO Finally3
++ @691 GOTO Finally3
++ @692 + M#FinallyExit
END

IF ~~ THEN BEGIN Finally1
SAY @693
++ @694 + Finally3
++ @695 GOTO Finally5
++ @696 GOTO Finally6
++ @697 GOTO Finally7
++ @692 + M#FinallyExit
END

IF ~~ THEN BEGIN Finally2
SAY @698
=
@699
IF ~~ THEN + Finally10
END

IF ~~ THEN BEGIN Finally3
SAY @700
IF ~~ THEN + Finally8
END

IF ~~ THEN BEGIN Finally4
SAY @701
++ @702 GOTO Finally13
++ @703 GOTO Finally12
++ @694 + Finally3
++ @704 GOTO M#FinallyExit
++ @692 + M#FinallyExit
END

IF ~~ THEN BEGIN Finally5
SAY @705
IF ~~ THEN + Finally8
END

IF ~~ THEN BEGIN Finally6
SAY @706
IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",8)
SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN Finally7
SAY @707
IF ~~ THEN + Finally10
END

IF ~~ THEN BEGIN Finally8
SAY @708
=
@709
++ @710 + Finally15
++ @711 + Finally16
++ @712 GOTO Finally9
END

IF ~~ THEN BEGIN Finally9
SAY @713
++ @714 GOTO Finally11
++ @715 GOTO Finally14
++ @716 GOTO Finally14
END

IF ~~ THEN BEGIN Finally10
SAY @717
++ @718 + Finally4
++ @702 GOTO Finally13
++ @703 GOTO Finally12
++ @694 + Finally3
++ @704 GOTO M#FinallyExit
++ @692 + M#FinallyExit
END

IF ~~ THEN BEGIN Finally11
SAY @719
IF ~~ THEN + M#FinallyExit
END

IF ~~ THEN BEGIN Finally12
SAY @720
IF ~~ THEN + Finally13
END

IF ~~ THEN BEGIN Finally13
SAY @721
IF ~~ THEN + M#FinallyExit
END

IF ~~ THEN BEGIN Finally14
SAY @722
IF ~~ THEN + Finally13
END

IF ~~ THEN BEGIN Finally15
SAY @723
++ @712 GOTO Finally9
++ @724 + M#FinallyExit
++ @725 + M#FinallyExit
END

IF ~~ THEN BEGIN Finally16
SAY @726
++ @712 GOTO Finally9
++ @724 + M#FinallyExit
++ @725 + M#FinallyExit
END

IF ~~ THEN BEGIN M#FinallyExit
  SAY @727
  IF ~~ THEN DO ~SetGlobal("H#LoveTalkRest","LOCALS",8)
    		 RestParty()~ EXIT
END




END //APPEND
