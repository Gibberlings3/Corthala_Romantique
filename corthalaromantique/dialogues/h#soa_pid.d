


APPEND VALYGARJ
////////////////////////////////////////////////////////////////
//PC initiated

IF
~IsGabber(Player1)
Global("H#NoFlirt","GLOBAL",0)
CombatCounter(0)
OR(2)
 Global("H#ValygarRomanceActive","GLOBAL",1)
 Global("H#ValygarRomanceActive","GLOBAL",2)
OR(17)
 AreaCheck("AR2100")
 AreaCheck("AR2101")
 AreaCheck("AR2102")
 AreaCheck("AR2200")
 AreaCheck("AR2201")
 AreaCheck("AR2202")
 AreaCheck("AR2203")
 AreaCheck("AR2204")
 AreaCheck("AR2205")
 AreaCheck("AR2206")
 AreaCheck("AR2207")
 AreaCheck("AR2208")
 AreaCheck("AR2209")
 AreaCheck("AR2210")
 AreaCheck("AR2400")
 AreaCheck("AR2401")
 AreaCheck("AR2402")~ THEN BEGIN ClickTalk1_underdark
SAY @129
IF ~~ THEN EXIT
END


IF
~IsGabber(Player1)
Global("H#NoFlirt","GLOBAL",0)
CombatCounter(0)
OR(2)
 Global("H#ValygarRomanceActive","GLOBAL",1)
 Global("H#ValygarRomanceActive","GLOBAL",2)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN ClickTalk1
SAY @0
IF ~Global("H#ValPID_Status","LOCALS",0)~ THEN REPLY @1 GOTO M#Status
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,1)~ THEN REPLY @1 GOTO M#CatchAll
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,2)~ THEN REPLY @1 GOTO M#AfterUnderdark
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,3)~ THEN REPLY @1 GOTO M#SleepLT4
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,4)~ THEN REPLY @1 GOTO M#TempleLT8
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,5)~ THEN REPLY @1 GOTO M#SleepLT9
IF ~Global("H#ValPID_Status","LOCALS",1) RandomNum(6,6)~ THEN REPLY @1 GOTO M#SleepLT10

IF ~GlobalGT("H#LoveTalk","LOCALS",4)
GlobalLT("H#LoveTalk","LOCALS",15)
Global("H#Committment","GLOBAL",0)~ THEN REPLY @2 GOTO M#Flirt1
IF ~GlobalGT("H#LoveTalk","LOCALS",14)
Global("H#Committment","GLOBAL",0)~ THEN REPLY @2 GOTO M#Flirt2
IF ~GlobalGT("H#Committment","GLOBAL",0)~ THEN REPLY @2 GOTO M#Flirt3

IF ~~ THEN REPLY @3 EXIT
END


IF ~~ THEN BEGIN M#Flirt1
SAY @4
+ ~RandomNum(4,1)~ + @5 GOTO 1smile1
+ ~RandomNum(4,2)~ + @5 GOTO 1smile2
+ ~RandomNum(4,3)~ + @5 GOTO 1smile3
+ ~RandomNum(4,4)~ + @5 GOTO 1smile4

+ ~RandomNum(3,1)~ + @6 GOTO 1HowAreYou1
+ ~RandomNum(3,2)~ + @6 GOTO 1HowAreYou2
+ ~RandomNum(3,3)~ + @6 GOTO 1HowAreYou3

+ ~RandomNum(3,1)~ + @7 GOTO 1HoldHands1
+ ~RandomNum(3,2)~ + @7 GOTO 1HoldHands2
+ ~RandomNum(3,3)~ + @7 GOTO 1HoldHands1

+ ~RandomNum(4,1)~ + @8 GOTO 1WalkInSilence1
+ ~RandomNum(4,2)~ + @8 GOTO 1WalkInSilence2
+ ~RandomNum(4,3)~ + @8 GOTO 1WalkInSilence3
+ ~RandomNum(4,4)~ + @8 GOTO 1WalkInSilence4

+ ~RandomNum(5,1)~ + @9 GOTO 1Preoccupied1
+ ~RandomNum(5,2)~ + @9 GOTO 1Preoccupied2
+ ~RandomNum(5,3)~ + @9 GOTO 1Preoccupied3
+ ~RandomNum(5,4)~ + @9 GOTO 1Preoccupied4
+ ~RandomNum(5,5)~ + @9 GOTO 1Preoccupied5

+ ~RandomNum(3,1)~ + @10 GOTO 1BlowKiss1
+ ~RandomNum(3,2)~ + @10 GOTO 1Wink1
+ ~RandomNum(3,3)~ + @10 GOTO 1Wink3

