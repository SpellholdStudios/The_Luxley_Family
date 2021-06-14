BEGIN BFHLAND

//Talk1//
IF ~Global("FHLAndTalk","GLOBAL",2)~ THEN BEGIN FHLAT1
SAY @0
++ @1 + FHLAT1_remember
++ @2 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ @3 + FHLAT1_sebastian
++ @4 + FHLAT1_ask
END

IF ~~ FHLAT1_remember
SAY @5
++ @6 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ @3 + FHLAT1_sebastian
++ @4 + FHLAT1_ask
END

IF ~~ FHLAT1_sebastian
SAY @7
++ @8 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT1_lose
++ @9 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT1_lose
++ @10 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_lose2
++ @11 + FHLAT1_rude
END

IF ~~ FHLAT1_care
SAY @12
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT1_ask
SAY @13
=
@14
++ @15 + FHLAT1_rude
++ @16 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ @3 + FHLAT1_sebastian
END

IF ~~ FHLAT1_lose
SAY @17
IF ~~ THEN + FHLAT1_lose2
END

IF ~~ FHLAT1_lose2
SAY @18
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT1_rude
SAY @19
=
@18
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

//Talk2
IF ~Global("FHLAndTalk","GLOBAL",4)~ THEN BEGIN FHLAT2
SAY @20
++ @21 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_touchy
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @22 + FHLAT2_imoen
++ @23 + FHLAT2_foster
++ @24 + FHLAT2_bhaal
++ @25 + FHLAT2_really
END

IF ~~ FHLAT2_touchy
SAY @26
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT2_imoen
SAY @27
++ @28 + FHLAT2_bhaal
++ @29 + FHLAT2_touchy
++ @30 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_touchy
++ @31 + FHLAT2_bhaal
END

IF ~~ FHLAT2_foster
SAY @32
++ @33 + FHLAT2_touchy
++ @34 + FHLAT2_bhaal
END

IF ~~ FHLAT2_bhaal
SAY @35
++ @36 + FHLAT2_awful
++ @37 + FHLAT2_different
++ @38 + FHLAT2_power
++ @39 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_reputation
END

IF ~~ FHLAT2_really
SAY @40
++ @41 + FHLAT2_touchy
++ @42 + FHLAT2_notgood
END

IF ~~ FHLAT2_awful
SAY @43
++ @44  + FHLAT2_attention
++ @45 + FHLAT2_rathernot
++ @46 + FHLAT2_best
END

IF ~~ FHLAT2_different
SAY @47
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~ EXIT
END

IF ~~ FHLAT2_power
SAY @48
++ @49 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_business
++ @50 + FHLAT2_thanks
++ @51 + FHLAT2_foes
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @52 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_rescue
END

IF ~~ FHLAT2_reputation
SAY @53
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_notgood
SAY @54
++ @55 + FHLAT2_touchy
++ @56 + FHLAT2_bhaal
END

IF ~~ FHLAT2_attention
SAY @57
=
@58
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_rathernot
SAY @59
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_best
SAY @60
++ @61 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_likeyou
++ @62 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_myfight
++ @63 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_thanks
END

IF ~~ FHLAT2_thanks
SAY @64
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_business
SAY @65
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_foes
SAY @66
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_rescue
SAY @67
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_likeyou
SAY @68
=
@69
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_myfight
SAY @70
=
@71
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

//Talk3//

IF ~Global("FHLAndTalk","GLOBAL",6)~ THEN BEGIN FHLAT3
SAY @72
++ @73 + FHLAT3_yes
++ @74 + FHLAT3_power
++ @75 + FHLAT3_life
++ @76 + FHLAT3_bug
END

IF ~~ FHLAT3_yes
SAY @77
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_power
SAY @78
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_life
SAY @79
=
@80
++ @81 + FHLAT3_temp
++ @82 + FHLAT3_decide
++ @83 + FHLAT3_back
++ @84 + FHLAT3_seb
END

IF ~~ FHLAT3_bug
SAY @85
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_imagine
SAY @86
=
@87
++ @81 + FHLAT3_temp
++ @82 + FHLAT3_decide
++ @83 + FHLAT3_back
++ @84 + FHLAT3_seb
END

IF ~~ FHLAT3_temp
SAY @88
=
@89
++ @90 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_pat
++ @91 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_comp
++ @92 + FHLAT3_more
++ @93 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_safe
END

IF ~~ FHLAT3_decide
SAY @94
=
@95
++ @96 + FHLAT3_xav
++ @97 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_commit
++ @98 + FHLAT3_seb
++ @99 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_help
END

IF ~~ FHLAT3_back
SAY @100
=
@101
++ @96 + FHLAT3_xav
++ @97 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_commit
++ @98 + FHLAT3_seb
++ @99 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_help
END

IF ~~ FHLAT3_seb
SAY @102
=
@103
IF ~~ EXIT
END

