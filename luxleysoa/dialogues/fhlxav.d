BEGIN FHLXAV

//First visit with Xavier
IF ~~ FHLXav1_manip1
SAY @0
=
@1
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @2 + FHLXav1_manip2
++ @3 + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @4 + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @4 + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @5 + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @5 + FHLXav1_badworseen
++ @6 + FHLXav1_slave
END

IF ~~ FHLXav1_good1
SAY @7
=
@1
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @2 + FHLXav1_manip2
++ @3 + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @4 + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @4 + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @5 + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @5 + FHLXav1_badworseen
++ @6 + FHLXav1_slave
END

IF ~~ FHLXav1_foot1
SAY @8
=
@9
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @10 + FHLXav1_manip2
++ @3 + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @4 + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @4 + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @5 + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @5 + FHLXav1_badworseen
++ @6 + FHLXav1_slave
END

IF ~~ FHLXav1_manip2
SAY @11
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @12 + FHLXav1_bestcatch
++ @13 + FHLXav1_bestcatch
++ @14 + FHLXav1_bestcatch
++ @15 EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_good2
SAY @16
++ @17 + FHLXav1_bestcatch
++ @14 + FHLXav1_faircatch
++ @15 EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_badgoodun
SAY @18
=
@19
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @20 + FHLXav1_faircatch
++ @21 EXTERN FHLSEBJ FHLXav1_awful
++ @22 EXTERN FHLSEBJ FHLXav1_awful
++ @23 + FHLXav1_moreawful
END

IF ~~ FHLXav1_badgooden
SAY @24
=
@25
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @20 + FHLXav1_bestcatch
++ @21 EXTERN FHLSEBJ FHLXav1_awful
++ @22 EXTERN FHLSEBJ FHLXav1_awful
++ @23 + FHLXav1_faircatch
END

IF ~~ FHLXav1_fairun
SAY @26
=
@27
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @20 + FHLXav1_faircatch
++ @21 EXTERN FHLSEBJ FHLXav1_awful
++ @22 EXTERN FHLSEBJ FHLXav1_awful
++ @23 + FHLXav1_moreawful
END

IF ~~ FHLXav1_fairen
SAY @28
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @20 + FHLXav1_faircatch
++ @21 EXTERN FHLSEBJ FHLXav1_awful
++ @22 EXTERN FHLSEBJ FHLXav1_awful
++ @23 + FHLXav1_faircatch
END

IF ~~ FHLXav1_badworseun
SAY @29
++ @30 + FHLXav1_moreawful
++ @31 + FHLXav1_failedmanip
++ @32 EXTERN FHLSEBJ FHLXav1_awful
++ @21 EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_badworseen
SAY @33
++ @30 + FHLXav1_moreawful
++ @31 + FHLXav1_failedmanip
++ @32 EXTERN FHLSEBJ FHLXav1_awful
++ @21 EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_failedmanip
SAY @34
IF ~~ THEN + FHLXav1_scaryawful
END

//Talking to Xavier after the initial visit

IF ~OR(2) Global("FHLSebCatch","GLOBAL",2)
Global("FHLXavierStrop","GLOBAL",1)~ THEN BEGIN FHLXavStrop
SAY @35
IF ~~ EXIT
END

IF ~!Global("FHLSebCatch","GLOBAL",2)
!Global("FHLXavierStrop","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",1)
Global("FHLTellCurse","GLOBAL",0)~ THEN BEGIN FHLXavier
SAY @36
++ @37 + FHLXavier_like
++ @38 + FHLXavier_seband
++ @39 + FHLXavier_choose
IF ~Global("FHLSamTalk","GLOBAL",1)~ THEN REPLY @40 + FHLXavier_samuel
++ @41 + FHLXavier_leave
END

IF ~~ FHLXavier_like
SAY @42
++ @43 + FHLXavier_feeble
++ @44 + FHLXavier_focus
++ @45 + FHLXavier_heart
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_choose
SAY @47
++ @48 + FHLXavier_focus
++ @49 + FHLXavier_guards
++ @38 + FHLXavier_seband
++ @50 + FHLXavier_focus
END

IF ~~ FHLXavier_samuel
SAY @51
++ @43 + FHLXavier_feeble
++ @44 + FHLXavier_focus
++ @45 + FHLXavier_heart
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_leave
SAY @52
IF ~~ EXIT
END

