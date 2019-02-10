EXTEND_BOTTOM VALYG25J 3
++ @0 + P#ValThrone1
++ @1 + P#ValThrone1
++ @2 + P#ValThrone1
++ @3 + P#ValThrone1
END

I_C_T VALYG25J 3 P#ValVALYG25J_3
== VALYG25J @4
END


APPEND ~VALYG25J~

IF ~~ P#ValThrone1
SAY @5
IF ~~ THEN + 4
END

END //APPEND

EXTEND_BOTTOM VALYG25J 12
IF ~InParty("valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) Global("H#ValygarRomanceActive","GLOBAL",1) Global("H#ValygarRomanceActive","GLOBAL",2) 
!GlobalGT("P#ValProposal","GLOBAL",9) ~ THEN EXTERN ~VALYG25J~ P#ValThroneHappy
IF ~InParty("valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) Global("H#ValygarRomanceActive","GLOBAL",1) Global("H#ValygarRomanceActive","GLOBAL",2) GlobalGT("P#ValProposal","GLOBAL",9)~ THEN EXTERN ~VALYG25J~ P#ValThroneMarryMe
END

APPEND ~VALYG25J~

IF ~~ P#ValThroneHappy
SAY @6
++ @7 + P#ValThroneHappy1
++ @8 + P#ValThroneHappy2
++ @9 + P#ValThroneHappy3
++ @10 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#ValThroneMarryMe5
++ @11 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#ValThroneMarryMe5
END

IF ~~ P#ValThroneHappy1
SAY @12
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneHappy2
SAY @13
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneHappy3
SAY @14
= @15
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneMarryMe
SAY @16
= @17
++ @18 + P#ValThroneMarryMe1
++ @19 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~ + P#ValThroneMarryMe3
++ @20 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~+ P#ValThroneMarryMe3 
++ @21 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~ + P#ValThroneMarryMe2
++ @22 DO ~SetGlobal("P#VANOMAR","GLOBAL",1)~ + P#ValThroneMarryMe4
++ @23 DO ~SetGlobal("P#VANOMAR","GLOBAL",1)~ + P#ValThroneMarryMe4
++ @10 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#ValThroneMarryMe5
++ @11 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#ValThroneMarryMe5
END

IF ~~ P#ValThroneMarryMe1
SAY @24
++ @19 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~ + P#ValThroneMarryMe3
++ @20 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~+ P#ValThroneMarryMe3 
++ @21 DO ~SetGlobal("P#VAMAR","GLOBAL",1)~ + P#ValThroneMarryMe2
++ @22 DO ~SetGlobal("P#VANOMAR","GLOBAL",1)~ + P#ValThroneMarryMe4
++ @23 DO ~SetGlobal("P#VANOMAR","GLOBAL",1)~ + P#ValThroneMarryMe4
++ @11 DO ~SetGlobal("H#ValygarRomanceActive","GLOBAL",3)~ + P#ValThroneMarryMe5
END


IF ~~ P#ValThroneMarryMe2
SAY @25
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneMarryMe3
SAY @26
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneMarryMe4
SAY @27
COPY_TRANS VALYG25J 12
END

IF ~~ P#ValThroneMarryMe5
SAY @28
= #68074 /* ~Then this is good-bye, <CHARNAME>.  I wish you well, my love.  With luck, we will meet again.~ */
COPY_TRANS VALYG25J 12
END

END





