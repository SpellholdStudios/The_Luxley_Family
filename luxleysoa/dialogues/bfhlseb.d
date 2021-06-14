BEGIN BFHLSEB

IF ~Global("FHLSebTalk","GLOBAL",2)~ THEN BEGIN FHLST1
SAY @0
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY @1 + FHLST1_druid
++ @2 + FHLST1_whatswrong
++ @3 + FHLST1_notbad
++ @4 + FHLST1_forgive
IF ~Global("FHLAndTalk1","GLOBAL",1)~ THEN REPLY @5 + FHLST1_didntmean
IF ~!Global("FHLAndTalk1","GLOBAL",1)~ THEN REPLY @6 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_forgive
++ @7 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_whyput
++ @8 + FHLST1_whatever
END

IF ~~ FHLST1_druid
SAY @9
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_notbad
SAY @15
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_forgive
SAY @16
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_didntmean
SAY @17
=
@18
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_whyput
SAY @19
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_natural
SAY @20
=
@21
++ @22 + FHLST1_butstill
++ @23 + FHLST1_young
++ @24 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ @25 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ @26 + FHLST1_going
END

IF ~~ FHLST1_okay
SAY @27
=
@28
++ @22 + FHLST1_butstill
++ @23 + FHLST1_young
++ @24 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ @25 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ @26 + FHLST1_going
END

IF ~~ FHLST1_why
SAY @29
++ @30 + FHLST1_wink
++ @31 + FHLST1_yes
++ @32 + FHLST1_yes
++ @33 + FHLST1_slightest
END

IF ~~ FHLST1_whatever
SAY @34
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_seems
SAY @35
++ @22 + FHLST1_butstill
++ @23 + FHLST1_young
++ @26 + FHLST1_going
END

IF ~~ FHLST1_butstill
SAY @36
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_young
SAY @37
++ @38 + FHLST1_dont
++ @39 + FHLST1_does
++ @40	+ FHLST1_quiet
END

IF ~~ FHLST1_old
SAY @41
++ @42 + FHLST1_what
++ @43 + FHLST1_notmeant
++ @44 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST1_shame
END

IF ~~ FHLST1_going
SAY @45
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_wink
SAY @46
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_yes
SAY @47
=
@48
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_no
SAY @49
=
@50
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_slightest
SAY @51
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_dont
SAY @52
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_quiet
SAY @53
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_does
SAY @54
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_what
SAY @55
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_notmeant
SAY @56
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_shame
SAY @57
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

//Talk2
IF ~Global("FHLSebTalk","GLOBAL",4)~ THEN BEGIN FHLST2
SAY @58
++ @59 + FHLST2_huh
++ @60 + FHLST2_no
++ @61 + FHLST2_samething
++ @62 + FHLST2_no
END

IF ~~ FHLST2_huh
SAY @63
++ @64 + FHLST2_fun
++ @65 + FHLST2_know
++ @66 + FHLST2_certainly
END

IF ~~ FHLST2_no
SAY @67
++ @68 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_live
++ @69 + FHLST2_fun
++ @70 + FHLST2_selfrespect
++ @71 + FHLST2_headache
END

IF ~~ FHLST2_samething
SAY @72
++ @73 + FHLST2_ridiculous
++ @74 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_catastrophe
END

IF ~~ FHLST2_fun
SAY @75
++ @76 + FHLST2_how
++ @77 + FHLST2_youdo
++ @78 + FHLST2_yourway
END

IF ~~ FHLST2_know
SAY @79
++ @80 + FHLST2_why
++ @81 + FHLST2_no
++ @62 + FHLST2_no
END

IF ~~ FHLST2_certainly
SAY @82
++ @83 + FHLST2_marvin
++ @84 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST2_catty
++ @85 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_point
END

IF ~~ FHLST2_live
SAY @86
++ @87 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_sarcastic
++ @88 + FHLST2_risk
++ @71 + FHLST2_headache
++ @89 + FHLST2_guess
END

IF ~~ FHLST2_selfrespect
SAY @90
IF ~~ EXIT
END

IF ~~ FHLST2_headache
SAY @91
++ @92	+ FHLST2_disgusting
++ @93 + FHLST2_relationship
++ @94 DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST2_hard
++ @95 + FHLST2_practice
END

IF ~~ FHLST2_ridiculous
SAY @96
IF ~~ EXIT
END

IF ~~ FHLST2_catastrophe
SAY @97
IF ~~ EXIT
END

IF ~~ FHLST2_how
SAY @98
IF ~~ EXIT
END

IF ~~ FHLST2_youdo
SAY @99
++ @100 + FHLST2_trust
++ @101 + FHLST2_catty
++ @102 + FHLST2_catty
++ @103 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST2_liar
END

IF ~~ FHLST2_yourway
SAY @104
++ @105 + FHLST2_catty
++ @106 DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST2_gudgud
++ @107 + FHLST2_marvin
END

IF ~~ FHLST2_why
SAY @108
=
@109
IF ~~ EXIT
END

IF ~~ FHLST2_marvin
SAY @110
IF ~~ EXIT
END

IF ~~ FHLST2_catty
SAY @111
IF ~~ EXIT
END

IF ~~ FHLST2_point
SAY @112
IF ~~ EXIT
END

IF ~~ FHLST2_sarcastic
SAY @113
IF ~~ EXIT
END

IF ~~ FHLST2_risk
SAY @114
IF ~~ EXIT
END

IF ~~ FHLST2_guess
SAY @115
IF ~~ EXIT
END

IF ~~ FHLST2_disgusting
SAY @116
IF ~~ EXIT
END

IF ~~ FHLST2_relationship
SAY @117
IF ~~ EXIT
END

IF ~~ FHLST2_hard
SAY @118
IF ~~ EXIT
END

IF ~~ FHLST2_practice
SAY @119
++ @120 + FHLST2_sarcastic
++ @121 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1) IncrementGlobal("FHLSebFlirt","GLOBAL",-1)~ + FHLST2_maybe
++ @122 + FHLST2_gudgud
END

IF ~~ FHLST2_trust
SAY @123
IF ~~ EXIT
END

IF ~~ FHLST2_liar
SAY @124
IF ~~ EXIT
END

IF ~~ FHLST2_gudgud
SAY @125
IF ~~ EXIT
END

IF ~~ FHLST2_gudgud2
SAY @126
IF ~~ EXIT
END

IF ~~ FHLST2_maybe
SAY @127
IF ~~ EXIT
END

//SebTalk3//
IF ~Global("FHLSebTalk","GLOBAL",6)~ THEN BEGIN FHLST3
SAY @128
++ @129	+ FHLST3_musical
++ @130 + FHLST3_drama
++ @131 + FHLST3_what
IF ~RandomNum(2,1)~ THEN REPLY @132 + FHLST3_neither1
IF ~RandomNum(2,2)~ THEN REPLY @132 + FHLST3_neither2
END

