BEGIN FHLQUEN

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,1)~ THEN BEGIN FHLQuen11
SAY @0
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,2)~ THEN BEGIN FHLQuen12
SAY @1
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,3)~ THEN BEGIN FHLQuen13
SAY @2
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,3)~ THEN BEGIN FHLQuen14
SAY @3
IF ~~ EXIT
END

IF ~Global("FHLQuennellQuest","GLOBAL",1)~ THEN BEGIN FHLQuen
SAY @4
++ @5 + FHLQuen_normal
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY @6 + FHLQuen_int1
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @7 + FHLQuen_cha1
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @8 + FHLQuen_sed1
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @9 + FHLQuen_wis1
++ @10 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_normal
SAY @11
++ @12 + FHLQuen_nor2
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY @13 + FHLQuen_nor2
++ @14 + FHLQuen_nor2
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @15 + FHLQuen_nor2
++ @16 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_int1
SAY @17
++ @18 + FHLQuen_normal
++ @19 + FHLQuen_nor2
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY @20 + FHLQuen_int2
++ @21 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_cha1
SAY @22
=
@23
++ @24 + FHLQuen_cha2
END

IF ~~ FHLQuen_sed1
SAY @25
++ @26 + FHLQuen_sed2
++ @27 + FHLQuen_sed2
++ @28 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_wis1
SAY @29
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @30 + FHLQuen_wis2
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY @31 + FHLQuen_int1
++ @32 + FHLQuen_nor2
++ @33 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_nor2
SAY @34
++ @35 + FHLQuen_borrow
++ @21 EXTERN FHLSEBJ FHLQuen_seb2title
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @36 + FHLQuen_wis2
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @37 + FHLQuen_int4
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @38 + FHLQuen_sedtutor
++ @39 + FHLQuen_buy
END

IF ~~ FHLQuen_int2
SAY @40
=
@41
++ @42 + FHLQuen_nor2
++ @43 + FHLQuen_int3
++ @44 + FHLQuen_sedcandle
++ @45 EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_cha2
SAY @46
++ @47 + FHLQuen_loan
++ @48 + FHLQuen_senile
++ @49 EXTERN FHLSEBJ FHLQuen_sebcha
END

IF ~~ FHLQuen_sed2
SAY @50
IF ~Gender(Player1,MALE)~ THEN REPLY @51 + FHLQuen_sed3male
IF ~Gender(Player1,FEMALE)~ THEN REPLY @51 + FHLQuen_sed3female
++ @52 + FHLQuen_nor2
END

IF ~~ FHLQuen_wis2
SAY @53
=
@54
++ @55 + FHLQuen_wis4
++ @56 + FHLQuen_wis3
++ @57 + FHLQuen_sed2
END

IF ~~ FHLQuen_int3
SAY @58
++ @59 + FHLQuen_intsuccess1
END

IF ~~ FHLQuen_int4
SAY @60
=
@61
++ @62 + FHLQuen_int5
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY @63 + FHLQuen_genealogy
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY @64 + FHLQuen_family
++ @65 EXTERN FHLSEBJ FHLQuen_intseb
END

IF ~~ FHLQuen_borrow
SAY @66
++ @67 + FHLQuen_refuse
++ @68 + FHLQuen_refuse
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @69 + FHLQuen_int4
++ @70 + FHLQuen_buy
END

IF ~~ FHLQuen_buy
SAY @71
IF ~PartyGoldGT(101)~ THEN REPLY @72 + FHLQuen_low
IF ~PartyGoldGT(251)~ THEN REPLY @73 + FHLQuen_low
IF ~PartyGoldGT(501)~ THEN REPLY @74 + FHLQuen_low
IF ~PartyGoldGT(1001)~ THEN REPLY @75 + FHLQuen_high
++ @76 + FHLQuen_rude
END

