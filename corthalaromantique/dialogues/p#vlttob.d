/*
/* different ending to Mazzy-Valygar banter in romance case */
//not needed, is activated by setting ValygarRomanceActive = 2 in ToB
EXTEND_BOTTOM BMAZZY25 30
  IF ~Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~BVALYG25~ 44
END
*/ 

/* new ToB game: player can decide upon romance status */

APPEND PLAYER1
IF WEIGHT #-1
~Global("H#CheckValygarMatchTOB","GLOBAL",1)~ THEN romance_status
SAY @0
++ @1 DO ~SetGlobal("H#CheckValygarMatchTOB","GLOBAL",0) //this will trigger the script block with the timer settings!
SetGlobal("H#ValygarRomanceActive","GLOBAL",2)
SetGlobal("H#ValygarMatch","GLOBAL",1)~ EXIT 
++ @2 DO ~SetGlobal("H#CheckValygarMatchTOB","GLOBAL",2)
SetGlobal("H#ValygarMatch","GLOBAL",1)
SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT  
END

END


/* present for Valygar: make Cespenar look for something special! */

EXTEND_BOTTOM BOTSMITH 2
+ ~Global("P#VaPresent","GLOBAL",0) Global("H#ValygarRomanceActive","GLOBAL",2)~ + @3 + cesp
+ ~Global("P#VaPresent","GLOBAL",3) Global("H#ValygarRomanceActive","GLOBAL",2)~ + @4 + present_02
END

APPEND BOTSMITH
IF ~~ THEN cesp
SAY @5
IF ~~ THEN DO ~SetGlobal("P#VaPresent","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1
~Global("P#VaPresent","GLOBAL",2)~ THEN present
SAY @6
++ @7 + present_02
++ @8 + present_01
END

IF ~~ THEN present_01
SAY @9
IF ~~ THEN DO ~SetGlobal("P#VaPresent","GLOBAL",3)~ EXIT
END

IF ~~ THEN present_02
SAY @10

= @11

= @12

= @13

= @14

= @15
++ @16 + present_02
++ @17 DO ~SetGlobal("P#VaPresent","GLOBAL",4)~ + present_04
++ @18 DO ~SetGlobal("P#VaPresent","GLOBAL",5)~ + present_03
++ @19 DO ~SetGlobal("P#VaPresent","GLOBAL",6)~ + present_04
++ @20 DO ~SetGlobal("P#VaPresent","GLOBAL",7)~ + present_04
++ @21 DO ~SetGlobal("P#VaPresent","GLOBAL",8)~ + present_04
++ @22 DO ~SetGlobal("P#VaPresent","GLOBAL",9)~ + present_06 
END

IF ~~ THEN present_03
SAY @23
IF ~~ THEN + present_05
END

IF ~~ THEN present_04
SAY @24
IF ~~ THEN + present_05
END

IF ~~ THEN present_05
SAY @25
IF ~~ THEN EXTERN VALYG25J P#VALT6.1B
END

IF ~~ THEN present_06
SAY @26
IF ~~ THEN EXIT
END

END


APPEND VALYG25J

/* GlobalGT("P#VaFreeTalk2","GLOBAL",4) */

IF ~~ P#VALT6.1B
SAY @27
++ @28 + P#VALT6.2
++ @29 + P#VALT6.3
++ @30 + P#VALT6.3
++ @31 + P#VALT6.4
++ @32 + P#VALT6.5
++ @33 + P#VALT6.6
END

IF ~~ P#VALT6.1C
SAY @34
++ @28 + P#VALT6.2
++ @29 + P#VALT6.3
++ @35 + P#VALT6.3
++ @31 + P#VALT6.4
++ @32 + P#VALT6.5
++ @36 + P#VALT6.6
END

IF ~~ P#VALT6.2
SAY @37
+ ~Global("P#VaPresent","GLOBAL",4)~ + @38 + P#VALT6.7
+ ~Global("P#VaPresent","GLOBAL",5)~ + @39 + P#VALT6.8
+ ~Global("P#VaPresent","GLOBAL",6)~ + @40 + P#VALT6.9
+ ~Global("P#VaPresent","GLOBAL",7)~ + @41 + P#VALT6.10
+ ~Global("P#VaPresent","GLOBAL",8)~ + @42 + P#VALT6.10
++ @36 + P#VALT6.6
END

IF ~~ P#VALT6.3
SAY @43
+ ~Global("P#VaPresent","GLOBAL",4)~ + @38 + P#VALT6.7
+ ~Global("P#VaPresent","GLOBAL",5)~ + @39 + P#VALT6.8
+ ~Global("P#VaPresent","GLOBAL",6)~ + @40 + P#VALT6.9
+ ~Global("P#VaPresent","GLOBAL",7)~ + @41 + P#VALT6.10
+ ~Global("P#VaPresent","GLOBAL",8)~ + @42 + P#VALT6.11
END

IF ~~ P#VALT6.4
SAY @44
++ @45 + P#VALT6.3
++ @46 + P#VALT6.3
++ @36 + P#VALT6.6
END

IF ~~ P#VALT6.5
SAY @47
++ @48 + P#VALT6.12
++ @49 + P#VALT6.3
END

IF ~~ P#VALT6.6
SAY @50
IF ~~ THEN EXIT
END

IF ~~ P#VALT6.7
SAY @51
= @52
IF ~~ THEN DO ~GiveItemCreate("V#katana","valygar",1,0,0)~ EXIT
END

IF ~~ P#VALT6.8
SAY @53
++ @54 + P#VALT6.13
++ @55 + P#VALT6.13
++ @56 + P#VALT6.14
END

IF ~~ P#VALT6.9
SAY @57
= @58
IF ~~ THEN DO ~GiveItemCreate("V#bow","valygar",1,0,0)~ EXIT
END

IF ~~ P#VALT6.10
SAY @59
IF ~~ THEN DO ~GiveItemCreate("V#belt","valygar",1,0,0)~ EXIT
END

IF ~~ P#VALT6.11
SAY @59
IF ~~ THEN DO ~GiveItemCreate("V#ring","valygar",1,0,0)~ EXIT
END

IF ~~ P#VALT6.12
SAY @60
+ ~Global("P#VaPresent","GLOBAL",4)~ + @38 + P#VALT6.7
+ ~Global("P#VaPresent","GLOBAL",5)~ + @39 + P#VALT6.8
+ ~Global("P#VaPresent","GLOBAL",6)~ + @40 + P#VALT6.9
+ ~Global("P#VaPresent","GLOBAL",7)~ + @41 + P#VALT6.10
+ ~Global("P#VaPresent","GLOBAL",8)~ + @42 + P#VALT6.11
END

IF ~~ P#VALT6.13
SAY @61
= @62
IF ~~ THEN DO ~GiveItemCreate("h#glove","valygar",1,0,0) IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT6.14
SAY @63
= @64
= @62
IF ~~ THEN DO ~GiveItemCreate("h#glove","valygar",1,0,0) IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END






//LoveTalk1

IF ~Global("P#VaLoveTalk","GLOBAL",2)~ THEN BEGIN ValygarLoveTalk1
SAY @65
++ @66 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",3)~ + P#VALT1.1
++ @67 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",3)~ + P#VALT1.2
++ @68 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",3)~ + P#VALT1.3
++ @69 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",3)~ + P#VALT1.4
END

IF ~~ P#VALT1.1
SAY @70
++ @71 + P#VALT1.5
++ @72 + P#VALT1.6
++ @73 + P#VALT1.7
++ @74 + P#VALT1.2
END

IF ~~ P#VALT1.2
SAY @75
++ @76 + P#VALT1.4
++ @77 + P#VALT1.8
++ @78  + P#VALT1.9
END

IF ~~ P#VALT1.3
SAY @79
= @80
++ @81 + P#VALT1.10
++ @82 + P#VALT1.6
++ @83 + P#VALT1.11
END

IF ~~ P#VALT1.4
SAY @84
= @85
= @80
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @86 + P#VALT1.12INT
+ ~Global("H#ValygarLover","GLOBAL",0)~ + @86 + P#VALT1.12NONINT
++ @87 + P#VALT1.13
++ @88 + P#VALT1.13
++ @89 + P#VALT1.11
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.5
SAY @91
++ @76 + P#VALT1.4
++ @77 + P#VALT1.8
++ @78  + P#VALT1.9
END

IF ~~ P#VALT1.6
SAY @92
= @93
= @80
++ @94 + P#VALT1.13
++ @95 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.15
++ @88 + P#VALT1.13
++ @89 + P#VALT1.11
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.7
SAY @96
= @97
= @80
++ @98 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.15
++ @99 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.16
++ @100 + P#VALT1.11
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.8
SAY @101
= @102
++ @103 + P#VALT1.13
++ @104 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.16
++ @105 + P#VALT1.11
++ @106 + P#VALT1.17
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.9
SAY @107
= @93
= @80
++ @94 + P#VALT1.13
++ @95 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.15
++ @88 + P#VALT1.13
++ @89 + P#VALT1.11
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.10
SAY @108
++ @109 + P#VALT1.11
++ @110 + P#VALT1.17
++ @111 + P#VALT1.17
++ @103 + P#VALT1.13
++ @88 + P#VALT1.13
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.11
SAY @112
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END


IF ~~ P#VALT1.12INT
SAY @113
++ @114 + P#VALT1.13
++ @115 + P#VALT1.17
++ @116 + P#VALT1.18
++ @117 + P#VALT1.19
END

IF ~~ P#VALT1.12NONINT
SAY @118
++ @119 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT1.16
++ @120 + P#VALT1.11
++ @90 + P#VALT1.14
END

IF ~~ P#VALT1.13
SAY @121
IF ~~ THEN EXIT
END

IF ~~ P#VALT1.14
SAY @122
IF ~~ THEN EXIT
END

IF ~~ P#VALT1.15
SAY @123
IF ~~ THEN EXIT
END

IF ~~ P#VALT1.16
SAY @124
IF ~~ THEN EXIT
END

IF ~~ P#VALT1.17
SAY @125
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT1.18
SAY @126
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT1.19
SAY @127
++ @128 +  P#VALT1.20
++ @129 +  P#VALT1.21
++ @130 +  P#VALT1.22
++ @131 +  P#VALT1.23
END
 
IF ~~ P#VALT1.20
SAY @132
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT1.21
SAY @133
IF ~~ THEN EXIT
END

IF ~~ P#VALT1.22
SAY @134
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT1.23
SAY @135
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

//LoveTalk2

IF ~Global("P#VaLoveTalk","GLOBAL",4)~ THEN BEGIN ValygarLoveTalk2
SAY @136
++ @137 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",5)~ + P#VALT2.1
++ @138 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",5)~ +  P#VALT2.2
++ @139 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",5)~ + P#VALT2.3
END

IF ~~ P#VALT2.1
SAY @140
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT2.2
SAY @141
++ @142 +  P#VALT2.4
++ @143+  P#VALT2.5
++ @144+  P#VALT2.6
END

IF ~~ P#VALT2.3
SAY @145
= @146
++ @142 +  P#VALT2.4
++ @143 +  P#VALT2.5
++ @144 +  P#VALT2.6
END

IF ~~ P#VALT2.4
SAY @147
+ ~InParty("Minsc")~ + @148 +  P#VALT2.7
++ @149 +  P#VALT2.8
++ @150 +  P#VALT2.9
END

IF ~~ P#VALT2.5
SAY @151
++ @152 +  P#VALT2.10
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @153 +  P#VALT2.11
++ @154 +  P#VALT2.12
++ @155 +  P#VALT2.8
END

IF ~~ P#VALT2.6
SAY @156
++ @157 + P#VALT2.13
++ @158 + P#VALT2.5
++ @159 + P#VALT2.14
END

IF ~~ P#VALT2.7
SAY @160
IF ~~ THEN EXIT
END

IF ~~ P#VALT2.8
SAY @161
IF ~~ THEN EXIT
END

IF ~~ P#VALT2.9
SAY @162
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT2.10
SAY @163
= @164
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT2.11
SAY @165
+ ~InParty("Minsc")~ + @148 +  P#VALT2.7
++ @149 +  P#VALT2.8
++ @166 +  P#VALT2.15
++ @150 +  P#VALT2.9
END

IF ~~ P#VALT2.12
SAY @167
+ ~InParty("Minsc")~ + @148 +  P#VALT2.7
++ @149 +  P#VALT2.8
++ @168 +  P#VALT2.15
++ @150 +  P#VALT2.9
END

IF ~~ P#VALT2.13
SAY @169
IF ~~ THEN EXIT
END

IF ~~ P#VALT2.14
SAY @170
+ ~InParty("Minsc")~ + @148 +  P#VALT2.7
++ @149 +  P#VALT2.8
++ @168 +  P#VALT2.15
++ @150 +  P#VALT2.9
END

IF ~~ P#VALT2.15
SAY @171
= @164
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

//LoveTalk3 - At Rest


IF ~Global("P#VaLoveTalkRest","GLOBAL",1)~ THEN BEGIN ValygarLoveTalk3
SAY @172
++ @173 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",2)~ + P#VALT3.1
++ @174 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",2)~ + P#VALT3.2
++ @175 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",2)~ + P#VALT3.3
++ @176 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",2)~ + P#VALT3.4
END

IF ~~ P#VALT3.1
SAY @177
++ @178 + P#VALT3.5
++ @179  + P#VALT3.6
++ @180 + P#VALT3.7
++ @181 + P#VALT3.4
END


IF ~~ P#VALT3.2
SAY @182
++ @183 + P#VALT3.8
++ @184 + P#VALT3.9
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @185 + P#VALT3.10INT
+ ~Global("H#ValygarLover","GLOBAL",0)~ + @185 + P#VALT3.10NONINT
END

IF ~~ P#VALT3.3
SAY @186
++ @183 + P#VALT3.8
++ @184 + P#VALT3.9
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @185 + P#VALT3.10INT
+ ~Global("H#ValygarLover","GLOBAL",0)~ + @185 + P#VALT3.10NONINT
END

IF ~~ P#VALT3.4
SAY @187
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", -1) RestParty()~ EXIT
END

IF ~~ P#VALT3.5
SAY @188
++ @189  + P#VALT3.11
+ ~AreaType(OUTDOOR)~ + @190  + P#VALT3.12
+ ~!AreaType(OUTDOOR) !AreaType(DUNGEON)~ + @191  + P#VALT3.12
+ ~AreaType(DUNGEON)~ + @192  + P#VALT3.12
++ @193  + P#VALT3.8
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @185 + P#VALT3.10INT
+ ~Global("H#ValygarLover","GLOBAL",0)~ + @185 + P#VALT3.10NONINT
END

IF ~~ P#VALT3.6
SAY @194
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.7
SAY @199
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.8
SAY @200
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.9
SAY @201
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.10INT
SAY @202
++ @203 + P#VALT3.4
++ @204 + P#VALT3.6
END

IF ~~ P#VALT3.10NONINT
SAY @205
= @206
++ @207 + P#VALT3.17
++ @208 + P#VALT3.18
++ @209 + P#VALT3.13
++ @210 + P#VALT3.19
++ @211 + P#VALT3.20
++ @212 + P#VALT3.21
++ @213 + P#VALT3.22
END

IF ~~ P#VALT3.11
SAY @214
= @215
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.12
SAY @216
++ @217 + P#VALT3.6
++ @218 + P#VALT3.23
++ @219 + P#VALT3.4
++ @220 + P#VALT3.24
END

IF ~~ P#VALT3.13
SAY @221
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT

END

IF ~~ P#VALT3.14
SAY @222
++ @223 + P#VALT3.25
++ @224 + P#VALT3.22
++ @225 + P#VALT3.26
END

IF ~~ P#VALT3.15
SAY @226
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.16
SAY @227
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", 1) 
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.17
SAY @228
++ @229 + P#VALT3.27
++ @230 + P#VALT3.26
++ @231 + P#VALT3.22A
++ @232 + P#VALT3.28
END

IF ~~ P#VALT3.18
SAY @233
++ @234 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 3)~ + P#VALT3.29
++ @235 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 3)~ + P#VALT3.30
++ @236 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 2)~ + P#VALT3.31
+ ~InParty("Viconia")~ + @237 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 2)~ + P#VALT3.31
++ @238 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 2)~ + P#VALT3.32
END

