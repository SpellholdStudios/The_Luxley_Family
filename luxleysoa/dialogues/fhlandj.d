BEGIN FHLANDJ

//If Sebastian is dead

IF ~Global("FHLSebDead","GLOBAL",1)~ THEN BEGIN FHLSebDead
SAY @0
IF ~~ THEN DO ~SetGlobal("FHLSebDead","GLOBAL",2)
LeaveParty()
GivePartyAllEquipment()
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL08")~
EXIT
END

IF ~~ FHLAndTrans_getit
SAY @1
++ @2 + FHLAndTrans_canthelp
++ @3 EXTERN FHLSEBJ FHLAndTrans_enough
END

IF ~~ FHLAndTrans_notenough
SAY @4
++ @5 EXTERN FHLSEBJ FHLAndTrans_getout
++ @6 + FHLAndTrans_leaveit
END

IF ~~ FHLAndTrans_leaveit
SAY @7
IF ~~ EXIT
END

//Andrei Apology

IF WEIGHT #-1 ~Global("FHLAndApology","GLOBAL",1)~ THEN BEGIN FHLAndApology
SAY @8
++ @9 + FHLAndApology_faf
++ @10 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ @11 + FHLAndApology_rather
++ @12 + FHLAndApology_thank
++ @13 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_blame
END

IF ~~ FHLAndApology_faf
SAY @14
++ @10 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ @11 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_rather
++ @12 + FHLAndApology_thank
++ @13 + FHLAndApology_blame
END

IF ~~ FHLAndApology_problem
SAY @15
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~ EXIT
END

IF ~~ FHLAndApology_rather
SAY @16
=
@17
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF ~~ FHLAndApology_thank
SAY @18
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF ~~ FHLAndApology_blame
SAY @19
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF WEIGHT #-1 ~Global("FHLAndShout","GLOBAL",1) Global("FHLAndApology","GLOBAL",0) IsGabber(Player1)
!ActuallyInCombat()
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
!AreaCheck("AR2402")~ THEN BEGIN FHLAndApologyPID
SAY @20
++ @9 + FHLAndApology_faf
++ @10 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ @11 + FHLAndApology_rather
++ @12 + FHLAndApology_thank
++ @13 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_blame
END

//Andrei interjections

INTERJECT_COPY_TRANS AERIE 32 FHLAndAer2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@21
END

INTERJECT_COPY_TRANS ARAN 49 FHLAndAran
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@22
END

INTERJECT_COPY_TRANS ARAN 77 FHLAndAran2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@23
END

INTERJECT_COPY_TRANS IMOEN2J 26 FHLAndArIm
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@24
END

INTERJECT_COPY_TRANS ARNBOY01 0 FHLAndArnboy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@25
END

INTERJECT_COPY_TRANS BARONP 42 FHLAndPloyer
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@26
END

INTERJECT_COPY_TRANS BEELOO 2 FHLAndBeeloo
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@27
END

APPEND BFISHW1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("fhlbfishw","GLOBAL",0)~ THEN BEGIN FHLAndFishw
SAY @28
IF ~~ THEN EXTERN FHLANDJ FHLAFishW
END
END

