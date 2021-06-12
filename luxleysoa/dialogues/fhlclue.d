BEGIN FHLCRIM1

BEGIN FHLALI

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN FHLAli21
SAY @0
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLAli22
SAY @1
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,3)~ THEN BEGIN FHLAli23
SAY @2
IF ~~ EXIT
END

BEGIN FHLFRED

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN FHLFred21
SAY @3
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLFred22
SAY @4
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLFred23
SAY @5
IF ~~ EXIT
END

BEGIN FHLKAV

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLAliSeb","GLOBAL",0)~ THEN FHLALI FHLAliGreet
@6
DO ~SetGlobal("FHLAliSeb","GLOBAL",1)~
== FHLSEBJ
@7
== FHLALI
@8
== FHLSEBJ
@9
EXIT

CHAIN IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLFredSeb","GLOBAL",0)~ THEN FHLFRED FHLFredGreet
@10
DO ~SetGlobal("FHLFredSeb","GLOBAL",1)~
== FHLSEBJ
@11
== FHLFRED
@12
== FHLSEBJ
@13
== FHLFRED
@14
== FHLSEBJ
@15
== FHLFRED
@16
EXIT

CHAIN IF ~Global("FHLKav","GLOBAL",1)~ THEN FHLKAV FHLKav
@17
DO ~SetGlobal("FHLKav","GLOBAL",2)~
== FHLSEBJ
@18
== FHLKAV
@19
== FHLSEBJ
@20
=
@21
DO ~SetGlobal("FHLKavLetter","GLOBAL",1)
GiveItemCreate("FHLNOTE","FHLSEB",0,0,0)
ActionOverride("FHLKAV",EscapeArea())~
EXIT

BEGIN FHLBOY2

IF ~Global("FHLSpawnBoy","GLOBAL",1)~ THEN BEGIN FHLBOY2
SAY @22
++ @23 + FHLBOY2_who
++ @24 + FHLBOY2_away
END

IF ~~ FHLBOY2_who
SAY @25
++ @26 + FHLBOY2_how
++ @27 + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY @28 DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ @29 + FHLBOY2_home
END

IF ~~ FHLBOY2_away
SAY @30
++ @26 + FHLBOY2_how
++ @27 + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY @28 DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ @29 + FHLBOY2_home
END

IF ~~ FHLBOY2_how
SAY @31
++ @27 + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY @28 DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ @29 + FHLBOY2_home
END

IF ~~ FHLBOY2_home
SAY @32
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ FHLBOY2_gold
SAY @33
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