IF ~~ FHLQuen_sedtutor
SAY @77
IF ~Gender(Player1,FEMALE)~ THEN REPLY @78 + FHLQuen_candlew
IF ~Gender(Player1,FEMALE)~ THEN REPLY @79 + FHLQuen_candlew
IF ~Gender(Player1,MALE)~ THEN REPLY @78 + FHLQuen_sed3male
IF ~Gender(Player1,MALE)~ THEN REPLY @79 + FHLQuen_sed3male
END

IF ~~ FHLQuen_sedcandle
SAY @80
IF ~Gender(Player1,MALE)~ THEN REPLY @81 + FHLQuen_candlem
IF ~Gender(Player1,FEMALE)~ THEN REPLY @81 + FHLQuen_candlew
++ @82 EXTERN FHLSEBJ FHLQuen_sebsed
END

IF ~~ FHLQuen_sed3male
SAY @83
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_candlem
SAY @84
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sed3female
SAY @85
++ @86 + FHLQuen_sed4
++ @87 + FHLQuen_sedhelp
END

IF ~~ FHLQuen_candlew
SAY @88
=
@89
++ @86 + FHLQuen_sed4
++ @87 + FHLQuen_sedhelp
END

IF ~~ FHLQuen_loan
SAY @90
++ @91 + FHLQuen_chasuccess
++ @92 + FHLQuen_chasuccess
++ @93 + FHLQuen_senile
END

IF ~~ FHLQuen_senile
SAY @94
++ @95 + FHLQuen_rude
++ @96 + FHLQuen_chaalmost
++ @97 EXTERN FHLSEBJ FHLQuen_sebcha
END

IF ~~ FHLQuen_chasuccess
SAY @98
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_chaalmost
SAY @100
++ @101 + FHLQuen_rude
++ @102 EXTERN FHLSEBJ FHLQuen_sebhelpcha
END

IF ~~ FHLQuen_rude
SAY @103
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_wis3
SAY @104
=
@105
++ @106 + FHLQuen_wislook
++ @107 + FHLQuen_wisborrow
END

IF ~~ FHLQuen_wis4
SAY @108
=
@109
++ @106 + FHLQuen_wislook
++ @107 + FHLQuen_wisborrow
END

IF ~~ FHLQuen_intsuccess1
SAY @110
=
@111
++ @112 + FHLQuen_intextort
++ @113 + FHLQuen_nice
++ @114 + FHLQuen_vnice
END

IF ~~ FHLQuen_int5
SAY @115
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY @116 + FHLQuen_genealogy
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY @117 + FHLQuen_family
++ @118 EXTERN FHLSEBJ FHLQuen_intseb
END

IF ~~ FHLQuen_genealogy
SAY @119
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY @120 + FHLQuen_outsmart
++ @121 + FHLQuen_intbook
END

IF ~~ FHLQuen_family
SAY @122
=
@123
++ @124 + FHLQuen_vnice
++ @125 + FHLQuen_bye
END

IF ~~ FHLQuen_refuse
SAY @126
++ @127 + FHLQuen_buy
++ @101 + FHLQuen_rude
END

IF ~~ FHLQuen_low
SAY @128
IF ~PartyGoldGT(1001)~ THEN REPLY @129 + FHLQuen_high
++ @130 + FHLQuen_rude
END

IF ~~ FHLQuen_high
SAY @131
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~TakePartyGold(1000)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sed4
SAY @132
++ @133 + FHLQuen_sedsuccess
END

IF ~~ FHLQuen_sedhelp
SAY @134
++ @133 + FHLQuen_sedsuccess
END

IF ~~ FHLQuen_wislook
SAY @135
++ @136 + FHLQuen_wisborrow
END

IF ~~ FHLQuen_wisborrow
SAY @137
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_intextort
SAY @138
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GivePartyGold(200)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_nice
SAY @139
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_vnice
SAY @140
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~TakePartyGold(100)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_outsmart
SAY @141
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_intbook
SAY @142
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_bye
SAY @143
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sedsuccess
SAY @144
=
@145
IF ~~ THEN UNSOLVED_JOURNAL @99
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END



