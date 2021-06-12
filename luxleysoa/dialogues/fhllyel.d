BEGIN FHLLYEL

//Before seeing Xavier, after arriving at the estate

IF ~Global("FHLLyelEstate","GLOBAL",2) Global("FHLXavTalk","GLOBAL",0) Global("FHLLyelTalk1","GLOBAL",0)~ THEN BEGIN FHLLyelBeforeXavier
SAY @0
IF ~Global("FHLAlSeb","GLOBAL",1)~ THEN REPLY @1 + FHLLyelBeforeXavier_sister
++ @2 + FHLLyelBeforeXavier_seb
++ @3 + FHLLyelBeforeXavier_happy
++ @4 + FHLLyelBeforeXavier_tips
++ @5 + FHLLyelBeforeXavier_xavier
END

IF ~~ FHLLyelBeforeXavier_sister
SAY @6
=
@7
++ @8 + FHLLyelBeforeXavier_better
++ @9 + FHLLyelBeforeXavier_before
++ @10 + FHLLyelBeforeXavier_trans
++ @11 + FHLLyelBeforeXavier_leave
END

IF ~~ FHLLyelBeforeXavier_seb
SAY @12
=
@13
++ @14 + FHLLyelBeforeXavier_embarrass
++ @15 + FHLLyelBeforeXavier_xavier
++ @16 + FHLLyelBeforeXavier_old
END

IF ~~ FHLLyelBeforeXavier_happy
SAY @17
=
@18
++ @19 + FHLLyelBeforeXavier_cooped
++ @20 + FHLLyelBeforeXavier_safe
++ @21 + FHLLyelBeforeXavier_live
END

IF ~~ FHLLyelBeforeXavier_tips
SAY @22
++ @23 + FHLLyelBeforeXavier_tell
++ @24 + FHLLyelBeforeXavier_xavier
++ @25 + FHLLyelBeforeXavier_cope
END

IF ~~ FHLLyelBeforeXavier_better
SAY @26
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_before
SAY @27
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_trans
SAY @28
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_leave
SAY @29
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_embarrass
SAY @30
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_xavier
SAY @31
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLLyelBeforeXavier_old
SAY @32
++ @33 + FHLLyelBeforeXavier_young
++ @34 + FHLLyelBeforeXavier_cooped
++ @35 + FHLLyelBeforeXavier_earlier
END

IF ~~ FHLLyelBeforeXavier_cooped
SAY @36
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_safe
SAY @37
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_live
SAY @38
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_tell
SAY @39
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_cope
SAY @40
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~ EXIT
END

IF ~~ FHLLyelBeforeXavier_ahem
SAY @41
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLLyelBeforeXavier_young
SAY @42
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_earlier
SAY @43
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

//After talking to him, before talking to Xavier

IF ~Global("FHLLyelEstate","GLOBAL",2) Global("FHLXavTalk","GLOBAL",0) Global("FHLLyelTalk1","GLOBAL",1)~ THEN BEGIN FHLLyelBeforeXavier2
SAY @44
IF ~~ EXIT
END

//After talking to Xavier

IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLLyelAfterXavier
SAY @45
IF ~Global("FHLAlSeb","GLOBAL",1)~ THEN REPLY @1 + FHLLyelAfterXavier_sister
++ @2 + FHLLyelAfterXavier_seb
++ @3 + FHLLyelAfterXavier_happy
++ @46 + FHLLyelAfterXavier_leave
++ @47 + FHLLyelAfterXavier_no
END

IF ~~ FHLLyelAfterXavier_sister
SAY @6
=
@7
++ @8 + FHLLyelAfterXavier_better
++ @9 + FHLLyelAfterXavier_before
++ @10 + FHLLyelAfterXavier_trans
++ @11 + FHLLyelAfterXavier_takeleave
END

IF ~~ FHLLyelAfterXavier_seb
SAY @12
=
@13
++ @14 + FHLLyelAfterXavier_embarrass
++ @16 + FHLLyelAfterXavier_old
END

IF ~~ FHLLyelAfterXavier_happy
SAY @17
=
@18
++ @19 + FHLLyelAfterXavier_cooped
++ @20 + FHLLyelAfterXavier_safe
++ @21 + FHLLyelAfterXavier_live
END