IF ~~ FHLST3_musical
SAY @133
++ @134 + FHLST3_mean
++ @135 + FHLST3_sure
++ @136 DO ~SetGlobal("FHLSing","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST3_private
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @137 + FHLST3_bard
END

IF ~~ FHLST3_drama
SAY @138
++ @139 + FHLST3_playwright
++ @140 EXTERN FHLANDJ FHLST3_brooding
++ @141 + FHLST3_wonderful
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @142 + FHLST3_bardplay
IF ~Gender(Player1,FEMALE)~ THEN REPLY @143 + FHLST3_woman
END

IF ~~ FHLST3_what
SAY @144
=
@145
IF ~RandomNum(2,1)~ THEN REPLY @146 + FHLST3_neither1
IF ~RandomNum(2,2)~ THEN REPLY @146 + FHLST3_neither2
++ @147 + FHLST3_musical
++ @148 + FHLST3_drama
IF ~Class(Player1,BARD_ALL) RandomNum(2,1)~ THEN REPLY @149 + FHLST3_neither1
IF ~Class(Player1,BARD_ALL) RandomNum(2,2)~ THEN REPLY @150 + FHLST3_neither2
END

IF ~~ FHLST3_neither1
SAY @151
++ @134 + FHLST3_mean
++ @152 + FHLST3_nomusical
++ @153 + FHLST3_sure
END

IF ~~ FHLST3_neither2
SAY @154
++ @139 + FHLST3_playwright
++ @140 EXTERN FHLANDJ FHLST3_brooding
++ @141 + FHLST3_wonderful
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @142 + FHLST3_bardplay
IF ~Gender(Player1,FEMALE)~ THEN REPLY @143 + FHLST3_woman
END

IF ~~ FHLST3_mean
SAY @155
=
@156
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_sure
SAY @157
=
@156
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_private
SAY @158
=
@156
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_bard
SAY @159
=
@156
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_wonderful
SAY @160
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_bardplay
SAY @161
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_woman
SAY @162
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_nomusical
SAY @163
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_nodrama
SAY @164
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END


//Talk4 - musical //
IF ~Global("FHLSebTalk","GLOBAL",8) Global("FHLSebMusical","GLOBAL",1)~ THEN BEGIN FHLST4
SAY @165
++ @166 + FHLST4_yes
IF ~Global("FHLSing","GLOBAL",1)~ THEN REPLY @167 DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST4_private
++ @168 + FHLST4_good
++ @169 + FHLST4_no
END

IF ~~ FHLST4_fantastic
SAY @170
++ @171 + FHLST4_bother
++ @172 + FHLST4_thank
++ @173 + FHLST4_funny
END

IF ~~ FHLST4_light
SAY @174
++ @175 + FHLST4_try
++ @176 + FHLST4_awful
++ @177 + FHLST4_fun
++ @178 + FHLST4_amuse
END

IF ~~ FHLST4_weak
SAY @179
++ @180 + FHLST4_fun
++ @181 + FHLST4_fun
++ @182 + FHLST4_awful
END

IF ~~ FHLST4_confused
SAY @183
IF ~~ EXIT
END

IF ~~ FHLST4_awful
SAY @184
=
@185
++ @171 + FHLST4_bother
++ @172 + FHLST4_thank
END

IF ~~ FHLST4_fun
SAY @186
++ @171 + FHLST4_bother
++ @172 + FHLST4_thank
END

IF ~~ FHLST4_amuse
SAY @187
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_bother
SAY @188
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_thank
SAY @189
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_half
SAY @190
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_try
SAY @191
++ @171 + FHLST4_bother
++ @172 + FHLST4_thank
END

IF ~~ FHLST4_defno
SAY @192
IF ~~ EXIT
END

//Talk 4 - drama//
IF ~Global("FHLSebTalk","GLOBAL",8) Global("FHLSebDrama","GLOBAL",1)~ THEN BEGIN FHLST4_drama
SAY @193
++ @166 + FHLST4_course
++ @168 + FHLST4_course
++ @194 + FHLST4_no
END

IF ~~ FHLST4_time
SAY @195
++ @196 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST4_defno
++ @197 EXTERN FHLANDJ FHLST4_drama2
END

IF ~~ FHLST4_course
SAY @198
IF ~~ THEN EXTERN FHLANDJ FHLST4_drama2
END

IF ~~ FHLST4_melo
SAY @199
++ @175 + FHLST4_try
++ @176 + FHLST4_awful
++ @200 + FHLST4_fun
++ @178 + FHLST4_amuse
END


//Talk5//
IF ~Global("FHLSebTalk","GLOBAL",10)~ THEN BEGIN FHLST5
SAY @201
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @202 + FHLST5_forgive
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @203 + FHLST5_child
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @204 + FHLST5_love
++ @205 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_our
++ @206 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_rich
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY @207 + FHLST5_leave
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY @208 + FHLST5_high
END

IF ~~ FHLST5_forgive
SAY @209
=
@210
IF ~RandomNum(3,1)~ THEN REPLY @211 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @211 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @211 + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY @212 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @212 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @212 + FHLST5_goon3
++ @213 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_child
SAY @214
IF ~RandomNum(3,1)~ THEN REPLY @211 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @211 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @211 + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY @212 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @212 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @212 + FHLST5_goon3
++ @213 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_our
SAY @215
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @202 + FHLST5_forgive
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @203 + FHLST5_child
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY @204 + FHLST5_love
++ @206 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_rich
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY @207 + FHLST5_leave
++ @216 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_love
SAY @217
=
@218
IF ~RandomNum(3,1)~ THEN REPLY @211 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @211 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @211 + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY @212 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @212 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @212 + FHLST5_goon3
++ @213 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_rich
SAY @219
IF ~RandomNum(3,1)~ THEN REPLY @211 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @211 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @211 + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY @212 + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY @212 + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY @212 + FHLST5_goon3
++ @213 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_leave
SAY @220
IF ~~ EXIT
END

IF ~~ FHLST5_high
SAY @221
=
@222
IF ~~ EXIT
END

IF ~~ FHLST5_goon1
SAY @223
=
@224
=
@225
=
@226
=
@227
++ @228 + FHLST5_pink
++ @229 + FHLST5_it
++ @230 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

IF ~~ FHLST5_goon2
SAY @223
=
@232
=
@233
=
@234
++ @235 + FHLST5_punish
++ @229 + FHLST5_it
++ @230 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

IF ~~ FHLST5_goon3
SAY @223
=
@236
=
@237
=
@238
++ @239 + FHLST5_level
++ @240 + FHLST5_it
++ @241 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

IF ~~ FHLST5_pink
SAY @242
++ @229 + FHLST5_it
++ @241 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

IF ~~ FHLST5_it
SAY @243
IF ~~ EXIT
END

IF ~~ FHLST5_laugh
SAY @244
IF ~~ EXIT
END

IF ~~ FHLST5_hyst
SAY @245
IF ~~ EXIT
END

IF ~~ FHLST5_punish
SAY @246
++ @229 + FHLST5_it
++ @241 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

IF ~~ FHLST5_level
SAY @247
++ @229 + FHLST5_it
++ @241 + FHLST5_laugh
++ @231 + FHLST5_hyst
END

//Sebastian talk 6
IF ~Global("FHLSebTalk","GLOBAL",12) Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLST6
SAY @248
++ @249 + FHLST6_xav
++ @250 + FHLST6_loud
++ @251 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6_xav
SAY @252
IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY @253 + FHLST6_stupidhigh
++ @254 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_warning
++ @255 + FHLST6_unlike
++ @256 + FHLST6_devious
IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY @253 + FHLST6_stupidlow
END

IF ~~ FHLST6_loud
SAY @257
++ @258 + FHLST6_xav
++ @259 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6_psst
SAY @260
IF ~~ EXIT
END

IF ~~ FHLST6_stupidhigh
SAY @261
++ @262 + FHLST6_jeez
++ @263 + FHLST6_against
END

IF ~~ FHLST6_stupidlow
SAY @264
++ @265 + FHLST6_jeez
++ @266 + FHLST6_against
END

IF ~~ FHLST6_warning
SAY @267
++ @266 + FHLST6_against
++ @268 + FHLST6_jeez
END

IF ~~ FHLST6_devious
SAY @269
++ @265 + FHLST6_jeez
++ @270 + FHLST6_against
END

IF ~~ FHLST6_unlike
SAY @271
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_grin
SAY @272
++ @273 + FHLST6_what
++ @274 + FHLST6_craziness
++ @275 + FHLST6_compare
END

IF ~~ FHLST6_against
SAY @276
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_jeez
SAY @277
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_what
SAY @278
=
@279
++ @280 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_help
++ @281 + FHLST6_want
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @282 + FHLST6_perhaps
++ @283 + FHLST6_vague
END

IF ~~ FHLST6_craziness
SAY @284
=
@285
++ @280 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_help
++ @281 + FHLST6_want
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @282 + FHLST6_perhaps
++ @283 + FHLST6_vague
END

IF ~~ FHLST6_compare
SAY @286
IF ~~ EXIT
END

IF ~~ FHLST6_help
SAY @287
IF ~~ THEN + FHLST6_defeat
END

IF ~~ THEN FHLST6_want
SAY @288
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_perhaps
SAY @289
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_vague
SAY @290
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_defeat
SAY @291
++ @292 EXIT
++ @293 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_say
END

IF ~~ FHLST6_say
SAY @294
IF ~~ EXIT
END

//Sebastian talk 6 - if you don't talk to Xavier

IF ~Global("FHLSebTalk","GLOBAL",12) Global("FHLNoXavTalk","GLOBAL",1)~ THEN BEGIN FHLST6b
SAY @248
++ @249 + FHLST6b_xav
++ @295 + FHLST6b_loud
++ @296 + FHLST6b_proposition
++ @251 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6b_xav
SAY @297
=
@298
IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY @299 + FHLST6b_stupidhigh
IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY @253 + FHLST6b_stupidlow
++ @300 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_warning
++ @301 + FHLST6b_unlike
END

IF ~~ FHLST6b_loud
SAY @302
++ @303 + FHLST6b_xav
++ @259 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6b_proposition
SAY @304
IF ~~ THEN + FHLST6b_xav
END

IF ~~ FHLST6b_stupidhigh
SAY @261
++ @305 + FHLST6_jeez
++ @306 + FHLST6b_against
END

IF ~~ FHLST6b_stupidlow
SAY @264
++ @265 + FHLST6_jeez
++ @266 + FHLST6b_against
END

IF ~~ FHLST6b_unlike
SAY @307
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6b_against
SAY @308
IF ~~ THEN + FHLST6_grin
END


//Sebastian talk 7
IF ~Global("FHLSebTalk","GLOBAL",14)~ THEN BEGIN FHLST7
SAY @309
++ @310 + FHLST7_right
++ @311 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_brat
IF ~Global("FHLAndApology","GLOBAL",0)~ THEN REPLY @312 + FHLST7_apology
++ @313 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST7_flatter
IF ~Global("FHLAndApology","GLOBAL",1)~ THEN REPLY @314 + FHLST7_apology2
END

IF ~~ FHLST7_right
SAY @315
++ @316 + FHLST7_spoke
++ @317 + FHLST7_know
++ @318 + FHLST7_still
END

IF ~~ FHLST7_brat
SAY @319
++ @320 + FHLST7_out
++ @321 + FHLST7_better
++ @322 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_right
END

IF ~~ FHLST7_apology
SAY @323
++ @324 + FHLST7_sure
++ @325 + FHLST7_ooh
++ @326 + FHLST7_better
END

IF ~~ FHLST7_flatter
SAY @327
++ @328 + FHLST7_long
++ @329 + FHLST7_appreciate
++ @330 + FHLST7_necessary
END

IF ~~ FHLST7_apology2
SAY @331
++ @328 + FHLST7_long
++ @326 + FHLST7_better
++ @330 + FHLST7_necessary
END

IF ~~ FHLST7_out
SAY @332
++ @333 + FHLST7_fret
++ @329 + FHLST7_appreciate
++ @334 + FHLST7_listen
++ @335 + FHLST7_necessary
END

IF ~~ FHLST7_better
SAY @336
++ @337 + FHLST7_gods
++ @338 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_stop
++ @339 + FHLST7_know
END

IF ~~ FHLST7_spoke
SAY @340
++ @341 + FHLST7_still
++ @342 + FHLST7_know
++ @343 + FHLST7_still
END

IF ~~ FHLST7_know
SAY @344
=
@345
IF ~~ EXIT
END

IF ~~ FHLST7_still
SAY @346
=
@345
IF ~~ EXIT
END

IF ~~ FHLST7_fret
SAY @347
IF ~~ EXIT
END

IF ~~ FHLST7_appreciate
SAY @348
IF ~~ EXIT
END

IF ~~ FHLST7_listen
SAY @349
++ @350 + FHLST7_still
++ @341 + FHLST7_still
++ @351 + FHLST7_still
END

IF ~~ FHLST7_necessary
SAY @352
IF ~~ EXIT
END

IF ~~ FHLST7_sure
SAY @353
IF ~~ EXIT
END

IF ~~ FHLST7_ooh
SAY @354
IF ~~ EXIT
END

IF ~~ FHLST7_long
SAY @355
IF ~~ EXIT
END

IF ~~ FHLST7_gods
SAY @356
IF ~~ EXIT
END

IF ~~ FHLST7_stop
SAY @357
=
@345
IF ~~ EXIT
END

//Sebastian talk 8
IF ~Global("FHLSebTalk","GLOBAL",16)~ THEN BEGIN FHLST8
SAY @358
IF ~GlobalGT("HarperFight","GLOBAL",0)~ THEN REPLY @359 + FHLST8_galvarey
++ @360 + FHLST8_two
++ @361 + FHLST8_two
++ @362 + FHLST8_two
++ @363 + FHLST8_two
++ @364 + FHLST8_two
++ @365 + FHLST8_two
++ @366 + FHLST8_two
++ @367 + FHLST8_two
END

IF ~~ FHLST8_galvarey
SAY @368
++ @369 + FHLST8_three
++ @370 + FHLST8_three
++ @371 + FHLST8_three
++ @372 + FHLST8_three
++ @373 + FHLST8_bear
END

IF ~~ FHLST8_two
SAY @374
++ @369 + FHLST8_three
++ @370 + FHLST8_three
++ @371 + FHLST8_three
++ @372 + FHLST8_three
++ @373 + FHLST8_bear
END

IF ~~ FHLST8_three
SAY @375
IF ~InParty("Aerie")~ THEN REPLY @376 + FHLST8_female
++ @377 + FHLST8_andrei
IF ~InParty("Anomen")~ THEN REPLY @378 + FHLST8_male
IF ~InParty("Cernd")~ THEN REPLY @379 + FHLST8_male
IF ~InParty("Edwin")~ THEN REPLY @380 + FHLST8_male
IF ~InParty("Haerdalis")~ THEN REPLY @381 + FHLST8_male
IF ~InParty("Imoen2")~ THEN REPLY @382 + FHLST8_female
IF ~InParty("Jaheira")~ THEN REPLY @383 + FHLST8_female
IF ~InParty("Jan")~ THEN REPLY @384 + FHLST8_male
IF ~InParty("Keldorn")~ THEN REPLY @385 + FHLST8_male
IF ~InParty("Korgan")~ THEN REPLY @386 + FHLST8_male
IF ~InParty("Mazzy")~ THEN REPLY @387 + FHLST8_female
IF ~InParty("Minsc")~ THEN REPLY @388 + FHLST8_male
IF ~InParty("Nalia")~ THEN REPLY @389 + FHLST8_female
IF ~InParty("Valygar")~ THEN REPLY @390 + FHLST8_male
IF ~InParty("Viconia")~ THEN REPLY @391 + FHLST8_female
IF ~InParty("Yoshimo")~ THEN REPLY @392 + FHLST8_male
++ @393 + FHLST8_seb
END

IF ~~ FHLST8_bear
SAY @394
IF ~InParty("Aerie")~ THEN REPLY @376 + FHLST8_female
++ @377 + FHLST8_andrei
IF ~InParty("Anomen")~ THEN REPLY @378 + FHLST8_male
IF ~InParty("Cernd")~ THEN REPLY @379 + FHLST8_male
IF ~InParty("Edwin")~ THEN REPLY @380 + FHLST8_male
IF ~InParty("Haerdalis")~ THEN REPLY @381 + FHLST8_male
IF ~InParty("Imoen2")~ THEN REPLY @382 + FHLST8_female
IF ~InParty("Jaheira")~ THEN REPLY @383 + FHLST8_female
IF ~InParty("Jan")~ THEN REPLY @384 + FHLST8_male
IF ~InParty("Keldorn")~ THEN REPLY @385 + FHLST8_male
IF ~InParty("Korgan")~ THEN REPLY @386 + FHLST8_male
IF ~InParty("Mazzy")~ THEN REPLY @387 + FHLST8_female
IF ~InParty("Minsc")~ THEN REPLY @388 + FHLST8_male
IF ~InParty("Nalia")~ THEN REPLY @389 + FHLST8_female
IF ~InParty("Valygar")~ THEN REPLY @390 + FHLST8_male
IF ~InParty("Viconia")~ THEN REPLY @391 + FHLST8_female
IF ~InParty("Yoshimo")~ THEN REPLY @392 + FHLST8_male
++ @393 + FHLST8_seb
END

IF ~~ FHLST8_female
SAY @395
++ @396 + FHLST8_stop
++ @397 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ @398 + FHLST8_wrong
++ @399 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_male
SAY @400
++ @396 + FHLST8_stop
++ @397 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ @398 + FHLST8_wrong
++ @399 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_andrei
SAY @401
++ @396 + FHLST8_stop
++ @397 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ @398 + FHLST8_wrong
++ @399 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_seb
SAY @402
++ @396 + FHLST8_stop
++ @397 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ @398 + FHLST8_wrong
++ @399 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_stop
SAY @403
=
@404
++ @405 + FHLST8_yours
++ @406 + FHLST8_convent
++ @407 + FHLST8_silly
++ @408 + FHLST8_help
END

IF ~~ FHLST8_wis
SAY @409
++ @410 + FHLST8_estimate
++ @411 + FHLST8_forget
++ @412 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_right
END

IF ~~ FHLST8_wrong
SAY @413
++ @414 + FHLST8_forget
++ @415 + FHLST8_feel
++ @416 + FHLST8_face
IF ~CharName("Antonio",Player1)~ THEN REPLY @417 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_ee1
END

IF ~~ FHLST8_quiet
SAY @418
=
@419
++ @414 + FHLST8_forget
++ @420 + FHLST8_annoying
++ @421 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_quiet2
END

IF ~~ FHLST8_yours
SAY @422
++ @423 + FHLST8_quiet2
++ @406 + FHLST8_convent
++ @424 + FHLST8_question
++ @425 + FHLST8_disconcert
END

IF ~~ FHLST8_convent
SAY @426
++ @427 + FHLST8_disconcert
++ @428 + FHLST8_better
++ @429 + FHLST8_enjoy
++ @414 + FHLST8_forget
END

IF ~~ FHLST8_silly
SAY @430
=
@431
++ @432 + FHLST8_fault
++ @433 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-2)~ + FHLST8_werent
++ @434 + FHLST8_harder
END

