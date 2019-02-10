//VALYGAR ROMANTIQUE




//Banters at Rest

//Poor Mazzy, Valygar is not listening
APPEND VALYGARJ
IF WEIGHT #-50
~Global("H#Mazzy1","LOCALS",1)~ THEN BEGIN MazzyComplainChain
SAY @0
IF ~~ THEN DO ~SetGlobal("H#Mazzy1","LOCALS",2)~ EXTERN BMAZZY SquireSquire
END
END

APPEND BMAZZY
IF ~~THEN BEGIN SquireSquire
SAY @1
++ @2 GOTO Squire1
++ @3 GOTO Squire2
END

IF ~~ THEN BEGIN Squire1
SAY @4
IF ~~ THEN EXTERN BVALYGA Squire1_1
END

IF ~~ THEN BEGIN Squire2
SAY @5
IF ~~ THEN EXTERN BVALYGA Squire2_1
END
END

CHAIN BVALYGA Squire1_1
@6
== BMAZZY @7
== BVALYGA @8
== BMAZZY @9
== BVALYGA @10
END
IF ~~ THEN DO ~RestParty()~ EXIT 

CHAIN BVALYGA Squire2_1
@11
== BMAZZY @12
== BVALYGA @13
== BMAZZY @14
== BVALYGA @15
== BMAZZY @16
=
@17
== BVALYGA @18
=
@19
== BMAZZY @9
== BVALYGA @10
END
IF ~~ THEN DO ~RestParty()~ EXIT 



//Campfire Nalia (at rest, outside)
CHAIN
IF ~Global("H#Nalia3","LOCALS",1)~ THEN NALIAJ InsomniaChain
@20
DO ~SetGlobal("H#Nalia3","LOCALS",2)~
== BVALYGA @21
== BVALYGA @22
== BNALIA @23
== BVALYGA @24 
== BNALIA @25
== BVALYGA @26
== BNALIA @27
== BVALYGA @28
== BNALIA @29
== BVALYGA @30
=
@31
=
@32
=
@33
== BNALIA @34
== BVALYGA @35
END
IF ~~ THEN DO ~RestParty()~ EXIT 

/* banter at wakeup */
//Bad dreams disturbing Korgan
CHAIN
IF WEIGHT #-50
~Global("H#Korgan3","LOCALS",1)~ THEN VALYGARJ DreamChain
@36
DO ~SetGlobal("H#Korgan3","LOCALS",2)~
== BKORGAN @37
== BVALYGA @38
== BKORGAN @39
== BVALYGA @40
EXIT




//Viconia 
CHAIN
IF ~InParty("Viconia")
    Detect("Viconia")
    OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
    GlobalLT("H#LoveTalk","LOCALS",39)
    GlobalGT("H#LoveTalk","LOCALS",20)
Global("H#Viconia3","LOCALS",0)~ THEN BVICONI YouWillDo
@41
DO ~SetGlobal("H#Viconia3","LOCALS",1)~
== BVALYGA @42
== BVICONI @43 
== BVALYGA @44

== BVICONI @45
== BVALYGA @46
== BVICONI @47
== BVALYGA @48
== BVICONI @49
== BVALYGA @50
== BVICONI @51
== BVALYGA @52
== BVICONI @53
EXIT


//Yoshimo 
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
    Global("H#Yoshimo","LOCALS",0)~ THEN BYOSHIM ReadingChain
@54 DO ~SetGlobal("H#Yoshimo","LOCALS",1)~
== BVALYGA @55
== BYOSHIM @56
== BVALYGA @57
EXIT

CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
    Global("H#Yoshimo","LOCALS",1)~ THEN BYOSHIM AStoryPleaseChain
@58
DO ~SetGlobal("H#Yoshimo","LOCALS",2)~
== BVALYGA @59
== BYOSHIM @60
== BVALYGA @61
== BYOSHIM @62
== BVALYGA @63
EXIT