IF ~~ FHLLyelAfterXavier_leave
SAY @48
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_no
SAY @49
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_better
SAY @26
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_before
SAY @27
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_trans
SAY @28
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_takeleave
SAY @50
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_embarrass
SAY @30
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_old
SAY @32
++ @33 + FHLLyelAfterXavier_young
++ @34 + FHLLyelAfterXavier_cooped
++ @35 + FHLLyelAfterXavier_earlier
END

IF ~~ FHLLyelAfterXavier_cooped
SAY @36
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_safe
SAY @51
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_live
SAY @38
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_young
SAY @42
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_earlier
SAY @43
IF ~~ EXIT
END


//First arrival

IF ~~ FHLLyelArrive_seb
SAY @52
++ @53 UNSOLVED_JOURNAL @54 + FHLLyelArrive_come
++ @55 UNSOLVED_JOURNAL @54 + FHLLyelArrive_time
++ @56 + FHLLyelArrive_own
++ @57 + FHLLyelArrive_dys
END

IF ~~ FHLLyelArrive_own
SAY @58
++ @59 DO ~SetGlobal("FHLUnenthus","GLOBAL",1)~ UNSOLVED_JOURNAL @54 + FHLLyelArrive_come
++ @60 UNSOLVED_JOURNAL @61 + FHLLyelArrive_later
++ @57 + FHLLyelArrive_dys
END

IF ~~ FHLLyelLeave_where
SAY @62
=
@63
++ @64 EXTERN FHLSEBJ FHLLyelLeave_key
++ @65 EXTERN FHLSEBJ FHLLyelLeave_why
++ @66 + FHLLyelLeave_create
++ @67 EXTERN FHLSEBJ FHLLyelLeave_far
END

IF ~~ FHLLyelLeave_style
SAY @68
++ @69 + FHLLyelLeave_where
END

IF ~~ FHLLyelLeave_strange
SAY @70
=
@71
++ @64 EXTERN FHLSEBJ FHLLyelLeave_key
++ @65 EXTERN FHLSEBJ FHLLyelLeave_why
++ @66 + FHLLyelLeave_create
++ @67 EXTERN FHLSEBJ FHLLyelLeave_far
END

CHAIN IF ~Global("FHLLyelEstate","GLOBAL",1)~ THEN FHLLYEL FHLLyelLeave
@72
DO ~SetGlobal("FHLLyelEstate","GLOBAL",2)~
== HAERDAJ IF ~InParty("Haerdalis")~ THEN
@73
== AERIEJ IF ~InParty("Aerie")~ THEN
@74
== FHLLYEL IF ~InParty("Aerie")~ THEN
@75
== EDWINJ IF ~InParty("Edwin")~ THEN
@76
== VALYGARJ IF ~InParty("Valygar")~ THEN
@77
== JANJ IF ~InParty("Jan")~ THEN
@78
== FHLANDJ
@79
== FHLSEBJ
@80
== FHLLYEL
@81
END
++ @82 + FHLLyelLeave_where
++ @83 + FHLLyelLeave_style
++ @84 + FHLLyelLeave_strange

CHAIN FHLLYEL FHLLyelLeave_create
@85
== FHLSEBJ
@86
EXTERN FHLLYEL FHLLyelLeave_seb

CHAIN FHLLYEL FHLLyelLeave_seb
@87
=
@88
=
@89
DO ~MoveToPoint([202.2390])
EscapeAreaMove("FHLMH1",1570,998,14)~
EXIT


