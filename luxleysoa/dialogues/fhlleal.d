BEGIN FHLLEAL

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLLeal1
SAY @0
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLLeal2
SAY @1
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLLeal3
SAY @2
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLLeal4
SAY @3
IF ~~ EXIT
END

CHAIN IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",0) Global("FHLKatMiet","GLOBAL",0)~ THEN FHLLEAL FHLLealiaGreet
@4
DO ~SetGlobal("FHLLealGreet","GLOBAL",1)~
== FHLANDJ
@5
== FHLSEBJ
@6
== FHLLEAL
@7
== FHLANDJ
@8
== FHLLEAL
@9
EXIT

CHAIN IF ~PartyHasItem("FHLTIG")~ THEN FHLLEAL FHLLealiaMietta
@10
== FHLANDJ
@11
== FHLLEAL
@12
DO ~SetGlobal("FHLKatMiet","GLOBAL",1)
TakePartyItem("FHLTIG")
DestroyItem("FHLTIG")
AddExperienceParty(9000)~
== FHLSEBJ
@13
== FHLANDJ
@14
== FHLSEBJ
@15
EXIT