IF ~~ P#VALT3.19
SAY @239
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ P#VALT3.20
SAY @240
= @241
++ @242 + P#VALT3.33
++ @243 + P#VALT3.34
++ @244 + P#VALT3.25
++ @245 + P#VALT3.22
END

IF ~~ P#VALT3.21
SAY @246
++ @247 + P#VALT3.6
++ @248 + P#VALT3.22
END

IF ~~ P#VALT3.22
SAY @249
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", -1) RestParty()~ EXIT
END

IF ~~ P#VALT3.22A
SAY @250
++ @251 + P#VALT3.33
++ @252 + P#VALT3.25
++ @253 + P#VALT3.22
END


IF ~~ P#VALT3.23
SAY @254
++ @255 + P#VALT3.35
++ @256 + P#VALT3.8
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @185 + P#VALT3.10INT
+ ~Global("H#ValygarLover","GLOBAL",0)~ + @185 + P#VALT3.10NONINT
END

IF ~~ P#VALT3.24
SAY @257
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL", -1) RestParty()~ EXIT
END

IF ~~ P#VALT3.25
SAY @258
++ @259 + P#VALT3.4
++ @260 + P#VALT3.36
++ @261 + P#VALT3.37
END

IF ~~ P#VALT3.26
SAY @262
++ @251 + P#VALT3.25
++ @252 + P#VALT3.25
++ @253 + P#VALT3.22
END

IF ~~ P#VALT3.27
SAY @263
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT3.28
SAY @264
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT3.29
SAY @265
= @266
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.30
SAY @267
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.31
SAY @268
= @266
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.32
SAY @269
= @266
IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT3.33
SAY @270
++ @271 + P#VALT3.36
++ @272 + P#VALT3.4
END

IF ~~ P#VALT3.34
SAY @273
++ @274 + P#VALT3.6
++ @275 + P#VALT3.4
END

IF ~~ P#VALT3.35
SAY @276
++ @277 + P#VALT3.42
++ @278 + P#VALT3.16
++ @279 + P#VALT3.38
++ @280 + P#VALT3.22
END

IF ~~ P#VALT3.36
SAY @281

IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT

IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT

END

IF ~~ P#VALT3.37
SAY @282
++ @283 + P#VALT3.39
++ @284 + P#VALT3.4
++ @285 + P#VALT3.40
++ @286 + P#VALT3.41
END

IF ~~ P#VALT3.38
SAY @287
++ @195 + P#VALT3.13
++ @196 + P#VALT3.14
++ @197 + P#VALT3.15
++ @198 + P#VALT3.16
END

IF ~~ P#VALT3.39
SAY @288
= @289
++ @290 + P#VALT3.36
++ @272 + P#VALT3.4
END

IF ~~ P#VALT3.40
SAY @291
++ @290 + P#VALT3.36
++ @272 + P#VALT3.4
END

IF ~~ P#VALT3.41
SAY @292
= @293
++ @294 + P#VALT3.13
++ @290 + P#VALT3.36
++ @272 + P#VALT3.4
END

IF ~~ P#VALT3.42
SAY @295
++ @296 + P#VALT3.6
++ @297 + P#VALT3.14
++ @298 + P#VALT3.16
END

/* morning after lovenight */
IF WEIGHT #-1
~Global("P#ToBMorning1","GLOBAL",2)~ THEN BEGIN MorningAfter
SAY @299  
=
@300 =
@301 
++ @302 GOTO M#MorningAfterExit
++ @303 GOTO M#MorningAfterExit2
++ @304 GOTO M#MorningAfterExit
++ @305 GOTO Mistake
END

