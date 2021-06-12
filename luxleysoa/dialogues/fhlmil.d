BEGIN FHLMIL

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandMiles1
SAY ~So I suppose you're adventurers. Well, you won't get any kowtowing from me just because you hang around in fancy metal cans and stick things with swords.~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandMiles2
SAY ~Why are you wasting my time like this? Just because I'm a kid you grown-ups think it's all right to keep on at me like I don't have anything better to do.~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandMiles3
SAY ~There's barely anyone worth talking to in this dump. And that includes you.~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandMiles4
SAY ~Oh, please. Don't bother saying thank you for breathing my air, will you. Some people are way too inconsiderate.~
IF ~~ EXIT
END

CHAIN IF ~GlobalGT("FHLArchieQuest","GLOBAL",1)
Global("FHLMilesAerie","GLOBAL",0)
See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN FHLMIL FHLMilesAerie
~What's up with you? Why are you staring around like you've been stunned or something? Are you lost or are you just too stupid to notice when there are other people around? Maybe you should see a cleric about that.~
DO ~SetGlobal("FHLMilesAerie","GLOBAL",1)~
== AERIEJ
~N-no, it is just that this place is so beautiful!~
EXIT

CHAIN IF ~GlobalGT("FHLArchieQuest","GLOBAL",1)
Global("FHLMilesJaheira","GLOBAL",0)
See("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN FHLMIL FHLMilesJaheira
~Do those ears make you hear better or do they just look funny?~
DO ~SetGlobal("FHLMilesJaheira","GLOBAL",1)~
== JAHEIRAJ
~Hmmph. Your mother ought to have taught you better manners, child.~
EXIT