APPEND FHLANDJ
IF ~~ FHLAFishW
SAY @29
IF ~~ THEN DO ~SetGlobal("fhlbfishw","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS BOOTER 3 FHLABooter
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@30
END

INTERJECT_COPY_TRANS BORINALL 13 FHLABorinall
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@31
END

APPEND BPROST1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("fhlaprost1","GLOBAL",0)~ THEN BEGIN FHLAprost1
SAY @32
IF ~~ THEN EXTERN FHLANDJ FHLAprost1
END

IF ~~ FHLAprost12
SAY @33
IF ~~ THEN DO ~SetGlobal("fhlaprost1","GLOBAL",1)~
EXIT
END
END

APPEND FHLANDJ
IF ~~ FHLAprost1
SAY @34
IF ~~ THEN EXTERN BPROST1 FHLAprost12
END
END

APPEND BRAT1
IF ~See("FHLAND")
InParty("FHLAND")
InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLABrat1","GLOBAL",0)~ THEN BEGIN FHLABrat1
SAY @35
IF ~~ THEN EXTERN FHLANDJ FHLABrat1
END
END

APPEND FHLANDJ
IF ~~ FHLABrat1
SAY @36
IF ~~ THEN DO ~SetGlobal("FHLABrat1","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS ANOMENJ 150 FHLAAno2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@37
END

INTERJECT_COPY_TRANS2 ANOMENJ 176 FHLAByl
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@38
END

INTERJECT_COPY_TRANS C6BODHI 1 FHLABod1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@39
END

INTERJECT_COPY_TRANS CEBEGGAR 6 FHLACeBegg
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@40
END

INTERJECT_COPY_TRANS CERNDJ 38 FHLCeLife
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@41
END

INTERJECT_COPY_TRANS2 DELCIA 16 FHLADelcia
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@42
END

APPEND DFTOWN2
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHADFTown2","GLOBAL",0)~ THEN BEGIN FHLADftown
SAY @43
IF ~~ THEN EXTERN FHLANDJ FHLDftown
END
END

APPEND FHLANDJ
IF ~~ FHLDftown
SAY @44
IF ~~ THEN DO ~SetGlobal("FHADFTown2","GLOBAL",1)~
EXIT
END
END

APPEND DHALF1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
PartyGoldGT(9)
Global("FHLDHalf1","GLOBAL",0)~ THEN BEGIN FHLDHalf1
SAY @45
IF ~~ THEN EXTERN FHLANDJ FHLDHalf
END
END

APPEND FHLANDJ
IF ~~ FHLDHalf
SAY @46
IF ~~ THEN DO ~TakePartyGold(10)
SetGlobal("FHLDHalf1","GLOBAL",1)~
EXIT
END
END

APPEND DRUFF1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLADruff","GLOBAL",0)~ THEN BEGIN FHLDruff
SAY @47
IF ~~ THEN EXTERN FHLANDJ FHLADruff
END
END

APPEND FHLANDJ
IF ~~ FHLADruff
SAY @48
IF ~~ THEN DO ~SetGlobal("FHLADruff","GLOBAL",1)~
EXIT
END
END

APPEND DSAILOR1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLADSailor1","GLOBAL",0)~ THEN BEGIN FHLDSailor
SAY @49
IF ~~ THEN EXTERN FHLANDJ FHLADSailor
END
END

APPEND FHLANDJ
IF ~~ FHLADSailor
SAY @50
IF ~~ THEN DO ~SetGlobal("FHLADSailor","GLOBAL",1)~
EXIT
END
END

APPEND FFCUST08
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLFFCust08","GLOBAL",0)~ THEN BEGIN FHLFFCust08
SAY @51
IF ~~ THEN EXTERN FHLANDJ FHLAFFCust08
END
END

APPEND FHLANDJ
IF ~~ FHLAFFCust08
SAY @52
IF ~~ THEN DO ~SetGlobal("FHLFFCust08","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 FHLAFir1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@53
END

INTERJECT_COPY_TRANS2 FIRKRA02 21 FHLAFir2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@54
END

APPEND GCHILD01
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLGChild01","GLOBAL",0)~ THEN BEGIN FHLGChild01
SAY @55
IF ~~ THEN EXTERN FHLANDJ FHLAGChild01
END
END

APPEND FHLANDJ
IF ~~ FHLAGChild01
SAY @56
IF ~~ THEN DO ~SetGlobal("FHLGChild01","GLOBAL",1)~
EXIT
END
END

APPEND GFTOWN01
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLGFTown01","GLOBAL",0)~ THEN BEGIN FHLGFTown01
SAY @57
IF ~~ THEN EXTERN FHLANDJ FHLAGFTown01
END
END

APPEND FHLANDJ
IF ~~ FHLAGFTown01
SAY @58
IF ~~ THEN DO ~SetGlobal("FHLGFTown01","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS HELLJON 7 FHLAIren1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@59
END

INTERJECT_COPY_TRANS2 MARIA 5 FHLAMaria
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@60
END

APPEND MURTLEN
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLMurtlen","GLOBAL",0)~ THEN BEGIN FHLMurtlen
SAY @61
IF ~~ THEN EXTERN FHLANDJ FHLAMurtlen
END
END

APPEND FHLANDJ
IF ~~ FHLAMurtlen
SAY @62
IF ~~ THEN DO ~SetGlobal("FHLMurtlen","GLOBAL",1)~
EXIT
END
END

APPEND PIRCOR01
IF ~!NumberOfTimesTalkedTo(0)
OR(2)
Name("FHLAND",LastTalkedToBy)
Name("FHLSEB",LastTalkedToBy)~ THEN BEGIN FHLPirCor01
SAY @63
++ @64 EXTERN PIRCOR01 5
++ @65 EXTERN PIRCOR01 7
++ @66 EXTERN PIRCOR01 13
END
END

APPEND MADAM
IF WEIGHT #-1
~OR(2)
Name("FHLSEB",LastTalkedToBy)
Name("FHLAND",LastTalkedToBy)~ THEN BEGIN FHLMadam
SAY @67
++ @68 EXTERN MADAM 2
++ @69 EXTERN MADAM 1
END
END

INTERJECT_COPY_TRANS PLAYER1 3 FHLADizzy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@70
END

INTERJECT_COPY_TRANS PLAYER1 5 FHLASlay1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@71
END

INTERJECT_COPY_TRANS PLAYER1 15 FHLAAsylum
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@72
END

INTERJECT_COPY_TRANS PLAYER1 16 FHLAIrenDead
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@73
END

INTERJECT_COPY_TRANS PLAYER1 25 FHLAHell
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@74
END

INTERJECT_COPY_TRANS SAHKNG01 30 FHLASahkng
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@75
END

INTERJECT_COPY_TRANS SAHPR4 4 FHLASahpr4
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@76
END

INTERJECT_COPY_TRANS SEVBAR01 19 FHLASevBar
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@77
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("FHLAND",LastTalkedToBy)~
THEN EXTERN TRGYP02 FHLAGypsy
END

APPEND TRGYP02
IF ~~ FHLAGypsy
SAY @78
IF ~~ THEN EXTERN FHLANDJ FHLAGypsy2
END
END

APPEND FHLANDJ
IF ~~ FHLAGypsy2
SAY @79
IF ~~ EXIT
END
END

INTERJECT_COPY_TRANS IMOEN2J 35 FHLUDSilver
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@80
END

APPEND URCHIN1
IF ~InParty("FHLAND")
See("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLUrch1","GLOBAL",0)~ THEN BEGIN FHLUrch1
SAY @81
IF ~~ THEN EXTERN FHLANDJ FHLAUrch1
END
END

APPEND FHLANDJ
IF ~~ FHLAUrch1
SAY @82
IF ~~ THEN DO ~SetGlobal("FHLUrch1","GLOBAL",1)~ EXIT
END
END

INTERJECT_COPY_TRANS VALYGAR 43 FHLAValy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@83
END

INTERJECT_COPY_TRANS VICG1 2 FHLVicG1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@84
END

INTERJECT_COPY_TRANS VICG1 4 FHLVicG12
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@85
END

INTERJECT_COPY_TRANS VICONI 2 FHLAVic
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@86
END


//Tree of life dialogue
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("FHLAND")
!Dead("FHLAND")
Global("FHLATreeoflife","GLOBAL",0)~ THEN DO
~SetGlobal("FHLATreeoflife","GLOBAL",1)~ GOTO FHLATreeofLife
END

APPEND PLAYER1
IF ~~ FHLATreeofLife
SAY @87
++ @88 EXTERN FHLANDJ FHLATree_nofight
++ @89 EXTERN FHLANDJ FHLATree_danger
++ @90 EXTERN FHLANDJ FHLATree_ready
END
END

APPEND FHLANDJ
IF ~~ FHLATree_nofight
SAY @91
COPY_TRANS PLAYER1 33
END

IF ~~ FHLATree_danger
SAY @92
COPY_TRANS PLAYER1 33
END

IF ~~ FHLATree_ready
SAY @93
COPY_TRANS PLAYER1 33
END
END

APPEND POSTUL3
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLPostul3","GLOBAL",0)~ THEN BEGIN FHLPostul3
SAY @94
IF ~~ THEN EXTERN FHLANDJ FHLAPostul3
END
END

APPEND FHLANDJ
IF ~~ FHLAPostul3
SAY @95
IF ~~ THEN DO ~SetGlobal("FHLPostul3","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 RENFELD 6 FHLARen
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@96
END

INTERJECT_COPY_TRANS RESUNA 9 FHLASuna
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@97
END

INTERJECT_COPY_TRANS2 RIFTG03 26 FHLARiftAv
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
@98
END

//Transformation chains

CHAIN FHLANDJ FHLAndTrans_canthelp
@99
== FHLSEBJ
@100
== FHLANDJ
@101
== FHLSEBJ
@102
EXIT

CHAIN FHLANDJ FHLAndTrans_trust
@103
== FHLSEBJ
@104
END
++ @105 EXTERN FHLSEBJ FHLAndTrans_enough
++ @106 + FHLAndTrans_notenough

CHAIN FHLANDJ FHLST3_brooding
@107
== BFHLSEB
@108
=
@109
DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT


//Lyel #2

CHAIN FHLANDJ FHLLyel2_upleave
@110
== FHLLYEL
@111
== FHLSEBJ
@112
== FHLLYEL
@113
== FHLSEBJ
@114
== FHLANDJ
@115
== FHLLYEL
@116
== FHLSEBJ
@117
=
@118
END
++ @115 EXTERN FHLSEBJ FHLLyel2_sebastian
++ @119 EXTERN FHLLYEL FHLLyel2_silent
++ @120 EXTERN FHLSEBJ FHLLyel2_sebastian
++ @121 EXTERN FHLLYEL FHLLyel2_alone

//Post-Lyel

CHAIN FHLANDJ FHLPL_doing
@122
== FHLSEBJ
@123
END
++ @124 EXTERN FHLSEBJ FHLPL_do
++ @125 + FHLPL_idea
++ @119 EXTERN FHLSEBJ FHLPL_silent
++ @126 EXTERN FHLSEBJ FHLPL_surprise

CHAIN FHLANDJ FHLPL_idea
@127
== FHLSEBJ
@128
== FHLANDJ
@129
== FHLSEBJ
@130
EXIT

CHAIN FHLANDJ FHLPL_sorry
@131
== FHLSEBJ
@132
EXIT

//Genevieve talks

CHAIN FHLANDJ FHLGen_explain
@133
== FHLSEBJ
@134
== FHLANDJ
@135
== FHLSEBJ
@136
== FHLGEN
@137
== FHLSEBJ
@138
END
++ @139 EXTERN FHLGEN FHLGen_gene
++ @140 EXTERN FHLGEN FHLGen_use
++ @141 EXTERN FHLSEBJ FHLGen_informed
++ @142 EXTERN FHLSEBJ FHLGen_agree

CHAIN FHLANDJ FHLGen_money
@143
== FHLGEN
@144
== FHLSEBJ
@145
== FHLGEN
@146
DO ~SetGlobal("FHLPayGen","GLOBAL",1)
TakePartyGold(800)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)~
EXIT

//ESTM

CHAIN FHLANDJ FHLESTM_breathe
@147
== FHLSEBJ
@148
== FHLANDJ
@149
== FHLSEBJ
@150
== FHLANDJ
@151
== FHLSEBJ
@152
END
++ @153 EXTERN FHLSEBJ FHLESTM_impatient
++ @154 EXTERN FHLSEBJ FHLESTM_let
++ @155 EXTERN FHLSEBJ FHLESTM_wait

CHAIN FHLANDJ FHLESTM_worst
@156
== FHLSEBJ
@157
== FHLAL
@158
== FHLSEBJ
@159
== FHLLYEL
@160
== FHLANDJ
@161
== FHLSEBJ
@162
== FHLANDJ
@163
== FHLXAV
@164
END
++ @165 EXTERN FHLSEBJ FHLESTM_worstchange
++ @166 EXTERN FHLSEBJ FHLESTM_dead

CHAIN FHLANDJ FHLESTM_andrei
@167
== FHLSEBJ
@168
=
@169
== FHLANDJ
@170
END
++ @171 EXTERN FHLSEBJ FHLESTM_live
++ @172 + FHLESTM_worst

//LDP

CHAIN FHLANDJ FHLLDP_done
@173
== FHLSEBJ
@174
== FHLANDJ
@175
== FHLSEBJ
@176
END
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY @177 EXTERN FHLSEBJ FHLLDP_wis
++ @178 + FHLLDP_hear
++ @179 + FHLLDP_fights
++ @180 + FHLLDP_fights

CHAIN FHLANDJ FHLLDP_fights
@181
=
@182
== FHLSEBJ
@183
=
@184
== FHLANDJ
@185
END
++ @186 EXTERN FHLSEBJ FHLLDP_letsgo
++ @187 + FHLLDP_rest

CHAIN FHLANDJ FHLLDP_hear
@188
== FHLSEBJ
@183
=
@184
== FHLANDJ
@185
END
++ @186 EXTERN FHLSEBJ FHLLDP_letsgo
++ @187 + FHLLDP_rest

CHAIN FHLANDJ FHLLDP_rest
@189
== FHLSEBJ
@190
DO ~SetGlobal("FHLLDP","GLOBAL",2)
RealSetGlobalTimer("FHLLuxTalkTime","GLOBAL",900)~
EXIT


//Seb/And talks//
CHAIN IF ~Global("FHLAndSebFirstTalk","GLOBAL",1)~ THEN FHLANDJ FHLAndSebFirstTalk
@191
DO ~SetGlobal("FHLAndSebFirstTalk","GLOBAL",2)~
== FHLSEBJ
@192
== FHLANDJ
@193
== FHLSEBJ
@194
== FHLANDJ
@195
== FHLSEBJ
@196
== FHLANDJ
@197
== FHLSEBJ
@198
== FHLANDJ
@199
== FHLSEBJ
@200
== FHLANDJ
@201
=
@202
== FHLSEBJ
@203
== FHLANDJ
@204
=
@205
END
++ @206 EXTERN FHLANDJ FHLAndTrans_canthelp
++ @207 EXTERN FHLANDJ FHLAndTrans_getit
++ @208 EXTERN FHLANDJ FHLAndTrans_trust
++ @209 EXTERN FHLSEBJ FHLAndTrans_getout
IF ~GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @210 EXTERN FHLANDJ FHLAndTrans_canthelp
IF ~GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @211 EXTERN FHLSEBJ FHLAndTrans_getout

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLAndSebTalk","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0)~ THEN FHLANDJ FHLAndSeb1
@212
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",2) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
@213
== FHLANDJ
@214
== FHLSEBJ
@215
== FHLANDJ
@216
== FHLSEBJ
@217
== FHLANDJ
@218
== FHLSEBJ
@219
EXIT

//banter 3
CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",3)~ THEN FHLANDJ FHLAndSeb3
@220
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",4) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
@221
== FHLANDJ
@222
== FHLSEBJ
@223
== FHLANDJ
@224
== FHLSEBJ
@225
== FHLANDJ
@226
== FHLSEBJ
@227
== FHLANDJ
@228
== FHLSEBJ
@229
== FHLANDJ
@230
== FHLSEBJ
@231
== FHLANDJ
@232
== FHLSEBJ
@233
== FHLANDJ
@234
== FHLSEBJ
@235
== FHLANDJ
@236
== FHLSEBJ
@237
== FHLANDJ
@238
== FHLSEBJ
@239
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",4)~ THEN FHLANDJ FHLAndSeb4
@240
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",5) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
@241
== FHLANDJ
@115
== FHLSEBJ
@242
== FHLANDJ
@243
== FHLSEBJ
@244
== FHLANDJ
@245
== FHLSEBJ
@246
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",6)~ THEN FHLANDJ FHLAndSeb7
@247
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",7) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
@248
== FHLANDJ
@249
== FHLSEBJ
@250
== FHLANDJ
@251
== FHLSEBJ
@252
== FHLANDJ
@253
== FHLSEBJ
@254
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",8)~ THEN FHLANDJ FHLAndSeb9
@255
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",9) SetGlobal("FHLAndSebTalkStart","GLOBAL",0) SetGlobalTimer("FHLKavArrive","GLOBAL",ONE_DAY)~
== FHLSEBJ
@256
== FHLANDJ
@257
=
@258
== FHLSEBJ
@259
== FHLANDJ
@260
== FHLSEBJ
@261
== FHLANDJ
@262
== FHLSEBJ
@263
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",9)~ THEN FHLANDJ FHLAndSeb10
@264
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",10) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
@265
== FHLANDJ
@266
== FHLSEBJ
@267
== FHLANDJ
@268
== FHLSEBJ
@269
== FHLANDJ
@270
== FHLSEBJ
@271
== FHLANDJ
@272
== FHLSEBJ
@273
== FHLANDJ
@274
EXIT

CHAIN IF ~Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",10)~ THEN FHLANDJ FHLAndSeb12
@275
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",11)~
== FHLSEBJ
@276
== FHLANDJ
@277
== FHLSEBJ
@278
=
@279
== FHLANDJ
@280
== FHLSEBJ
@281
== FHLANDJ
@282
== FHLSEBJ
@283
== FHLANDJ
@284
=
@285
== FHLSEBJ
@286
== FHLANDJ
@287
DO ~GiveItemCreate("FHLBK2","FHLSEB",0,0,0)~
== FHLSEBJ
@288
== FHLANDJ
@289
== FHLSEBJ
@290
== FHLANDJ
@291
== FHLSEBJ
@292
EXIT

//Player-initiated dialogue

//Transformed dialogue

APPEND FHLANDJ

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("FHLBearChange","LOCALS",1)
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID_bear
SAY @293
+ ~RandomNum(4,1)~ + @294 + FHLANDPID_bearok1
+ ~RandomNum(4,2)~ + @294 + FHLANDPID_bearok2
+ ~RandomNum(4,3)~ + @294 + FHLANDPID_bearok3
+ ~RandomNum(4,4)~ + @294 + FHLANDPID_bearok4
+ ~RandomNum(4,1)~ + @295 + FHLANDPID_bearpoke1
+ ~RandomNum(4,2)~ + @295 + FHLANDPID_bearpoke2
+ ~RandomNum(4,3)~ + @295 + FHLANDPID_bearpoke3
+ ~RandomNum(4,4)~ + @295 + FHLANDPID_bearpoke4
++ @296 + FHLANDPID_bearspeak
++ @297 + FHLANDPID_bearsuits
++ @298 EXIT
END

IF ~~ FHLANDPID_bearok1
SAY @299
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok2
SAY @300
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok3
SAY @301
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok4
SAY @302
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke1
SAY @303
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke2
SAY @304
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke3
SAY @305
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke4
SAY @306
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearspeak
SAY @307
=
@308
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearsuits
SAY @309
IF ~~ EXIT
END

//Ust Natha PID

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
OR(11)
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
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID_ustnath
SAY @310
IF ~~ EXIT
END

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
OR(9)
AreaCheck("FH4800")
AreaCheck("FHLUX1")
AreaCheck("FHLUX2")
AreaCheck("FHLUX3")
AreaCheck("FHLUX4")
AreaCheck("FHLUX5")
AreaCheck("FHLUX6")
AreaCheck("FHLMH1")
AreaCheck("FHLMH2")
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)
!Global("FHLTellCurse","GLOBAL",3)
!Global("FHLLDP","GLOBAL",1)
!Global("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLANDPID_estate
SAY @311
IF ~~ THEN + FHLANDPID
END

IF
~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
OR(9)
AreaCheck("FH4800")
AreaCheck("FHLUX1")
AreaCheck("FHLUX2")
AreaCheck("FHLUX3")
AreaCheck("FHLUX4")
AreaCheck("FHLUX5")
AreaCheck("FHLUX6")
AreaCheck("FHLMH1")
AreaCheck("FHLMH2")
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)
OR(2)
Global("FHLTellCurse","GLOBAL",3)
Global("FHLLDP","GLOBAL",1)~ THEN BEGIN FHLANDPID_estm
SAY @312
IF ~~ EXIT
END

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
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
!AreaCheck("FH4800")
!AreaCheck("FHLUX1")
!AreaCheck("FHLUX2")
!AreaCheck("FHLUX3")
!AreaCheck("FHLUX4")
!AreaCheck("FHLUX5")
!AreaCheck("FHLUX6")
!AreaCheck("FHLMH1")
!AreaCheck("FHLMH2")
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID
SAY @313
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLLDP","GLOBAL",0)~ THEN REPLY @314 + FHLANDPID_ask
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) GlobalGT("FHLLDP","GLOBAL",0)~ THEN REPLY @314 + FHLANDPID_ask2
IF ~GlobalLT("FHLAndLike","GLOBAL",-5)~ THEN REPLY @314 + FHLANDPID_askdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY @315 + FHLANDPID_hug1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY @315 + FHLANDPID_hug2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY @315 + FHLANDPID_hug3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY @315 + FHLANDPID_hug4
IF ~GlobalLT("FHLAndLike","GLOBAL",-12)~ THEN REPLY @315 + FHLANDPID_hugdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,1)~ THEN REPLY @316 + FHLANDPID_how1
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,2)~ THEN REPLY @316 + FHLANDPID_how2
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,3)~ THEN REPLY @316 + FHLANDPID_how3
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,4)~ THEN REPLY @316 + FHLANDPID_how4
IF ~GlobalLT("FHLAndLike","GLOBAL",-11)~ THEN REPLY @317 + FHLANDPID_howdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY @318 + FHLANDPID_study1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY @318 + FHLANDPID_study2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY @318 + FHLANDPID_study3
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY @318 + FHLANDPID_study4
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY @318 + FHLANDPID_studydislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",0)~ THEN REPLY @319 DO ~SetGlobal("FHLAndBackrub","GLOBAL",1)~ + FHLANDPID_giverub4
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,1)~ THEN REPLY @319 + FHLANDPID_giverub1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,2)~ THEN REPLY @319 + FHLANDPID_giverub2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,3)~ THEN REPLY @319 + FHLANDPID_giverub3
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",0)~ THEN REPLY @319 + FHLANDPID_giverubdislike
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",1)~ THEN REPLY @319 + FHLANDPID_giverubdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",0)~ THEN REPLY @320 DO ~SetGlobal("FHLAndGiveRub","GLOBAL",1)~ + FHLANDPID_getrub1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,1)~ THEN REPLY @320 + FHLANDPID_getrub2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,2)~ THEN REPLY @320 + FHLANDPID_getrub3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,3)~ THEN REPLY @320 + FHLANDPID_getrub4
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1)~ THEN REPLY @320 + FHLANDPID_getrubdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,1)~ THEN REPLY @321 + FHLANDPID_ruffle1
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,2)~ THEN REPLY @321 + FHLANDPID_ruffle2
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,3)~ THEN REPLY @321 + FHLANDPID_ruffle3
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,4)~ THEN REPLY @321 + FHLANDPID_ruffle4
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,4)~ THEN REPLY @321 + FHLANDPID_ruffledislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLRow","GLOBAL",1) RandomNum(2,1)~ THEN REPLY @322 + FHLANDPID_patch1
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLRow","GLOBAL",1) RandomNum(2,2)~ THEN REPLY @322 + FHLANDPID_patch2
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) Global("FHLRow","GLOBAL",1)~ THEN REPLY @322 +FHLANDPID_patchdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @323 + FHLANDPID_LDPask
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY @323 + FHLANDPID_askdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY @324 + FHLANDPID_smile1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY @324 + FHLANDPID_smile2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY @324 + FHLANDPID_smile3
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY @324 + FHLANDPID_smile4
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY @324 + FHLANDPID_smiledislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY @325 + FHLANDPID_think1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY @325 + FHLANDPID_think2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY @325 + FHLANDPID_think3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY @325 + FHLANDPID_think4
IF ~GlobalLT("FHLAndLike","GLOBAL",-7)~ THEN REPLY @325 + FHLANDPID_thinkdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLAndJustFriends","GLOBAL",0)~ THEN REPLY @326 + FHLANDPID_notflirt
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,1)~ THEN REPLY @327 + FHLANDPID_glad1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,2)~ THEN REPLY @327 + FHLANDPID_glad2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,3)~ THEN REPLY @327 + FHLANDPID_glad3
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY @327 + FHLANDPID_gladdislike
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY @328 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud1
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,2)~ THEN REPLY @328 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud2
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,3)~ THEN REPLY @328 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud3
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalLT("FHLAndLike","GLOBAL",-5)~ THEN REPLY @328 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud4
++ @329 + FHLANDPID_notalk
END