//second appearance
CHAIN FHLLYEL FHLLyel2_well
@90
=
@91
== FHLANDJ
@92
== FHLLYEL
@93
END
++ @94 EXTERN FHLANDJ FHLLyel2_upleave
++ @95 + FHLLyel2_reconsider
++ @96 + FHLLyel2_riddance
++ @97 + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_cousin
@98
=
@91
== FHLANDJ
@92
== FHLLYEL
@93
END
++ @94 EXTERN FHLANDJ FHLLyel2_upleave
++ @95 + FHLLyel2_reconsider
++ @96 + FHLLyel2_riddance
++ @97 + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_blech
@99
=
@91
== FHLANDJ
@92
== FHLLYEL
@93
END
++ @94 EXTERN FHLANDJ FHLLyel2_upleave
++ @95 + FHLLyel2_reconsider
++ @96 + FHLLyel2_riddance
++ @97 + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_nosoul
@100
=
@101
== FHLANDJ
@92
== FHLLYEL
@93
END
++ @94 EXTERN FHLANDJ FHLLyel2_upleave
++ @95 + FHLLyel2_reconsider
++ @96 + FHLLyel2_riddance
++ @97 + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_reconsider
@102
== FHLSEBJ
@103
== FHLLYEL
@104
== FHLSEBJ
@105
== FHLANDJ
@106
== FHLLYEL
@107
== FHLSEBJ
@108
=
@109
END
++ @110 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ @111 EXTERN FHLLYEL FHLLyel2_silent
++ @112 EXTERN FHLSEBJ FHLLyel2_sebastian
++ @113 EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_riddance
@114
== FHLSEBJ
@105
== FHLANDJ
@106
== FHLLYEL
@107
== FHLSEBJ
@115
=
@109
END
++ @110 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ @111 EXTERN FHLLYEL FHLLyel2_silent
++ @112 EXTERN FHLSEBJ FHLLyel2_sebastian
++ @113 EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_sure
@116
== FHLSEBJ
@117
== FHLLYEL
@118
== FHLSEBJ
@105
== FHLANDJ
@106
== FHLLYEL
@107
== FHLSEBJ
@115
=
@109
END
++ @110 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ @111 EXTERN FHLLYEL FHLLyel2_silent
++ @112 EXTERN FHLSEBJ FHLLyel2_sebastian
++ @113 EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_silent
@119
== FHLSEBJ
@120
== FHLLYEL
@121
== FHLSEBJ
@122
== FHLLYEL
@123
== FHLSEBJ
@124
== FHLANDJ
@125
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL03")~
EXIT

CHAIN FHLLYEL FHLLyel2_alone
@126
== FHLSEBJ
@127
== FHLLYEL
@121
== FHLSEBJ
@122
== FHLLYEL
@123
== FHLSEBJ
@124
== FHLANDJ
@125
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL03")~
EXIT

//first appearance
CHAIN IF ~Global("FHLSpawnLyel","GLOBAL",1)~ THEN FHLLYEL FHLLyel
@128
== FHLANDJ
@129
DO ~SetGlobal("FHLSpawnLyel","GLOBAL",2)~
== FHLSEBJ
@130
== FHLLYEL
@131
== FHLSEBJ
@132
== FHLLYEL
@133
== FHLSEBJ
@134
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN
@135
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN
@136
== FHLLYEL
@137
END
++ @138 EXTERN FHLLYEL FHLLyelArrive_charm
++ @139 EXTERN FHLLYEL FHLLyelArrive_where
++ @140 EXTERN FHLLYEL FHLLyelArrive_where

CHAIN FHLLYEL FHLLyelArrive_charm
@141
== FHLSEBJ
@142
END
++ @143 EXTERN FHLSEBJ FHLLyelArrive_poss
++ @144 EXTERN FHLSEBJ FHLLyelArrive_why
++ @145 + FHLLyelArrive_where

CHAIN FHLLYEL FHLLyelArrive_where
@146
== FHLSEBJ
@147
== FHLLYEL
@148
== FHLSEBJ
@149
END
++ @150 EXTERN FHLSEBJ FHLLyelArrive_estate
++ @151 EXTERN FHLSEBJ FHLLyelArrive_charge
++ @152 EXTERN FHLSEBJ FHLLyelArrive_kit

CHAIN FHLANDJ FHLLyelArrive_daze
@153
== FHLLYEL
@154
== FHLSEBJ
@155
EXTERN FHLLYEL FHLLyelArrive_exp

CHAIN FHLSEBJ FHLLyelArrive_poss
@156
== FHLLYEL
@157
== FHLSEBJ
@158
END
++ @159 EXTERN FHLSEBJ FHLLyelArrive_why
++ @160 EXTERN FHLANDJ FHLLyelArrive_daze
++ @161 EXTERN FHLSEBJ FHLLyelArrive_why

