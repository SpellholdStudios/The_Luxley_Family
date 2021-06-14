BEGIN FHLSEB

IF ~!Global("FHLJoined","GLOBAL",1) Global("FHLTalkLux","GLOBAL",1)~ THEN BEGIN FHLGreetSeen
SAY @0
++ @1 + FHLGreetSeen_join
++ @2 + FHLGreetSeen_no
END

IF ~~ FHLGreetSeen_join
SAY @3
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreetSeen_no
SAY @4
IF ~~ EXIT
END

IF ~~ FHLGreeting3_curse
SAY @5
=
@6
IF ~!CharName("Xavier",Player1)~ THEN REPLY @7 + FHLGreeting3_name
IF ~CharName("Xavier",Player1)~ THEN REPLY @8 EXTERN FHLAND FHLGreeting3_xav
++ @9 EXTERN FHLAND FHLGreeting3_leave
END

IF ~~ FHLGreeting3_curse2
SAY @10
IF ~!CharName("Xavier",Player1)~ THEN REPLY @7 + FHLGreeting3_name
IF ~CharName("Xavier",Player1)~ THEN REPLY @8 EXTERN FHLAND FHLGreeting3_xav
++ @9 EXTERN FHLAND FHLGreeting3_leave
END

IF ~~ FHLhello_writer
SAY @11
++ @12 + FHLhello_fall
++ @13 + FHLhello_welcome
++ @14 + FHLhello_justseb
++ @15 EXTERN FHLAND FHLhello_justand
++ @16 + FHLhello_no
END

IF ~~ FHLhello_whatdo
SAY @17
++ @12 + FHLhello_fall
++ @13 + FHLhello_welcome
++ @14 + FHLhello_justseb
++ @15 EXTERN FHLAND FHLhello_justand
++ @16 + FHLhello_no
END

IF ~~ FHLhello_justseb
SAY @18
=
@19
++ @20 + FHLhello_welcome
++ @21 + FHLhello_later
++ @22 EXTERN FHLAND FHLhello_look
END

IF ~~ FHLhello_no
SAY @23
IF ~~ THEN DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
SetGlobal("FHLLuxMove","GLOBAL",1)~ EXIT
END

IF ~~ FHLhello_head
SAY @24
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreeting3_name
SAY @25
=
@26
++ @27 + FHLhello_writer
++ @28 + FHLhello_whatdo
++ @29 + FHLhello_pass
END

IF ~~ FHLGreeting3_name2
SAY @30
=
@5
=
@31
++ @27 + FHLhello_writer
++ @28 + FHLhello_whatdo
++ @29 + FHLhello_pass
END

CHAIN FHLSEB FHLhello_pass
@32
== FHLAND
@33
== FHLSEB
@34
DO ~SetGlobal("FHLLuxMove","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)~
EXIT

CHAIN FHLSEB FHLhello_fall
@35
== FHLAND
@36
END
++ @37 UNSOLVED_JOURNAL @38 + FHLhello_head
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @39 UNSOLVED_JOURNAL @38 + FHLhello_imoen
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @40 UNSOLVED_JOURNAL @38 + FHLhello_evil

CHAIN FHLSEB FHLhello_welcome
@41
== FHLAND
@42
== FHLSEB
@43
END
++ @37 UNSOLVED_JOURNAL @38 + FHLhello_head
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @39 UNSOLVED_JOURNAL @38 + FHLhello_imoen
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @40 UNSOLVED_JOURNAL @38 + FHLhello_evil

CHAIN FHLSEB FHLhello_later
@44
== FHLAND
@45
DO ~SetGlobal("FHLTalkLux","GLOBAL",1)~
EXIT

CHAIN FHLSEB FHLhello_imoen
@46
== FHLAND
@47
DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT

CHAIN FHLSEB FHLhello_evil
@48
== FHLAND
@49
DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
