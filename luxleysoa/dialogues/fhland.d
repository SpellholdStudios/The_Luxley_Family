BEGIN FHLAND

IF ~!Global("FHLJoined","GLOBAL",1) Global("FHLTalkLux","GLOBAL",1)~ THEN BEGIN FHLGreetSeenAnd
SAY @0
++ @1 + FHLGreetSeenAnd_join
++ @2 + FHLGreetSeenAnd_leave
END

IF ~~ FHLGreetSeenAnd_join
SAY @3
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",900)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreetSeenAnd_leave
SAY @4
IF ~~ EXIT
END

IF ~~ FHLhello_justand
SAY @5
++ @6 + FHLhello_promise
++ @7 + FHLhello_child
++ @8 EXTERN FHLSEB FHLhello_fall
++ @9 EXTERN FHLSEB FHLhello_later
END

IF ~~ FHLhello_promise
SAY @10
++ @11 EXTERN FHLSEB FHLhello_fall
++ @12 EXTERN FHLSEB FHLhello_welcome
++ @13 + FHLhello_look
++ @14 EXTERN FHLSEB FHLhello_later
END

IF ~~ FHLhello_child
SAY @15
++ @16 EXTERN FHLSEB FHLhello_welcome
++ @17 + FHLhello_maybe
++ @18 + FHLhello_maybe
END

IF ~~ FHLGreeting3_leave
SAY @19
IF ~~ THEN DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
SetGlobal("FHLLuxMove","GLOBAL",1)~ EXIT
END

CHAIN FHLAND FHLGreeting3_xav
@20
== FHLSEB
@21
DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",EscapeArea())
EscapeArea()~ EXIT

CHAIN IF ~NumTimesTalkedTo(0) Global("FHLMeetLux","GLOBAL",0)~ THEN FHLAND FHLGreeting
@22
DO ~SetGlobal("FHLMeetLux","GLOBAL",1)~
== FHLCRIM1
@23
DO ~Attack("FHLAND")~
== FHLAND
@24
EXIT

CHAIN IF ~Global("FHLMeetLux","GLOBAL",1)~ THEN FHLAND FHLGreeting2
@25
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL02")~
EXIT

CHAIN IF ~Global("FHLMeetLux","GLOBAL",2)~ THEN FHLAND FHLGreeting3
@26
DO ~SetGlobal("FHLMeetLux","GLOBAL",3)~
== FHLSEB
@27
=
@28
== FHLAND
@29
== FHLSEB
@30
END
++ @31 EXTERN FHLSEB FHLGreeting3_curse
++ @32 EXTERN FHLSEB FHLGreeting3_curse2
IF ~!CharName("Xavier",Player1)~ THEN REPLY @33 EXTERN FHLSEB FHLGreeting3_name2
IF ~CharName("Xavier",Player1)~ THEN REPLY @34 + FHLGreeting3_xav
++ @35 + FHLGreeting3_leave

CHAIN FHLAND FHLhello_look
@36
== FHLSEB
@37
END
++ @38 EXTERN FHLSEB FHLhello_welcome
++ @39 EXTERN FHLSEB FHLhello_no
++ @40 EXTERN FHLSEB FHLhello_later
++ @41 EXTERN FHLSEB FHLhello_fall

CHAIN FHLAND FHLhello_maybe
@42
== FHLSEB
@43
== FHLAND
@44
== FHLSEB
@45
END
++ @38 EXTERN FHLSEB FHLhello_welcome
++ @39 EXTERN FHLSEB FHLhello_no
++ @40 EXTERN FHLSEB FHLhello_later
++ @41 EXTERN FHLSEB FHLhello_fall