IF ~~ FHLST8_help
SAY @435
++ @436 + FHLST8_feel
++ @437 + FHLST8_forget
IF ~GlobalGT("FHLSebLike","GLOBAL",2)~ THEN REPLY @438 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_insult
IF ~GlobalLT("FHLSebLike","GLOBAL",3)~ THEN REPLY @438 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_insult
END

IF ~~ FHLST8_estimate
SAY @439
IF ~~ EXIT
END

IF ~~ FHLST8_forget
SAY @440
=
@441
IF ~~ EXIT
END

IF ~~ FHLST8_feel
SAY @442
IF ~~ EXIT
END

IF ~~ FHLST8_face
SAY @443
IF ~~ EXIT
END

IF ~~ FHLST8_ee1
SAY @417
++ @444 + FHLST8_ee2
END

IF ~~ FHLST8_ee2
SAY @445
++ @446 + FHLST8_ee3
END

IF ~~ FHLST8_ee3
SAY @447
++ @414 + FHLST8_forget
++ @415 + FHLST8_feel
END

IF ~~ FHLST8_annoying
SAY @448
=
@449
IF ~~ EXIT
END

IF ~~ FHLST8_right
SAY @450
=
@451
IF ~~ EXIT
END

IF ~~ FHLST8_quiet2
SAY @452
IF ~~ EXIT
END