IF ~~ FHLANDPID_notflirt
SAY @330
IF ~RandomNum(3,1)~ THEN REPLY @331 + FHLANDPID_go1
IF ~RandomNum(3,2)~ THEN REPLY @331 + FHLANDPID_go2
IF ~RandomNum(3,3)~ THEN REPLY @331 + FHLANDPID_go3
IF ~RandomNum(3,1)~ THEN REPLY @332 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtwolf1
IF ~RandomNum(3,2)~ THEN REPLY @332 + FHLANDPID_notflirtwolf2
IF ~RandomNum(3,3)~ THEN REPLY @332 + FHLANDPID_notflirtwolf3
IF ~RandomNum(3,1)~ THEN REPLY @333 + FHLANDPID_notflirtaround3
IF ~RandomNum(3,2)~ THEN REPLY @333 + FHLANDPID_notflirtarm3
IF ~RandomNum(3,3)~ THEN REPLY @333 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtarm4
IF ~RandomNum(3,1)~ THEN REPLY @334 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtaround2
IF ~RandomNum(3,2)~ THEN REPLY @334 + FHLANDPID_notflirtaround3
IF ~RandomNum(3,3)~ THEN REPLY @334 + FHLANDPID_notflirtaround4
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,1)~ THEN REPLY @335 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtstroke1
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,2)~ THEN REPLY @335 + FHLANDPID_notflirtstroke2
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,3)~ THEN REPLY @335 + FHLANDPID_notflirtstroke3
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,4)~ THEN REPLY @335 + FHLANDPID_notflirtstroke4
IF ~RandomNum(4,1)~ THEN REPLY @336 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtlookgood1
IF ~RandomNum(4,2)~ THEN REPLY @336 + FHLANDPID_notflirtlookgood2
IF ~RandomNum(4,3)~ THEN REPLY @336 + FHLANDPID_notflirtpickupaccept
IF ~RandomNum(4,1)~ THEN REPLY @337 + FHLANDPID_notflirteye1
IF ~RandomNum(4,2)~ THEN REPLY @337 + FHLANDPID_notflirteye2
IF ~RandomNum(4,3)~ THEN REPLY @337 + FHLANDPID_notflirteye3
IF ~RandomNum(4,4)~ THEN REPLY @337 + FHLANDPID_notflirteye4
IF ~RandomNum(12,1)~ THEN REPLY @338 + FHLANDPID_notflirtpickup1a
IF ~RandomNum(12,2)~ THEN REPLY @339 + FHLANDPID_notflirtpickup2a
IF ~RandomNum(12,3)~ THEN REPLY @340 + FHLANDPID_notflirtpickup3a
IF ~RandomNum(12,4)~ THEN REPLY @341 + FHLANDPID_notflirtpickup4a
IF ~RandomNum(12,5)~ THEN REPLY @338 + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,6)~ THEN REPLY @339 + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,7)~ THEN REPLY @342 + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,8)~ THEN REPLY @343 + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,9)~ THEN REPLY @338 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,10)~ THEN REPLY @339 + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,11)~ THEN REPLY @340 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,12)~ THEN REPLY @341 + FHLANDPID_notflirtpickupaccept
IF ~GlobalLT("FHLAndLike","GLOBAL",1)~ THEN REPLY @344 + FHLANDPID_notflirtjustfriendsdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",0)~ THEN REPLY @344 + FHLANDPID_notflirtjustfriendslike
++ @345 + FHLANDPID_notflirtnothing
END

