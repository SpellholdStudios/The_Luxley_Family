BEGIN FHLARCH

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandArchie1
SAY @0
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandArchie2
SAY @1
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandArchie3
SAY @2
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandArchie4
SAY @3
IF ~~ EXIT
END

CHAIN IF ~Global("FHLArchieQuest","GLOBAL",1)
!PartyHasItem("FHLTIG")~ THEN FHLARCH FHLArchie
@4
DO ~SetGlobal("FHLArchieQuest","GLOBAL",2)~
== FHLMIL
@5
== FHLSEBJ
@6
== FHLMIL
@7
== FHLARCH
@8
== FHLANDJ
@9
== FHLARCH
@10
== FHLMIL
@11
END
++ @12 + FHLArchie_look
++ @13 + FHLArchie_look
++ @14 + FHLArchie_good
++ @15 EXTERN FHLMIL FHLArchie_other
++ @16 EXTERN FHLMIL FHLArchie_other

CHAIN IF ~Global("FHLArchieQuest","GLOBAL",1)
PartyHasItem("FHLTIG")~ THEN FHLARCH FHLArchie2
@4
DO ~SetGlobal("FHLArchieQuest","GLOBAL",2)~
== FHLMIL
@17
== FHLSEBJ
@18
== FHLMIL
@7
== FHLARCH
@8
== FHLANDJ
@9
== FHLARCH
@10
== FHLANDJ
@19
== FHLMIL
@20
== FHLARCH
@21
DO ~RandomWalk()~
EXIT

CHAIN FHLARCH FHLArchie_look
@22
== FHLMIL
@23
== FHLARCH
@24
EXIT

CHAIN FHLARCH FHLArchie_good
@25
== FHLMIL
@26
== FHLANDJ
@27
EXIT

CHAIN FHLMIL FHLArchie_other
@26
== FHLANDJ
@27
EXIT