IF ~~ FHLST8_question
SAY @453
IF ~~ EXIT
END

IF ~~ FHLST8_disconcert
SAY @454
IF ~~ EXIT
END

IF ~~ FHLST8_better
SAY @455
=
@456
IF ~~ EXIT
END

IF ~~ FHLST8_enjoy
SAY @457
IF ~~ EXIT
END

IF ~~ FHLST8_fault
SAY @458
IF ~~ EXIT
END

IF ~~ FHLST8_werent
SAY @459
=
@460
IF ~~ EXIT
END

IF ~~ FHLST8_harder
SAY @461
IF ~~ EXIT
END

IF ~~ FHLST8_insult
SAY @462
IF ~~ EXIT
END

//Sebastian talk 9
IF ~Global("FHLSebTalk","GLOBAL",18)~ THEN BEGIN FHLST9
SAY @463
++ @464 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_sigh
++ @465 + FHLST9_fine
++ @466 + FHLST9_whynot
++ @467 + FHLST9_bother
END

IF ~~ FHLST9_sigh
SAY @468
++ @469 + FHLST9_under
++ @470 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_nomore
++ @471 + FHLST9_family
END

IF ~~ FHLST9_fine
SAY @472
++ @473 + FHLST9_wrong
++ @474 + FHLST9_grown
++ @475 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST9_family
END

IF ~~ FHLST9_whynot
SAY @476
++ @477 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_nomore
++ @478 + FHLST9_regret
++ @479 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST9_patience
++ @480 + FHLST9_nonsense
END