IF ~~ FHLAT3_pat
SAY @104
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_comp
SAY @105
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_more
SAY @106
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_safe
SAY @107
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_xav
SAY @108
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_commit
SAY @109
IF ~~ EXIT
END

IF ~~ FHLAT3_help
SAY @110
IF ~~ + FHLAT3_excuse
END

IF ~~ FHLAT3_excuse
SAY @111
IF ~~ EXIT
END

//Talk4
IF ~Global("FHLAndTalk","GLOBAL",8)~ THEN BEGIN FHLAT4
SAY @112
++ @113 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT4_boast
++ @114 + FHLAT4_what
++ @115 + FHLAT4_where
++ @116 + FHLAT4_visit
END

IF ~~ FHLAT4_boast
SAY @117
++ @118 + FHLAT4_what
++ @119 + FHLAT4_where
++ @116 + FHLAT4_visit
END

IF ~~ FHLAT4_what
SAY @120
=
@121
=
@122
++ @123 + FHLAT4_close
++ @124 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT4_visit
++ @125 + FHLAT4_where
++ @126 + FHLAT4_less
END

IF ~~ FHLAT4_close
SAY @127
++ @128 + FHLAT4_complicated
++ @129 + FHLAT4_snobbish
++ @130 + FHLAT4_responsibility
++ @131 + FHLAT4_less
END

IF ~~ FHLAT4_responsibility
SAY @132
=
@133
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_visit
SAY @134
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_less
SAY @135
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_complicated
SAY @136
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_snobbish
SAY @137
=
@138
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_shaken
SAY @139
IF ~~ EXIT
END

IF ~~ FHLAT4_fault
SAY @140
IF ~~ EXIT
END

//Talk5//
IF ~Global("FHLAndTalk","GLOBAL",10)~ THEN BEGIN FHLAT5
SAY @141
++ @142 + FHLAT5_eaves
++ @143 + FHLAT5_what
++ @144 + FHLAT5_point
END

IF ~~ FHLAT5_eaves
SAY @145
IF ~~ THEN + FHLAT5_sorry
END

IF ~~ FHLAT5_what
SAY @146
IF ~~ THEN + FHLAT5_sorry
END

IF ~~ FHLAT5_point
SAY @147
++ @148 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT5_bother
++ @149 + FHLAT5_notalk
++ @150 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_notalk2
END

IF ~~ FHLAT5_sorry
SAY @151
++ @148 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT5_bother
++ @149 + FHLAT5_notalk
++ @150 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_notalk2
END

IF ~~ FHLAT5_bother
SAY @152
=
@153
++ @154 + FHLAT5_close
++ @155 + FHLAT5_want
++ @156 + FHLAT5_upset
++ @157 + FHLAT5_hurt
END