CHAIN FHLSEBJ FHLLyelArrive_kit
@162
== FHLLYEL
@163
== FHLANDJ
@164
== FHLLYEL
@165
== FHLSEBJ
@166
END
++ @167 EXTERN FHLANDJ FHLLyelArrive_sick
++ @168 EXTERN FHLLYEL FHLLyelArrive_leave

CHAIN FHLSEBJ FHLLyelArrive_estate
@169
== FHLANDJ
@170
== FHLLYEL
@171
== FHLSEBJ
@172
END
++ @173 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @174 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @175 EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLSEBJ FHLLyelArrive_charge
@176
== FHLANDJ
@170
== FHLLYEL
@171
== FHLSEBJ
@177
END
++ @173 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @174 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @175 EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_exp
@178
== FHLSEBJ
@179
== FHLANDJ
@180
== FHLLYEL
@181
== FHLSEBJ
@149
END
++ @182 EXTERN FHLSEBJ FHLLyelArrive_estate
++ @151 EXTERN FHLSEBJ FHLLyelArrive_charge
++ @183 EXTERN FHLSEBJ FHLLyelArrive_kit

CHAIN FHLANDJ FHLLyelArrive_sick
@184
== FHLLYEL
@185
== FHLANDJ
@186
== FHLSEBJ
@187
== FHLANDJ
@170
== FHLLYEL
@171
== FHLSEBJ
@188
END
++ @173 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @174 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @175 EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_leave
@189
== FHLSEBJ
@190
== FHLANDJ
@170
== FHLLYEL
@171
== FHLSEBJ
@191
END
++ @173 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @174 EXTERN FHLLYEL FHLLyelArrive_thatsit
++ @175 EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_thatsit
@192
=
@193
=
@194
== FHLSEBJ
@195
== FHLLYEL
@196
== FHLSEBJ
@197
== FHLANDJ
@198
== FHLLYEL
@199
END
++ @200 UNSOLVED_JOURNAL @54 + FHLLyelArrive_come
++ @201 + FHLLyelArrive_seb
++ @202 UNSOLVED_JOURNAL @54 + FHLLyelArrive_time
++ @203 + FHLLyelArrive_own
++ @57 + FHLLyelArrive_dys

CHAIN FHLLYEL FHLLyelArrive_come
@204
DO ~SetGlobal("FHLLyelEstate","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL06")~
EXIT

CHAIN FHLLYEL FHLLyelArrive_time
@205
== FHLANDJ
@206
== FHLSEBJ
@207
== FHLLYEL
@208
DO ~SetGlobal("FHLLyelEstate","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL06")~
EXIT

CHAIN FHLLYEl FHLLyelArrive_later
@209
DO ~SetGlobalTimer("FHLReturn1","GLOBAL",ONE_DAY)
SetGlobal("FHLSebCatch","GLOBAL",3)
SetGlobal("FHLReturn1Set","GLOBAL",1)~
== FHLSEBJ
@207
== FHLLYEL
@210
== FHLANDJ
@211
EXIT

CHAIN FHLLYEL FHLLyelArrive_dys
@212
== FHLANDJ
@213
== FHLSEBJ
@214
DO
~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL05")~
EXIT

//Lyel's appearance #2//

CHAIN IF WEIGHT #-1 ~Global("FHLSpawnLyel2","GLOBAL",1)~ THEN FHLLYEL FHLLyel2
@215
== FHLSEBJ
@216
DO ~SetGlobal("FHLSpawnLyel2","GLOBAL",2)~
== FHLANDJ
@217
== FHLLYEL
@218
== FHLANDJ
@219
== FHLSEBJ
@220
== FHLLYEL
@221
== FHLANDJ
@222
== FHLLYEL
@223
END
++ @224 EXTERN FHLLYEL FHLLyel2_well
++ @225 EXTERN FHLLYEL FHLLyel2_cousin
++ @226 EXTERN FHLLYEL FHLLyel2_blech
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @227 EXTERN FHLLYEL FHLLyel2_nosoul