IF ~~ FHLST9_bother
SAY @481
IF ~~ EXIT
END

IF ~~ FHLST9_under
SAY @482
=
@483
++ @484 + FHLST9_bother
++ @485 + FHLST9_time
++ @486 + FHLST9_family
END

IF ~~ FHLST9_nomore
SAY @487
=
@488
++ @484 + FHLST9_bother
++ @485 + FHLST9_time
++ @486 + FHLST9_family
END

IF ~~ FHLST9_family
SAY @489
=
@490
++ @491 + FHLST9_serious
IF ~GlobalGT("FHLSebLike","GLOBAL",5)~ THEN REPLY @492 + FHLST9_happenedlike
IF ~GlobalLT("FHLSebLike","GLOBAL",6)~ THEN REPLY @492 + FHLST9_happeneddislike
++ @493 + FHLST9_personal
++ @494 + FHLST9_lyel
END

IF ~~ FHLST9_wrong
SAY @495
=
@496
++ @484 + FHLST9_bother
++ @485 + FHLST9_time
++ @486 + FHLST9_family
END

IF ~~ FHLST9_grown
SAY @497
IF ~~ EXIT
END

IF ~~ FHLST9_regret
SAY @498
=
@499
IF ~~ EXIT
END

IF ~~ FHLST9_patience
SAY @500
=
@501
IF ~~ EXIT
END

IF ~~ FHLST9_nonsense
SAY @502
IF ~~ EXIT
END

IF ~~ FHLST9_time
SAY @503
=
@504
=
@490
++ @491 + FHLST9_serious
IF ~GlobalGT("FHLSebLike","GLOBAL",5)~ THEN REPLY @492 + FHLST9_happenedlike
IF ~GlobalLT("FHLSebLike","GLOBAL",6)~ THEN REPLY @492 + FHLST9_happeneddislike
++ @493 + FHLST9_personal
++ @494 + FHLST9_lyel
END

IF ~~ FHLST9_amaze
SAY @505
IF ~~ EXIT
END

IF ~~ FHLST9_serious
SAY @506
IF ~~ EXIT
END

IF ~~ FHLST9_happenedlike
SAY @507
=
@508
IF ~~ EXIT
END

IF ~~ FHLST9_happeneddislike
SAY @509
IF ~~ EXIT
END

IF ~~ FHLST9_personal
SAY @510
IF ~~ EXIT
END

IF ~~ FHLST9_lyel
SAY @511
=
@512
IF ~~ EXIT
END

//Sebastian Talk 10 - mdp
IF ~AreaType(OUTDOOR) Global("FHLLuxTalk","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebTalk","GLOBAL",20)~ THEN BEGIN FHLST10MDP
SAY @513
++ @514 + FHLST10MDP_nothing
++ @515 + FHLST10MDP_shoulder
++ @516 + FHLST10MDP_help
++ @517 + FHLST10MDP_thinking
++ @518 + FHLST10MDP_joke
END

IF ~~ FHLST10MDP_nothing
SAY @519
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_shoulder
SAY @520
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_help
SAY @521
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_sudden
SAY @522
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_thinking
SAY @523
++ @524 + FHLST10MDP_pretending
++ @525 DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST10MDP_friend
++ @526 + FHLST10MDP_end
END

IF ~~ FHLST10MDP_joke
SAY @527
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_good
SAY @528
++ @529 + FHLST10MDP_believe
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY @530 + FHLST10MDP_wis2
++ @531 + FHLST10MDP_sorry
++ @532 + FHLST10MDP_stupid
END

IF ~~ FHLST10MDP_believe
SAY @533
=
@534
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2
SAY @535
++ @536 + FHLST10MDP_wis2family
++ @537 + FHLST10MDP_wis2owe
++ @538 + FHLST10MDP_wis2right
++ @539 + FHLST10MDP_wis2writing
END

IF ~~ FHLST10MDP_sorry
SAY @540
=
@541
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_stupid
SAY @542
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_pretending
SAY @543
=
@544
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_friend
SAY @545
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_end
SAY @546
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_wis2family
SAY @547
=
@548
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2owe
SAY @549
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2right
SAY @550
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2writing
SAY @551
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

//Sebastian talk 10 MDP - indoors

IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602") Global("FHLLuxTalk","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebTalk","GLOBAL",20)~ THEN BEGIN FHLST10MDPinn
SAY @552
++ @514 + FHLST10MDP_nothing
++ @515 + FHLST10MDP_shoulder
++ @553 + FHLST10MDP_help
++ @517 + FHLST10MDP_thinking
++ @518 + FHLST10MDP_joke
END


//Banter chains
CHAIN BFHLSEB FHLST1_whatswrong
@554
== BJAHEIR IF ~InParty("Jaheira")~ THEN
@555
== BCERND IF ~InParty("Cernd")~ THEN
@556
== BFHLSEB
@18
END
++ @10 + FHLST1_natural
++ @11 + FHLST1_okay
++ @12 + FHLST1_why
++ @13 + FHLST1_whatever
++ @14 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems

CHAIN BFHLSEB FHLST3_playwright
@557
== BFHLAND IF ~InParty("FHLAND")~ THEN
@558
== BFHLSEB IF ~InParty("FHLAND")~ THEN
@559
=
@560
DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT

CHAIN BFHLSEB FHLST4_yes
@561
== FHLANDJ
@562
== BFHLSEB
@563
END
++ @564 + FHLST4_wait
++ @565 + FHLST4_neither

CHAIN BFHLSEB FHLST4_private
@566
== FHLANDJ
@562
== BFHLSEB
@563
END
++ @564 + FHLST4_wait
++ @565 + FHLST4_neither

CHAIN BFHLSEB FHLST4_good
@567
== FHLANDJ
@568
== BFHLSEB
@569
== FHLANDJ
@570
== BFHLSEB
@571
== FHLANDJ
@572
== BFHLSEB
@563
END
++ @564 + FHLST4_wait
++ @565 + FHLST4_neither

CHAIN BFHLSEB FHLST4_no
@573
== FHLANDJ
@568
== BFHLSEB
@569
== FHLANDJ
@570
== BFHLSEB
@571
== FHLANDJ
@572
== BFHLSEB
@563
END
++ @574 + FHLST4_wait
++ @575 DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST4_defno

CHAIN BFHLSEB FHLST4_wait
@576
== FHLANDJ
@577
== BFHLSEB
@578
END
IF ~~ THEN GOTO FHLST4_musical

CHAIN BFHLSEB FHLST4_neither
@579
== FHLANDJ
@577
== BFHLSEB
@578
END
IF ~~ THEN GOTO FHLST4_musical

