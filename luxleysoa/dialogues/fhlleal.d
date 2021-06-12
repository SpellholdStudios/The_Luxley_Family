BEGIN FHLLEAL

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLLeal1
SAY ~I hope you enjoy your stay. Xavier can be a little overwhelming at times.~ [FHLLEA2]
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLLeal2
SAY ~Sorry, I can't talk at the moment. I'm a little busy.~ [FHLLEA1]
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLLeal3
SAY ~That Rosanna has given me more work than all the other children combined - she does insist on sparring so with Lucas...~ [FHLLEA3]
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLLeal4
SAY ~I'd love to hear your stories about outside, but I'm afraid I have work to do.~ [FHLLEA4]
IF ~~ EXIT
END

CHAIN IF ~!PartyHasItem("FHLTIG") Global("FHLLealGreet","GLOBAL",0) Global("FHLKatMiet","GLOBAL",0)~ THEN FHLLEAL FHLLealiaGreet
~Welcome back, Sebastian! And you too, Andrei. Whatever have you been doing with yourselves?~ [FHLLEA5]
DO ~SetGlobal("FHLLealGreet","GLOBAL",1)~
== FHLANDJ
~It's been amazing! I've seen so many things since being away - but it's wonderful to be back.~
== FHLSEBJ
~Yes. Wonderful.~
== FHLLEAL
~Cheer up, Sebastian, at least you get to go out sometimes. You know how Xavier is.~
== FHLANDJ
~Lealia's our main healer, <CHARNAME>, and she does a great job. Xavier knows you can help the family best if you stay in the estate.~
== FHLLEAL
~Yes, of course. Anyway, I should get back to cataloguing my supplies.~
EXIT

CHAIN IF ~PartyHasItem("FHLTIG")~ THEN FHLLEAL FHLLealiaMietta
~Hello, there. Is there anything you need?~ [FHLLEA6]
== FHLANDJ
~We found Mietta - she got lost and I think she's ill. Can you take a look at her?~
== FHLLEAL
~Oh, of course! Poor Katya must be worried sick. Thank you for bringing her here.~ [FHLLEA7]
DO ~SetGlobal("FHLKatMiet","GLOBAL",1)
TakePartyItem("FHLTIG")
DestroyItem("FHLTIG")
AddExperienceParty(9000)~
== FHLSEBJ
~How sweet.~
== FHLANDJ
~Sebastian! You wouldn't just leave her, would you?~
== FHLSEBJ
~No, no, but she should learn how to look after herself.~
EXIT
