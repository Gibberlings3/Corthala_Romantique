//VALYGAR ROMANTIQUE
//Interjections
//Join and Kick out in Romance


////////////////////////////////////////
//Interjections by Valygar
// DELCIA: VALYGARJ state 96
I_C_T3 VALYGARJ 96 H#InfamousCorthala
== VALYGARJ @0
  == DELCIA  @1
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
     @2
  == DELCIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
     @3
  == DELCIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
     @4

  == DELCIA IF ~OR(3)
!InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
     @5
  == DELCIA IF ~OR(3)
!InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @6
  == VALYGARJ IF ~!Global("H#ValygarRomanceActive","GLOBAL",1) 
!Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @7
  == VALYGARJ IF ~OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @8
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
     @9
  == DELCIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10
  == DELCIA @11
  == VALYGARJ @12
  == DELCIA @13
  == VALYGARJ @14
  == VALYGARJ @15
END

//Sarles / Helm's Quest; SCSARLES state 11

I_C_T3 SCSARLES 11 H#Artists
  == VALYGARJ IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @16
  == SCSARLES IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @17
  == VALYGARJ IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN
     @18
  == VALYGARJ IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @19
  == SCSARLES IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @20
  == SCSARLES IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @21
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @22
  == SCSARLES IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @23
  == SCSARLES IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @24
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
                InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @25
  == SCSARLES IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @26
  == SCSARLES IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @27
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
                InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @28
  == SCSARLES IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @29
  == SCSARLES IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @30
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
                InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @31
  == SCSARLES IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @32
  == SCSARLES IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @33
  == VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)
                 InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @34
  == SCSARLES IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
    @35
  == SCSARLES IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @36
  == IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @37
  == SCSARLES IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @38
  == IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @39
  == SCSARLES IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @40

  == SCSARLES IF ~InParty("neera") InMyArea("neera") !StateCheck("neera",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @41
== IF_FILE_EXISTS NEERAJ IF ~InParty("neera") InMyArea("neera") !StateCheck("neera",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @42

  == SCSARLES IF ~InParty("neera") InMyArea("neera") !StateCheck("neera",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @43

  == SCSARLES IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @44

== IF_FILE_EXISTS HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @45

  == SCSARLES IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)
                  InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @43

  == SCSARLES IF ~InMyArea(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)
Gender(Player2,FEMALE)
OR(6)
	Race(Player2,HUMAN)
	Race(Player2,ELF)
	Race(Player2,HALF_ELF)
	Race(Player2,HALFORC)
	Race(Player2,HALFLING)
	Race(Player2,GNOME)
!Name("Imoen2",Player2)
!Name("Viconia",Player2)
!Name("Aerie",Player2)
!Name("Nalia",Player2)
!Name("Mazzy",Player2)
!Name("Jaheira",Player2)
!Name("Neera",Player2)
!Name("Hexxat",Player2)
InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @46

  == SCSARLES IF ~InMyArea(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)
Gender(Player3,FEMALE)
OR(6)
	Race(Player3,HUMAN)
	Race(Player3,ELF)
	Race(Player3,HALF_ELF)
	Race(Player3,HALFORC)
	Race(Player3,HALFLING)
	Race(Player3,GNOME)
!Name("Imoen2",Player3)
!Name("Viconia",Player3)
!Name("Aerie",Player3)
!Name("Nalia",Player3)
!Name("Mazzy",Player3)
!Name("Jaheira",Player3)
!Name("Neera",Player3)
!Name("Hexxat",Player3)
InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @47

  == SCSARLES IF ~InMyArea(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)
Gender(Player4,FEMALE)
OR(6)
	Race(Player4,HUMAN)
	Race(Player4,ELF)
	Race(Player4,HALF_ELF)
	Race(Player4,HALFORC)
	Race(Player4,HALFLING)
	Race(Player4,GNOME)
!Name("Imoen2",Player4)
!Name("Viconia",Player4)
!Name("Aerie",Player4)
!Name("Nalia",Player4)
!Name("Mazzy",Player4)
!Name("Jaheira",Player4)
!Name("Neera",Player4)
!Name("Hexxat",Player4)
InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @48

  == SCSARLES IF ~InMyArea(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)
Gender(Player5,FEMALE)
OR(6)
	Race(Player5,HUMAN)
	Race(Player5,ELF)
	Race(Player5,HALF_ELF)
	Race(Player5,HALFORC)
	Race(Player5,HALFLING)
	Race(Player5,GNOME)
!Name("Imoen2",Player5)
!Name("Viconia",Player5)
!Name("Aerie",Player5)
!Name("Nalia",Player5)
!Name("Mazzy",Player5)
!Name("Jaheira",Player5)
!Name("Neera",Player5)
!Name("Hexxat",Player5)
InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @49

  == SCSARLES IF ~InMyArea(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)
Gender(Player6,FEMALE)
OR(6)
	Race(Player6,HUMAN)
	Race(Player6,ELF)
	Race(Player6,HALF_ELF)
	Race(Player6,HALFORC)
	Race(Player6,HALFLING)
	Race(Player6,GNOME)
!Name("Imoen2",Player6)
!Name("Viconia",Player6)
!Name("Aerie",Player6)
!Name("Nalia",Player6)
!Name("Mazzy",Player6)
!Name("Jaheira",Player6)
!Name("Neera",Player6)
!Name("Hexxat",Player6)
InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @50

  == SCSARLES IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
    @51
  == VALYGARJ IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @52
  == SCSARLES IF ~InMyArea(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @53 // Now, what was the reason you disturbed me?~
END

/* prevent the original dialogue to trigger for Valygar */
ADD_STATE_TRIGGER CLMOM 7 ~OR(4)  
!Name("Valygar",LastTalkedToBy)
Global("H#ValygarRomanceActive","GLOBAL",0)
Global("H#ValygarRomanceActive","GLOBAL",3)
Global("H#AManWithAPast","GLOBAL",1)~


//Mother in Temple district; CLMOM

CHAIN 
IF 
~Gender(LastTalkedToBy,MALE)
Name("Valygar",LastTalkedToBy)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)
Global("H#AManWithAPast","GLOBAL",0)~ THEN CLMOM AManWithAPast
@54 DO ~SetGlobal("H#AManWithAPast","GLOBAL",1)~ 
  == VALYGARJ @55
  == CLMOM @56
  == VALYGARJ @57
  == CLMOM IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @58
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @59
  == CLMOM IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @60
  == CLKID IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @61
  == CLMOM IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @62
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~THEN
     @63
EXIT

//Interjections when the Dryads are restored
INTERJECT_COPY_TRANS VAELASA 8 H#LovelyDryads
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @64
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @65
  == IDRYAD1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @66
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @67
  == IDRYAD3 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @68
  == IDRYAD2 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @69
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#ValygarRomanceActive","GLOBAL",1)~ THEN
     @70
  == IDRYAD1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @71
 == VAELASA IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN @72
END


//Spelljammer Captain in Ust Natha; DAGITH1; state 4,5,6
// speaks a strange English!
INTERJECT_COPY_TRANS DAGITH1 4 H#PlaneTravel
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @73
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @74
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @75
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @76
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @77
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @78
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @79
END

INTERJECT_COPY_TRANS DAGITH1 5 H#PlaneTravel
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @73
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @74
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @75
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @76
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @77
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @78
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @79
END

INTERJECT_COPY_TRANS DAGITH1 6 H#PlaneTravel
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @73
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @74
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @75
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @76
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @77
  == DAGITH1 IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @78
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @79
END



//Interjection to Silver Dragon; UDSILVER; state 53
INTERJECT_COPY_TRANS UDSILVER 53 H#Valaghar
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @80
  == UDSILVER IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @81
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @82
  == UDSILVER IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
     @83
END

//When seeing Haer'Dalis in Mekrath's library (hopefully)
//Interjection to Haer'Dalis still under control; HAERDA; state 109
INTERJECT_COPY_TRANS HAERDA 109 H#CommentHearDalis
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2)
Global("H#ValygarRomanceActive","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN
     @84
END

///////////////////////////////
//Merella is dying
//Weight goes in, so that she can see Valygar
APPEND UHRANG01
IF WEIGHT #-100
~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#TalkedToMerella","GLOBAL",0)~ THEN BEGIN IsThatYou
SAY @85
IF ~~ THEN EXTERN VALYGARJ ItsAlright
END
END

APPEND VALYGARJ
IF ~~ THEN BEGIN ItsAlright
SAY @86
IF ~~ THEN DO ~MoveToObject("uhrang01")
               SetGlobal("H#TalkedToMerella","GLOBAL",1)
               RealSetGlobalTimer("H#ValygarRomance","GLOBAL",1)~ EXTERN UHRANG01 0
END
END


/////////////////////////////////////
//Reaction on turning into the Slayer

EXTEND_BOTTOM PLAYER1 7
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
       Global("H#ValygarRomanceActive","GLOBAL",2)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#EndangerLovedOne","GLOBAL",0)~ THEN EXTERN VALYGARJ SlayerTalk1
END

EXTEND_BOTTOM PLAYER1 10
IF ~OR(2) Global("H#ValygarRomanceActive","GLOBAL",1)
       Global("H#ValygarRomanceActive","GLOBAL",2)
InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#EndangeredLovedOne","GLOBAL",1)~ THEN EXTERN VALYGARJ SlayerTalk3
END

APPEND VALYGARJ
IF ~~ THEN BEGIN SlayerTalk1
SAY @87
++ @88
 DO ~SetGlobal("H#EndangerLovedOne","GLOBAL",1)~ + SlayerTalk2
++ @89
 DO ~SetGlobal("H#EndangerLovedOne","GLOBAL",1)~ + SlayerTalk2
++ @90
 DO ~SetGlobal("H#EndangerLovedOne","GLOBAL",1)~ + SlayerTalk2
++ @91
 DO ~SetGlobal("H#EndangerLovedOne","GLOBAL",1)~ + SlayerTalk2
END

IF ~~ THEN BEGIN SlayerTalk2
SAY @92
IF ~~ THEN DO ~SetGlobal("H#EndangeredLovedOne","GLOBAL",1)
               ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ THEN BEGIN SlayerTalk3
SAY @93
    =
    @94
    =
    @95
IF ~~ THEN DO ~SetGlobal("H#EndangeredLovedOne","GLOBAL",2) SetGlobal("DrowTalk","GLOBAL",5)~ EXIT
END
END



/////////////////////////////////////////////////////////////////
//Tree of Life if in Romance
//PLAYER1 STATE 33 (NI = 34 because starts with 0 - remember C?


/* prevent original interjection to run if romance ones do */

ADD_STATE_TRIGGER PLAYER1 36 ~!Global("H#ValygarRomanceActive","GLOBAL",2)~


EXTEND_BOTTOM PLAYER1 36
IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
Global("H#ValygarRomanceActive","GLOBAL",2)~ THEN GOTO TreeOfLife
END

APPEND PLAYER1
IF ~~ THEN BEGIN TreeOfLife
SAY @96
++ @97 EXTERN ~VALYGARJ~ TreeOfLife1
++ @98 EXTERN ~VALYGARJ~ TreeOfLife2
  IF ~~ THEN REPLY #58039 /* ~Irenicus is a powerful wizard, Valygar.  I know how you hate magic users; you do not have to endanger yourself for me.~ */ EXTERN ~VALYGARJ~ TreeOfLife3
END
END

APPEND VALYGARJ
IF ~~ THEN BEGIN TreeOfLife1
SAY @99
COPY_TRANS VALYGARJ 106
END

IF ~~ THEN BEGIN TreeOfLife2
SAY @100
IF ~~ THEN + TreeOfLife1
END

IF ~~ THEN BEGIN TreeOfLife3
SAY @101
IF ~~ THEN + TreeOfLife1
END
END


/* knight in front of Order headquarters */
APPEND TIRLANA
IF WEIGHT #-1 ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
RandomNum(2,1)
Global("H#ValygarTirlana","LOCALS",0)~ THEN BEGIN H#Scouting
  SAY @102
  IF ~~ THEN DO ~SetGlobal("H#ValygarTirlana","LOCALS",1)~ EXTERN ~VALYGARJ~ Scouting1
END
END

CHAIN VALYGARJ Scouting1
@103
== TIRLANA @104
== VALYGARJ @105
== TIRLANA @106
EXIT




/////////////////////////////////////
//RE-JOIN in Romance
APPEND VALYGARP
IF WEIGHT #-100
~Global("H#ValygarRomanceActive","GLOBAL",2)
Global("KickedOut","LOCALS",1)
Dead("Lavok")~ THEN BEGIN RomanceReJoin
SAY @107 
++ @108 GOTO 20
++ @109 GOTO RRJ2
++ @110 GOTO RRJ1
++ @111 GOTO RRJ4
END

IF ~~ THEN BEGIN RRJ1
  SAY #19453 /* ~I look forward to your companionship.  Let us be underway, then.~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN RRJ2
SAY @112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RRJ4
SAY @113
IF ~~ THEN EXIT
END
END

/////////////////////////////////////
//KICKOUT in Romance
APPEND VALYGARP
IF WEIGHT #-100
~Global("H#ValygarRomanceActive","GLOBAL",2)
!HappinessLT(Myself,-290)
Global("KickedOut","LOCALS",0)
 Dead("Lavok")~ THEN BEGIN RomanceKickOut
SAY @114 
++ @115 GOTO 0
++ @116 GOTO 20
++ @117 GOTO 0
++ @118 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ GOTO RKO1
++ @119 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ GOTO RKO1
END

IF ~~ THEN BEGIN RKO1
SAY @120
IF ~~ THEN + 0
END
END

/////////////////////////////////////
//Bad Reputation (< 9)
APPEND VALYGARJ
IF WEIGHT #-100
~Global("H#RepWarning","LOCALS",1)~ THEN BEGIN BadReputation
SAY @121
++ @122 GOTO BadRep10
++ @123 + BadRep8
++ @124 GOTO BadRep11
++ @125 GOTO BadRep2
++ @126 GOTO BadRep3
++ @127 GOTO BadRep9
++ @128 GOTO BadRep1
END

IF ~~ THEN BEGIN BadRep1
SAY @129
IF ~~ THEN DO ~SetGlobal("H#RepWarning","LOCALS",2)
		SetGlobal("H#ValygarRomanceActive","GLOBAL",3)
               LeaveParty()
               EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN BadRep2
SAY @130
++ @122 GOTO BadRep10
++ @123 + BadRep8
++ @124 GOTO BadRep11
++ @126 GOTO BadRep3
++ @127 GOTO BadRep9
++ @128 GOTO BadRep1
END

IF ~~ THEN BEGIN BadRep3
SAY @131
IF ~~ THEN DO ~SetGlobal("H#RepWarning","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN BadRep8
SAY @132
++ @122 GOTO BadRep10
++ @124 GOTO BadRep11
++ @125 GOTO BadRep2
++ @126 GOTO BadRep3
++ @127 GOTO BadRep9
++ @128 GOTO BadRep1
END

IF ~~ THEN BEGIN BadRep9
SAY @133
IF ~~ THEN + BadRep3
END

IF ~~ THEN BEGIN BadRep10
SAY @134
++ @123 + BadRep8
++ @124 GOTO BadRep11
++ @125 GOTO BadRep2
++ @126 GOTO BadRep3
++ @127 GOTO BadRep9
++ @128 GOTO BadRep1
END

IF ~~ THEN BEGIN BadRep11
SAY @135
= @136
++ @122 GOTO BadRep10
++ @123 + BadRep8
++ @125 GOTO BadRep2
++ @126 GOTO BadRep3
++ @127 GOTO BadRep9
++ @128 GOTO BadRep1
END
END //APPEND

