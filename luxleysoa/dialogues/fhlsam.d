BEGIN FHLSAM

IF ~Global("FHLXavTalk","GLOBAL",1) Global("FHLSamTalk","GLOBAL",0)~ THEN BEGIN FHLSAM1
SAY @0
IF ~Global("FHLSebCatch","GLOBAL",2)~ THEN REPLY @1 + FHLSAM1_sebcatch
++ @2 + FHLSAM1_laze
++ @3 + FHLSAM1_guards
++ @4 + FHLSAM1_brother
++ @5 + FHLSAM1_thing
++ @6 + FHLSAM1_coat
++ @7 + FHLSAM1_leave
END

IF ~Global("FHLSamTalk","GLOBAL",1)~ THEN BEGIN FHLSAM2
SAY @8
IF ~Global("FHLSebCatch","GLOBAL",2)~ THEN REPLY @1 + FHLSAM1_sebcatch
++ @9 + FHLSAM1_laze
++ @10 + FHLSAM1_guards
++ @4 + FHLSAM1_brother
++ @5 + FHLSAM1_thing
++ @7 + FHLSAM1_leave
END

IF ~~ FHLSAM1_sebcatch
SAY @11
++ @12 + FHLSAM1_angry
++ @13 + FHLSAM1_brother2
++ @14 + FHLSAM1_dare
END

IF ~~ FHLSAM1_laze
SAY @15
++ @16 + FHLSAM1_lyel
++ @17 + FHLSAM1_great
++ @18 + FHLSAM1_devoted
END

IF ~~ FHLSAM1_guards
SAY @19
++ @16 + FHLSAM1_lyel
++ @20 + FHLSAM1_great
++ @21 + FHLSAM1_devoted
END

IF ~~ FHLSAM1_brother
SAY @22
++ @23 + FHLSAM1_outside
++ @24 + FHLSAM1_fairothers
++ @25 + FHLSAM1_leave
END

IF ~~ FHLSAM1_coat
SAY @26
++ @27 + FHLSAM1_laze
++ @28 + FHLSAM1_guards
++ @4 + FHLSAM1_brother
++ @5 + FHLSAM1_thing
++ @29 + FHLSAM1_leave
END

IF ~~ FHLSAM1_thing
SAY @30
++ @31 + FHLSAM1_leave
++ @32 + FHLSAM1_outside
++ @33 + FHLSAM1_guards
++ @34 + FHLSAM1_leave
END

IF ~~ FHLSAM1_leave
SAY @35
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_angry
SAY @36
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_brother2
SAY @37
++ @23 + FHLSAM1_outside
++ @24 + FHLSAM1_fairothers
++ @25 + FHLSAM1_leave
END

IF ~~ FHLSAM1_dare
SAY @38
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_lyel
SAY @39
++ @23 + FHLSAM1_outside
++ @40 + FHLSAM1_fair
++ @25 + FHLSAM1_leave
END

IF ~~ FHLSAM1_great
SAY @41
++ @23 + FHLSAM1_outside
++ @42 + FHLSAM1_leave
++ @43 + FHLSAM1_fair
END

IF ~~ FHLSAM1_devoted
SAY @44
++ @23 + FHLSAM1_outside
++ @42 + FHLSAM1_leave
++ @43 + FHLSAM1_fair
END

IF ~~ FHLSAM1_outside
SAY @45
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_fairothers
SAY @46
++ @23 + FHLSAM1_outside
++ @42 + FHLSAM1_leave
++ @47 + FHLSAM1_fair
END

IF ~~ FHLSAM1_fair
SAY @48
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END