//Boo likes
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Minsc1","LOCALS",0)~ THEN BMINSC ValIsHeroChain
@64
=
@65
DO ~SetGlobal("H#Minsc1","LOCALS",1)~
== BVALYGA @66 
== BMINSC @67
== BVALYGA @68
== BMINSC @69
== BVALYGA @70
== BMINSC @71
== BMINSC IF ~OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @72
== BVALYGA IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @73
== BVALYGA IF ~Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @74
== BVALYGA IF ~!Global("H#ValygarRomanceActive","GLOBAL",2) 
!Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @75
== BMINSC @76
EXIT


//Jaheira takes care of her Bhaalspawn
//~I am curious.  How much experience have you had with magic?~ 
//Global("BValygar7","LOCALS",1)
CHAIN
IF ~Global("BValygar7","LOCALS",1)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)
    InParty("Jaheira")
    Detect("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Jaheira1","LOCALS",0)~ THEN BVALYGA JaheiraScoldingChain
@77
=
@78
DO ~SetGlobal("H#Jaheira1","LOCALS",1)~
== BJAHEIR @79
== BVALYGA @80
== BJAHEIR @81
=
@82
=
@83
== BVALYGA @84
== BJAHEIR @85
=
@86
== BVALYGA @87
EXIT


//Jan has a cure for everything
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Jan1","LOCALS",0)~ THEN BJAN OintmentChain
@88 DO ~SetGlobal("H#Jan1","LOCALS",1)~
== BVALYGA @89
== BJAN @90
== BVALYGA @91
== BJAN @92
EXIT

//Aerie is sad
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Aerie1","LOCALS",0)~ THEN BAERIE PuppyEyesChain
@93 DO ~SetGlobal("H#Aerie1","LOCALS",1)~
== BVALYGA @94
== BAERIE @95
== BVALYGA @96
== BVALYGA @97
EXIT

//Korgan Himself
CHAIN
IF ~InParty("Korgan")
    Detect("Korgan")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Korgan1","LOCALS",0)~ THEN BVALYGA KorganHimselfChain
@98
DO ~SetGlobal("H#Korgan1","LOCALS",0)~
== BKORGAN @99
== BVALYGA @100
== BKORGAN @101
== BVALYGA @102
== BKORGAN @103
EXIT

//There's no cure against love
CHAIN
IF ~InParty("Jaheira")
    Detect("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#ValygarRomanceActive","GLOBAL",1)
GlobalGT("H#LoveTalk","LOCALS",8)
Global("H#Jaheira1","LOCALS",1)~ THEN BVALYGA StrangeFeelings
@104
DO ~SetGlobal("H#Jaheira1","LOCALS",2)~
== BJAHEIR @105
== BVALYGA @106
== BJAHEIR @107
=
@108
== BVALYGA @109
=
@110
== BJAHEIR @111
=
@112
== BVALYGA @113
EXIT

//What is it like to be a father
CHAIN
IF ~InParty("Cernd")
    Detect("Cernd")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("CerndBaby","GLOBAL",1)
Global("H#Cernd2","LOCALS",0)~ THEN BVALYGA HowIsItChain
@114
DO ~SetGlobal("H#Cernd2","LOCALS",1)~
== BCERND @115
== BVALYGA @116
== BCERND @117
=
@118
== BVALYGA @119
== BCERND @120
== BVALYGA @121
EXIT