IF ~~ THEN BEGIN Mistake
SAY @306
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3) SetGlobal("P#ToBMorning1","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN M#MorningAfterExit
  SAY @307
  IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN M#MorningAfterExit2
  SAY @308
  IF ~~ THEN DO ~SetGlobal("P#ToBMorning1","GLOBAL",3)
    		 RestParty()~ EXIT
END





//LoveTalk4 - an hour after killing Y-S mother

IF ~Global("P#VaFreeTalk1","GLOBAL",2)~ THEN BEGIN ValygarFreeTalk1
SAY @309
+ ~!InParty("sarevok")~ + @310 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.1
+ ~InParty("sarevok")~ + @310 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.2
+ ~!InParty("sarevok")~ + @311 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.3
+ ~InParty("sarevok")~ + @311 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.4
++ @312 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.5
+ ~!InParty("sarevok")~ + @313 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.6
+ ~InParty("sarevok")~ + @313 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.7
++ @314 DO ~SetGlobal("P#VaFreeTalk1","GLOBAL",3)~ + P#VALT4.8
END

IF ~~ P#VALT4.1
SAY @315
++ @316  + P#VALT4.8A
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
++ @319  + P#VALT4.12
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.2
SAY @322
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.3
SAY @325
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.4
SAY @326
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

END

CHAIN VALYG25J P#VALT4.5
@327
== SAREV25J IF ~InParty("sarevok")~ THEN @328
END
++ @329 + P#VALT4.7
++ @330 + P#VALT4.16
+ ~InParty("sarevok")~ + @331 + P#VALT4.17
+ ~InParty("sarevok")~ + @332 + P#VALT4.18
++ @333  + P#VALT4.15


APPEND VALYG25J

IF ~~ P#VALT4.6
SAY @334
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.7
SAY @335
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.8
SAY @336
++ @337 + P#VALT4.19
+ ~!InParty("sarevok")~ + @338 + P#VALT4.6
+ ~InParty("sarevok")~ + @338 + P#VALT4.7
++ @339 + P#VALT4.20
END

IF ~~ P#VALT4.8A
SAY @340
++ @341 + P#VALT4.21
++ @342 + P#VALT4.15
++ @343 + P#VALT4.20
END

IF ~~ P#VALT4.9
SAY @344
++ @345 + P#VALT4.22
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25
END

IF ~~ P#VALT4.10
SAY @349
++ @345 + P#VALT4.22
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25
END

IF ~~ P#VALT4.11
SAY @350
++ @345 + P#VALT4.22
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25
END

IF ~~ P#VALT4.12
SAY @351
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

END

CHAIN VALYG25J P#VALT4.13
@352
== VALYG25J IF ~Alignment("sarevok",CHAOTIC_EVIL)~ THEN @353 
== VALYG25J IF ~Alignment("sarevok",CHAOTIC_GOOD)~ THEN @354
== VALYG25J @355
END
++ @356 + P#VALT4.26
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25

APPEND VALYG25J

IF ~~ P#VALT4.14
SAY @357
++ @356 + P#VALT4.26
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25
END

IF ~~ P#VALT4.15
SAY @358
++ @356 + P#VALT4.26
++ @346 + P#VALT4.23
++ @347 + P#VALT4.24
++ @348 + P#VALT4.25
END

IF ~~ P#VALT4.16
SAY @359
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT4.17
SAY @360
++ @316  + P#VALT4.8
++ @317  + P#VALT4.9
++ @318  + P#VALT4.10
+ ~InParty("sarevok")~ + @323  + P#VALT4.11
++ @319  + P#VALT4.12
+ ~InParty("sarevok")~ + @324  + P#VALT4.13
++ @320  + P#VALT4.14
++ @321  + P#VALT4.15
END

IF ~~ P#VALT4.18
SAY @361
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL", 3)~  EXIT
END

IF ~~ P#VALT4.19
SAY @362
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT4.20
SAY @363
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL", 3) LeaveParty() EscapeArea()~  EXIT
END

IF ~~ P#VALT4.21
SAY @364
++ @365 + P#VALT4.21A
++ @366 + P#VALT4.21A
++ @367 + P#VALT4.21A
END

IF ~~ P#VALT4.21A
SAY @368
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT4.22
SAY @369
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT4.23
SAY @370
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT4.24
SAY @371
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT4.25
SAY @372
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT4.26
SAY @373
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END


//LoveTalk 5 - After Saradush, At Rest

IF ~Global("P#VaFreeTalk2","GLOBAL",2)~ THEN BEGIN ValygarFreeTalk2
SAY @374
++ @375 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",4)~ + P#VALT5.1
++ @376 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",4)~ + P#VALT5.2
++ @377 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",4)~ + P#VALT5.3
++ @378 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",4)~ + P#VALT5.4
++ @379 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",4)~ + P#VALT5.5
END

IF ~~ P#VALT5.1
SAY @380
++ @381 + P#VALT5.6
++ @382 + P#VALT5.7
++ @383 + P#VALT5.8
++ @384 + P#VALT5.9
END

IF ~~ P#VALT5.2
SAY @385
++ @386 + P#VALT5.7
++ @387 + P#VALT5.9
++ @388 + P#VALT5.10
END

IF ~~ P#VALT5.3
SAY @389
IF ~~ THEN GOTO P#VALT5.11
END

IF ~~ P#VALT5.4
SAY @390
IF ~~ THEN + P#VALT5.7
END

IF ~~ P#VALT5.5
SAY @391
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL", 3) RestParty()~ EXIT
END

IF ~~ P#VALT5.6
SAY @392
++ @393 + P#VALT5.7
++ @394 + P#VALT5.9
++ @395 + P#VALT5.7
END

IF ~~ P#VALT5.7
SAY @396
= @397
IF ~~ THEN GOTO P#VALT5.11
END

IF ~~ P#VALT5.8
SAY @398
= @397
IF ~~ THEN GOTO P#VALT5.11
END

IF ~~ P#VALT5.9
SAY @399
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) RestParty()~ EXIT
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.10
SAY @400
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1) RestParty()~ EXIT
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.11
SAY @401
++ @402 + P#VALT5.12
++ @403 + P#VALT5.12
++ @404 + P#VALT5.13
END

IF ~~ P#VALT5.12
SAY @405
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.13
SAY @406
++ @407  + P#VALT5.12
++ @408  + P#VALT5.14
++ @409  + P#VALT5.15
++ @410 + P#VALT5.16
END

IF ~~ P#VALT5.14
SAY @411
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.16
SAY @412
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.15
SAY @413
++ @414 + P#VALT5.12
+ ~InParty("anomen")~ + @415 + P#VALT5.17
+ ~InParty("cernd")~ + @416 + P#VALT5.17
+ ~InParty("edwin")~ + @417 + P#VALT5.17
+ ~InParty("haerdalis")~ + @418 + P#VALT5.17
+ ~InParty("jan")~ + @419 + P#VALT5.17
+ ~InParty("keldorn")~ + @420 + P#VALT5.17
+ ~InParty("J#Kelsey")~ + @421 + P#VALT5.17
+ ~InParty("Tsujath")~ + @422 + P#VALT5.17
+ ~InParty("korgan")~ + @423 + P#VALT5.17
+ ~InParty("minsc")~ + @424 + P#VALT5.17
+ ~InParty("sarevok")~ + @425 + P#VALT5.17S
+ ~InParty("sola")~ + @426 + P#VALT5.17
++ @427 + P#VALT5.17
+ ~InParty("aerie")~ + @428 + P#VALT5.18
+ ~InParty("nalia")~ + @429 + P#VALT5.18
+ ~InParty("mazzy")~ + @430 + P#VALT5.18
+ ~InParty("imoen")~ + @431 + P#VALT5.18
+ ~InParty("jaheira")~ + @432 + P#VALT5.18
+ ~InParty("viconia")~ + @433 + P#VALT5.18V
+ ~Gender(Player2,MALE) 
!Name("Anomen",Player2)
!Name("Cernd",Player2)
!Name("Edwin",Player2)
!Name("HaerDalis",Player2)
!Name("Jan",Player2)
!Name("Keldorn",Player2)
!Name("Korgan",Player2)
!Name("Minsc",Player2)
!Name("Sarevok",Player2)
!Name("Valygar",Player2)
!Name("Yoshimo",Player2)
!Name("J#Kelsey",Player2)
!Name("Sola",Player2)
!Name("NONE",Player2)
!Name("Tsujath",Player2)~ + @434 + P#VALT5.17
+ ~Gender(Player3,MALE)
!Name("Anomen",Player3)
!Name("Cernd",Player3)
!Name("Edwin",Player3)
!Name("HaerDalis",Player3)
!Name("Jan",Player3)
!Name("Keldorn",Player3)
!Name("Korgan",Player3)
!Name("Minsc",Player3)
!Name("Sarevok",Player3)
!Name("Valygar",Player3)
!Name("Yoshimo",Player3)
!Name("J#Kelsey",Player3)
!Name("Sola",Player3)
!Name("NONE",Player3)
!Name("Tsujath",Player3)~ + @435 + P#VALT5.17
+ ~Gender(Player4,MALE)
!Name("Anomen",Player4)
!Name("Cernd",Player4)
!Name("Edwin",Player4)
!Name("HaerDalis",Player4)
!Name("Jan",Player4)
!Name("Keldorn",Player4)
!Name("Korgan",Player4)
!Name("Minsc",Player4)
!Name("Sarevok",Player4)
!Name("Valygar",Player4)
!Name("Yoshimo",Player4)
!Name("J#Kelsey",Player4)
!Name("Sola",Player4)
!Name("NONE",Player4)
!Name("Tsujath",Player4)~ + @436 + P#VALT5.17
+ ~Gender(Player5,MALE)
!Name("Anomen",Player5)
!Name("Cernd",Player5)
!Name("Edwin",Player5)
!Name("HaerDalis",Player5)
!Name("Jan",Player5)
!Name("Keldorn",Player5)
!Name("Korgan",Player5)
!Name("Minsc",Player5)
!Name("Sarevok",Player5)
!Name("Valygar",Player5)
!Name("Yoshimo",Player5)
!Name("J#Kelsey",Player5)
!Name("Sola",Player5)
!Name("NONE",Player5)
!Name("Tsujath",Player5)~ + @437 + P#VALT5.17
+ ~Gender(Player6,MALE)
!Name("Anomen",Player6)
!Name("Cernd",Player6)
!Name("Edwin",Player6)
!Name("HaerDalis",Player6)
!Name("Jan",Player6)
!Name("Keldorn",Player6)
!Name("Korgan",Player6)
!Name("Minsc",Player6)
!Name("Sarevok",Player6)
!Name("Valygar",Player6)
!Name("Yoshimo",Player6)
!Name("J#Kelsey",Player6)
!Name("Sola",Player6)
!Name("NONE",Player6)
!Name("Tsujath",Player6)~ + @438 + P#VALT5.17
+ ~Gender(Player2,FEMALE)
!Name("aerie",Player2)
!Name("imoen",Player2)
!Name("jaheira",Player2)
!Name("mazzy",Player2)
!Name("nalia",Player2)
!Name("viconia",Player2)
!Name("NONE",Player2)~ + @439 + P#VALT5.18
+ ~Gender(Player3,FEMALE)
!Name("aerie",Player3)
!Name("imoen",Player3)
!Name("jaheira",Player3)
!Name("mazzy",Player3)
!Name("nalia",Player3)
!Name("viconia",Player3)
!Name("NONE",Player3)~ + @440 + P#VALT5.18
+ ~Gender(Player4,FEMALE)
!Name("aerie",Player4)
!Name("imoen",Player4)
!Name("jaheira",Player4)
!Name("mazzy",Player4)
!Name("nalia",Player4)
!Name("viconia",Player4)
!Name("NONE",Player4)~ + @441 + P#VALT5.18
+ ~Gender(Player5,FEMALE)
!Name("aerie",Player5)
!Name("imoen",Player5)
!Name("jaheira",Player5)
!Name("mazzy",Player5)
!Name("nalia",Player5)
!Name("viconia",Player5)
!Name("NONE",Player5)~ + @442 + P#VALT5.18
+ ~Gender(Player6,FEMALE)
!Name("aerie",Player6)
!Name("imoen",Player6)
!Name("jaheira",Player6)
!Name("mazzy",Player6)
!Name("nalia",Player6)
!Name("viconia",Player6)
!Name("NONE",Player6)~ + @443 + P#VALT5.18
END

IF ~~ P#VALT5.17
SAY @444
IF ~~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.17S
SAY @445
IF ~~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-10)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-10)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-10)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~SetGlobal("P#ChoseMale","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-10)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.18
SAY @446
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

IF ~~ P#VALT5.18V
SAY @447
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT //just in case the area is tagged wrongly
IF ~AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTPPG")~ EXIT
IF ~AreaType(DUNGEON) !AreaCheck("AR4500")~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTDNG")~ EXIT
IF ~AreaType(CITY)~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3)
ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTINN")~ EXIT
END

//LoveTalk 6 (Morning after to previous, can be another morning I guess, if sleep was not forced in the previous one)