IF ~~ FHLANDPID_go1
SAY @346
IF ~~ EXIT
END

IF ~~ FHLANDPID_go2
SAY @347
IF ~~ EXIT
END

IF ~~ FHLANDPID_go3
SAY @348
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtjustfriendsdislike
SAY @349
IF ~~ THEN DO ~SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_notflirtjustfriendslike
SAY @350
=
@351
IF ~~ THEN DO ~SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_notflirtnothing
SAY @352
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye1
SAY @353
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye2
SAY @354
=
@355
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye3
SAY @356
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye4
SAY @357
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtlookgood2
SAY @358
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtlookgood1
SAY @359
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke3
SAY @360
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke1
SAY @361
=
@362
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke4
SAY @363
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke2
SAY @364
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround2
SAY @365
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround3
SAY @366
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround4
SAY @367
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtarm3
SAY @368
=
@369
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtarm4
SAY @370
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf2
SAY @371
=
@372
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf1
SAY @373
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf3
SAY @374
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupaccept
SAY @375
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupgenlaugh
SAY @376
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup1a
SAY @377
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup2a
SAY @378
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup3a
SAY @379
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup4a
SAY @380
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupgenreject
SAY @381
IF ~~ EXIT
END

IF ~~ FHLANDPID_gladdislike
SAY @382
IF ~~ EXIT
END

