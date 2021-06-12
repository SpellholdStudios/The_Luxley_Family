//Jealousy talks for Sebastian flirting

APPEND AERIEJ
IF ~Global("FHLAerieJealous","GLOBAL",1)~ THEN BEGIN FHLAerieJealous
SAY @0
=
@1
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @2 + FHLAerieJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @3 + FHLAerieJealous_cheer
++ @4 + FHLAerieJealous_affection
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY @5 + FHLAerieJealous_enjoyLDP
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @5 + FHLAerieJealous_enjoyMDP
++ @6 + FHLAerieJealous_gay
END

IF ~~ FHLAerieJealous_cheer
SAY @7
=
@8
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAerieJealous_affection
SAY @9
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAerieJealous_enjoyMDP
SAY @10
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAerieJealous_enjoyLDP_afresh
SAY @11
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~~ FHLAerieJealous_enjoyLDP_break
SAY @12
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAerieJealous_gay
SAY @13
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLAerieJealous","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLAerieJealous2MDP
SAY @14
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",4) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END
END

CHAIN AERIEJ FHLAerieJealous_enjoyLDP
@10
== FHLSEBJ
@15
=
@16
==
AERIEJ
@17
END
++ @18 EXTERN FHLSEBJ FHLAerieJealous_enjoyLDP_friend
++ @19 + FHLAerieJealous_enjoyLDP_afresh
++ @20 + FHLAerieJealous_enjoyLDP_break

CHAIN IF ~Global("FHLAerieJealous","GLOBAL",3)
Global("FHLMDP","GLOBAL",0)~ THEN AERIEJ FHLAerieJealous2
@21
== FHLSEBJ
@22
=
@23
== AERIEJ
@24
== FHLSEBJ
@25
== AERIEJ
@26
== FHLSEBJ
@27
== AERIEJ
@28
DO ~SetGlobal("FHLAerieJealous","GLOBAL",4)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

APPEND ANOMENJ

IF ~Global("FHLAnomenJealous","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BEGIN FHLAnomenJealousLNLG
SAY @29
=
@30
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @31 + FHLAnomenJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @3 + FHLAnomenJealous_cheer
++ @32 + FHLAnomenJealous_affection
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY @33 EXTERN FHLSEBJ FHLAnomenJealous_enjoyLDP
IF ~GlobalGT("FHLMDP","GLOBAL",0)~ THEN REPLY @33 + FHLAnomenJealous_enjoy
++ @34 + FHLAnomenJealous_inapprop
END

IF ~~ FHLAnomenJealous_cheer
SAY @35
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAnomenJealous_affection
SAY @36
IF ~~ EXIT
END

IF ~~ FHLAnomenJealous_enjoy
SAY @37
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAnomenJealous_inapprop
SAY @38
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~ EXIT
END

IF ~Global("FHLAnomenJealous","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)~ THEN BEGIN FHLAnomenJealousCN
SAY @39
=
@40
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @31 + FHLAnomenJealousCN_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @3 + FHLAnomenJealousCN_cheer
++ @32 + FHLAnomenJealousCN_affection
++ @41 + FHLAnomenJealousCN_enjoy
++ @42 + FHLAnomenJealousCN_inapprop
END

IF ~~ FHLAnomenJealousCN_cheer
SAY @43
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealousCN_affection
SAY @44
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealousCN_enjoy
SAY @45
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAnomenJealousCN_inapprop
SAY @46
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealous_enjoyLDP_afresh
SAY @47
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~Global("FHLAnomenJealous","GLOBAL",3)
GlobalTimerExpired("FHLAnomenJealousTime","GLOBAL")
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLAnomenJealous2
SAY @48
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",4) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLSEBPID_flirtAnomen_notalk
SAY @49
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)~
EXIT
END

IF ~~ FHLSEBPID_flirtAnomen_break
SAY @50
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("FHLSebJustFriends","GLOBAL",0)~
EXIT
END
END

CHAIN FHLSEBJ FHLAnomenJealous_enjoyLDP
@51
=
@52
== ANOMENJ
@53
== FHLSEBJ
@54
== ANOMENJ
@55
END
++ @18 + FHLAnomenJealous_enjoyLDP_friend
++ @56 EXTERN ANOMENJ FHLAnomenJealous_enjoyLDP_afresh
++ @57 EXTERN ANOMENJ FHLAnomenJealous_enjoy

CHAIN IF ~Global("FHLAnomenJealous","GLOBAL",3)
Global("FHLMDP","GLOBAL",0)~ THEN ANOMENJ FHLAnomenJealous2
@58
== FHLSEBJ
@59
== ANOMENJ
@60
== FHLSEBJ
@61
DO ~SetGlobal("FHLAnomenJealous","GLOBAL",4)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHLSEBPID_MDPflirtAnomen_change
@62
== ANOMENJ
@63
== FHLSEBJ
@64
END
++ @65 EXTERN ANOMENJ FHLSEBPID_flirtAnomen_notalk
++ @66 EXTERN ANOMENJ FHLSEBPID_flirtAnomen_break

APPEND JAHEIRAJ
IF ~Global("FHLJaheiraJealous","GLOBAL",1)~ THEN BEGIN FHLJaheiraJealous
SAY @67
=
@68
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @69 + FHLJaheiraJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @3 + FHLJaheiraJealous_cheer
++ @70 + FHLJaheiraJealous_affection
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @71 + FHLJaheiraJealous_enjoy
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY @71 + FHLJaheiraJealousLDP
++ @72 + FHLJaheiraJealous_enjoy
END

IF ~~ FHLJaheiraJealous_cheer
SAY @73
=
@74
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLJaheiraJealous_affection
SAY @75
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoy
SAY @76
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2) SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoyLDP_afresh
SAY @77
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoyLDP_enjoy2
SAY @78
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLJaheiraJealousTimer2","GLOBAL",1)
Global("FHLJaheiraJealous","GLOBAL",3)
GlobalTimerExpired("FHLJaheiraJealousTime","GLOBAL")
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLJaheiraJealous2
SAY @79
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLSEBPID_flirtJaheira_notalk
SAY @80
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)~
EXIT
END