IF ~~ FHLXavier_feeble
SAY @53
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLXavier_focus
SAY @54
++ @43 + FHLXavier_feeble
++ @55 + FHLXavier_cope
++ @45 + FHLXavier_heart
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_heart
SAY @56
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLXavier_guards
SAY @57
++ @58 + FHLXavier_trad
++ @59 + FHLXavier_feeble
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_seband
SAY @60
=
@61
++ @62 + FHLXavier_seb1
++ @63 + FHLXavier_andrei1
++ @64 + FHLXavier_seb2
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_cope
SAY @65
=
@61
++ @62 + FHLXavier_seb1
++ @64 + FHLXavier_seb2
++ @46 + FHLXavier_leave
END

IF ~~ FHLXavier_trad
SAY @66
=
@67
IF ~~ EXIT
END

IF ~~ FHLXavier_seb1
SAY @68
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~
EXIT
END

IF ~~ FHLXavier_seb2
SAY @69
=
@67
IF ~~ EXIT
END

IF ~~ FHLXavier_andrei1
SAY @70
=
@67
IF ~~ EXIT
END

//First talk

CHAIN IF ~Global("FHLXavTalk","GLOBAL",0) Global("FHLTellCurse","GLOBAL",0)~ THEN FHLXAV FHLXav1
@71
DO ~SetGlobal("FHLXavTalk","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
@72
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
@73
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@74
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@75
== FHLANDJ
@76
== FHLXAV
@77
== FHLANDJ
@78
== FHLXAV
@79
=
@80
== FHLSEBJ
@81
== FHLXAV
@82
=
@83
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @84 + FHLXav1_manip1
++ @85 + FHLXav1_good1
++ @86 + FHLXav1_foot1
++ @87 EXTERN FHLSEBJ FHLXav1_bad1
++ @88 EXTERN FHLSEBJ FHLXav1_awful
++ @89 EXTERN FHLSEBJ FHLXav1_bad1

CHAIN FHLSEBJ FHLXav1_bad1
@90
== FHLXAV
@91
=
@92
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @93 EXTERN FHLXAV FHLXav1_manip2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @94 EXTERN FHLXAV FHLXav1_badgoodun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @94 EXTERN FHLXAV FHLXav1_badgooden
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @95 EXTERN FHLXAV FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @95 EXTERN FHLXAV FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @96 EXTERN FHLXAV FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY @96 EXTERN FHLXAV FHLXav1_badworseen
++ @97 + FHLXav1_awful
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY @98 EXTERN FHLXAV FHLXav1_slave

CHAIN FHLSEBJ FHLXav1_awful
@99
== FHLXAV
@100
== FHLSEBJ
@101
=
@102
=
@103
== FHLXAV
@104
=
@105
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatch","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

CHAIN FHLXAV FHLXav1_slave
@106
== FHLSEBJ
@107
== FHLXAV
@108
END
++ @109 + FHLXav1_moreawful
++ @110 + FHLXav1_scaryawful
++ @111 + FHLXav1_failedmanip

CHAIN FHLXAV FHLXav1_bestcatch
@112
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN
@113
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
@114
EXIT

CHAIN FHLXAV FHLXav1_faircatch
@115
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
@114
== FHLSEBJ
@116
EXIT

CHAIN FHLXAV FHLXav1_scaryawful
@117
== FHLSEBJ
@118
== FHLXAV
@119
== FHLSEBJ
@120
=
@103
== FHLXAV
@121
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatchTime","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

CHAIN FHLXAV FHLXav1_moreawful
@122
== FHLSEBJ
@118
== FHLXAV
@123
== FHLSEBJ
@124
=
@103
== FHLXAV
@121
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatch","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

//ESTM
CHAIN IF ~Global("FHLTellCurse","GLOBAL",3)~ THEN FHLXAV FHLESTM
@125
DO ~SetGlobal("FHLTellCurse","GLOBAL",4)~
== FHLLYEL
@126
== FHLSEBJ
@127
== FHLXAV
@128
== FHLSEBJ
@129
== FHLXAV
@130
== FHLSEBJ
@131
== FHLXAV
@132
== FHLSEBJ
@133
== FHLLYEL
@134
== FHLAL
@135
== FHLANDJ
@136
== FHLAL
@137
== FHLSEBJ
@138
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@139
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",LAWFUL_GOOD)~ THEN
@140
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN
@141
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN
@142
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN
@143
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN
@144
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
@145
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@146
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
@147
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@148
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
@149
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN
@150
== FHLANDJ
@151
END
++ @152 EXTERN FHLSEBJ FHLESTM_yes
++ @153 EXTERN FHLANDJ FHLESTM_worst
++ @154 EXTERN FHLANDJ FHLESTM_andrei