IF ~~ FHLANDPID_thinkdislike
SAY @383
IF ~~ EXIT
END

IF ~~ FHLANDPID_smiledislike
SAY @384
IF ~~ EXIT
END

IF ~~ FHLANDPID_patchdislike
SAY @385
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffledislike
SAY @386
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverubdislike
SAY @387
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrubdislike
SAY @388
IF ~~ EXIT
END

IF ~~ FHLANDPID_studydislike
SAY @389
IF ~~ EXIT
END

IF ~~ FHLANDPID_howdislike
SAY @390
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdislike
SAY @391
++ @392 + FHLANDPID_hugdislikehug
++ @393 + FHLANDPID_hugdislikemind
++ @394 + FHLANDPID_hugdisliketime
END

IF ~~ FHLANDPID_hugdislikehug
SAY @395
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdislikemind
SAY @396
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdisliketime
SAY @397
IF ~~ EXIT
END

IF ~~ FHLANDPID_askdislike
SAY @398
IF ~~ EXIT
END

IF ~~ FHLANDPID_think1
SAY @399
IF ~~ EXIT
END

IF ~~ FHLANDPID_think2
SAY @400
IF ~~ EXIT
END

IF ~~ FHLANDPID_think3
SAY @401
++ @402 + FHLANDPID_think3meat
++ @403 + FHLANDPID_think3eat
END