+ ~RandomNum(3,1)~ + @11 GOTO 1Wink1
+ ~RandomNum(3,2)~ + @11 GOTO 1Wink2
+ ~RandomNum(3,3)~ + @11 GOTO 1Wink3

+ ~RandomNum(4,1)~ + @12 GOTO 1FeelLonely1
+ ~RandomNum(4,2)~ + @12 GOTO 1FeelLonely2
+ ~RandomNum(4,3)~ + @12 GOTO 1FeelLonely3
+ ~RandomNum(4,4)~ + @12 GOTO 1FeelLonely4

++ @3 EXIT
END

IF ~~ 1smile1
SAY @13
IF ~~ EXIT
END

IF ~~ 1smile2
SAY @14
IF ~~ EXIT
END

IF ~~ 1smile3
SAY @15
IF ~~ EXIT
END

IF ~~ 1smile4
SAY @16
IF ~~ EXIT
END


IF ~~ 1HowAreYou1
SAY @17
IF ~~ EXIT
END

IF ~~ 1HowAreYou2
SAY @18
IF ~~ EXIT
END

IF ~~ 1HowAreYou3
SAY @19
IF ~~ EXIT
END


IF ~~ 1HoldHands1
SAY @20
IF ~~ EXIT
END

IF ~~ 1HoldHands2
SAY @21
IF ~~ EXIT
END

IF ~~ 1WalkInSilence1
SAY @22
=
@23
IF ~~ EXIT
END

IF ~~ 1WalkInSilence2
SAY @24
IF ~~ EXIT
END

IF ~~ 1WalkInSilence3
SAY @25
IF ~~ EXIT
END

IF ~~ 1WalkInSilence4
SAY @26
IF ~~ EXIT
END

IF ~~ 1Preoccupied1
SAY @27
IF ~~ EXIT
END

IF ~~ 1Preoccupied2
SAY @28
=
@29
IF ~~ EXIT
END

IF ~~ 1Preoccupied3
SAY @30
++ @31 + 1Preoccupied6
++ @32 EXIT
END

IF ~~ 1Preoccupied4
SAY @33
IF ~~ EXIT
END

IF ~~ 1Preoccupied5
SAY @34
IF ~~ EXIT
END

IF ~~ 1Preoccupied6
SAY @35
IF ~~ EXIT
END

IF ~~ 1BlowKiss1
SAY @36
=
@37
IF ~~ EXIT
END

IF ~~ 1BlowKiss3
SAY @38
IF ~~ EXIT
END

IF ~~ 1Wink1
SAY @39
IF ~~ EXIT
END

IF ~~ 1Wink2
SAY @40
IF ~~ EXIT
END

IF ~~ 1Wink3
SAY @41
IF ~~ EXIT
END

IF ~~ 1FeelLonely1
SAY @42
IF ~~ EXIT
END

IF ~~ 1FeelLonely2
SAY @43
IF ~~ EXIT
END

IF ~~ 1FeelLonely3
SAY @44
IF ~~ EXIT
END

IF ~~ 1FeelLonely4
SAY @45
IF ~~ EXIT
END

//PC initiated Part 2
//LT 12 to 33

IF ~~ THEN BEGIN M#Flirt2
SAY @46

+ ~RandomNum(3,1)~ + @47 + your_name
+ ~RandomNum(3,2)~ + @47 + your_name_01
+ ~RandomNum(3,3)~ + @47 + ClickTalk1

+ ~RandomNum(3,1)~ + @48 GOTO 2Thinking1
+ ~RandomNum(3,2)~ + @48 GOTO 2Thinking2
+ ~RandomNum(3,3)~ + @48 GOTO 2Thinking3

+ ~RandomNum(3,1)~ + @49 GOTO 2NotImportant1
+ ~RandomNum(3,2)~ + @49 GOTO 2NotImportant2
+ ~RandomNum(3,3)~ + @49 GOTO 2NotImportant3

+ ~RandomNum(4,1)~ + @50 GOTO 2Water1
+ ~RandomNum(4,2)~ + @50 GOTO 2Water2
+ ~RandomNum(4,3)~ + @50 GOTO 2Water3
+ ~RandomNum(4,4)~ + @50 GOTO 2Water4

+ ~RandomNum(3,1)~ + @51 GOTO 2CW1
+ ~RandomNum(3,2)~ + @51 GOTO 2CW2
+ ~RandomNum(3,3)~ + @51 GOTO 2CW3

+ ~RandomNum(4,1)~ + @52 GOTO 2BothHands1
+ ~RandomNum(4,2)~ + @52 GOTO 2BothHands2
+ ~RandomNum(4,3)~ + @52 GOTO 2BothHands3
+ ~RandomNum(4,4)~ + @52 GOTO 2BothHands4

