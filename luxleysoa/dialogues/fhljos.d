BEGIN FHLJOS

IF ~Global("FHLMDP","GLOBAL",1)
Dead("FHLXAV")~ THEN BEGIN FHLJosESTM
SAY @0
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL01")~
EXIT
END

IF ~Global("FHLMDP","GLOBAL",0)
Global("FHLJosSeb","GLOBAL",1)~ THEN BEGIN FHLJostalk
SAY @1
++ @2 + FHLJostalk_pity
++ @3 + FHLJostalk_gate
++ @4 + FHLJostalk_coop
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @5 + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLJostalk_sendyes
END

IF ~~ FHLJostalk_pity
SAY @6
=
@7
++ @8 + FHLJostalk_pic
IF ~Gender(Player1,MALE)~ THEN REPLY @9 + FHLJostalk_expectm
IF ~Gender(Player1,FEMALE)~ THEN REPLY @9 + FHLJostalk_expectf
++ @10 + FHLJostalk_coop
++ @11 + FHLJostalk_talk
END

IF ~~ FHLJostalk_gate
SAY @12
=
@13
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @14 + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1) !PartyHasItem("FHLTIG")~ THEN REPLY @14 + FHLJostalk_sendyes
IF ~Global("FHLXavTalk","GLOBAL",1) PartyHasItem("FHLTIG")~ THEN REPLY @14 + FHLJostalk_sendmietta
++ @15 + FHLJostalk_which
++ @11 + FHLJostalk_talk
END

IF ~~ FHLJostalk_coop
SAY @16
=
@17
IF ~~ EXIT
END

IF ~~ FHLJostalk_pic
SAY @18
++ @19 + FHLJostalk_reliable
IF ~Gender(Player1,MALE)~ THEN REPLY @9 + FHLJostalk_expectm
IF ~Gender(Player1,FEMALE)~ THEN REPLY @9 + FHLJostalk_expectf
++ @20 + FHLJostalk_coop
++ @21 + FHLJostalk_talk
END

IF ~~ FHLJostalk_expectm
SAY @22
=
@23
IF ~~ EXIT
END

IF ~~ FHLJostalk_expectf
SAY @24
IF ~~ EXIT
END

IF ~~ FHLJostalk_sendno
SAY @25
IF ~~ EXIT
END

IF ~~ FHLJostalk_which
SAY @26
IF ~~ EXIT
END

IF ~~ FHLJostalk_talk
SAY @27
IF ~~ EXIT
END

IF ~~ FHLJostalk_reliable
SAY @28
=
@29
IF ~~ EXIT
END

IF ~~ FHLJostalk_sendyes
SAY @30
=
@31
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL01")~
EXIT
END

CHAIN IF ~See("FHLSEB")
Global("FHLMDP","GLOBAL",0)
See("FHLAND")
Global("FHLJosSeb","GLOBAL",0)~ THEN FHLJOS FHLJosGreet
@32
DO ~SetGlobal("FHLJosSeb","GLOBAL",1)~
== FHLSEBJ
@33
== FHLJOS
@34
== FHLSEBJ
@35
== FHLJOS
@36
=
@37
== FHLANDJ
@38
== FHLJOS
@39
== FHLANDJ
@40
== FHLJOS
@41
=
@42
END
++ @2 + FHLJostalk_pity
++ @3 + FHLJostalk_gate
++ @4 + FHLJostalk_coop
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY @5 + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY @5 + FHLJostalk_sendyes

CHAIN IF ~Global("FHLMDP","GLOBAL",1)
!Dead("FHLXAV")~ THEN FHLJOS FHLJosESTM2
@43
== FHLSEBJ
@44
EXIT

CHAIN FHLJOS FHLJostalk_sendmietta
@45
== FHLANDJ
@46
EXIT