IF ~~ FHLANDPID_think3meat
SAY @404
IF ~~ EXIT
END

IF ~~ FHLANDPID_think3eat
SAY @405
IF ~~ EXIT
END

IF ~~ FHLANDPID_think4
SAY @406
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad1
SAY @407
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad2
SAY @408
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad3
SAY @409
=
@410
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile1
SAY @411
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile2
SAY @412
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile3
SAY @413
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile4
SAY @414
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPask
SAY @415
IF ~RandomNum(2,1)~ THEN REPLY @416 + FHLANDPID_LDPasksorry1
IF ~RandomNum(2,2)~ THEN REPLY @416 + FHLANDPID_LDPasksorry2
IF ~RandomNum(2,1)~ THEN REPLY @417 + FHLANDPID_LDPaskunhappy1
IF ~RandomNum(2,2)~ THEN REPLY @417 + FHLANDPID_LDPaskunhappy2
IF ~RandomNum(2,1)~ THEN REPLY @418 + FHLANDPID_LDPaskfeel1
IF ~RandomNum(2,2)~ THEN REPLY @418 + FHLANDPID_LDPaskfeel2
IF ~RandomNum(2,1)~ THEN REPLY @419 + FHLANDPID_LDPaskSeb1
IF ~RandomNum(2,2)~ THEN REPLY @419 + FHLANDPID_LDPaskSeb2
END

