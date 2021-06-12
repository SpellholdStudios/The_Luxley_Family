BEGIN FHLROS

IF ~Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",0)~ THEN BEGIN FHLRos1
SAY @0
++ @1 + FHLRos1_char
++ @2 + FHLRos1_nice
++ @3 + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @4 + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLRos1_xav
++ @6 + FHLRos1_inter
++ @7 + FHLRos1_later
++ @8 + FHLRos1_leave
END

IF ~~ FHLRos1_char
SAY @9
++ @10 + FHLRos1_go
++ @11 + FHLRos1_go
++ @12 + FHLRos1_back
++ @13 + FHLRos1_later
END

IF ~~ FHLRos1_nice
SAY @14
++ @10 + FHLRos1_go
++ @15 + FHLRos1_grow
++ @16 + FHLRos1_inter
++ @17 + FHLRos1_go
++ @13 + FHLRos1_later
END

IF ~~ FHLRos1_grow
SAY @18
++ @19 + FHLRos1_xav
++ @20 + FHLRos1_go
++ @13 + FHLRos1_later
END

IF ~~ FHLRos1_xav
SAY @21
=
@22
++ @23 + FHLRos1_rule
++ @24 + FHLRos1_rule
++ @25 + FHLRos1_speak
END

IF ~~ FHLRos1_inter
SAY @26
++ @27 + FHLRos1_word
++ @28 + FHLRos1_go
++ @20 + FHLRos1_go
++ @13 + FHLRos1_later
END

IF ~~ FHLRos1_later
SAY @29
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_leave
SAY @30
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1) SetGlobal("FHLRosRude","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_go
SAY @31
++ @32 + FHLRos1_men
++ @33 + FHLRos1_men
++ @34 + FHLRos1_worry
++ @35 + FHLRos1_terrible
END

IF ~~ FHLRos1_back
SAY @36
++ @10 + FHLRos1_go
++ @37 + FHLRos1_terrible
++ @38 + FHLRos1_go
++ @13 + FHLRos1_later
END

IF ~~ FHLRos1_rule
SAY @39
++ @40 + FHLRos1_help
++ @41 + FHLRos1_altru
++ @42 + FHLRos1_terrible
++ @43 + FHLRos1_stupid
END

IF ~~ FHLRos1_speak
SAY @44
++ @40 + FHLRos1_help
++ @41 + FHLRos1_altru
++ @42 + FHLRos1_terrible
++ @43 + FHLRos1_stupid
END

IF ~~ FHLRos1_word
SAY @45
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_men
SAY @46
=
@47
++ @40 + FHLRos1_help
++ @41 + FHLRos1_altru
++ @42 + FHLRos1_terrible
++ @43 + FHLRos1_stupid
END

IF ~~ FHLRos1_worry
SAY @48
++ @40 + FHLRos1_help
++ @41 + FHLRos1_altru
++ @42 + FHLRos1_terrible
++ @43 + FHLRos1_stupid
END

IF ~~ FHLRos1_help
SAY @49
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLRos1_terrible
SAY @50
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_altru
SAY @51
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_stupid
SAY @52
=
@53
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~Global("FHLRosRude","GLOBAL",0) Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",1) Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLRos2
SAY @54
++ @55 + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @4 + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLRos1_xav
++ @56 + FHLRos1_later
++ @8 + FHLRos1_leave
END

IF ~Global("FHLRosRude","GLOBAL",1) Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",1) Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLRos3
SAY @57
++ @58 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos3_sorry
++ @55 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLRos1_xav
++ @59 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_later
++ @60 + FHLRos1_leave
END

IF ~~ FHLRos3_sorry
SAY @61
++ @55 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLRos1_xav
++ @62 DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_later
END

CHAIN IF ~Global("FHLRosGreet","GLOBAL",0)
See("FHLAND")
See("FHLSEB")
~ THEN FHLROS FHLRosGreet
@63
DO ~SetGlobal("FHLRosGreet","GLOBAL",1)~
== FHLLUC
@64
== FHLROS
@65
=
@66
== FHLANDJ
@67
== FHLLUC
@68
== FHLSEBJ
@69
== FHLLUC
@70
EXIT
