BEGIN FHLMIL

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandMiles1
SAY @0
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandMiles2
SAY @1
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandMiles3
SAY @2
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandMiles4
SAY @3
IF ~~ EXIT
END

CHAIN IF ~GlobalGT("FHLArchieQuest","GLOBAL",1)
Global("FHLMilesAerie","GLOBAL",0)
See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN FHLMIL FHLMilesAerie
@4
DO ~SetGlobal("FHLMilesAerie","GLOBAL",1)~
== AERIEJ
@5
EXIT

CHAIN IF ~GlobalGT("FHLArchieQuest","GLOBAL",1)
Global("FHLMilesJaheira","GLOBAL",0)
See("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN FHLMIL FHLMilesJaheira
@6
DO ~SetGlobal("FHLMilesJaheira","GLOBAL",1)~
== JAHEIRAJ
@7
EXIT