IF ~~ FHLANDPID_LDPasksorry1
SAY @420
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPasksorry2
SAY @421
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskunhappy1
SAY @422
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskunhappy2
SAY @423
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskfeel1
SAY @424
=
@425
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskfeel2
SAY @426
=
@427
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskSeb1
SAY @428
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskSeb2
SAY @429
IF ~~ EXIT
END

IF ~~ FHLANDPID_patch1
SAY @430
IF ~~ EXIT
END

IF ~~ FHLANDPID_patch2
SAY @431
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle1
SAY @432
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle2
SAY @360
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle3
SAY @433
=
@434
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4
SAY @435
++ @436 + FHLANDPID_ruffle4yep
++ @437 + FHLANDPID_ruffle4urge
++ @438 + FHLANDPID_ruffle4messy
END

IF ~~ FHLANDPID_ruffle4yep
SAY @439
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4urge
SAY @440
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4messy
SAY @441
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub3
SAY @442
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub4
SAY @443
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1
SAY @444
++ @445 + FHLANDPID_getrub1luck
++ @446 + FHLANDPID_getrub1again
++ @447 +FHLANDPID_getrub1ahh
END

IF ~~ FHLANDPID_getrub1luck
SAY @448
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1again
SAY @449
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1ahh
SAY @450
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub2
SAY @451
=
@452
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub1
SAY @453
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub2
SAY @454
++ @455 + FHLANDPID_giverub2help
END

IF ~~ FHLANDPID_giverub2help
SAY @456
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub3
SAY @457
IF ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ THEN REPLY @458 + FHLANDPID_giverub3heal
++ @459 + FHLANDPID_giverub3go
END

IF ~~ FHLANDPID_giverub3heal
SAY @460
++ @461 + FHLANDPID_giverub3go
END

IF ~~ FHLANDPID_giverub3go
SAY @462
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4
SAY @463
=
@464
++ @465 + FHLANDPID_giverub4favour
++ @466 + FHLANDPID_giverub4help
++ @467 + FHLANDPID_giverub4hard
END

IF ~~ FHLANDPID_giverub4favour
SAY @468
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4help
SAY @469
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4hard
SAY @470
IF ~~ EXIT
END

IF ~~ FHLANDPID_ask
SAY @471
IF ~RandomNum(3,1) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY @472 + FHLANDPID_parents1
IF ~RandomNum(3,2) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY @472 + FHLANDPID_parents2
IF ~RandomNum(3,3) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY @472 + FHLANDPID_parents3
IF ~Global("FHLMetParents","GLOBAL",1)~ THEN REPLY @472 + FHLANDPID_parents4
IF ~RandomNum(3,1)~ THEN REPLY @473 + FHLANDPID_monk1
IF ~RandomNum(3,2)~ THEN REPLY @473 + FHLANDPID_monk2
IF ~RandomNum(3,3)~ THEN REPLY @473 + FHLANDPID_monk3
IF ~Global("FHLAndChildren","GLOBAL",0)~ THEN REPLY @474 + FHLANDPID_children1
IF ~Global("FHLAndChildren","GLOBAL",1) RandomNum(2,1)~ THEN REPLY @474 + FHLANDPID_children2
IF ~Global("FHLAndChildren","GLOBAL",1) RandomNum(2,2)~ THEN REPLY @474 + FHLANDPID_children3
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @475 + FHLANDPID_xav
END

IF ~~ FHLANDPID_ask2
SAY @476
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug1
SAY @477
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug2
SAY @478
IF ~~ EXIT END

IF ~~ FHLANDPID_hug3
SAY @479
=
@480
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug4
SAY @481
=
@482
IF ~~ EXIT
END

IF ~~ FHLANDPID_how1
SAY @483
IF ~~ EXIT
END

IF ~~ FHLANDPID_how2
SAY @484
IF ~~ EXIT
END

IF ~~ FHLANDPID_how3
SAY @485
IF ~~ EXIT
END

IF ~~ FHLANDPID_how4
SAY @486
=
@487
IF ~~ EXIT
END

IF ~~ FHLANDPID_study1
SAY @488
=
@489
=
@490
IF ~~ EXIT
END

IF ~~ FHLANDPID_study2
SAY @491
=
@492
IF ~~ EXIT
END

IF ~~ FHLANDPID_study3
SAY @493
IF ~~ EXIT
END

IF ~~ FHLANDPID_study4
SAY @494
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents1
SAY @495
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents2
SAY @496
=
@497
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents3
SAY @498
++ @499 + FHLANDPID_parentsXavier
++ @500 + FHLANDPID_shame
END

IF ~~ FHLANDPID_parents4
SAY @501
IF ~~ EXIT
END

IF ~~ FHLANDPID_monk1
SAY @502
IF ~~ EXIT
END

IF ~~ FHLANDPID_monk2
SAY @503
++ @504 + FHLANDPID_monkhelp
++ @505 + FHLANDPID_monksay
END

IF ~~ FHLANDPID_monk3
SAY @506
IF ~~ EXIT
END

IF ~~ FHLANDPID_children1
SAY @507
=
@508
IF ~~ EXIT
END

IF ~~ FHLANDPID_children2
SAY @509
=
@510
IF ~~ EXIT
END

IF ~~ FHLANDPID_children3
SAY @511
=
@512
IF ~~ EXIT
END

IF ~~ FHLANDPID_xav
SAY @513
IF ~~ EXIT
END

IF ~~ FHLANDPID_parentsXavier
SAY @514
IF ~~ EXIT
END