IF ~Global("P#VaFreeTalk2","GLOBAL",4) Global("P#ChoseMale","GLOBAL",1)~ THEN BEGIN P#VALT6.A
SAY @448
++ @449 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",5) SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#VALT6.C
++ @450 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",5)~ + P#VALT6.1A
END

IF ~~ P#VALT6.1A
SAY @451
IF ~~ THEN EXIT
END

IF ~Global("P#VaFreeTalk2","GLOBAL",4) !Global("P#ChoseMale","GLOBAL",1)~ THEN BEGIN P#VALT6.B
SAY @452
++ @453 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",5)~ + P#VALT6.1A
++ @454 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",5)~ + P#VALT6.E
++ @455 DO ~SetGlobal("P#VaFreeTalk2","GLOBAL",5) SetGlobal("H#ValygarRomanceActive","GLOBAL", 3)~ + P#VALT6.C
END

IF ~~ P#VALT6.C
SAY @456
IF ~~ THEN EXIT
END

IF ~~ P#VALT6.D
SAY @457
IF ~~ THEN EXIT
END

IF ~~ P#VALT6.E
SAY @458
IF ~~ THEN EXIT
END

// Love Talk 7

IF ~Global("P#VaFreeTalk3","GLOBAL",1)~ THEN BEGIN ValygarFreeTalk3
SAY @459
++ @460 DO ~SetGlobal("P#VaFreeTalk3","GLOBAL",2)~ + P#VALT7.1
++ @461 DO ~SetGlobal("P#VaFreeTalk3","GLOBAL",2)~ + P#VALT7.2
++ @462 DO ~SetGlobal("P#VaFreeTalk3","GLOBAL",2)~ + P#VALT7.3
++ @463 DO ~SetGlobal("P#VaFreeTalk3","GLOBAL",2)~ + P#VALT7.4
++ @464 DO ~SetGlobal("P#VaFreeTalk3","GLOBAL",2)~ + P#VALT7.5
END

IF ~~ P#VALT7.1
SAY @465
++ @466 + P#VALT7.6
++ @467 + P#VALT7.3
++ @468 + P#VALT7.7
++ @469 + P#VALT7.8
END

IF ~~ P#VALT7.2
SAY @470
++ @471 + P#VALT7.9
++ @472 + P#VALT7.10
++ @473 + P#VALT7.7
END

IF ~~ P#VALT7.3
SAY @474
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT7.4
SAY @475
++ @476 + P#VALT7.3
++ @477 + P#VALT7.11
++ @478 + P#VALT7.2
END

IF ~~ P#VALT7.5
SAY @479
++ @480 + P#VALT7.9
++ @472 + P#VALT7.10
++ @481 + P#VALT7.7
++ @482 + P#VALT7.3
END

IF ~~ P#VALT7.6
SAY @483
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT7.7
SAY @484
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT7.8
SAY @485
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT7.9
SAY @486
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT7.10
SAY @487
IF ~~ THEN EXIT
END

IF ~~ P#VALT7.11
SAY @488
++ @489 + P#VALT7.9
++ @472 + P#VALT7.10
++ @481 + P#VALT7.7
END

// Love Talk 8 - 2 hours after defeating Y-Sh

IF ~Global("P#VaFreeTalk4","GLOBAL",2)~ THEN BEGIN ValygarFreeTalk4
SAY @490
++ @491 + P#VALT8.1
++ @492 + P#VALT8.2
++ @493 + P#VALT8.3
++ @494 + P#VALT8.4
++ @495 + P#VALT8.5
++ @496 + P#VALT8.6
++ @497 + P#VALT8.7
++ @498 + P#VALT8.8
++ @499 + P#VALT8.9
++ @500 + P#VALT8.10
END

IF ~~ P#VALT8.1
SAY @501
++ @502 + P#VALT8.10
++ @503 + P#VALT8.11
++ @504 + P#VALT8.12
++ @505 + P#VALT8.5
END

IF ~~ P#VALT8.2
SAY @506
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.3
SAY @510
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.4
SAY @511
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.5
SAY @512
++ @513 + P#VALT8.15
++ @514 + P#VALT8.1
++ @515 + P#VALT8.16
++ @516 + P#VALT8.2
END

IF ~~ P#VALT8.6
SAY @517
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.7
SAY @518
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.8
SAY @519
++ @520 + P#VALT8.17
++ @521 + P#VALT8.2
++ @522 + P#VALT8.9
END

IF ~~ P#VALT8.9
SAY @523
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1) SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.10
SAY @524
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.11
SAY @525
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.12
SAY @526
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.13
SAY @527
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.14
SAY @528
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.15
SAY @529
++ @530 + P#VALT8.18
++ @531 + P#VALT8.19
++ @532 + P#VALT8.20
END

IF ~~ P#VALT8.16
SAY @533
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.17
SAY @534
++ @507 + P#VALT8.13
++ @508 + P#VALT8.9
++ @509 + P#VALT8.14
END

IF ~~ P#VALT8.18
SAY @535
IF ~~ THEN DO ~LeaveParty() EscapeArea() SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.19
SAY @536
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT8.20
SAY @537
IF ~~ THEN DO ~SetGlobal("P#VaFreeTalk4","GLOBAL",3)~ EXIT
END

// LoveTalk 9 - we returned to the normal sequence of talks here, from 8 after at rest 6/7

IF ~Global("P#VaLoveTalk","GLOBAL",6)~ THEN BEGIN ValygarLoveTalk9
SAY @538
++ @539 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",7)~ + P#VALT9.1
++ @540 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",7)~ + P#VALT9.2
++ @541 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",7)~ + P#VALT9.3
++ @542 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",7)~ + P#VALT9.4
++ @543 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",7)~ + P#VALT9.5
END

IF ~~ P#VALT9.1
SAY @544
++ @545 + P#VALT9.6
+ ~!Race(Player1,HUMAN) !Race(Player1,HALFORC)~ + @546 + P#VALT9.7
+ ~!Race(Player1,HUMAN) !Race(Player1,HALFORC)~ + @547 + P#VALT9.8
++ @548 + P#VALT9.8
END

IF ~~ P#VALT9.2
SAY @549
++ @550 + P#VALT9.9
++ @551 + P#VALT9.10
++ @552 + P#VALT9.10
END

IF ~~ P#VALT9.3
SAY @553
IF ~~ THEN EXIT
END

IF ~~ P#VALT9.4
SAY @554
++ @555 + P#VALT9.11
++ @556 + P#VALT9.12
++ @557 + P#VALT9.13
END

IF ~~ P#VALT9.5
SAY @558
++ @559 + P#VALT9.8
+ ~!Race(Player1,HUMAN) !Race(Player1,HALFORC)~ + @546 + P#VALT9.7
+ ~!Race(Player1,HUMAN) !Race(Player1,HALFORC)~ + @547 + P#VALT9.8
++ @560 + P#VALT9.14
++ @561 + P#VALT9.15
END

IF ~~ P#VALT9.6
SAY @562
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

IF ~~ P#VALT9.7
SAY @566
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT9.8
SAY @567
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

IF ~~ P#VALT9.9
SAY @568
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

IF ~~ P#VALT9.10
SAY @569
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT9.11
SAY @570
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

IF ~~ P#VALT9.12
SAY @571
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT9.13
SAY @572
IF ~~ THEN EXIT
END

IF ~~ P#VALT9.14
SAY @573
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

IF ~~ P#VALT9.15
SAY @574
++ @575 + P#VALT9.19
++ @576  + P#VALT9.20
++ @577  + P#VALT9.21
END

IF ~~ P#VALT9.16
SAY @578
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT9.17
SAY @579
= @580
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT9.18
SAY @581
IF ~~ THEN EXIT
END

IF ~~ P#VALT9.19
SAY @582
IF ~~ THEN EXIT
END

IF ~~ P#VALT9.20
SAY @583
IF ~~ THEN EXIT
END

IF ~~ P#VALT9.21
SAY @584
++ @563 + P#VALT9.16
++ @564 + P#VALT9.17
++ @565 + P#VALT9.18
END

// LoveTalk 10

IF ~Global("P#VaLoveTalk","GLOBAL",8)~ THEN BEGIN ValygarLoveTalk10
SAY @585
++ @586 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",9)~ GOTO P#VALT10.1
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,FIGHTER_ALL)~ + @587 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",9)~ GOTO P#VALT10.2
++ @588 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",9)~ GOTO P#VALT10.3
++ @589 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",9)~ GOTO P#VALT10.4
END

IF ~~ P#VALT10.1
SAY @590
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,FIGHTER_ALL)~ + @587 GOTO P#VALT10.2
++ @588 GOTO P#VALT10.3
++ @589 GOTO P#VALT10.4
END

IF ~~ P#VALT10.2
SAY @591
++ @592 + P#VALT10.5
++ @593 + P#VALT10.6
++ @594 + P#VALT10.7
END

IF ~~ P#VALT10.3
SAY @595
++ @596 GOTO P#VALT10.8
++ @597 GOTO P#VALT10.9
++ @598 GOTO P#VALT10.10
END

IF ~~ P#VALT10.4
SAY @599
++ @600 GOTO P#VALT10.11
++ @601 GOTO P#VALT10.12
++ @602 GOTO P#VALT10.13
END

IF ~~ P#VALT10.5
SAY @603
IF ~~ THEN EXIT
END

IF ~~ P#VALT10.6
SAY @604
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT10.7
SAY @605
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT10.8
SAY @606
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT10.9
SAY @607
++ @608 + P#VALT10.17
++ @609 GOTO P#VALT10.4
END

IF ~~ P#VALT10.10
SAY @610
IF ~~ THEN EXIT
END

IF ~~ P#VALT10.11
SAY @611
++ @612 GOTO P#VALT10.14
++ @613 GOTO P#VALT10.15
++ @614 GOTO P#VALT10.16
END

IF ~~ P#VALT10.12
SAY @615
IF ~~ THEN EXIT
END

IF ~~ P#VALT10.13
SAY @616
++ @617 + P#VALT10.19
++ @618 GOTO P#VALT10.14
++ @619 GOTO P#VALT10.17
++ @620 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#VALT10.15
END

IF ~~ P#VALT10.14
SAY @621
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT10.15
SAY @622
IF ~~ THEN EXIT
END

IF ~~ P#VALT10.16
SAY @623
= @624
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT10.17
SAY @625
++ @626 GOTO P#VALT10.18
++ @627 GOTO P#VALT10.19
END

IF ~~ P#VALT10.18
SAY @628
IF ~~ THEN EXIT
END

IF ~~ P#VALT10.19
SAY @629
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

// LoveTalk 11  - interjection at Sendai's

IF ~~ P#VALT11.1
SAY @630 
IF ~~ THEN EXTERN SENBEH01 P#VALT11.2
END

END

APPEND SENBEH01
IF ~~ P#VALT11.2
SAY @631
= @632
COPY_TRANS SENBEH01 1
END

END