IF ~~ FHLAT5_notalk
SAY @158
IF ~~ THEN DO ~SetGlobal("FHLAT5","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT5_notalk2
SAY @159
IF ~~ THEN DO ~SetGlobal("FHLAT5","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT5_close
SAY @160
=
@161
=
@162
++ @163 + FHLAT5_sweet
++ @164 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_paternal
++ @165 + FHLAT5_parent
++ @166 + FHLAT5_pain
END

IF ~~ FHLAT5_want
SAY @167
=
@168
=
@169
++ @163 + FHLAT5_sweet
++ @164 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_paternal
++ @165 + FHLAT5_parent
++ @166 + FHLAT5_pain
END

IF ~~ FHLAT5_upset
SAY @170
IF ~~ THEN + FHLAT5_close
END

IF ~~ FHLAT5_hurt
SAY @171
IF ~~ THEN + FHLAT5_want
END

IF ~~ FHLAT5_admire
SAY @172
IF ~~ EXIT
END

IF ~~ FHLAT5_sweet
SAY @173
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_dare
SAY @174
IF ~~ EXIT
END

IF ~~ FHLAT5_paternal
SAY @175
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_parent
SAY @176
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_pain
SAY @177
IF ~~ THEN + FHLAT5_dare
END

//Andrei Talk 6a - if talked to Xavier//
IF ~Global("FHLAndTalk","GLOBAL",12) Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLAT6
SAY @178
++ @179 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_normal
++ @180 + FHLAT6_no
++ @181 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_doicare
++ @182 + FHLAT6_why
IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @183 + FHLAT6_xavier
END

IF ~~ FHLAT6_normal
SAY @184
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_freak
SAY @185
++ @186 + FHLAT6_relative
++ @187 + FHLAT6_isthatbad
++ @188 + FHLAT6_worthy
++ @189 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_relax
END

IF ~~ FHLAT6_no
SAY @190
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_doicare
SAY @191
++ @192 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_attend
++ @193 + FHLAT6_continue
END

IF ~~ FHLAT6_why
SAY @194
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_xavier
SAY @195
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_attend
SAY @196
IF ~~ EXIT
END

IF ~~ FHLAT6_continue
SAY @197
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_relative
SAY @198
++ @199 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ @200 + FHLAT6_differ
++ @201 + FHLAT6_silent
++ @202 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_isthatbad
SAY @203
=
@204
++ @199 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ @200 + FHLAT6_differ
++ @201 + FHLAT6_silent
++ @202 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_worthy
SAY @205
=
@206
++ @199 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ @200 + FHLAT6_differ
++ @201 + FHLAT6_silent
++ @202 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_relax
SAY @207
++ @199 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ @200 + FHLAT6_differ
++ @201 + FHLAT6_silent
++ @202 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_horrible
SAY @208
=
@209
IF ~~ EXIT
END

IF ~~ FHLAT6_differ
SAY @210
IF ~~ EXIT
END

IF ~~ FHLAT6_silent
SAY @211
=
@212
IF ~~ EXIT
END

IF ~~ FHLAT6_motivate
SAY @213
=
@214
IF ~~ EXIT
END

//Andrei Talk 6b - if you don't talk to Xavier//
IF ~Global("FHLAndTalk","GLOBAL",12) Global("FHLNoXavTalk","GLOBAL",1)~ THEN BEGIN FHLAT6
SAY @215
++ @216 + FHLAT6b_normal
++ @217 + FHLAT6_no
++ @218 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLAT6b_doicare
++ @219 + FHLAT6b_why
END

IF ~~ FHLAT6b_normal
SAY @220
IF ~~ THEN + FHLAT6b_freak
END

IF ~~ FHLAT6b_no
SAY @221
IF ~~ THEN + FHLAT6b_freak
END


IF ~~ FHLAT6b_doicare
SAY @222
IF ~~ EXIT
END

IF ~~ FHLAT6b_freak
SAY @223
++ @186 + FHLAT6b_relative
++ @224 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6b_worthy
++ @225 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_still
END

IF ~~ FHLAT6b_why
SAY @226
=
@227
++ @228 + FHLAT6b_better
++ @229 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLAT6b_worthy
++ @230 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_try
++ @231 + FHLAT6b_no
END

IF ~~ FHLAT6b_relative
SAY @232
IF ~~ THEN + FHLAT6b_still
END

IF ~~ FHLAT6b_worthy
SAY @233
IF ~~ THEN + FHLAT6b_still
END

IF ~~ FHLAT6b_better
SAY @234
=
@235
IF ~~ EXIT
END

IF ~~ FHLAT6b_try
SAY @236
IF ~~ EXIT
END

IF ~~ FHLAT6b_still
SAY @237
++ @238 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6b_responsible
++ @201 + FHLAT6b_silent
++ @239 + FHLAT6_differ
++ @240 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_try
END

IF ~~ FHLAT6b_responsible
SAY @241
IF ~~ THEN DO ~SetGlobal("FHLAndreiStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLAT6b_silent
SAY @242
IF ~~ EXIT
END

//Andrei Talk 7
IF ~Global("FHLAndTalk","GLOBAL",14)~ THEN BEGIN FHLAT7
SAY @243
++ @244 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT7_hear
++ @245 + FHLAT7_happy
++ @246 + FHLAT7_tone
++ @247 + FHLAT7_yes
++ @248 + FHLAT7_mean
END

IF ~~ FHLAT7_hear
SAY @249
=
@250
++ @251 + FHLAT7_stop
++ @252 + FHLAT7_calm
++ @253 + FHLAT7_idiot
END

IF ~~ FHLAT7_happy
SAY @254
++ @255+ FHLAT7_trust
++ @256 + FHLAT7_account
++ @257 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT7_forget
++ @258 + FHLAT7_calm
END

IF ~~ FHLAT7_tone
SAY @259
++ @260 + FHLAT7_alone
++ @261 + FHLAT7_shut
++ @262 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT7_leave
++ @258 + FHLAT7_calm
END

IF ~~ FHLAT7_shut
SAY @263
=
@264
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_yes
SAY @265
=
@266
++ @267 + FHLAT7_calm
++ @268 + FHLAT7_idiot
END

IF ~~ FHLAT7_mean
SAY @269
++ @270 + FHLAT7_calm
++ @271 + FHLAT7_talk
++ @272 + FHLAT7_forget
END

IF ~~ FHLAT7_calm
SAY @273
=
@274
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_forget
SAY @275
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_trust
SAY @276
++ @277 + FHLAT7_forget
++ @278 + FHLAT7_stop
++ @279 + FHLAT7_forget
END

IF ~~ FHLAT7_leave
SAY @280
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_alone
SAY @281
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_talk
SAY @282
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_idiot
SAY @283
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_stop
SAY @284
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_account
SAY @285
++ @286 + FHLAT7_noexact
++ @246 + FHLAT7_tone
++ @287 + FHLAT7_hear
END

IF ~~ FHLAT7_noexact
SAY @288
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApology","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

//Andrei talk 8
IF ~Global("FHLAndTalk","GLOBAL",16)~ THEN BEGIN FHLAT8
SAY @289
IF ~RandomNum(4,1)~ THEN REPLY @290 + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY @290 + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY @290 + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY @290 + FHLAT8_what4
++ @291 + FHLAT8_no
++ @292 + FHLAT8_why
END

IF ~~ FHLAT8_what1
SAY @293
++ @294 + FHLAT8_danger
++ @295 + FHLAT8_snow
++ @296 + FHLAT8_annoy
++ @297 + FHLAT8_perhaps
END

IF ~~ FHLAT8_what2
SAY @298
++ @299 + FHLAT8_cramp
++ @300 + FHLAT8_corrupt
++ @301 + FHLAT8_see
++ @302 + FHLAT8_perhaps
END

IF ~~ FHLAT8_what3
SAY @303
++ @304 + FHLAT8_boring
++ @305 + FHLAT8_beautiful
++ @306 + FHLAT8_stuffy
++ @302 + FHLAT8_perhaps
END

IF ~~ FHLAT8_what4
SAY @307
++ @308 + FHLAT8_spider
++ @309 + FHLAT8_under
++ @310 + FHLAT8_living
++ @302 + FHLAT8_perhaps
END

IF ~~ FHLAT8_no
SAY @311
IF ~~ EXIT
END

IF ~~ FHLAT8_why
SAY @312
IF ~RandomNum(4,1)~ THEN REPLY @313 + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY @313 + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY @313 + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY @313 + FHLAT8_what4
++ @291 + FHLAT8_no
IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @314 + FHLAT8_seb
END

IF ~~ FHLAT8_danger
SAY @315
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_snow
SAY @316
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_annoy
SAY @317
=
@318
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_perhaps
SAY @319
IF ~~ EXIT
END

IF ~~ FHLAT8_cramp
SAY @320
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_corrupt
SAY @321
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_see
SAY @322
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_boring
SAY @323
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_beautiful
SAY @324
IF ~~ EXIT
END

IF ~~ FHLAT8_stuffy
SAY @325
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_spider
SAY @326
=
@327
IF ~~ EXIT
END

IF ~~ FHLAT8_under
SAY @328
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_living
SAY @329
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_seb
SAY @330
IF ~RandomNum(4,1)~ THEN REPLY @313 + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY @313 + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY @313 + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY @313 + FHLAT8_what4
++ @291 + FHLAT8_no
END

IF ~~ FHLAT8_dwell
SAY @331
IF ~~ EXIT
END


//Andrei Talk 9
IF ~Global("FHLAndTalk","GLOBAL",18)~ THEN BEGIN FHLAT9
SAY @332
++ @333 + FHLAT9_proposition1
++ @334 DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLAT9_proposition2
++ @335 + FHLAT9_given
++ @336 DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT9_friends
IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @337 + FHLAT9_jaheira
IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @338 + FHLAT9_jaheira
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @339 + FHLAT9_viconia
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @340 + FHLAT9_anomen
IF ~Global("NathRomanceActive","GLOBAL",2)~ THEN REPLY @341 + FHLAT9_anomen
END

IF ~~ FHLAT9_jaheira
SAY @342
++ @343 + FHLAT9_backbone
++ @344 + FHLAT9_gorion
++ @345 + FHLAT9_home
++ @346 + FHLAT9_gorion
END

IF ~~ FHLAT9_viconia
SAY @347
++ @343 + FHLAT9_backbone
++ @344 + FHLAT9_gorion
++ @345 + FHLAT9_home
++ @346 + FHLAT9_gorion
END

IF ~~ FHLAT9_anomen
SAY @348
++ @343 + FHLAT9_backbone
++ @344 + FHLAT9_gorion
++ @345 + FHLAT9_home
++ @346 + FHLAT9_gorion
END

IF ~~ FHLAT9_friends
SAY @349
++ @343 + FHLAT9_backbone
++ @344 + FHLAT9_gorion
++ @345 + FHLAT9_home
++ @346 + FHLAT9_gorion
END

IF ~~ FHLAT9_given
SAY @350
++ @343 + FHLAT9_backbone
++ @344 + FHLAT9_gorion
++ @345 + FHLAT9_home
++ @346 + FHLAT9_gorion
END

IF ~~ FHLAT9_proposition1
SAY @351
++ @352 + FHLAT9_worried
++ @353 + FHLAT9_scare
++ @354 + FHLAT9_sarcastic
END

IF ~~ FHLAT9_proposition2
SAY @351
++ @355 + FHLAT9_sarcastic
++ @356 + FHLAT9_worried
++ @357 DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT9_lovely
++ @358 + FHLAT9_scare
END

IF ~~ FHLAT9_backbone
SAY @359
=
@360
END

IF ~~ FHLAT9_gorion
SAY @361
++ @362 + FHLAT9_raised
++ @363 + FHLAT9_implausible
END

IF ~~ FHLAT9_home
SAY @364
=
@365
++ @362 + FHLAT9_raised
++ @366 + FHLAT9_sure
++ @367 + FHLAT9_implausible
END

IF ~~ FHLAT9_sarcastic
SAY @368
=
@369
IF ~~ EXIT
END

IF ~~ FHLAT9_worried
SAY @370
IF ~~ EXIT
END

IF ~~ FHLAT9_scare
SAY @371
IF ~~ EXIT
END

IF ~~ FHLAT9_lovely
SAY @372
=
@369
IF ~~ EXIT
END

IF ~~ FHLAT9_raised
SAY @373
=
@374
IF ~~ EXIT
END

IF ~~ FHLAT9_implausible
SAY @375
IF ~~ EXIT
END

IF ~~ FHLAT9_sure
SAY @376
IF ~~ EXIT
END

//Sebastian's interjections
CHAIN BFHLAND FHLAT4_where
@377
== FHLSEBJ
@378
== BFHLAND
@379
== FHLSEBJ
@380
== BFHLAND
@381
== FHLSEBJ
@382
== BFHLAND
@383
END
++ @384 EXTERN BFHLAND FHLAT4_shaken
++ @385 EXTERN BFHLAND FHLAT4_fault
++ @386 EXTERN BFHLAND FHLAT4_shaken
++ @387 EXTERN BFHLAND FHLAT4_shaken

CHAIN FHLSEBJ FHLAT4_thinknot
@388
== BFHLAND
@379
== FHLSEBJ
@389
== BFHLAND
@383
END
++ @384 EXTERN BFHLAND FHLAT4_shaken
++ @385 EXTERN BFHLAND FHLAT4_fault
++ @386 EXTERN BFHLAND FHLAT4_shaken
++ @387 EXTERN BFHLAND FHLAT4_shaken


//Interparty Banters

CHAIN IF ~Global("FHLUnorderAndAerieTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BAERIE FHLAndAerie1
@390
DO ~SetGlobal("FHLUnorderAndAerieTalk1","GLOBAL",1)~
== BFHLAND
@391
== BAERIE
@392
== BFHLAND
@393
== BAERIE
@394
== BFHLAND
@395
EXIT

CHAIN IF ~Global("FHLUnorderAndAerieTalk2","GLOBAL",0)
InParty("AERIE")
!StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndAerie2
@396
DO ~SetGlobal("FHLUnorderAndAerieTalk2","GLOBAL",1)~
== BAERIE
@397
== BFHLAND
@398
== BAERIE
@399
== BFHLAND
@400
== BAERIE
@401
== BFHLAND
@402
EXIT

CHAIN IF ~Global("FHLUnorderAndAerieTalk3","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BAERIE FHLAndAerie3
@403
DO ~SetGlobal("FHLUnorderAndAerieTalk3","GLOBAL",1)~
== BFHLAND
@404
== BAERIE
@405
== BFHLAND
@406
== BAERIE
@407
== BFHLAND
@408
== BAERIE
@409
EXIT

CHAIN IF ~Global("FHLUnorderAndAnoTalk1","GLOBAL",0)
InParty("FHLAND")
InParty("FHLSEB")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BANOMEN FHLAndAno1
@410
DO ~SetGlobal("FHLUnorderAndAnoTalk1","GLOBAL",1)~
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
@411
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
@412
== BANOMEN IF ~Global("FHLRow","GLOBAL",0)~ THEN
@413
== BANOMEN IF ~Global("FHLRow","GLOBAL",1)~ THEN
@414
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
@415
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
@416
== BANOMEN IF ~Global("FHLRow","GLOBAL",0)~ THEN
@417
== BANOMEN IF ~Global("FHLRow","GLOBAL",1)~ THEN
@418
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
@419
EXIT

CHAIN IF ~Global("FHLUnorderAndCerndTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BCERND FHLAndCernd1
@420
DO ~SetGlobal("FHLUnorderAndCerndTalk1","GLOBAL",1)~
== BFHLAND
@421
== BCERND
@422
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~
@423
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~
@424
== BCERND
@425
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~
@426
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~
@427
== BCERND
@428
EXIT

CHAIN IF ~Global("FHLUnorderAndCerndTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BCERND FHLAndCernd2
@429
DO ~SetGlobal("FHLUnorderAndCerndTalk","GLOBAL",1)~
== BFHLAND
@430
== BCERND
@431
== BFHLAND
@432
== BCERND
@433
== BFHLAND
@434
EXIT

CHAIN IF ~Global("FHLAndCerndTalkFamily","GLOBAL",0)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("TalkedToCerndNanny","GLOBAL",1)~ THEN BFHLAND FHLAndCernd3
@435
DO ~SetGlobal("FHLAndCerndTalkFamily","GLOBAL",1)~
== BCERND
@436
== BFHLAND
@437
== BCERND
@438
== BFHLAND
@439
== BCERND
@440
EXIT

CHAIN IF ~Global("FHLUnorderAndEdTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BEDWIN FHLAndEd1
@441
DO ~SetGlobal("FHLUnorderAndEdTalk1","GLOBAL",1)~
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
@442
== BFHLAND IF ~!Global("FHLRow","GLOBAL",1)~ THEN
@443
== BEDWIN
@444
== BFHLAND
@445
== BEDWIN
@446
== BFHLAND
@447
EXIT

CHAIN IF ~Global("FHLUnorderAndEdTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLLDP","GLOBAL",0)~ THEN BEDWIN FHLAndEd2
@448
DO ~SetGlobal("FHLUnorderAndEdTalk2","GLOBAL",1)~
== BFHLAND
@449
== BEDWIN
@450
== BFHLAND
@451
=
@452
== BEDWIN
@453
== BFHLAND
@454
== BEDWIN
@455
EXIT

CHAIN IF ~Global("FHLAndEdTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BEDWIN FHLAndEd3
@456
DO ~SetGlobal("FHLAndEdTalkLDP","GLOBAL",1)~
== BFHLAND
@457
== BEDWIN
@458
== BFHLAND
@459
== BEDWIN
@460
== BFHLAND
@461
EXIT

CHAIN IF ~Global("FHLUnorderAndHaerTalk1","GLOBAL",0)
InParty("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndHaer1
@462
DO ~SetGlobal("FHLUnorderAndHaerTalk1","GLOBAL",1)~
== BHAERDA
@463
== BFHLAND
@464
== BHAERDA
@465
== BFHLAND
@466
== BHAERDA
@467
EXIT

CHAIN IF ~Global("FHLUnorderAndHaerTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BHAERDA FHLAndHaer2
@468
DO ~SetGlobal("FHLAndHaerTalk2","GLOBAL",1)~
== BFHLAND
@469
== BHAERDA
@470
== BFHLAND
@459
== BHAERDA
@471
== BFHLAND
@472
== BHAERDA
@473
EXIT

CHAIN IF ~Global("FHLAndHaerTalkRow","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLRow","GLOBAL",1)~ THEN BHAERDA FHLAndHaer3
@474
DO ~SetGlobal("FHLAndHaerTalkRow","GLOBAL",1)~
== BFHLAND
@475
=
@476
== BHAERDA
@477
== BFHLAND
@478
EXIT

CHAIN IF ~Global("FHLAndImTalk","GLOBAL",0)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndIm1
@479
=
@480
DO ~SetGlobal("FHLAndImTalk","GLOBAL",1)~
== BIMOEN2
@481
== BFHLAND
@482
== BIMOEN2
@483
=
@484
== BFHLAND
@485
EXIT

CHAIN IF ~Global("FHLAndImTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLAndIm2
@486
DO ~SetGlobal("FHLAndImTalk","GLOBAL",2)~
== BFHLAND
@487
== BIMOEN2
@488
== BFHLAND
@489
=
@490
== BIMOEN2
@491
=
@492
EXIT

CHAIN IF ~Global("FHLAndImTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",0)~ THEN BIMOEN2 FHLAndIm3
@493
DO ~SetGlobal("FHLAndImTalkLDP","GLOBAL",1)~
== BFHLAND
@494
== BIMOEN2
@495
== BFHLAND
@496
== BIMOEN2
@497
== BFHLAND
@498
=
@499
== BIMOEN2
@500
== BFHLAND
@501
== BIMOEN2
@502
== BFHLAND
@503
EXIT

CHAIN IF ~Global("FHLUnorderAndJahTalk1","GLOBAL",0)
InParty("FHLAND")
InParty("FHLSEB")
!AreaCheck("FH4800")
!AreaCheck("FHLMH1")
!AreaCheck("FHLMH2")
!AreaCheck("FHLUX1")
!AreaCheck("FHLUX2")
!AreaCheck("FHLUX3")
!AreaCheck("FHLUX4")
!AreaCheck("FHLUX5")
!AreaCheck("FHLUX6")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAHEIR FHLAndJah1
@504
DO ~SetGlobal("FHLUnorderAndJahTalk1","GLOBAL",1)~
== BFHLAND
@505
== BJAHEIR
@506
EXIT

CHAIN IF ~Global("FHLAndJah2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAHEIR FHLAndJah2
@507
DO ~SetGlobal("FHLAndJah2","GLOBAL",1)~
== BFHLAND
@508
== BJAHEIR
@509
== BFHLAND
@510
== BJAHEIR
@511
EXIT

CHAIN IF ~Global("FHLAndJahTalkLate","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
OR(2)
Global("FHLRow","GLOBAL",1)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BFHLAND FHLAndJah3
@512
DO ~SetGlobal("FHLAndJahTalkLate","GLOBAL",1)~
== BJAHEIR
@513
== BFHLAND
@514
== BJAHEIR
@515
== BFHLAND
@516
== BJAHEIR
@517
=
@518
== BFHLAND
@519
== BJAHEIR
@520
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan1
@521
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",1)~
== BFHLAND
@522
== BJAN
@523
== BFHLAND
@524
== BJAN
@525
=
@526
== BFHLAND
@527
== BJAN
@528
== BFHLAND
@529
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan2
@530
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",2)~
== BFHLAND
@531
== BJAN
@532
== BFHLAND
@533
== BJAN
@534
== BFHLAND
@535
== BJAN
@536
== BFHLAND
@537
== BJAN
@538
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",2)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan3
@539
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",3)~
== BFHLAND
@540
== BJAN
@541
== BFHLAND
@542
== BJAN
@543
== BFHLAND
@544
== BJAN
@545
== BFHLAND
@546
== BFHLSEB
@547
=
@548
== BFHLAND
@549
== BFHLSEB
@550
== BFHLAND
@551
== BFHLSEB
@552
== BJAN
@553
EXIT

CHAIN IF ~Global("FHLUnorderAndKelTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKELDOR FHLAndKel1
@554
DO ~SetGlobal("FHLUnorderAndKelTalk1","GLOBAL",1)~
== BFHLAND
@555
== BKELDOR
@556
== BFHLAND
@557
== BKELDOR
@558
== BFHLAND
@559
EXIT

CHAIN IF ~Global("FHLAndKelTalkDevout","GLOBAL",0)
InParty("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndKel2
@560
DO ~SetGlobal("FHLAndKelTalkDevout","GLOBAL",1)~
== BKELDOR
@561
== BFHLAND
@562
== BKELDOR
@563
== BFHLAND
@564
== BFHLSEB
@565
== BFHLAND
@566
EXIT

CHAIN IF ~Global("FHLAndKelTalkDevout","GLOBAL",1)
Global("FHLTellCurse","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKELDOR FHLAndKel3
@567
=
@568
DO ~SetGlobal("FHLAndKelTalkDevout","GLOBAL",2)~
== BFHLAND
@569
== BKELDOR
@570
== BFHLAND
@571
== BKELDOR
@572
EXIT

CHAIN IF ~Global("FHLAndUnorderKorgTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKORGAN FHLAndKorg1
@573
DO ~SetGlobal("FHLAndUnorderKorgTalk1","GLOBAL",1)~
== BFHLAND
@574
== BKORGAN
@575
== BFHLAND
@576
== BKORGAN
@577
EXIT

CHAIN IF ~Global("FHLAndUnorderKorgTalk2","GLOBAL",0)
InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndKorg2
@578
DO ~SetGlobal("FHLAndUnorderKorgTalk","GLOBAL",1)~
== BKORGAN
@579
== BFHLAND
@580
== BKORGAN
@581
== BFHLAND
@582
== BKORGAN
@583
== BFHLAND
@584
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMAZZY FHLAndMazzy1
@585
DO ~SetGlobal("FHLAndUnorderMazzyTalk1","GLOBAL",1)~
== BFHLAND
@586
== BMAZZY
@587
== BFHLAND
@588
== BMAZZY
@589
=
@590
=
@591
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk2","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMazzy2
@592
DO ~SetGlobal("FHLAndUnorderMazzyTalk2","GLOBAL",1)~
== BMAZZY
@593
== BFHLAND
@594
== BMAZZY
@595
=
@596
== BFHLAND
@597
== BMAZZY
@598
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk3","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMazzy3
@599
DO ~SetGlobal("FHLAndUnorderMazzyTalk3","GLOBAL",1)~
== BMAZZY
@600
== BFHLAND
@601
== BMAZZY
@602
== BFHLAND
@603
== BMAZZY
@604
EXIT

//Minsc talks go here; sound clips are FHLAMI*

CHAIN IF ~Global("FHLAndMinscTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMINSC FHLAndMinsc1
@605
DO ~SetGlobal("FHLAndMinscTalk1","GLOBAL",1)~
== BFHLAND
@606
== BMINSC
@607
== BFHLAND
@608
=
@609
== BMINSC
@610
EXIT

CHAIN IF ~Global("FHLAndMinscTalk2","GLOBAL",0)
InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMinsc2
@611
DO ~SetGlobal("FHLAndMinscTalk2","GLOBAL",1)~
== BMINSC
@612
== BFHLAND
@613
== BMINSC
@614
=
@615
EXIT

CHAIN IF ~Global("FHLAndMinscTalk3","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMINSC FHLAndMinsc3
@616
DO ~SetGlobal("FHLAndMinscTalk3","GLOBAL",1)~
== BFHLAND
@617
== BMINSC
@618
== BFHLAND
@619
== BMINSC
@620
=
@621
== BFHLAND
@622
EXIT


CHAIN IF ~Global("FHLAndNaliaTalk1","GLOBAL",0)
InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndNal1
@623
DO ~SetGlobal("FHLAndNaliaTalk1","GLOBAL",1)~
== BNALIA
@624
== BFHLAND
@625
== BNALIA
@626
== BFHLAND
@627
== BNALIA
@628
EXIT

CHAIN IF ~Global("FHLAndNaliaTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BNALIA FHLAndNal2
@629
DO ~SetGlobal("FHLAndNaliaTalk2","GLOBAL",1)~
== BFHLAND
@630
== BNALIA IF ~Global("FHLLyelEstate","GLOBAL",0)~ THEN
@631
== BFHLAND IF ~Global("FHLLyelEstate","GLOBAL",0)~ THEN
@632
== BNALIA
@633
== BFHLAND
@634
== BNALIA
@635
EXIT

CHAIN IF ~GLOBAL("FHLAndNaliaTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BNALIA FHLAndNal3
@636
DO ~SetGlobal("FHLAndNaliaTalkLDP","GLOBAL",1)~
== BFHLAND
@637
== BNALIA
@638
== BFHLAND
@639
== BNALIA
@640
== BFHLAND
@641
EXIT

CHAIN IF ~Global("FHLAndSebYoshTalk","GLOBAL",0)
!StateCheck("FHSEB",CD_STATE_NOTVALID)
InParty("FHLSEB")
PartyHasItem("MISCBU")~ THEN BFHLAND FHLAndSebYosh
@642
DO ~SetGlobal("FHLAndSebYoshTalk","GLOBAL",1)~
== BFHLSEB
@643
== BFHLAND
@644
== BFHLSEB
@645
== BFHLAND
@646
== BFHLSEB
@647
EXIT

CHAIN IF ~Global("FHLAndValForestTalk","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
AreaType(FOREST)~ THEN BFHLAND FHLAndValForest
@648
DO ~SetGlobal("FHLAndValForestTalk","GLOBAL",1)~
== BVALYGA
@649
== BFHLAND
@650
== BVALYGA
@651
== BFHLAND
@652
EXIT

CHAIN IF ~Global("FHLAndValTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalLT("FHLTellCurse","GLOBAL",4)
Global("FHLLDP","GLOBAL",0)~ THEN BVALYGA FHLAndVal1
@653
DO ~SetGlobal("FHLAndValTalk","GLOBAL",1)~
== BFHLAND
@654
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
@655
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
@656
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
@657
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
@658
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
@659
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
@660
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
@564
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
@661
EXIT

CHAIN IF ~Global("FHLAndValTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLXavTalk","GLOBAL",1)
GlobalLT("FHLTellCurse","GLOBAL",4)~ THEN BVALYGA FHLAndVal2
@662
DO ~SetGlobal("FHLAndValTalk","GLOBAL",2)~
== BFHLAND
@663
== BVALYGA
@664
== BFHLAND
@665
== BVALYGA
@666
== BFHLAND
@667
== BVALYGA
@668
== BFHLAND
@669
=
@670
EXIT

CHAIN IF ~Global("FHLAndValTalkLDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",0)~ THEN BFHLAND FHLAndVal3
@671
DO ~SetGlobal("FHLAndValTalkLDP","GLOBAL",1)~
== BVALYGA
@672
== BFHLSEB
@673
== BFHLAND
@674
== BVALYGA
@675
== BFHLAND
@676
EXIT

CHAIN IF ~Global("FHLAndVicTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BVICONI FHLAndVic1
@677
DO ~SetGlobal("FHLAndVicTalk","GLOBAL",1)~
== BFHLAND
@678
== BVICONI
@679
=
@680
== BFHLAND
@681
== BVICONI
@682
EXIT

CHAIN IF ~Global("FHLAndVicTalk","GLOBAL",1)
InParty("FHLAND")
InParty("FHLSEB")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BVICONI FHLAndVic2
@683
DO ~SetGlobal("FHLAndVicTalk","GLOBAL",2)~
== BFHLAND
@684
== BVICONI
@685
== BFHLAND
@686
== BVICONI
@687
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~ THEN
@688
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN
@689
== BVICONI
@690
== BFHLAND
@691
== BFHLSEB
@692
=
@693
EXIT

CHAIN IF ~Global("FHLAndYoshTalk","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndYosh1
@694
DO ~SetGlobal("FHLAndYoshTalk","GLOBAL",1)~
== BYOSHIM
@695
== BFHLAND
@696
== BYOSHIM
@697
== BFHLAND
@698
== BYOSHIM
@699
EXIT

CHAIN IF ~Global("FHLAndYoshTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLRow","GLOBAL",1)~ THEN BYOSHIM FHLAndYosh2
@700
DO ~SetGlobal("FHLAndYoshTalk","GLOBAL",2)~
== BFHLAND
@701
== BYOSHIM
@702
== BFHLAND
@703
== BYOSHIM
@704
== BFHLAND
@705
== BYOSHIM
@706
== BFHLAND
@707
EXIT