CHAIN BFHLSEB FHLST4_musical
@580
=
@581
=
@582
=
@583
=
@584
=
@585
=
@586
== BAERIE IF ~InParty("Aerie")~ THEN
@587
== BANOMEN IF ~InParty("Anomen")~ THEN
@588
== BCERND IF ~InParty("Cernd")~ THEN
@589
== BEDWIN IF ~InParty("Edwin")~ THEN
@590
== BHAERDA IF ~InParty("Haerdalis")~ THEN
@591
== BJAN IF ~InParty("Jan")~ THEN
@592
== BJAHEIR IF ~InParty("Jaheira")~ THEN
@593
== BKELDOR IF ~InParty("Keldorn")~ THEN
@594
== BKORGAN IF ~InParty("Korgan")~ THEN
@595
== BMAZZY IF ~InParty("Mazzy")~ THEN
@596
== BMINSC IF ~InParty("Minsc")~ THEN
@597
== BNALIA IF ~InParty("Nalia")~ THEN
@598
== BVALYGA IF ~InParty("Valygar")~ THEN
@599
== BVICONI IF ~InParty("Viconia")~ THEN
@600
== BYOSHIM IF ~InParty("Yoshimo")~ THEN
@601
== IMOEN2J IF ~InParty("Imoen2")~ THEN
@602
== BFHLAND
@603
== BFHLSEB
@604
END
++ @605 + FHLST4_fantastic
++ @606 + FHLST4_rhyme
++ @607 + FHLST4_light
++ @608 + FHLST4_weak
++ @609 + FHLST4_confused
++ @610 + FHLST4_awful
++ @611 + FHLST4_fun
++ @612 + FHLST4_amuse

CHAIN BFHLSEB FHLST4_rhyme
@613
== BFHLAND
@614
== BFHLSEB
@615
END
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY @616 + FHLST4_fun
++ @617 + FHLST4_half
++ @618 + FHLST4_awful
++ @619 + FHLST4_fun

CHAIN BFHLSEB FHLST4_worry
@620
== BFHLAND
@621
== BFHLSEB
@622
EXIT

CHAIN BFHLSEB FHLST4_funny
@623
== BFHLAND
@624
== BFHLSEB
@625
EXIT

CHAIN FHLANDJ FHLST4_drama2
@568
== BFHLSEB
@626
== BFHLAND
@627
== BFHLSEB
@571
== BFHLAND
@628
== BFHLSEB
@629
=
@630
== BFHLAND
@631
== BFHLSEB
@632
=
@633
=
@634
=
@635
=
@636
=
@637
=
@638
=
@639
=
@640
== BAERIE IF ~InParty("Aerie")~ THEN
@587
== BANOMEN IF ~InParty("Anomen")~ THEN
@641
== BCERND IF ~InParty("Cernd")~ THEN
@589
== BEDWIN IF ~InParty("Edwin")~ THEN
@590
== BHAERDA IF ~InParty("Haerdalis")~ THEN
@591
== BJAN IF ~InParty("Jan")~ THEN
@642
== BJAHEIR IF ~InParty("Jaheira")~ THEN
@643
== BKELDOR IF ~InParty("Keldorn")~ THEN
@644
== BKORGAN IF ~InParty("Korgan")~ THEN
@595
== BMAZZY IF ~InParty("Mazzy")~ THEN
@596
== BMINSC IF ~InParty("Minsc")~ THEN
@645
== BNALIA IF ~InParty("Nalia")~ THEN
@598
== BVALYGA IF ~InParty("Valygar")~ THEN
@599
== BVICONI IF ~InParty("Viconia")~ THEN
@646
== BYOSHIM IF ~InParty("Yoshimo")~ THEN
@647
== IMOEN2J IF ~InParty("Imoen2")~ THEN
@648
== BFHLAND
@649
== BFHLSEB
@650
END
++ @651 EXTERN BFHLSEB FHLST4_fantastic
++ @652 EXTERN BFHLSEB FHLST4_melo
++ @653 EXTERN BFHLSEB FHLST4_weak
++ @654 EXTERN BFHLSEB FHLST4_confused
++ @655 EXTERN BFHLSEB FHLST4_awful
++ @656 EXTERN BFHLSEB FHLST4_fun





//Interparty Banters//

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebAerieTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebAerie1
@657
DO ~SetGlobal("FHLSebAerieTalk","GLOBAL",1)~
== BAERIE
@658
== BFHLSEB
@659
== BAERIE
@660
== BFHLSEB
@661
== BAERIE
@662
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebAerieTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebAerie2
@663
DO ~SetGlobal("FHLSebAerieTalk","GLOBAL",2)~
== BAERIE
@664
== BFHLSEB
@665
== BAERIE
@666
== BFHLSEB
@667
== BAERIE
@668
== BFHLSEB
@669
== BAERIE
@670
== BFHLSEB
@671
== BAERIE
@672
== BFHLSEB
@673
== BAERIE
@674
== BFHLSEB
@675
EXIT

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebUnorderAerieTalk1","GLOBAL",0)~ THEN BAERIE FHLSebAerie3
@676
DO ~SetGlobal("FHLSebUnorderAerieTalk1","GLOBAL",1)~
== BFHLSEB
@677
== BAERIE
@678
== BFHLSEB
@679
== BAERIE
@680
== BFHLSEB
@681
== BAERIE
@682
== BFHLSEB
@683
=
@684
== BAERIE
@685
== BFHLSEB
@686
=
@687
== BAERIE
@688
== BFHLSEB
@689
=
@690
== BAERIE
@691
EXIT

CHAIN IF ~InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebUnorderAerieTalk2","GLOBAL",0)~ THEN BFHLSEB FHLSebAerie4
@692
DO ~SetGlobal("FHLSebUnorderAerieTalk2","GLOBAL",1)~
== BAERIE
@693
== BFHLSEB
@694
== BAERIE
@695
== BFHLSEB
@696
== BFHLAND
@697
== BAERIE
@698
== BFHLSEB
@699
== BFHLAND
@700
== BAERIE
@701
== BFHLSEB
@702
== BAERIE
@703
== BFHLSEB
@704
== BAERIE
@705
== BFHLAND
@706
== BAERIE
@707
== BFHLSEB
@708
== BAERIE
@709
== BFHLSEB
@710
EXIT