INTERJECT SENBEH01 1 P#ValBeholder
== VALYG25J IF ~InParty("valygar") !Dead("valygar") !StateCheck("valygar",STATE_SLEEPING)~ THEN @633
END
++ @634 EXTERN VALYG25J P#VALT11.1
+ ~OR(4) Class(Player1,FIGHTER_ALL) Class(Player1,RANGER_ALL) Class(Player1,MONK) Class(Player1,PALADIN_ALL)~ + @635 EXTERN VALYG25J P#VALT11.1
++ @636 EXTERN VALYG25J P#VALT11.1
++ @637 EXTERN VALYG25J P#VALT11.1
++ @638 EXTERN VALYG25J P#VALT11.1


// LoveTalk 12 Dragons in the Family (After killing Dragonspawns)

APPEND VALYG25J

IF ~Global("P#VaFreeTalk5","GLOBAL",2)~ THEN BEGIN ValygarFreeTalk5
SAY @639
++ @640 DO ~SetGlobal("P#VaFreeTalk5","GLOBAL",3)~ GOTO P#VALT12.1
++ @641 DO ~SetGlobal("P#VaFreeTalk5","GLOBAL",3)~ GOTO P#VALT12.2
++ @642 DO ~SetGlobal("P#VaFreeTalk5","GLOBAL",3)~ GOTO P#VALT12.3
++ @643 DO ~SetGlobal("P#VaFreeTalk5","GLOBAL",3)~ GOTO P#VALT12.4
END

IF ~~ P#VALT12.1
SAY @644
++ @645 GOTO P#VALT12.5
++ @646 GOTO P#VALT12.3
++ @647 + P#VALT12.6
END

IF ~~ P#VALT12.2
SAY @648
++ @649 + P#VALT12.7
++ @650 + P#VALT12.7
++ @651 + P#VALT12.4
END

IF ~~ P#VALT12.3
SAY @652
++ @653 + P#VALT12.8
++ @654 + P#VALT12.7
++ @655 + P#VALT12.9
END

IF ~~ P#VALT12.4
SAY @656
+ ~Race(Player1,ELF)~ + @657 + P#VALT12.10E
+ ~!Race(Player1,ELF)~ + @657 + P#VALT12.10NE
++ @658 + P#VALT12.7
++ @659 + P#VALT12.11
END

IF ~~ P#VALT12.5
SAY @660
++ @661 + P#VALT12.6
++ @662 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-2)~ + P#VALT12.7
++ @663 + P#VALT12.17
END

IF ~~ P#VALT12.6
SAY @664
IF ~~ EXIT
END

IF ~~ P#VALT12.7
SAY @665
++ @666 + P#VALT12.12
++ @667 + P#VALT12.13
++ @668 + P#VALT12.14
END

IF ~~ P#VALT12.8
SAY @669
++ @670 + P#VALT12.9
++ @671 + P#VALT12.9
++ @672 + P#VALT12.7
++ @673 + P#VALT12.14
END

IF ~~ P#VALT12.9
SAY @674
++ @675 + P#VALT12.7
++ @676 + P#VALT12.14
++ @677 + P#VALT12.4
END

IF ~~ P#VALT12.10E
SAY @678
++ @679 + P#VALT12.17
++ @680 + P#VALT12.7
++ @681 + P#VALT12.11
END

IF ~~ P#VALT12.10NE
SAY @682
++ @683 + P#VALT12.15
++ @684 + P#VALT12.16
++ @681 + P#VALT12.11
END

IF ~~ P#VALT12.11
SAY @685
IF ~~ THEN EXIT
END

IF ~~ P#VALT12.12
SAY @686
IF ~~ DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT12.13
SAY @687
++ @688 + P#VALT12.14
++ @689 + P#VALT12.17
++ @681 + P#VALT12.11
END

IF ~~ P#VALT12.14
SAY @690
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT12.15
SAY @691
IF ~~ THEN EXIT
END

IF ~~ P#VALT12.16
SAY @692
IF ~~ THEN EXIT
END

IF ~~ P#VALT12.17
SAY @693
IF ~~ THEN EXIT
END

// LoveTalk 13 This is sequential but restricted to the Pocket Plane

IF ~Global("P#VaLoveTalk","GLOBAL",10)~ THEN BEGIN ValygarLoveTalk13
SAY @694
++ @695 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",11)~ GOTO P#VALT13.1
++ @696 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",11)~ GOTO P#VALT13.3
++ @697 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",11)~ GOTO P#VALT13.4
++ @698 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",11)~ GOTO P#VALT13.5
END

IF ~~ P#VALT13.1
SAY @699
++ @700 GOTO P#VALT13.6
++ @701 GOTO P#VALT13.5
++ @702 GOTO P#VALT13.7
++ @703 GOTO P#VALT13.6
++ @704 GOTO P#VALT13.2
END

IF ~~ P#VALT13.2
SAY @705
= @706
++ @707 GOTO P#VALT13.8
++ @708 GOTO P#VALT13.9
++ @709 GOTO P#VALT13.6
++ @710 GOTO P#VALT13.7
END

IF ~~ P#VALT13.3
SAY @711
++ @712 DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ + P#VALT12.17
//++ ~Then do it, you wool-brained idiot.~ DO ~SetGlobal("P#EndGameEarly","GLOBAL",1)~ EXIT  //Code to start a custom epilogue is in AR6200 file//
++ @713 GOTO P#VALT13.10
END

IF ~~ P#VALT13.4
SAY @714
++ @715 GOTO P#VALT13.11
++ @716 GOTO P#VALT13.12
++ @717 GOTO P#VALT13.12
END

IF ~~ P#VALT13.5
SAY @718
++ @719 GOTO P#VALT13.4
++ @720 GOTO P#VALT13.12
++ @721 GOTO P#VALT13.3
END

IF ~~ P#VALT13.6
SAY @722 
IF ~~ THEN GOTO P#VALT13.4
END

IF ~~ P#VALT13.7
SAY @723
++ @712 DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ + P#VALT12.17
//++ ~Then do it, you wool-brained idiot.~ DO ~SetGlobal("P#EndGameEarly","GLOBAL",1)~ EXIT  //Code to start a custom epilogue is in AR6200 file//
++ @724 GOTO P#VALT13.6
END

IF ~~ P#VALT13.8
SAY @725
IF ~~ THEN GOTO P#VALT13.6
END

IF ~~ P#VALT13.9
SAY @726 
IF ~~ THEN GOTO P#VALT13.8
END

IF ~~ P#VALT13.10
SAY @727 
IF ~~ THEN GOTO P#VALT13.6
END

IF ~~ P#VALT13.11
SAY @728
IF ~~ THEN EXIT
END

IF ~~ P#VALT13.12
SAY @729
IF ~~ THEN EXIT
END

// LoveTalk 14  - Regular sequential talk again

IF ~Global("P#VaLoveTalk","GLOBAL",12)~ THEN BEGIN ValygarLoveTalk14
SAY @730
++ @731 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",13)~ + P#VALT14.1
++ @732 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",13)~ + P#VALT14.2
++ @733 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",13)~ + P#VALT14.3
END

IF ~~ P#VALT14.1
SAY @734
++ @735 + P#VALT14.4
++ @736 + P#VALT14.5
++ @737 + P#VALT14.4
++ @738 + P#VALT14.6
END

IF ~~ P#VALT14.2
SAY @739
++ @735 + P#VALT14.7
++ @736 + P#VALT14.8
++ @737 + P#VALT14.9
++ @740 + P#VALT14.6
END

IF ~~ P#VALT14.3
SAY @741
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT14.4
SAY @742
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT14.5
SAY @743
IF ~~ THEN EXIT
END

IF ~~ P#VALT14.6
SAY @744
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT14.7
SAY @742
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT14.8
SAY @743
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ EXIT
END

IF ~~ P#VALT14.9
SAY @745
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

// LoveTalk 15 // Obsession

IF ~Global("P#VaLoveTalk","GLOBAL",14)~ THEN BEGIN ValygarLoveTalk15
SAY @746
++ @747 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",15)~ GOTO P#VALT15.1
++ @748 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",15)~ GOTO P#VALT15.2
++ @749 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",15)~ GOTO P#VALT15.3
END

IF ~~ P#VALT15.1
SAY @750
++ @751 GOTO P#VALT15.4
++ @752 GOTO P#VALT15.5
++ @753 GOTO P#VALT15.6
++ @754 GOTO P#VALT15.7
END

IF ~~ P#VALT15.2
SAY @755 
IF ~~ THEN GOTO P#VALT15.2A
END

IF ~~ P#VALT15.2A
SAY @756
++ @757 GOTO P#VALT15.8
++ @758 GOTO P#VALT15.7
++ @759 GOTO P#VALT15.8
++ @760 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-2)~ GOTO P#VALT15.9
END

IF ~~ P#VALT15.3
SAY @761
++ @762 GOTO P#VALT15.10
++ @763 GOTO P#VALT15.4
END

IF ~~ P#VALT15.4
SAY @764
++ @765 GOTO P#VALT15.11
++ @766 GOTO P#VALT15.12
++ @767 GOTO P#VALT15.13
++ @768 GOTO P#VALT15.14
END

IF ~~ P#VALT15.8
SAY @769
++ @765 GOTO P#VALT15.11
++ @766 GOTO P#VALT15.12
++ @767 GOTO P#VALT15.13
++ @768 GOTO P#VALT15.14
END

IF ~~ P#VALT15.7
SAY @770
++ @765 GOTO P#VALT15.11
++ @766 GOTO P#VALT15.12
++ @767 GOTO P#VALT15.13
++ @768 GOTO P#VALT15.14
END

IF ~~ P#VALT15.9
SAY @771
++ @765 GOTO P#VALT15.11
++ @766 GOTO P#VALT15.12
++ @767 GOTO P#VALT15.13
++ @768 GOTO P#VALT15.14
END

IF ~~ P#VALT15.10
SAY @772
++ @765 GOTO P#VALT15.11
++ @766 GOTO P#VALT15.12
++ @767 GOTO P#VALT15.13
++ @768 GOTO P#VALT15.14
END

IF ~~ P#VALT15.5
SAY @773
++ @774 GOTO P#VALT15.15
++ @775 GOTO P#VALT15.12
++ @760 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-2)~ + P#VALT12.17
END

IF ~~ P#VALT15.6
SAY @776
++ @768 GOTO P#VALT15.14
++ @777 GOTO P#VALT15.12
++ @778 GOTO P#VALT15.16
END

IF ~~ P#VALT15.11
SAY @779
++ @780 GOTO P#VALT15.17
++ @781 GOTO P#VALT15.18
++ @782 GOTO P#VALT15.16
END

IF ~~ P#VALT15.12
SAY @783
++ @784 GOTO P#VALT15.17
++ @781 GOTO P#VALT15.18
++ @782 GOTO P#VALT15.16
END

IF ~~ P#VALT15.13
SAY @785
++ @784 GOTO P#VALT15.17
++ @781 GOTO P#VALT15.18
++ @782 GOTO P#VALT15.16
END

IF ~~ P#VALT15.14
SAY @786
++ @787 GOTO P#VALT15.15
++ @788 GOTO P#VALT15.18
++ @782 GOTO P#VALT15.16
END