IF ~~ FHLSEBPID_flirtJaheira_break
SAY @81
IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("FHLSebJustFriends","GLOBAL",0)~
EXIT
END
END

CHAIN JAHEIRAJ FHLJaheiraJealousLDP
@82
== FHLSEBJ
@83
== JAHEIRAJ
@84
== FHLSEBJ
@85
== JAHEIRAJ
@86
END
++ @18 EXTERN FHLSEBJ FHLJaheiraJealous_enjoyLDP_friend
++ @87 + FHLJaheiraJealous_enjoyLDP_afresh
++ @88 + FHLJaheiraJealous_enjoyLDP_enjoy2

CHAIN IF ~Global("FHLJaheiraJealousTimer2","GLOBAL",1)
Global("FHLJaheiraJealous","GLOBAL",3)
GlobalTimerExpired("FHLJaheiraJealousTime","GLOBAL")
Global("FHLMDP","GLOBAL",0)~ THEN JAHEIRAJ FHLJaheiraJealous2_LDP
@89
== FHLSEBJ
@90
== JAHEIRAJ
@91
== FHLSEBJ
@92
== JAHEIRAJ
@93
DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)
SetGlobal("FHLJaheiraJealous","GLOBAL",4)~
EXIT

CHAIN FHLSEBJ FHLSEBPID_MDPflirtJaheira_mistake
@94
=
@95
== JAHEIRAJ
@96
END
++ @97 EXTERN JAHEIRAJ FHLSEBPID_flirtJaheira_notalk
++ @98 EXTERN JAHEIRAJ FHLSEBPID_flirtJaheira_break

APPEND VICONIJ
IF ~Global("FHLViconiaJealous","GLOBAL",1)~ THEN BEGIN FHLViconiaJealous
SAY @99
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @100 + FHLViconiaJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY @3 + FHLViconiaJealous_cheer
++ @101 + FHLViconiaJealous_affection
++ @102 + FHLViconiaJealous_enjoy
++ @103 + FHLViconiaJealous_enjoy
END

IF ~~ FHLViconiaJealous_cheer
SAY @104
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLViconiaJealous_affection
SAY @105
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLViconiaJealous_enjoy
SAY @106
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2) SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLViconiaJealous","GLOBAL",3)~ THEN BEGIN FHLViconiaJealous2
SAY @107
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",4)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT
END
END

APPEND FHLSEBJ
IF ~~ FHLAerieJealous_enjoyLDP_friend
SAY @108
++ @109 EXTERN AERIEJ FHLAerieJealous_enjoyLDP_break
++ @110 EXTERN AERIEJ FHLAerieJealous_enjoyLDP_afresh
END

IF ~~ FHLAnomenJealous_enjoyLDP_friend
SAY @111
++ @112 EXTERN ANOMENJ FHLAnomenJealous_enjoy
++ @113 EXTERN ANOMENJ FHLAnomenJealous_enjoyLDP_afresh
END

IF ~~ FHLJaheiraJealous_enjoyLDP_friend
SAY @114
++ @115 EXTERN JAHEIRAJ FHLJaheiraJealous_enjoyLDP_enjoy2
++ @116 EXTERN JAHEIRAJ FHLJaheiraJealous_enjoyLDP_afresh
END
END