IF ~~ FHLANDPID_shame
SAY @515
IF ~~ EXIT
END

IF ~~ FHLANDPID_monkhelp
SAY @516
IF ~~ EXIT
END

IF ~~ FHLANDPID_monksay
SAY @517
IF ~~ EXIT
END

IF ~~ FHLANDPID_notalk
SAY @518
IF ~~ EXIT
END

//andrei complains

IF ~Global("FHLAndSaysFriends","GLOBAL",1)~ THEN BEGIN FHLAndSaysFriends
SAY @519
IF ~GlobalGT("FHLAndLike","GLOBAL",2)~ THEN REPLY @520 + FHLANDPID_friendsunderstandlike
IF ~GlobalLT("FHLAndLike","GLOBAL",3)~ THEN REPLY @520 + FHLANDPID_friendsunderstanddislike
++ @521 + FHLANDPID_friendsflirting
++ @522 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_friendsright
IF ~Gender(Player1,FEMALE)~ THEN REPLY @523 + FHLANDPID_friendsnotinterested
IF ~Gender(Player1,MALE)~ THEN REPLY @523 + FHLANDPID_friendsnotinterestedmale
END

IF ~~ FHLANDPID_friendsunderstandlike
SAY @524
=
@525
++ @526 + FHLANDPID_friendslikedisappointed
IF ~Gender(Player1,MALE)~ THEN REPLY @527 + FHLANDPID_friendsnotinterestedmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @527 + FHLANDPID_friendsnotinterested
++ @528 + FHLANDPID_friendsuncomfortable
++ @529 + FHLANDPID_friendsharmlessflirtlike
END

IF ~~ FHLANDPID_friendsunderstanddislike
SAY @530
=
@531
++ @532 + FHLANDPID_friendsweirdfun
++ @528 + FHLANDPID_friendsuncomfortable
++ @529 + FHLANDPID_friendsharmlessflirtdislike
END

IF ~~ FHLANDPID_friendsflirting
SAY @533
IF ~Gender(Player1,MALE)~ THEN REPLY @534 + FHLANDPID_friendsgreatcatchmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @534 + FHLANDPID_friendsgreatcatch
IF ~Gender(Player1,MALE)~ THEN REPLY @535 + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @535 + FHLANDPID_friendscouple
++ @536 + FHLANDPID_harmlessflirting
++ @537 + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_harmlessflirting
SAY @538
=
@539
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendscouplemale
SAY @540
=
@541
++ @542 + FHLANDPID_friendsuncomfortable
++ @543 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
++ @544 + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendscouple
SAY @545
++ @544 + FHLANDPID_friendsuncomfortable
++ @543 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
END

IF ~~ FHLANDPID_friendsright
SAY @546
IF ~Gender(Player1,MALE)~ THEN REPLY @534 + FHLANDPID_friendsnotinterestedmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @534 + FHLANDPID_friendsnotinterested
IF ~Gender(Player1,MALE)~ THEN REPLY @535 + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @535 + FHLANDPID_friendscouple
++ @547 + FHLANDPID_harmlessflirting
++ @537 + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsnotinterested
SAY @548
IF ~Gender(Player1,MALE)~ THEN REPLY @549 + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @549 + FHLANDPID_friendscouple
++ @550 + FHLANDPID_friendsshouldbe
++ @551 + FHLANDPID_friendsembarrass
END

IF ~~ FHLANDPID_friendsembarrass
SAY @552
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsshouldbe
SAY @553
IF ~~ THEN DO ~IncrementGlobal("FHLAndLike","GLOBAL",1) SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsnotinterestedmale
SAY @554
++ @555 + FHLANDPID_friendsgaywtf
++ @556 + FHLANDPID_friendsisee
IF ~Gender(Player1,MALE)~ THEN REPLY @557 + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY @557 + FHLANDPID_friendscouple
++ @558 + FHLANDPID_friendsshouldbe
END

IF ~~ FHLANDPID_friendsisee
SAY @559
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsgaywtf
SAY @560
=
@561
=
@562
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendslikedisappointed
SAY @563
++ @564 + FHLANDPID_friendsmiddlename
++ @565 + FHLANDPID_friendsembarrass
++ @566 + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsmiddlename
SAY @567
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) IncrementGlobal("FHLAndLike","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_friendsuncomfortable
SAY @568
IF ~~ THEN DO ~IncrementGlobal("FHLAndLike","GLOBAL",1) SetGlobal("FHLAndJustFriends","GlOBAL",1) SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsharmlessflirtlike
SAY @569
++ @564 + FHLANDPID_friendsmiddlename
++ @565 + FHLANDPID_friendsembarrass
++ @570 + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsgreatcatch
SAY @571
=
@572
++ @573 + FHLANDPID_friendslikedisappointed
++ @574 + FHLANDPID_friendsnothing
++ @575 + FHLANDPID_friendsnothing
++ @576 + FHLANDPID_friendsnothing
END

IF ~~ FHLANDPID_friendsnothing
SAY @577
IF ~~ THEN DO ~SetGlobal ("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsgreatcatchmale
SAY @571
=
@578
++ @573 + FHLANDPID_friendslikedisappointed
++ @574 + FHLANDPID_friendsnothing
++ @575 + FHLANDPID_friendsnothing
++ @576 + FHLANDPID_friendsnothing
END

IF ~~ FHLANDPID_friendsharmlessflirtdislike
SAY @579
++ @580 + FHLANDPID_friendsuncomfortable
++ @543 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_friendsdislikestubborn
++ @581 + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsweirdfun
SAY @582
++ @583 + FHLANDPID_friendsuncomfortable
++ @543 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
++ @581 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsdislikestubborn
SAY @584
++ @585 + FHLANDPID_friendsdislikestubborngivein
++ @586 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsdislikestubborngivein
SAY @587
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_boomeanycharname
SAY @588
=
@589
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_ud1
SAY @590
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud2
SAY @591
=
@592
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud3
SAY @593
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud4
SAY @594
IF ~~ EXIT
END
END