IF ~~ P#VALT15.15
SAY @789
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT15.17
SAY @790
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT15.18
SAY @791
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ EXIT
END

IF ~~ P#VALT15.16
SAY @792
++ @793 GOTO P#VALT15.19
++ @794 GOTO P#VALT15.20
++ @795 GOTO P#VALT15.21
++ @796 GOTO P#VALT15.22
++ @797 GOTO P#VALT15.23
END

IF ~~ P#VALT15.19
SAY @798
++ @799 DO ~IncrementGlobal("P#ValProposal","GLOBAL", 1)~ + P#VALT15.20
++ @800 GOTO P#VALT15.20
++ @801 DO ~IncrementGlobal("P#ValProposal","GLOBAL", -1)~ + P#VALT12.17
END

IF ~~ P#VALT15.20
SAY @802
IF ~~ THEN GOTO P#VALT15.18
END

IF ~~ P#VALT15.21
SAY @803 
IF ~~ THEN GOTO P#VALT15.18
END

IF ~~ P#VALT15.22
SAY @804 
IF ~~ THEN GOTO P#VALT15.22A
END

IF ~~ P#VALT15.22A
SAY @805
IF ~~ DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#VALT15.23
SAY @806
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 2)~ EXIT
END

//LoveTalk 16 

IF ~Global("P#VaLoveTalk","GLOBAL",16)~ THEN BEGIN ValygarLoveTalk17
SAY @807
++ @808 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",17)~ + P#VALT16.1
++ @809 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",17)~ + P#VALT16.2
++ @810 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",17)~ + P#VALT16.3
++ @811 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",17)~ + P#VALT16.4
END

IF ~~ P#VALT16.1
SAY @812
++ @813 + P#VALT16.4
++ @814 + P#VALT16.5
++ @815 DO ~SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.1_01
++ @816 + P#VALT16.2
END

IF ~~ P#VALT16.1_01
SAY @817
IF ~~ THEN EXIT
END

IF ~~ P#VALT16.2
SAY @818
++ @819 + P#VALT16.6
++ @820 + P#VALT16.7
++ @821 + P#VALT16.8
END

IF ~~ P#VALT16.3
SAY @822
++ @823 + P#VALT16.2
++ @824 + P#VALT16.1
++ @825 + P#VALT16.9
END

IF ~~ P#VALT16.4
SAY @826
++ @827 DO ~SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.1_01
++ @828 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#VALT16.1_01
++ @829 DO ~SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.10
++ @830 DO ~SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.11
++ @831 DO ~SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.12
END

IF ~~ P#VALT16.5
SAY @832
++ @827 DO ~SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.1_01
++ @828 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#VALT16.1_01
++ @829 DO ~SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.10
++ @830 DO ~SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.11
++ @831 DO ~SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.12
END

IF ~~ P#VALT16.6
SAY @833
++ @834 + P#VALT16.13
++ @835 + P#VALT16.14
++ @836 + P#VALT16.9
END

IF ~~ P#VALT16.7
SAY @837
++ @838 + P#VALT16.9
++ @839 + P#VALT16.5
++ @840 + P#VALT16.15
END

IF ~~ P#VALT16.8
SAY @841
IF ~~ THEN GOTO P#VALT16.5      
END

IF ~~ P#VALT16.9
SAY @842
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL", 2)~
EXIT
END

IF ~~ P#VALT16.10
SAY @843
++ @844 + P#VALT16.16
++ @845 DO ~SetGlobal("P#ValygarTravel","GLOBAL",2) IncrementGlobal("P#ValProposal","GLOBAL",1)~ + P#VALT16.20
++ @846 + P#VALT16.12
END

IF ~~ P#VALT16.11
SAY @847
++ @848 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3) SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.9
++ @849 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.17
++ @850 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-3) SetGlobal("P#ValygarTravel","GLOBAL",1)~ + P#VALT16.1_01
END

IF ~~ P#VALT16.12
SAY @851
++ @852 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.18
++ @853 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.20
++ @854 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.9
END

IF ~~ P#VALT16.13
SAY @855
IF ~~ THEN GOTO P#VALT16.8
END

IF ~~ P#VALT16.14
SAY @856
IF ~~ THEN GOTO P#VALT16.8
END

IF ~~ P#VALT16.15
SAY @857
IF ~~ THEN DO ~SetGlobal("P#ValygarTravel","GLOBAL",1) IncrementGlobal("P#ValProposal","GLOBAL",-1)~ EXIT
END

IF ~~ P#VALT16.16
SAY @858
++ @859 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.19
++ @860 DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) SetGlobal("P#ValygarTravel","GLOBAL",2)~ + P#VALT16.20
++ @861 + P#VALT16.15
END

IF ~~ P#VALT16.17
SAY @862
IF ~~ THEN EXIT
END

IF ~~ P#VALT16.18
SAY @863
IF ~~ THEN EXIT
END

IF ~~ P#VALT16.19
SAY @864
IF ~~ THEN EXIT
END

IF ~~ P#VALT16.20
SAY @865
IF ~~ THEN EXIT
END

//LoveTalk 17 - another regular

IF ~Global("P#VaLoveTalk","GLOBAL",18)~ THEN BEGIN ValygarLoveTalk17
SAY @866
++ @867 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",19)~ + P#VALT17.1
+ ~GlobalGT("KamirWard","GLOBAL",0)~ + @868 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",19)~ + P#VALT17.2
++ @869 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",19)~ + P#VALT17.4
++ @870 DO ~SetGlobal("P#VaLoveTalk","GLOBAL",19)~ + P#VALT17.3
END

IF ~~ P#VALT17.1
SAY @871
++ @872 + P#VALT17.3
++ @873 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.15
++ @874 + P#VALT17.2
END

IF ~~ P#VALT17.2
SAY @875
++ @876 + P#VALT17.5
++ @877 + P#VALT17.6
++ @878 + P#VALT17.7
++ @879 + P#VALT17.6
++ @880 + P#VALT17.8
++ @881 + P#VALT17.6A
END

IF ~~ P#VALT17.3
SAY @882
IF ~~ THEN GOTO P#VALT17.2
END

IF ~~ P#VALT17.4
SAY @883
++ @884 + P#VALT17.9
++ @885 + P#VALT17.3
++ @886 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.3
++ @887 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.15
END

IF ~~ P#VALT17.5
SAY @888
++ @889 + P#VALT17.6A
++ @890 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.15
++ @891 + P#VALT17.10
END

IF ~~ P#VALT17.6
SAY @892
IF ~~ THEN GOTO P#VALT17.6A
END

IF ~~ P#VALT17.6A
SAY @893
= @894
+ ~!Race(Player1,HUMAN)~ + @895 + P#VALT17.11
++ @896 + P#VALT17.12
++ @897 + P#VALT17.12
++ @898 + P#VALT17.13
++ @899 + P#VALT17.12
++ @900 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.15
END

IF ~~ P#VALT17.7
SAY @901
IF ~~ THEN GOTO P#VALT17.6A
END

IF ~~ P#VALT17.8
SAY @902
IF ~~ THEN GOTO P#VALT17.6A
END

IF ~~ P#VALT17.9
SAY @903
IF ~~ THEN GOTO P#VALT17.3
END

IF ~~ P#VALT17.10
SAY @904
IF ~~ THEN GOTO P#VALT17.6A
END

IF ~~ P#VALT17.11
SAY @905
++ @896 + P#VALT17.12
++ @897 + P#VALT17.12
++ @906 + P#VALT17.13
++ @899 + P#VALT17.12
++ @900 DO ~IncrementGlobal("P#ValProposal","GLOBAL",-1)~ + P#VALT17.15
END

IF ~~ P#VALT17.12
SAY @907
++ @908 + P#VALT17.15
++ @909 + P#VALT17.15
++ @910 + P#VALT17.14
END

