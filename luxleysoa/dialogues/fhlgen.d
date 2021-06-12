BEGIN FHLGEN

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,1)
OR(4)
!InParty("FHLSEB")
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter1
SAY @0
IF ~~ EXIT
END

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,2)
OR(4)
!InParty("FHLSEB") 
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter2
SAY @1
IF ~~ EXIT
END

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,3)
OR(4)
!InParty("FHLSEB")
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter3
SAY @2
IF ~~ EXIT
END

IF ~~ FHLGen_take
SAY @3
++ @4 + FHLGen_use
++ @5 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @7 + FHLGen_gene
END

IF ~~ FHLGen_gene
SAY @8
IF ~PartyGoldGT(801)~ THEN REPLY @9 UNSOLVED_JOURNAL @10 EXTERN FHLANDJ FHLGen_money
++ @11 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @12 + FHLGen_broke
END

IF ~~ FHLGen_nonono
SAY @13
=
@14
IF ~PartyGoldGT(801)~ THEN REPLY @9 UNSOLVED_JOURNAL @10 EXTERN FHLANDJ FHLGen_money
++ @11 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @12 + FHLGen_broke
END

IF ~~ FHLGen_broke
SAY @15
=
@16
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",1)~
EXIT
END

IF ~~ FHLGenSword_demons
SAY @17
++ @18 + FHLGenSword_sure
++ @19 UNSOLVED_JOURNAL @20 + FHLGenSword_agree
++ @21 + FHLGenSword_need
END

IF ~~ FHLGenSword_agree
SAY @22
IF ~~ THEN + FHLGenSword_sample
END

//Second Talk

IF ~Global("FHLGenTalk","GLOBAL",1) Global("FHLPayGen","GLOBAL",0)~ THEN BEGIN FHLGenSword
SAY @23
IF ~PartyHasItem("FHLCHR")~ THEN REPLY @24 DO ~TakePartyItem("FHLCHR")~ + FHLGenSword_got
IF ~!PartyHasItem("FHLCHR")~ THEN REPLY @25 + FHLGenSword_no
IF ~!PartyHasItem("FHLCHR") Global("FHLQuennellQuestFail","GLOBAL",1)~ THEN REPLY @26 + FHLGen_gene
IF ~!PartyHasItem("FHLCHR") Global("FHLQuennellQuestFail","GLOBAL",0)~ THEN REPLY @27 + FHLGen_gene
END

IF ~~ FHLGenSword_got
SAY @28
++ @29 + FHLGenSword_time
++ @30 + FHLGenSword_tell
++ @31 + FHLGenSword_tell
END

IF ~~ FHLGenSword_no
SAY @32
IF ~~ EXIT
END

IF ~~ FHLGenSword_time
SAY @33
++ @34 + FHLGenSword_sure2
++ @35 + FHLGenSword_tell
END

IF ~~ FHLGenSword_tell
SAY @36
++ @37 + FHLGenSword_graverob
++ @38 + FHLGenSword_demons
++ @39 UNSOLVED_JOURNAL @20 + FHLGenSword_agree
++ @40 + FHLGenSword_need
END

IF ~~ FHLGenSword_sure
SAY @41
++ @42 + FHLGenSword_poor2
IF ~PartyGoldGT(501)~ THEN REPLY @43 UNSOLVED_JOURNAL @44 + FHLGenSword_give
++ @45 + FHLGenSword_tell2
END

IF ~~ FHLGenSword_sure2
SAY @46
++ @42 + FHLGenSword_poor2
IF ~PartyGoldGT(501)~ THEN REPLY @43 UNSOLVED_JOURNAL @44 + FHLGenSword_give
++ @45 + FHLGenSword_tell2
END

IF ~~ FHLGenSword_tell2
SAY @47
++ @37 + FHLGenSword_graverob
++ @38 + FHLGenSword_demons
++ @39 UNSOLVED_JOURNAL @20 + FHLGenSword_agree
++ @40 + FHLGenSword_need
END

IF ~~ FHLGenSword_need
SAY @48
=
@49
++ @50 + FHLGenSword_sure
++ @51 UNSOLVED_JOURNAL @20 + FHLGenSword_agree
END

IF ~~ FHLGenSword_poor
SAY @52
=
@53
IF ~~ THEN + FHLGenSword_sample
END

IF ~~ FHLGenSword_poor2
SAY @54
=
@53
IF ~~ THEN + FHLGenSword_sample
END

IF ~~ FHLGenSword_give
SAY @55
IF ~~ THEN DO ~TakePartyGold(500)~ + FHLGenSword_sample2
END

//Third talk
IF ~Global("FHLGenTalk","GLOBAL",2) Global("FHLTellCurse","GLOBAL",0) Global("FHLPayGen","GLOBAL",0)~ THEN BEGIN FHLGenSword2
SAY @56
IF ~PartyHasItem("FHLSW")~ THEN REPLY @57 + FHLGenSwordgive
IF ~!PartyHasItem("FHLSW")~ THEN REPLY @58 + FHLGenSword_no
IF ~!PartyHasItem("FHLSW")~ THEN REPLY @59 + FHLGen_gene
END