CHAIN IF ~InParty("Anomen")
Global("FHLSebAnoTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebAno1
@711
DO ~SetGlobal("FHLSebAnoTalk","GLOBAL",1)~
== BANOMEN
@712
== BFHLSEB
@713
== BANOMEN
@714
== BFHLSEB
@715
== BANOMEN
@716
== BFHLSEB
@717
EXIT

CHAIN IF ~InParty("Anomen")
Global("FHLSebAnoTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebAnoLDP1
@718
DO ~SetGlobal("FHLSebAnoTalkLDP","GLOBAL",1)~
== BANOMEN
@719
== BFHLSEB
@720
== BANOMEN
@721
== BFHLSEB
@722
== BANOMEN
@723
EXIT

CHAIN IF ~InParty("FHLSEB")
Global("FHLSebAnoTalk2","GLOBAL",0)
Alignment("Anomen",LAWFUL_GOOD)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BANOMEN FHLSebAno2
@724
DO ~SetGlobal("FHLSebAnoTalk2","GLOBAL",1)~
== BFHLSEB
@725
== BANOMEN
@726
== BFHLSEB
@727
== BANOMEN IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@728
== BFHLSEB IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@729
EXIT

CHAIN IF ~InParty("FHLSEB")
Global("FHLSebAnoTalk3","GLOBAL",0)
Alignment("Anomen",CHAOTIC_NEUTRAL)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BANOMEN FHLSebAno3
@730
=
@731
DO ~SetGlobal("FHLSebAnoTalk3","GLOBAL",1)~
== BFHLSEB
@732
=
@733
EXIT

CHAIN IF ~InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHLSebCerndTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebCernd1
@734
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",1)~
== BCERND
@735
== BFHLSEB
@736
== BCERND
@737
== BFHLSEB
@738
=
@739
EXIT

CHAIN IF ~Global("FHLSebCerndTalk","GLOBAL",1)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebCernd2
@740
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",2)~
== BCERND
@741
== BFHLSEB
@742
EXIT

CHAIN IF ~Global("FHLSebCerndTalk","GLOBAL",2)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
AreaType(CITY)~ THEN BFHLSEB FHLSebCernd3
@743
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",2)~
== BCERND
@744
== BFHLSEB
@745
== BCERND
@746
== BFHLSEB
@747
EXIT

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebEdTalk","GLOBAL",0)~ THEN BEDWIN FHLSebEd1
@748
DO ~SetGlobal("FHLSebEdTalk","GLOBAL",1)~
== BFHLSEB
@749
== BEDWIN
@750
=
@751
== BFHLSEB
@752
== BEDWIN
@753
== BFHLSEB
@754
=
@755
== BEDWIN
@756
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHLSebEdTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebEd2
@757
DO ~SetGlobal("FHLSebEdTalk","GLOBAL",2)~
== BEDWIN
@758
== BFHLSEB
@759
== BEDWIN
@760
== BFHLSEB
@761
== BEDWIN
@762
== BFHLSEB
@763
== BEDWIN
@764
== BFHLSEB
@765
== BEDWIN
@766
== BFHLSEB
@767
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHLSebEdwinaTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebEdwina
@768
DO ~SetGlobal("FHLSebEdwinaTalk","GLOBAL",1)~
== BEDWIN
@769
== BFHLSEB
@770
== BEDWIN
@771
== BFHLSEB
@772
== BEDWIN
@773
== BFHLSEB
@774
== BEDWIN
@775
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebHaerTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebHaer1
@776
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",1)~
== BHAERDA
@777
== BFHLSEB
@778
== BHAERDA
@779
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebHaerTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebHaer2
@780
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",2)~
== BHAERDA
@781
== BFHLSEB
@782
== BHAERDA
@783
== BFHLSEB
@784
=
@785
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",2)~ THEN BFHLSEB FHLSebHaer3
@786
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",3)~
== BHAERDA
@787
== BFHLSEB
@788
== BFHLAND
@789
DO ~RestParty()~
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",3)
InParty("FHLAND")
See("FHLAND")
InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebHaer3
@790
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",4)~
== BHAERDA
@791
== BFHLSEB
@792
=
@793
== BHAERDA
@794
== BFHLSEB
@795
== BFHLAND
@796
== BFHLSEB
@797
== BFHLAND
@798
== BHAERDA
@799
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",4)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
PartyRested()
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BHAERDA FHLSebHaer4
@800
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",5)~
== BFHLSEB
@801
== BHAERDA
@802
EXIT

CHAIN IF ~Global("FHLSebHaerTalkMDP","GLOBAL",0)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
TimeGT(5)
TimeLT(8)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BHAERDA FHLSebHaerMDP
@803
DO ~SetGlobal("FHLSebHaerTalkMDP","GLOBAL",1)~
== BFHLSEB
@804
== BHAERDA
@805
== BFHLSEB
@806
== BHAERDA
@807
== BFHLSEB
@808
=
@809
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebIm1
@810
DO ~SetGlobal("FHLSebImTalk","GLOBAL",1)~
== BIMOEN2
@811
== BFHLSEB
@812
== BIMOEN2
@813
== BFHLSEB
@814
== BIMOEN2
@815
== BFHLSEB
@816
== BIMOEN2
@817
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLSebIm2
@818
DO ~SetGlobal("FHLSebImTalk","GLOBAL",2)~
== BFHLSEB
@819
== BIMOEN2
@820
== BFHLSEB
@821
== BIMOEN2
@822
== BFHLSEB
@823
== BIMOEN2
@824
== BFHLSEB
@825
== BIMOEN2
@826
== BFHLSEB
@827
== BIMOEN2
@828
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",2)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebIm3
@829
DO ~SetGlobal("FHLSebImTalk","GLOBAL",3)~
== BIMOEN2
@830
== BFHLSEB
@831
== BIMOEN2
@832
== BFHLSEB
@833
== BIMOEN2
@834
== BFHLSEB
@835
== BIMOEN2
@836
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLSebIm4MDP
@837
DO ~SetGlobal("FHLSebImTalk","GLOBAL",4)~
== BFHLSEB
@838
== BIMOEN2
@839
== BFHLSEB
@840
== BIMOEN2
@841
== BFHLSEB
@842
=
@843
== BIMOEN2 IF ~InParty("Nath")~ THEN
@844
== BIMOEN2 IF ~!InParty("Nath")~ THEN
@845
== BFHLSEB
@846
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah1
@847
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",1)~
== BJAHEIR
@848
== BFHLSEB
@849
=
@850
== BJAHEIR
@851
== BFHLSEB
@852
== BJAHEIR
@853
== BFHLSEB
@854
== BJAHEIR
@855
== BFHLSEB
@856
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah2
@857
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",2)~
== BJAHEIR
@858
== BFHLSEB
@859
=
@860
== BJAHEIR
@861
== BFHLSEB
@862
== BJAHEIR
@863
== BFHLSEB
@864
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",2)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah3
@865
=
@866
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",3)~
== BJAHEIR
@867
== BFHLSEB
@868
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah4
@869
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",4)~
== BJAHEIR
@870
== BFHLSEB
@871
== BJAHEIR
@872
== BFHLSEB
@873
== BJAHEIR
@874
EXIT

CHAIN IF ~Global("FHLSebJahRomTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN BFHLSEB FHLSebJahRom
@875
DO ~SetGlobal("FHLSebJahRomTalk","GLOBAL",1)~
== BJAHEIR
@876
== BFHLSEB
@877
== BJAHEIR
@878
== BFHLSEB
@879
== BJAHEIR
@880
== BFHLSEB
@881
== BJAHEIR
@882
== BFHLSEB
@883
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLSebJan1
@884
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",1)~
== BFHLSEB
@885
=
@886
== BJAN
@887
=
@888
== BFHLSEB
@889
== BJAN
@890
== BFHLSEB
@891
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLSebJan2
@892
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",2)~
== BFHLSEB
@893
== BJAN
@894
== BFHLSEB
@895
== BJAN
@896
== BFHLSEB
@897
== BJAN
@898
== BFHLSEB
@899
== BJAN
@900
== BFHLSEB
@901
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",2)
GlobalLT("FHLMDP","GLOBAL",1)
InParty("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJan3
@902
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",3)~
== BJAN
@903
== BFHLSEB
@904
== BJAN
@905
== BFHLSEB
@906
== BJAN
@907
== BFHLSEB
@908
== BJAN
@909
== BFHLSEB
@910
== BJAN
@911
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",0)
InParty("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebKel1
@912
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",1)~
== BKELDOR
@913
== BFHLSEB
@914
== BKELDOR
@915
== BFHLSEB
@916
== BKELDOR
@917
== BFHLSEB
@918
== BKELDOR
@919
== BFHLSEB
@920
== BKELDOR
@921
== BFHLSEB
@922
== BKELDOR
@923
== BFHLSEB
@924
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLLDP","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)~ THEN BKELDOR FHLSebKel2
@925
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",2)~
== BFHLSEB
@926
== BKELDOR
@927
== BFHLSEB
@928
== BKELDOR
@929
== BFHLSEB
@930
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",2)
InParty("KELDORN")
!StateCheck("KELDORN",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BFHLSEB FHLSebKel3
@931
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",3)~
== BKELDOR
@932
== BFHLSEB
@933
== BKELDOR
@934
== BFHLSEB
@935
== BKELDOR
@936
== BFHLSEB
@937
== BANOMEN IF ~InParty("Anomen")~ THEN
@938
== BJAN IF ~InParty("Jan")~ THEN
@939
== BKELDOR
@940
== BFHLSEB IF ~InParty("Anomen")~ THEN
@941
EXIT

CHAIN IF ~GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebKelTalk","GLOBAL",2)
InParty("FHLSEB") See("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BKELDOR FHLSebKel3MDP
@942
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",3)~
== BFHLSEB
@943
== BKELDOR
@944
== BFHLSEB
@945
=
@946
== BKELDOR
@947
== BFHLSEB
@948
== BKELDOR
@949
== BFHLSEB
@950
== BKELDOR
@951
== BFHLSEB
@952
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",0)
InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebKorg1
@953
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",1)~
== BKORGAN
@954
== BFHLSEB
@955
=
@956
== BKORGAN
@957
== BFHLSEB
@958
== BKORGAN
@959
== BFHLSEB
@960
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BKORGAN FHLSebKorg2
@961
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",2)~
== BFHLSEB
@962
== BKORGAN
@963
== BFHLSEB
@964
== BKORGAN
@965
== BFHLSEB
@966
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BKORGAN FHLSebKorg3
@967
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",3)~
== BFHLSEB
@968
== BKORGAN
@969
== BFHLSEB
@970
== BKORGAN
@971
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BKORGAN FHLSebKorg3a
@972
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",3)~
== BFHLSEB
@973
== BKORGAN
@974
=
@975
== BFHLSEB
@976
== BKORGAN
@977
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMazSeb1
@978
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",1)~
== BMAZZY
@979
== BFHLSEB
@980
== BMAZZY
@981
== BFHLSEB
@982
== BMAZZY
@983
== BFHLSEB
@984
== BMAZZY
@985
== BFHLSEB
@986
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",1)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMazSeb2
@987
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",2)~
== BMAZZY
@988
== BFHLSEB
@989
== BMAZZY
@990
== BFHLSEB
@991
=
@992
== BMAZZY
@993
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMAZZY FHLMazSeb3
@994
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",3)~
== BFHLSEB
@995
== BMAZZY
@996
== BFHLSEB
@997
== BMAZZY
@998
== BFHLSEB
@999
== BMAZZY
@1000
== BFHLSEB IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN
@1001
== BFHLSEB IF ~Global("FHLMDP","GLOBAL",0)~ THEN
@1002
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",0)
InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMinscSeb1
@1003
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",1)~
== BMINSC
@1004
== BFHLSEB
@1005
== BMINSC
@1006
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMINSC FHLMinscSeb2
@1007
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",2)~
== BFHLSEB
@1008
== BMINSC
@1009
== BFHLSEB
@1010
== BMINSC
@1011
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMINSC FHLMinscSeb3
@1012
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",3)~
== BFHLSEB
@1013
== BMINSC
@1014
== BFHLSEB
@1015
== BMINSC
@1016
== BFHLSEB
@1017
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",0)
InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLNalSeb1
@1018
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",1)~
== BNALIA
@1019
== BFHLSEB
@1020
=
@1021
== BNALIA
@1022
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BNALIA FHLNalSeb2
@1023
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",2)~
== BFHLSEB
@1024
== BNALIA
@1025
== BFHLSEB
@1026
== BNALIA
@1027
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BNALIA FHLNalSeb3
@1028
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",3)~
== BFHLSEB
@1029
=
@1030
== BNALIA
@1031
== BFHLSEB
@1032
EXIT

CHAIN IF ~Global("FHLValSebTalkMDP","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BFHLSEB FHLValSebMDP
@1033
DO ~SetGlobal("FHLValSebTalkMDP","GLOBAL",1)~
== BVALYGA
@1034
== BFHLSEB
@1035
== BVALYGA
@951
== BFHLSEB
@1036
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb1
@1037
DO ~SetGlobal("FHLValSebTalk","GLOBAL",1)~
== BVALYGA
@1038
== BFHLSEB
@1039
== BVALYGA
@1040
== BFHLSEB
@1041
=
@1042
=
@1043
== BVALYGA
@1044
== BFHLSEB
@1045
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",1)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb2
@1046
DO ~SetGlobal("FHLValSebTalk","GLOBAL",2)~
== BVALYGA
@1047
== BFHLSEB
@1048
== BVALYGA
@1049
== BFHLSEB
@1050
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",2)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb3
@1051
DO ~SetGlobal("FHLValSebTalk","GLOBAL",3)~
== BVALYGA
@1052
== BFHLSEB
@1053
== BVALYGA
@1054
=
@1055
== BFHLSEB
@1056
=
@1057
EXIT

CHAIN IF ~Global("FHLSebVicTalk","GLOBAL",0)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)~ THEN BFHLSEB FHLSebVic1
@1058
DO ~SetGlobal("FHLSebVicTalk","GLOBAL",1)~
== BVICONI
@1059
== BFHLSEB
@1060
== BVICONI
@1061
== BFHLSEB
@1062
== BVICONI
@1063
== BFHLSEB
@1064
== BVICONI
@1065
=
@1066
== BFHLSEB
@1067
=
@1068
EXIT

CHAIN IF ~Global("FHLSebVicTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
OR(2)
PartyHasItem("FHLBOOK")
PartyHasItem("FHLBK2")~ THEN BVICONI FHLSebVic2
@1069
DO ~SetGlobal("FHLSebVicTalk","GLOBAL",2)~
== BFHLSEB
@1070
== BVICONI
@1071
== BFHLSEB
@1072
== BVICONI
@1073
== BFHLSEB
@1074
== BVICONI
@1075
== BFHLSEB
@1076
== BFHLAND
@1077
== BFHLSEB
@1078
== BVICONI
@1079
== BFHLSEB
@1080
== BFHLAND
@1081
EXIT

CHAIN IF ~Global("FHLSebVicLDPTalk","GLOBAL",0)
GlobalGT("FHLLDP","GLOBAL",1)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebVicLDP
@1082
DO ~SetGlobal("FHLSebVicLDPTalk","GLOBAL",1)~
== BVICONI
@1083
== BFHLSEB
@1084
=
@1085
EXIT

CHAIN IF ~Global("FHLSebVicMDPTalk","GLOBAL",0)
GlobalGT("FHLMDP","GLOBAL",1)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebVicMDP
@1086
DO ~SetGlobal("FHLSebVicMDPTalk","GLOBAL",1)~
== BVICONI
@1087
== BFHLSEB
@1088
== BVICONI
@1089
=
@1090
=
@1091
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb1
@1092
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",1)~
== BYOSHIM
@1093
== BFHLSEB
@1094
== BYOSHIM
@1095
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb2
@1096
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",2)~
== BYOSHIM
@1097
== BFHLSEB
@1098
== BYOSHIM
@1099
== BFHLSEB
@1100
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",1)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb3
@1101
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",2)~
== BYOSHIM
@1102
== BFHLSEB
@1103
== BYOSHIM
@1104
== BFHLSEB
@1105
EXIT