IF ~~ P#VALT17.13
SAY @911
IF ~~ THEN DO ~SetGlobal("P#ValygarChild","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT17.14
SAY @912
IF ~~ THEN DO ~SetGlobal("P#ValygarChild","GLOBAL",1)~ EXIT
END

IF ~~ P#VALT17.15
SAY @913
IF ~~ THEN EXIT
END

// LoveTalk18 (at Rest)

IF ~Global("P#VaLoveTalkRest","GLOBAL",3)~ THEN BEGIN ValygarLoveTalk18
SAY @914
++ @915 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",4)~ + P#VALT18.1
++ @916 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",4)~ + P#VALT18.2
++ @917 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",4)~ + P#VALT18.2
++ @918 DO ~SetGlobal("P#VaLoveTalkRest","GLOBAL",4)~ + P#VALT18.3
END

IF ~~ P#VALT18.1
SAY @919
++ @920 + P#VALT18.4
++ @921 + P#VALT18.5
++ @922 + P#VALT18.6
++ @923 + P#VALT18.7
END

IF ~~ P#VALT18.2
SAY @924
++ @925 + P#VALT18.8
++ @926 + P#VALT18.23
++ @927 + P#VALT18.9
++ @928 + P#VALT18.7
END

IF ~~ P#VALT18.3
SAY @929
++ @925 + P#VALT18.8
++ @930 + P#VALT18.23
++ @927 + P#VALT18.9
++ @928 + P#VALT18.7
END

IF ~~ P#VALT18.4
SAY @931
= @932
++ @933 + P#VALT18.10
++ @934 + P#VALT18.11
++ @935 + P#VALT18.12
END

IF ~~ P#VALT18.5
SAY @936
++ @937 + P#VALT18.13
++ @938 + P#VALT18.9
++ @939 + P#VALT18.14
END

IF ~~ P#VALT18.6
SAY @940
++ @941 + P#VALT18.15
++ @942 + P#VALT18.12
++ @943 + P#VALT18.7
END

IF ~~ P#VALT18.7
SAY @944
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#VALT18.8
SAY @945
++ @946 + P#VALT18.16
++ @947 + P#VALT18.17
++ @948 + P#VALT18.7
END

IF ~~ P#VALT18.9
SAY @949
++ @950 + P#VALT18.18
++ @951 + P#VALT18.19
END

IF ~~ P#VALT18.10
SAY @952
++ @953 + P#VALT18.20
++ @954 + P#VALT18.21
++ @955 + P#VALT18.7
END

IF ~~ P#VALT18.11
SAY @956
++ @953 + P#VALT18.20
++ @954 + P#VALT18.21
++ @955 + P#VALT18.7
END

IF ~~ P#VALT18.12
SAY @957
++ @925 + P#VALT18.8
++ @930 + P#VALT18.23
++ @927 + P#VALT18.9
++ @928 + P#VALT18.7
END

IF ~~ P#VALT18.13
SAY @958
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#VALT18.14
SAY @959
++ @960 + P#VALT18.7
++ @961 + P#VALT18.23
++ @962 + P#VALT18.22
END

IF ~~ P#VALT18.15
SAY @963
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#VALT18.16
SAY @964
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT18.17
SAY @965
++ @966 + P#VALT18.13
++ @967 + P#VALT18.9
++ @968 + P#VALT18.14
END

IF ~~ P#VALT18.18
SAY @969
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT18.19
SAY @970
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT18.20
SAY @971
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ P#VALT18.21
SAY @972
IF ~~ THEN DO ~LeaveParty() EscapeArea() SetGlobal("H#ValygarRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ P#VALT18.22
SAY @973
= @974
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#VALT18.23
SAY @975
IF ~~ THEN DO ~RestParty()~ EXIT
END

//Valygar_Initiated Flirts

IF ~Global("P#VaForestTalk","GLOBAL",1)~ THEN BEGIN ValygarForestTalk1
SAY @976
+ ~RandomNum(3,1)~ + @977 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.1 
+ ~RandomNum(3,2)~ + @977 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.2
+ ~RandomNum(3,3)~ + @977 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.3
++ @978 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.4
+ ~RandomNum(2,1)~ + @979 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.5
+ ~RandomNum(2,2)~ + @979 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.6
+ ~RandomNum(2,1)~ + @980 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.7
+ ~RandomNum(2,2)~ + @980 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.8
+ ~RandomNum(2,1)~ + @981 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.9
+ ~RandomNum(2,2)~ + @981 DO ~SetGlobal("P#VaForestTalk","GLOBAL",2)~ + P#VAFL1.10
END

IF ~~ P#VAFL1.1
SAY @982
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.2
SAY @983
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.3
SAY @984
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.4
SAY @985
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.5
SAY @986
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.6
SAY @987
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.7
SAY @988
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.8
SAY @989
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.9
SAY @990
IF ~~ THEN EXIT
END

IF ~~ P#VAFL1.10
SAY @991
IF ~~ THEN EXIT
END

//

IF ~Global("P#VaForestTalk","GLOBAL",3)~ THEN BEGIN ValygarForestTalk2
SAY @992
++ @993 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.1
++ @994 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.2
++ @995 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.3
+ ~TimeOfDay(DAY)~ + @996 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.4
++ @997 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.4
++ @998 DO ~SetGlobal("P#VaForestTalk","GLOBAL",4)~ + P#VAFL2.5
END

IF ~~ P#VAFL2.1
SAY @999
++ @1000 + P#VAFL2.6
++ @1001 + P#VAFL2.7
END

IF ~~ P#VAFL2.2
SAY @1002
++ @1003 + P#VAFL2.8
++ @1004 + P#VAFL2.9
++ @1005 + P#VAFL2.10
END

IF ~~ P#VAFL2.3
SAY @1006
++ @1007 + P#VAFL2.8
++ @1008 + P#VAFL2.15
++ @1009 + P#VAFL2.10
END

IF ~~ P#VAFL2.4
SAY @1010
++ @1011 + P#VAFL2.11
+ ~InParty("cernd")~ + @1012 + P#VAFL2.12
+ ~!InParty("cernd")~ + @1012 + P#VAFL2.13
++ @1013 + P#VAFL2.14
++ @1014 + P#VAFL2.16
END

IF ~~ P#VAFL2.5
SAY @1015
IF ~~ THEN EXIT
END

IF ~~ P#VAFL2.6
SAY @1016
++ @1017 + P#VAFL2.17
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.7
SAY @1020
++ @1021 + P#VAFL2.13
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.8
SAY @1022
++ @1021 + P#VAFL2.13
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.9
SAY @1023
++ @1021 + P#VAFL2.13
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.10
SAY @1024
= @1025
++ @1021 + P#VAFL2.13
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.11
SAY @1026
IF ~~ THEN EXIT
END

IF ~~ P#VAFL2.12
SAY @1027
IF ~~ THEN EXIT
END

IF ~~ P#VAFL2.13
SAY @1028
IF ~~ THEN EXIT
END

IF ~~ P#VAFL2.14
SAY @1029
IF ~~ THEN EXIT
END

IF ~~ P#VAFL2.15
SAY @1030
++ @1021 + P#VAFL2.13
++ @1018 + P#VAFL2.11
++ @1019 + P#VAFL2.18
END

IF ~~ P#VAFL2.16
SAY @1031
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VAFL2.17
SAY @1032
IF ~~ THEN DO ~IncrementGlobal("P#ValProposal","GLOBAL",1)~ EXIT
END

IF ~~ P#VAFL2.18
SAY @1033
IF ~~ THEN EXIT
END




/// Player Initiated Flirts



IF ~IsGabber(Player1) Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN BEGIN P#TOBFLIRT
SAY @1034

+ ~AreaCheck("AR4500") Global("OpenDoor5","AR4500",1) Global("P#Chall3","GLOBAL",0)~ + @1035 + FlChall6

+ ~AreaCheck("AR4500") Global("OpenDoor4","AR4500",1) Global("P#Chall2","GLOBAL",0)  Global("P#Virgin","GLOBAL",1)~ + @1036 + FlChall4
+ ~AreaCheck("AR4500") Global("OpenDoor3","AR4500",1) Global("P#Chall2","GLOBAL",0) Global("P#Virgin","GLOBAL",0)~ + @1037  + FlChall5

+ ~AreaCheck("AR4500") Global("OpenDoor3","AR4500",1) Global("P#Chall1","GLOBAL",0)~ + @1038 + FlChall1

+ ~Global("H#ValygarLover","GLOBAL",1) TimeOfDay(NIGHT) Global("P#Journal","GLOBAL",0)
CombatCounter(0) !See([ENEMY])~ + @1039 + FlJour

+ ~Global("P#VarTonguePID","GLOBAL",0)~ + @1040 DO ~SetGlobal("P#VarTonguePID","GLOBAL",1)~ + FlTong1

+ ~Global("H#ValygarLover","GLOBAL",1) AreaCheck("AR4500") RandomNum(2,1)~ + @1041 + FlPock1
+ ~Global("H#ValygarLover","GLOBAL",1) AreaCheck("AR4500") RandomNum(2,2)~ + @1041 + FlPock2

++ @1042 + FlLove

+ ~RandomNum(2,1)~ + @1043 + FlKiss1
+ ~RandomNum(2,2)~ + @1043 + FlKiss2

+ ~RandomNum(3,1)~ + @1044 + FlCome1
+ ~RandomNum(3,2)~ + @1044 + FlCome2
+ ~RandomNum(3,3)~ + @1044 + FlCome3

+ ~RandomNum(3,1)~ + @1045 + FlClos1
+ ~RandomNum(3,2)~ + @1045 + FlClos2
+ ~RandomNum(3,3)~ + @1045 + FlClos3

+ ~RandomNum(4,1)~ + @1046 + FlWhy1
+ ~RandomNum(4,2)~ + @1046 + FlWhy2
+ ~RandomNum(4,3)~ + @1046 + FlWhy3
+ ~RandomNum(4,4)~ + @1046 + FlWhy4


+ ~RandomNum(2,1)~ + @1047 + FlName1
+ ~RandomNum(2,2)~ + @1047 + FlName2

+ ~Global("H#DoMe","GLOBAL",1)
   AreaType(FOREST)~ + @1048 GOTO DoMeInter

+ ~Global("H#DoMe","GLOBAL",1)
   AreaType(FOREST)~ + @1049 GOTO DoMeShy

+ ~Global("H#DoMe","GLOBAL",1)
   AreaType(FOREST)~ + @1050 GOTO DoMeBold

+ ~OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ + @1051  + FlDone

++ @1052 EXIT

END

//Done

IF ~~ FlDone
SAY @1053
IF ~~ THEN DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ EXIT
END

//Journal

IF ~~ FlJour
SAY @1054
++ @1055 + FlJour1
++ @1056 + FlJour1
++ @1057 EXIT
END

IF ~~ FlJour1
SAY @1058
+ ~ RandomNum(2,1)~ + @1059 DO ~SetGlobal("P#Journal","GLOBAL",1)~ + FlJour1.1
+ ~ RandomNum(2,2)~ + @1059 DO ~SetGlobal("P#Journal","GLOBAL",1)~ + FlJour1.2
+ ~ RandomNum(2,1)~ + @1060 + FlJour1.3
+ ~ RandomNum(2,2)~ + @1060 + FlJour1.4
++ @1061 + FlJour1.5
END

IF ~~ FlJour1.1
SAY @1062
++ @1063 JOURNAL @1064 DO ~RestParty()~ EXIT
++ @1065 EXIT
END

IF ~~ FlJour1.2
SAY @1066
++ @1067 JOURNAL @1064 DO ~RestParty()~ EXIT
++ @1065 EXIT
END

IF ~~ FlJour1.3
SAY @1068
IF ~~ THEN EXIT
END

IF ~~ FlJour1.4
SAY @1069
IF ~~ THEN EXIT
END

IF ~~ FlJour1.5
SAY @1070
++ @1065 EXIT
++ @1071 JOURNAL @1064 DO ~RestParty()~ EXIT
END
 
//Challenge 3

IF ~~ FlChall6
SAY @1072
+ ~ RandomNum(2,1)~ + @1073 DO ~SetGlobal("P#Chall3","GLOBAL",1)  ~ + FlChall6.1
+ ~ RandomNum(2,2)~ + @1073 DO ~SetGlobal("P#Chall3","GLOBAL",1)  ~ + FlChall6.2
+ ~ RandomNum(2,1)~ + @1074 DO ~SetGlobal("P#Chall3","GLOBAL",1)  ~ + FlChall6.3
+ ~ RandomNum(2,2)~ + @1074 DO ~SetGlobal("P#Chall3","GLOBAL",1)  ~ + FlChall6.4
END

IF ~~ FlChall6.1
SAY @1075
IF ~~ THEN EXIT
END

IF ~~ FlChall6.2
SAY @1076
IF ~~ THEN EXIT
END

IF ~~ FlChall6.3
SAY @1077
IF ~~ THEN EXIT
END

IF ~~ FlChall6.4
SAY @1078
IF ~~ THEN EXIT
END


//Challenge 2

IF ~~ FlChall4
SAY @1079
++ @1080 DO ~SetGlobal("P#Chall2","GLOBAL",1)  ~ + FlChall4.1
++ @1081 DO ~SetGlobal("P#Chall2","GLOBAL",1)  ~ EXIT
++ @1082 DO ~SetGlobal("P#Chall2","GLOBAL",1)  ~ EXIT
END

IF ~~ FlChall4.1
SAY @1083
IF ~~ THEN EXIT
END

IF ~~ FlChall5
SAY @1084
IF ~~ THEN DO ~SetGlobal("P#Chall2","GLOBAL",1)  ~ EXIT
END

//Challenge 1

IF ~~ FlChall1
SAY @1085
= @1086
= @1087
IF ~~ THEN DO ~SetGlobal("P#Chall1","GLOBAL",1) ~ EXIT
END
 
//Pocket 1

IF ~~ FlPock1
SAY @1088
IF ~~ THEN EXIT
END

IF ~~ FlPock2
SAY @1089
+ ~RandomNum(3,1)~ + @1090 + FlPock2.1
+ ~RandomNum(3,2)~ + @1090 + FlPock2.2
+ ~RandomNum(3,3)~ + @1090 + FlPock2.3
++ @1091 EXIT
END

IF ~~ FlPock2.1
SAY @1092
IF ~~ THEN EXIT
END

IF ~~ FlPock2.2
SAY @1093
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FlPock2.3
SAY @1094
IF ~~ THEN DO ~RestParty()~ EXIT
END

//Love

IF ~~ FlLove
SAY @1095
+ ~RandomNum(3,1)~ + @1096 + FlLove1
+ ~RandomNum(3,2)~ + @1096 + FlLove2
+ ~RandomNum(3,3)~ + @1096 + FlLove3
+ ~ RandomNum(2,1)~ + @1097 + FlLove4
+ ~ RandomNum(2,2)~ + @1097 + FlLove5
++ @1098 + FlLove6
+ ~RandomNum(3,1)~ + @1099 + FlLove7
+ ~RandomNum(3,2)~ + @1099 + FlLove8
+ ~RandomNum(3,3)~ + @1099 + FlLove9
++ @1100 + FlLove10
END

IF ~~ FlLove1
SAY @1101
IF ~~ THEN EXIT
END

IF ~~ FlLove2
SAY @1102
IF ~~ THEN EXIT
END
IF ~~ FlLove3
SAY @1103
IF ~~ THEN EXIT
END

IF ~~ FlLove4
SAY @1104
IF ~~ THEN EXIT
END

IF ~~ FlLove5
SAY @1105
IF ~~ THEN EXIT
END

IF ~~ FlLove6
SAY @1106
IF ~~ THEN EXIT
END

IF ~~ FlLove7
SAY @1107
IF ~~ THEN EXIT
END

IF ~~ FlLove8
SAY @1108
IF ~~ THEN EXIT
END

IF ~~ FlLove9
SAY @1109
IF ~~ THEN EXIT
END

IF ~~ FlLove10
SAY @1110
IF ~~ THEN EXIT
END

//Kiss

IF ~~ FlKiss1
SAY @1111
++ @1112 + FlKiss1.1
+ ~ RandomNum(3,1)~ + @1113 + FlKiss1.2
+ ~ RandomNum(3,2)~ + @1113 + FlKiss1.3
+ ~ RandomNum(3,3)~ + @1113 + FlKiss1.4
+ ~ RandomNum(3,1)~ + @1114 + FlKiss1.5
+ ~ RandomNum(3,2)~ + @1114 + FlKiss1.6
+ ~ RandomNum(3,3)~ + @1114 + FlKiss1.7
END

IF ~~ FlKiss1.1
SAY @1115
IF ~~ THEN EXIT
END

IF ~~ FlKiss1.2
SAY @1116
IF ~~ THEN EXIT
END

IF ~~ FlKiss1.3
SAY @1117
IF ~~ THEN EXIT
END

IF ~~ FlKiss1.4
SAY @1118
IF ~~ THEN EXIT
END
 
IF ~~ FlKiss1.5
SAY @1119
IF ~~ THEN EXIT
END

IF ~~ FlKiss1.6
SAY @1120
IF ~~ THEN EXIT
END

IF ~~ FlKiss1.7
SAY @1121
IF ~~ THEN EXIT
END

IF ~~ FlKiss2
SAY @1122
++ @1123 + FlKiss2.1
++ @1124 + FlKiss2.2
+ ~ RandomNum(3,1)~ + @1125 + FlKiss2.3
+ ~ RandomNum(3,2)~ + @1125 + FlKiss2.4
+ ~ RandomNum(3,3)~ + @1125 + FlKiss2.5
END

IF ~~ FlKiss2.1
SAY @1126
IF ~~ THEN EXIT
END

IF ~~ FlKiss2.2
SAY @1127
IF ~~ THEN EXIT
END

IF ~~ FlKiss2.3
SAY @1128
IF ~~ THEN EXIT
END

IF ~~ FlKiss2.4
SAY @1129
IF ~~ THEN EXIT
END

IF ~~ FlKiss2.5
SAY @1130
IF ~~ THEN EXIT
END

//Come

IF ~~ FlCome1
SAY @1131
++ @1132 + FlCome1.1
++ @1133 + FlCome1.2
++ @1134 + FlCome1.3
END

IF ~~ FlCome1.1
SAY @1135
IF ~~ THEN EXIT
END

IF ~~ FlCome1.2
SAY @1136
IF ~~ THEN EXIT
END
 
IF ~~ FlCome1.3
SAY @1137
IF ~~ THEN EXIT
END

IF ~~ FlCome2
SAY @1138
++ @1139 + FlCome2.1
++ @1140 + FlCome2.2
++ @1141 + FlCome2.3
END

IF ~~ FlCome2.1
SAY @1142
IF ~~ THEN EXIT
END

IF ~~ FlCome2.2
SAY @1143
IF ~~ THEN EXIT
END

IF ~~ FlCome2.3
SAY @1144
IF ~~ THEN EXIT
END

IF ~~ FlCome3
SAY @1145
++ @1146  + FlCome3.1
+ ~RandomNum(3,1)~ + @1147  + FlCome3.2
+ ~RandomNum(3,2)~ + @1147  + FlCome3.4
+ ~RandomNum(3,3)~ + @1147  + FlCome3.5
++ @1148  + FlCome3.3
END

IF ~~ FlCome3.1
SAY @1149
IF ~~ THEN EXIT
END

IF ~~ FlCome3.2
SAY @1150
IF ~~ THEN EXIT
END

IF ~~ FlCome3.4
SAY @1151
IF ~~ THEN EXIT
END

IF ~~ FlCome3.5
SAY @1152 
IF ~~ THEN EXIT
END

IF ~~ FlCome3.3
SAY @1153
++ @1154 + FlCome3.2.1
++ @1155 + FlCome3.2.2
++ @1156 + FlCome3.2.3
END

IF ~~ FlCome3.2.1
SAY @1157
IF ~~ THEN EXIT
END
 
IF ~~ FlCome3.2.2
SAY @1158
IF ~~ THEN EXIT
END

IF ~~ FlCome3.2.3
SAY @1159
IF ~~ THEN EXIT
END



//Close

IF ~~ FlClos1
SAY @1160
++ @1161 + FlClos1.4
+ ~RandomNum(3,1)~ + @1162 + FlClos1.1
+ ~RandomNum(3,2)~ + @1162 + FlClos1.2
+ ~RandomNum(3,3)~ + @1162 + FlClos1.3
END

IF ~~ FlClos1.4
SAY @1163
IF ~~ THEN EXIT
END
 
IF ~~ FlClos1.1
SAY @1164
IF ~~ THEN EXIT
END

IF ~~ FlClos1.2
SAY @1165
IF ~~ THEN EXIT
END

IF ~~ FlClos1.3
SAY @1166
IF ~~ THEN EXIT
END

IF ~~ FlClos2
SAY @1167
++ @1168 + FlClos2.1
++ @449 + FlClos2.2
END
IF ~~ FlClos2.2
SAY @1169
++ @1170 + FlClos2.2.1
++ @1171 + FlClos2.2.2
++ @1172 + FlClos2.2.3
END

IF ~~ FlClos2.2.1
SAY @1173
IF ~~ THEN EXIT
END

IF ~~ FlClos2.2.2
SAY @1174
IF ~~ THEN EXIT
END

IF ~~ FlClos2.2.3
SAY @1175
IF ~~ THEN EXIT
END

IF ~~ FlClos2.1
SAY @1176
IF ~~ THEN EXIT
END

IF ~~ FlClos3
SAY @1177
++ @1178 + FlClos3.1
++ @1179 + FlClos3.2
++ @1180 + FlClos3.3
END

IF ~~ FlClos3.1
SAY @1181
IF ~~ THEN EXIT
END

IF ~~ FlClos3.2
SAY @1182
IF ~~ THEN EXIT
END

IF ~~ FlClos3.3
SAY @1183
++ @1184 EXIT
++ @1185 + FlClos3.3.1
END

IF ~~ FlClos3.3.1
SAY @1186
IF ~~ THEN EXIT
END

//Tongue

IF ~~ FlTong1
SAY @1187
++ @1188 + FlTong1.1
++ @1189 + FlTong1.2
+ ~Global("H#ValygarLover","GLOBAL",1)~ + @1190 + FlTong1.3
END

IF ~~ FlTong1.1
SAY @1191
IF ~~ THEN EXIT
END

IF ~~ FlTong1.2
SAY @1192
IF ~~ THEN EXIT
END

IF ~~ FlTong1.3
SAY @1193
IF ~~ THEN EXIT
END

//Why?

IF ~~ FlWhy1
SAY @1194
IF ~~ THEN EXIT
END

IF ~~ FlWhy2
SAY @1195
IF ~~ THEN EXIT
END

IF ~~ FlWhy3
SAY @1196
IF ~~ THEN EXIT
END

IF ~~ FlWhy4
SAY @1197
++ @1198 + FlWhy4.1
++ @1199 + FlWhy4.2
 ++ @1200 + FlWhy4.3
END

IF ~~ FlWhy4.1
SAY @1201
IF ~~ THEN EXIT
END

IF ~~ FlWhy4.2
SAY @1202
IF ~~ THEN EXIT
END

IF ~~ FlWhy4.3
SAY @1203
IF ~~ THEN EXIT
END

//Name

IF ~~ FlName1
SAY @1204 
IF ~~ THEN EXIT
END

IF ~~ FlName2
SAY @1205
++ @1206 EXIT
++ @1207 + FlName1
++ @1208 + FlName3
END

IF ~~ FlName3
SAY @1209
+ ~RandomNum(4,1)~ + @1210 + FlName4
+ ~RandomNum(4,2)~ + @1211 + FlName4
+ ~RandomNum(4,3)~ + @1212 + FlName4
+ ~RandomNum(4,4)~ + @1213 + FlName4
END

IF ~~ FlName4
SAY @1214
IF ~~ THEN EXIT
END

//first Lovenight
IF ~~ DoMeInter
SAY @1215
++ @1216 GOTO Inter1
END

IF ~~ Inter1
SAY @1217
++ @1218 GOTO Bold1
++ @1219 EXIT
END

IF ~~ DoMeShy
SAY @1220
    =
    @1221
++ @1222 GOTO Bold1
++ @1219 EXIT
END

IF ~~ THEN DoMeBold
SAY @1223
++ @1224 GOTO Bold1
++ @1219 EXIT
END

IF ~~ Bold1
SAY @1225
++ @1226 DO ~SetGlobal("H#DoMe","GLOBAL",2)~ GOTO Bold2
++ @1227 DO ~SetGlobal("H#DoMe","GLOBAL",2)~ GOTO Bold2
++ @1228 EXIT
END

IF ~~ Bold2
SAY @1229
IF ~~ THEN DO ~SetGlobal("H#DoMe","GLOBAL",2) SetGlobal("P#ToBMorning1","GLOBAL",1) SetGlobal("H#ValygarLover","GLOBAL",1) ClearAllActions()
               StartCutSceneMode()
               StartCutScene("H#RSTCMP")~ EXIT 
END

END