//Jealousy talk for Nathaniel when you've been flirting with Sebastian

//Make sure these talks don't come up when you flirt with Nathaniel
//ADD_STATE_TRIGGER FHNATJ 291 ~!Global("FHLNathJealous","GLOBAL",1)~
//ADD_STATE_TRIGGER FHNATJ 291 ~!Global("FHLNathJealous","GLOBAL",3)~

APPEND FHNATJ
IF ~Global("FHLNathJealousTimer","GLOBAL",1)
Global("FHLNathJealous","GLOBAL",1)
GlobalTimerExpired("FHLNathJealousTime","GLOBAL")~ FHLNathJealous
SAY @0
=
@1
+ ~GlobalGT("FHLLDP","GLOBAL",1)~ + @2 + FHLNathJealous_cheer
+ ~GlobalGT("FHLMDP","GLOBAL",1)~ + @2 + FHLNathJealous_cheer
++ @3 + FHLNathJealous_affection
+ ~Global("FHLMDP","GLOBAL",0)~ + @4 + FHLNathJealous_enjoy
+ ~GlobalGT("FHLMDP","GLOBAL",1)~ + @4 + FHLNathJealous_enjoyMDP
++ @5 + FHLNathJealous_stop
END

IF ~~ FHLNathJealous_cheer
SAY @6
=
@7
IF ~~ THEN DO ~SetGlobal("FHLNathJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLNathJealous_affection
SAY @8
IF ~~ DO ~SetGlobal("FHLNathJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLNathJealous_enjoyMDP
SAY @9
=
@10
IF ~~ DO ~SetGlobal("FHLNathJealous","GLOBAL",2)
SetGlobal("NathRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ FHLNathJealous_enjoyLDP_afresh
SAY @11
IF ~~ DO ~SetGlobal("FHLNathJealous","GLOBAL",2)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLNathJealous_enjoyLDP_break
SAY @12
=
@10
IF ~~ DO ~SetGlobal("FHLNathJealous","GLOBAL",2)
SetGlobal("NathRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ FHLNathJealous_stop
SAY @13
IF ~~ DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)
SetGlobal("FHLNathJealous","GLOBAL",1)~
EXIT
END
END

APPEND FHLSEBJ
IF ~~ FHLNathJealous_enjoyfriend
SAY @14
++ @15 EXTERN FHNATJ FHLNathJealous_enjoyLDP_afresh
++ @16 EXTERN FHNATJ FHLNathJealous_enjoyLDP_break
END
END

CHAIN FHNATJ FHLNathJealous_enjoy
@17
== FHLSEBJ
@18
== FHNATJ
@19
== FHLSEBJ
@20
END
++ @21 EXTERN FHLSEBJ FHLNathJealous_enjoyfriend
++ @15 + FHLNathJealous_enjoyLDP_afresh
++ @22 + FHLNathJealous_enjoyLDP_break

CHAIN IF ~Global("FHLNathJealousTimer2","GLOBAL",1)
Global("FHLNathJealous","GLOBAL",3)
GlobalTimerExpired("FHLNathJealousTime","GLOBAL")
Global("FHLMDP","GLOBAL",0)~ THEN FHNATJ FHLNathJealous2
@23
== FHLSEBJ
@24
=
@25
== FHNATJ
@26
== FHLSEBJ
@27
== FHNATJ
@28
DO ~SetGlobal("FHLNathJealous","GLOBAL",4)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

//Interparty banters

CHAIN IF
~InParty("Nath")
See("Nath")
!StateCheck("Nath",STATE_SLEEPING)
Global("FHLAndNathTalk1","GLOBAL",0)~ THEN BFHLAND FHLAndNath1
@29
DO ~SetGlobal("FHLAndNathTalk1","GLOBAL",1)~
== BFHNAT
@30
== BFHLAND
@31
== BFHNAT
@32
== BFHLAND
@33
== BFHNAT
@34
EXIT

CHAIN IF
~InParty("Nath")
See("Nath")
Global("FHLLDP","GLOBAL",0)
!StateCheck("Nath",STATE_SLEEPING)
Global("FHLAndNathTalk2","GLOBAL",0)~ THEN BFHLAND FHLAndNath2
@35
DO ~SetGlobal("FHLAndNathTalk2","GLOBAL",1)~
== BFHNAT
@36
== BFHLAND
@37
== BFHNAT IF ~GlobalGT("FHBryceHere","GLOBAL",0)~ THEN
@38
== BFHNAT IF ~Global("FHBryceHere","GLOBAL",0)~ THEN
@39
== BFHLAND
@40
== BFHLSEB IF ~IsValidForPartyDialog("FHLSEB")~ THEN
@41
== BFHNAT
@42
EXIT

CHAIN IF
~InParty("FHLAND")
See("FHLAND")
!StateCheck("FHLAND",STATE_SLEEPING)
Global("FHLAndNathTalk3","GLOBAL",0)~ THEN BFHNAT FHLAndNath3
@43
DO ~SetGlobal("FHLAndNathTalk3","GLOBAL",1)~
== BFHLAND
@44
=
@45
== BFHNAT
@46
== BFHLAND
@47
== BFHNAT
@48
== BFHLAND
@49
== BFHNAT
@50
EXIT

CHAIN IF
~InParty("Nath")
See("Nath")
!StateCheck("Nath",STATE_SLEEPING)
Global("FHLSebNathTalk1","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)~ THEN BFHLSEB FHLSebNath1
@51
DO ~SetGlobal("FHLSebNathTalk1","GLOBAL",1)~
== BFHNAT
@52
=
@53
== BFHLSEB
@54
== BFHNAT IF ~!Global("FHNathRomance","GLOBAL",1)~ THEN
@55
== BFHNAT IF ~Global("FHNathRomance","GLOBAL",1)~ THEN
@56
== BFHLSEB
@57
=
@58
== BFHNAT
@59
== BFHLSEB
@60
== BFHNAT
@61
== BFHLSEB
@62
EXIT

CHAIN IF
~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",STATE_SLEEPING)
Global("FHLSebNathTalk2","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)~ THEN BFHNAT FHLSebNath2
@63
DO ~SetGlobal("FHLSebNathTalk2","GLOBAL",1)~
== BFHLSEB
@64
=
@65
== BFHNAT
@66
== BFHLSEB
@67
== BFHNAT
@68
== BFHLSEB
@69
== BFHNAT
@70
== BFHLSEB
@71
== BFHNAT
@72
EXIT

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",STATE_SLEEPING)
Global("FHLSebNathTalk3","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN BFHNAT FHLSebNath3
@73
DO ~SetGlobal("FHLSebNathTalk3","GLOBAL",1)~
== BFHLSEB
@74
== BFHNAT
@75
== BFHLSEB
@76
=
@77
== BFHNAT
@78
== BFHLSEB
@79
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",STATE_SLEEPING)
Global("FHLSebNathAnoVal","GLOBAL",0)
InParty("Valygar")
InParty("Anomen")
Global("FHLMDP","GLOBAL",0)~ THEN BFHLSEB FHLSebNathAnoVal
@80
DO ~SetGlobal("FHLSebNathAnoVal","GLOBAL",1)~
== BFHNAT
@81
== BFHLSEB
@82
=
@83
== BFHNAT
@84
== BFHLSEB IF ~Global("FHNathRomance","GLOBAL",1)~ THEN
@85
== BFHLSEB IF ~!Global("FHNathRomance","GLOBAL",1)~ THEN
@86
== BFHNAT IF ~OR(2) Alignment("Anomen",LAWFUL_NEUTRAL) Alignment("Anomen",LAWFUL_GOOD)~ THEN
@87
== BFHNAT IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN
@88
== BFHLSEB
@89
== BFHNAT
@90
== BFHLSEB
@91
== BFHNAT IF ~OR(2) Alignment("Anomen",LAWFUL_NEUTRAL) Alignment("Anomen",LAWFUL_GOOD)~ THEN
@92
== BFHNAT IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN
@93
== BFHLSEB
@94
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",STATE_SLEEPING)
GlobalGT("FHLMDP","GLOBAL",1)
Global("FHLSebNathMDP","GLOBAL",0)~ THEN BFHLSEB FHLSebNathMDP
@95
=
@96
DO ~SetGlobal("FHLSebNathMDP","GLOBAL",1)~
== BFHNAT
@97
== BFHLSEB
@98
== BFHNAT
@99
== BFHLSEB
@100
== BFHNAT
@101
== BFHLSEB
@102
== BFHNAT
@103
== BFHLSEB
@104
== BFHNAT
@105
EXIT