+ ~RandomNum(3,1)~ + @53 GOTO 2LostYou1
+ ~RandomNum(3,2)~ + @53 GOTO 2LostYou2
+ ~RandomNum(3,3)~ + @53 GOTO 2LostYou3

+ ~RandomNum(4,1)~ + @54 GOTO 2LikeName1
+ ~RandomNum(4,2)~ + @54 GOTO 2LikeName2
+ ~RandomNum(4,3)~ + @54 GOTO 2LikeName3
+ ~RandomNum(4,4)~ + @54 GOTO 2LikeName4

+ ~RandomNum(3,1)~ + @55 GOTO 2Cursed1
+ ~RandomNum(3,2)~ + @55 GOTO 2Cursed2
+ ~RandomNum(3,3)~ + @55 GOTO 2Cursed3

+ ~RandomNum(4,1)~ + @7 GOTO 2HoldHand1
+ ~RandomNum(4,2)~ + @7 GOTO 2HoldHand2
+ ~RandomNum(4,3)~ + @7 GOTO 2HoldHand3
+ ~RandomNum(4,4)~ + @7 GOTO 2HoldHand4

+ ~RandomNum(3,1)~ + @10 GOTO 2BlowKiss1
+ ~RandomNum(3,2)~ + @10 GOTO 2BlowKiss2
+ ~RandomNum(3,3)~ + @10 GOTO 2BlowKiss3

+ ~RandomNum(3,1)~ + @56 GOTO 2Nothing
+ ~RandomNum(3,2)~ + @56 EXIT
+ ~RandomNum(3,3)~ + @56 EXIT
END

IF ~~ THEN your_name
SAY @57
IF ~~ THEN EXIT
END

IF ~~ THEN your_name_01
SAY @58
IF ~~ THEN EXIT
END

IF ~~ 2Thinking1
SAY @59
IF ~~ EXIT
END

IF ~~ 2Thinking2
SAY @60
IF ~~ EXIT
END

IF ~~ 2Thinking3
SAY @61
IF ~~ EXIT
END


IF ~~ 2NotImportant1
SAY @62
IF ~~ EXIT
END

IF ~~ 2NotImportant2
SAY @63
IF ~~ EXIT
END

IF ~~ 2NotImportant3
SAY @64
IF ~~ EXIT
END

IF ~~ 2Water1
SAY @65
IF ~~ EXIT
END

IF ~~ 2Water2
SAY @66
IF ~~ EXIT
END

IF ~~ 2Water3
SAY @67
IF ~~ EXIT
END

IF ~~ 2Water4
SAY @68
IF ~~ EXIT
END


IF ~~ 2CW1
SAY @69
IF ~~ EXIT
END

IF ~~ 2CW2
SAY @70
IF ~~ EXIT
END

IF ~~ 2CW3
SAY @71
IF ~~ EXIT
END

IF ~~ 2BothHands1
SAY @72
IF ~~ EXIT
END

IF ~~ 2BothHands2
SAY @73
IF ~~ EXIT
END

IF ~~ 2BothHands3
SAY @74
IF ~~ EXIT
END

IF ~~ 2BothHands4
SAY @75
IF ~~ EXIT
END

IF ~~ 2LostYou1
SAY @76
IF ~~ EXIT
END

IF ~~ 2LostYou2
SAY @77
IF ~~ EXIT
END

IF ~~ 2LostYou3
SAY @78
IF ~~ EXIT
END

IF ~~ 2LikeName1
SAY @79
IF ~~ EXIT
END

IF ~~ 2LikeName2
SAY @80
IF ~~ EXIT
END

IF ~~ 2LikeName3
SAY @81
IF ~~ EXIT
END

IF ~~ 2LikeName4
SAY @82
IF ~~ EXIT
END

IF ~~ 2Cursed1
SAY @83
IF ~~ EXIT
END

IF ~~ 2Cursed2
SAY @84
IF ~~ EXIT
END

IF ~~ 2Cursed3
SAY @85
IF ~~ EXIT
END

IF ~~ 2HoldHand1
SAY @20
IF ~~ EXIT
END

IF ~~ 2HoldHand2
SAY @21
IF ~~ EXIT
END

IF ~~ 2HoldHand3
SAY @86
IF ~~ EXIT
END

IF ~~ 2HoldHand4
SAY @87
IF ~~ EXIT
END

IF ~~ 2BlowKiss1
SAY @88
IF ~~ EXIT
END

IF ~~ 2BlowKiss2
SAY @89
IF ~~ EXIT
END

IF ~~ 2BlowKiss3
SAY @38
IF ~~ EXIT
END

IF ~~ 2Nothing
SAY @90
IF ~~ EXIT
END



//PC initiated Part 3
//(after Underdark Apology)