//Fourth talk
IF ~OR(2) Global("FHLGenTalk","GLOBAL",3) Global("FHLPayGen","GLOBAL",1) Global("FHLTellCurse","GLOBAL",0)~ THEN BEGIN FHLGenPat
SAY @60
IF ~~ EXIT
END

IF ~Global("FHLTellCurse","GLOBAL",1)~ THEN BEGIN FHLGenCure
SAY @61
IF ~~ THEN EXTERN FHLDU FHLESTM1
END

//Initial talk
CHAIN IF ~Global("FHLGenSebFirst","GLOBAL",0)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLLDP","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
InParty("FHLAND")~ THEN FHLGEN FHLGenSebFirst
@62
DO ~SetGlobal("FHLGenSebFirst","GLOBAL",1)~
== FHLSEBJ
@63
== FHLGEN
@64
=
@65
EXIT

CHAIN IF ~Global("FHLGenTalk","GLOBAL",0) Global("FHLKavLetter","GLOBAL",1) Global("FHLGenSebFirst","GLOBAL",0)~ THEN FHLGEN FHLGenGreet
@66
DO ~SetGlobal("FHLGenTalk","GLOBAL",1)~
== FHLSEBJ
@67
== FHLGEN
@68
== FHLSEBJ
@69
== FHLGEN
@70
== FHLSEBJ
@71
== FHLGEN
@72
=
@73
END
++ @74 EXTERN FHLANDJ FHLGen_explain
++ @75 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @76 + FHLGen_take
++ @77 EXTERN FHLSEBJ FHLGen_leave

CHAIN IF ~Global("FHLGenTalk","GLOBAL",0) Global("FHLKavLetter","GLOBAL",1) Global("FHLGenSebFirst","GLOBAL",1)~ THEN FHLGEN FHLGenGreet_metbefore
@78
DO ~SetGlobal("FHLGenTalk","GLOBAL",1)~
== FHLSEBJ
@67
== FHLGEN
@79
== FHLSEBJ
@69
== FHLGEN
@70
== FHLSEBJ
@71
== FHLGEN
@72
=
@73
END
++ @74 EXTERN FHLANDJ FHLGen_explain
++ @75 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @76 + FHLGen_take
++ @77 EXTERN FHLSEBJ FHLGen_leave

CHAIN FHLGEN FHLGen_use
@80
== FHLANDJ
@81
== FHLSEBJ
@82
=
@83
END
++ @84 UNSOLVED_JOURNAL @6 EXTERN FHLSEBJ FHLGen_agree
++ @85 + FHLGen_gene

//Talk 2
CHAIN FHLGEN FHLGenSword_graverob
@86
== FHLSEBJ
@87
== FHLGEN
@88
END
++ @89 + FHLGenSword_sure
++ @90 UNSOLVED_JOURNAL @20 + FHLGenSword_agree
++ @91 + FHLGenSword_need

CHAIN FHLGEN FHLGenSword_sample
@92
== FHLANDJ
@93
== FHLGEN
@94
== FHLSEBJ
@95
== FHLANDJ
@96
== FHLSEBJ
@97
== FHLGEN
@98
== FHLSEBJ
@99
== FHLGEN
@100
DO ~SetGlobal("FHLSwordQuest","GLOBAL",1)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)
SetGlobal("FHLGenTalk","GLOBAL",2)~
EXIT

CHAIN FHLGEN FHLGenSword_sample2
@92
== FHLANDJ
@93
== FHLGEN
@94
== FHLSEBJ
@95
== FHLANDJ
@96
== FHLSEBJ
@97
== FHLGEN
@98
== FHLSEBJ
@99
== FHLGEN
@101
DO ~SetGlobal("FHLPayGen","GLOBAL",1)
SetGlobal("FHLGenTalk","GLOBAL",2)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)~
EXIT

CHAIN FHLGEN FHLGenSwordgive
@102
== FHLANDJ
@103
== FHLSEBJ
@104
== FHLGEN
@105
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
@106
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@107
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@108
== FHLGEN
@109
DO ~TakePartyItem("FHLSW")
SetGlobal("FHLGenTalk","GLOBAL",3)~
EXIT

CHAIN FHLGEN FHLGenSwordCuregive
@110
== FHLANDJ
@103
== FHLSEBJ
@104
== FHLGEN
@105
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
@106
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@107
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
@108
== FHLSEBJ
@111
== FHLGEN
@112
DO ~TakePartyItem("FHLSW")
SetGlobal("FHLGenTalk","GLOBAL",3)~
EXIT

CHAIN IF WEIGHT #-1 
~GlobalGT("FHLLDP","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",0)
InParty("FHLSEB")~ THEN FHLGEN FHLGenLDP
@113
DO ~SetGlobal("FHLGenLDP","GLOBAL",1)~
== FHLSEBJ
@114
== FHLANDJ
@115
== FHLGEN
@116
EXIT

CHAIN IF WEIGHT #-1
~GlobalGT("FHLMDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",0)
InParty("FHLSEB")
!InParty("FHLAND")~ THEN FHLGEN FHLGenMDP
@117
DO ~SetGlobal("FHLGenMDP","GLOBAL",1)~
== FHLSEBJ
@118
== FHLGEN
@119
== FHLSEBJ
@120
== FHLGEN
@121
DO ~EscapeArea()~
EXIT