//Hear'Dalis Mind Gaps
CHAIN
IF ~InParty("Haerdalis")
    Detect("Haerdalis")
    !StateCheck("Haerdalis",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Haer1","LOCALS",0)~ THEN BVALYGA LoosingYourWitChain
@122
DO ~SetGlobal("H#Haer1","LOCALS",1)~
== BHAERDA @123
== BVALYGA @124
== BHAERDA @125
=
@126
== BVALYGA @127
=
@128
== BHAERDA @129
== BVALYGA @130
EXIT

//Aerie is singing
CHAIN
IF ~InParty("Aerie")
    Detect("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Aerie2","LOCALS",0)~ THEN BVALYGA SingingAerieChain
@131
DO ~SetGlobal("H#Aerie2","LOCALS",1)~
== BAERIE @132
== BVALYGA @133
== BAERIE @134
== BVALYGA @135
== BAERIE @136
== BVALYGA @137
== BAERIE @138
== BVALYGA @139
=
@140
=
@141
== BAERIE @142
== BVALYGA @143
EXIT


//Edwin the Pest
CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Edwin1","LOCALS",0)~ THEN BVALYGA EdwinMumbleChain
@144
DO ~SetGlobal("H#Edwin","LOCALS",1)~
== BEDWIN @145
== BVALYGA @146
== BEDWIN @147
=
@148
== BVALYGA @149
== BEDWIN @150
== BVALYGA @151
EXIT

//Mazzy misses Patrick
CHAIN
IF ~InParty("Mazzy")
    Detect("Mazzy")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Mazzy1","LOCALS",3)
GlobalGT("ShadowLordDead","GLOBAL",0)~ THEN BVALYGA MazzySadnessChain
@152
DO ~SetGlobal("H#Mazzy1","LOCALS",4)~
== BMAZZY @153
== BVALYGA  @154
== BMAZZY @155
=
@156
=
@157
== BVALYGA  @158
== BMAZZY @159
== BVALYGA @160
== BMAZZY @161
== BVALYGA @162
== BMAZZY @163
== BVALYGA @164
== BMAZZY @165
== BVALYGA @166
== BMAZZY @167
EXIT

//Boo, the clever rodent
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Minsc2","LOCALS",0)~ THEN BMINSC AdmitItChain
@168
DO ~SetGlobal("H#Minsc2","LOCALS",1)~
== BVALYGA @169
== BMINSC @170
== BVALYGA @171
== BMINSC @172
== BVALYGA IF ~Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN @173
== BVALYGA IF ~Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @174
== BMINSC @175
EXIT

//Valygar apologizes
CHAIN
IF ~InParty("Jaheira")
    Detect("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Jaheira2","LOCALS",0)~ THEN BVALYGA HeIsSorryChain
@176
DO ~SetGlobal("H#Jaheira2","LOCALS",1)~
= @177
== BJAHEIR @178
== BVALYGA @179
== BJAHEIR @180
== BVALYGA @181
EXIT

//Loyalty and Jan
CHAIN
IF ~InParty("Jan")
    Detect("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
GlobalGT("JanLissaPlot","GLOBAL",1)
Global("H#Jan2","LOCALS",0)~ THEN BVALYGA LoyaltyChain
@182
DO ~SetGlobal("H#Jan2","LOCALS",1)~
== BJAN @183
== BVALYGA @184
== BJAN @185
== BVALYGA @186
== BJAN @187
== BVALYGA @188
== BJAN @189
== BVALYGA @190
== BJAN @191
== BVALYGA @192
== BJAN @193
== BVALYGA @194
EXIT

//Robbing Yourself By Denying Faith
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Jaheira4","LOCALS",0)~ THEN BJAHEIR DenyingFaithChain
@195
DO ~SetGlobal("H#Jaheira4","LOCALS",1)~
== BVALYGA @196
== BJAHEIR @197
== BVALYGA @198
== BJAHEIR @199
== BVALYGA @200
== BJAHEIR @201
EXIT

//Poor Aerie is in the wrong group this time
CHAIN
IF ~InParty("Aerie")
    Detect("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
AreaType(FOREST)
AreaType(OUTDOOR)
Global("H#Aerie3","LOCALS",0)~ THEN BVALYGA CarefulAerieChain
@202
DO ~SetGlobal("H#Aerie3","LOCALS",1)~
== BAERIE @203
== BVALYGA @204
== BAERIE @205
== BVALYGA @206
== BAERIE @207
=
@208
=
@209
== BVALYGA @210
=
@211
== BAERIE @212
== BAERIE IF ~OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @213
== BVALYGA @214
EXIT

//Korgan and Aerie
CHAIN
IF ~InParty("Aerie")
InParty("Korgan")
    Detect("Korgan")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Korgan2","LOCALS",0)~ THEN BVALYGA TormentingAerieChain
@215
DO ~SetGlobal("H#Korgan2","LOCALS",1)~
== BKORGAN @216
== BVALYGA @217
== BKORGAN @218
== BVALYGA @219
EXIT



//Keldorn knows about his parents
CHAIN
IF ~InParty("Valygar")
    Detect("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Keldorn1","GLOBAL",0)~ THEN BKELDOR YourParentsChain
@220
DO ~SetGlobal("H#Keldorn1","GLOBAL",1)~
== BVALYGA @221
== BKELDOR @222
== BVALYGA @223
== BKELDOR @224
== BVALYGA @225
== BKELDOR @226
== BVALYGA @227
EXIT

//How was it to leave her
CHAIN
IF ~InParty("Cernd")
    Detect("Cernd")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("CerndBaby","GLOBAL",1)
Global("H#Cernd1","LOCALS",0)~ THEN BVALYGA DidItHurtChain
@228
DO ~SetGlobal("H#Cernd1","LOCALS",1)~
== BCERND @229
== BVALYGA @230
== BCERND @231
== BVALYGA @232
== BCERND @233
== BVALYGA @234
== BCERND @235
== BVALYGA @236
=
@237
EXIT

//Ornithology
CHAIN
IF ~InParty("Haerdalis")
    Detect("Haerdalis")
    !StateCheck("Haerdalis",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Haer2","LOCALS",0)~ THEN BVALYGA CrowChain
@238
DO ~SetGlobal("H#Haer2","LOCALS",1)~
== BHAERDA @239
=
@240
== BVALYGA @241
== BHAERDA @242
== BVALYGA @243
== BHAERDA @244
== BVALYGA @245
EXIT

//Edwin and casting
CHAIN
IF ~InParty("Edwin")
    Detect("Edwin")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    InParty(Myself)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Edwin2","LOCALS",0)~ THEN BVALYGA CastingChain
@246
DO ~SetGlobal("H#Edwin2","LOCALS",1)~
== BEDWIN @247
== BVALYGA @248
== BEDWIN @249
== BVALYGA @250
== BEDWIN @251
== BVALYGA @252
EXIT

//Family Heirloom: The Bleeder
CHAIN
IF ~InParty(Myself)
!StateCheck(Myself,STATE_SLEEPING)
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
PartyHasItem("NPSW04")
Global("H#Yoshimo3","GLOBAL",0)~ THEN BYOSHIM KatanaChain
@253
DO ~SetGlobal("H#Yoshimo3","GLOBAL",1)~
== BVALYGA @254
== BYOSHIM @255
== BVALYGA @63
== BVALYGA @256
== BYOSHIM @257
== BVALYGA @258
== BYOSHIM @259
== BVALYGA @260
EXIT

//Keldorn knows how the parents met
CHAIN
IF ~InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Keldorn1","GLOBAL",1)~ THEN BVALYGA LoveStoryChain
@261
DO ~SetGlobal("H#Keldorn1","GLOBAL",2)~
== BKELDOR @262
== BVALYGA @263
== BKELDOR @264
== BVALYGA @265
== BKELDOR @266
=
@267
== BVALYGA @268
== BKELDOR @269
== BVALYGA @270
== BKELDOR @271
=
@272
=
@273
== BVALYGA @274
EXIT

//Can't hide anything from Imoen
CHAIN
IF ~InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
GlobalGT("AsylumPlot","GLOBAL",54)
OR(2)
	Global("H#ValygarRomanceActive","GLOBAL",1)
	Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#Imoen1","LOCALS",0)~ THEN BVALYGA ImoenValChain
@275
DO ~SetGlobal("H#Imoen1","LOCALS",1)~
== IMOEN2J @276
== BVALYGA @277
== IMOEN2J @278
=
@279
== BVALYGA @280
== IMOEN2J @281
== BVALYGA @282
== IMOEN2J @283
EXIT


//Edwin's Beacon
CHAIN
IF ~InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
Global("H#Edwin3","LOCALS",0)~ THEN BVALYGA BeaconChain
@284
DO ~SetGlobal("H#Edwin3","LOCALS",1)~
== BEDWIN @285
== BVALYGA @286
== BEDWIN @287
== BVALYGA @288
EXIT