IF ~~ THEN BEGIN M#Flirt3
SAY @91

+ ~RandomNum(4,1)~ + @92 GOTO 3Cone1
+ ~RandomNum(4,2)~ + @92 GOTO 3Cone2
+ ~RandomNum(4,3)~ + @92 GOTO 3Cone3
+ ~RandomNum(4,4)~ + @92 GOTO 3Cone4

+ ~RandomNum(4,1)~ + @93 GOTO 3Shoulder1
+ ~RandomNum(4,2)~ + @93 GOTO 3Shoulder2
+ ~RandomNum(4,3)~ + @93 GOTO 3Shoulder3
+ ~RandomNum(4,4)~ + @94 GOTO 3Shoulder4

+ ~RandomNum(4,1)~ + @95 GOTO 3Cheek1
+ ~RandomNum(4,2)~ + @95 GOTO 3Cheek2
+ ~RandomNum(4,3)~ + @95 GOTO 3Cheek3
+ ~RandomNum(4,4)~ + @95 GOTO 3Cheek4

+ ~RandomNum(4,1)~ + @96 GOTO 3Wrap1
+ ~RandomNum(4,2)~ + @96 GOTO 3Wrap2
+ ~RandomNum(4,3)~ + @96 GOTO 3Wrap3
+ ~RandomNum(4,4)~ + @96 GOTO 3Wrap4

+ ~RandomNum(4,1)~ + @7 GOTO 3HoldHand1
+ ~RandomNum(4,2)~ + @7 GOTO 3HoldHand2
+ ~RandomNum(4,3)~ + @7 GOTO 3HoldHand3
+ ~RandomNum(4,4)~ + @7 GOTO 3HoldHand4

+ ~RandomNum(4,1)~ + @8 GOTO 3Silence1
+ ~RandomNum(4,2)~ + @8 GOTO 3Silence2
+ ~RandomNum(4,3)~ + @8 GOTO 3Silence3
+ ~RandomNum(4,4)~ + @8 GOTO 3Silence4

++ @97 EXIT
END

//Replies

IF ~~ 3Cone1
SAY @98
IF ~~ EXIT
END

IF ~~ 3Cone2
SAY @99
IF ~~ EXIT
END

IF ~~ 3Cone3
SAY @100
IF ~~ EXIT
END

IF ~~ 3Cone4
SAY @101
IF ~~ EXIT
END


IF ~~ 3Shoulder1
SAY @102
IF ~~ EXIT
END

IF ~~ 3Shoulder2
SAY @103
IF ~~ EXIT
END

IF ~~ 3Shoulder3
SAY @104
IF ~~ EXIT
END

IF ~~ 3Shoulder4
SAY @105
IF ~~ EXIT
END


IF ~~ 3Cheek1
SAY @106
++ @107 EXIT
++ @108 EXIT
END

IF ~~ 3Cheek2
SAY @109
IF ~~ EXIT
END

IF ~~ 3Cheek3
SAY @110
IF ~~ EXIT
END

IF ~~ 3Cheek4
SAY @111
IF ~~ EXIT
END


IF ~~ 3Wrap1
SAY @112
IF ~~ EXIT
END

IF ~~ 3Wrap2
SAY @113
++ @114 + 3Wrap2_01
++ @115 EXIT
END

IF ~~ 3Wrap2_01
SAY @116 
IF ~~ EXIT
END

IF ~~ 3Wrap3
SAY @117
IF ~~ EXIT
END

IF ~~ 3Wrap4
SAY @118
IF ~~ EXIT
END


IF ~~ 3HoldHand1
SAY @20
IF ~~ EXIT
END

IF ~~ 3HoldHand2
SAY @21
IF ~~ EXIT
END

IF ~~ 3HoldHand3
SAY @86
IF ~~ EXIT
END

IF ~~ 3HoldHand4
SAY @119
IF ~~ EXIT
END


IF ~~ 3Silence1
SAY @120
IF ~~ EXIT
END

IF ~~ 3Silence2
SAY @24
IF ~~ EXIT
END

IF ~~ 3Silence3
SAY @25
IF ~~ EXIT
END

IF ~~ 3Silence4
SAY @26
IF ~~ EXIT
END

IF ~~ THEN BEGIN M#Status
  SAY @121
  IF ~~ THEN DO ~IncrementGlobal("H#ValPID_Status","LOCALS",1)~ GOTO M#NotReady
END

IF ~~ THEN BEGIN M#NotReady
  SAY @122
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#CatchAll
  SAY @123
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#AfterUnderdark
  SAY @124
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#SleepLT4
  SAY @125
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#TempleLT8
  SAY @126
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#SleepLT9
  SAY @127
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#SleepLT10
  SAY @128
  IF ~~ THEN EXIT
END

END
