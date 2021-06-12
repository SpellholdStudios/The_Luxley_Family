BEGIN FHLSEBP

IF ~Global("FHLKicked","GLOBAL",0) HappinessLT("FHLSEB",-299) InParty("FHLAND") Global("FHLJoined","GLOBAL",1)~ FHLSEBLowRep1
SAY ~This is ridiculous. I didn't join up with you to be doing things like this! Come on, Andrei, we have far better things to occupy ourselves with.~ [FHLSP2]
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeArea()~ EXIT
END

IF ~Global("FHLKicked","GLOBAL",0) HappinessLT(Myself,-299) !InParty("FHLAND")~ FHLSEBLowRep2
SAY ~This is ridiculous. I hope you have fun with your little quest, or whatever it is people like you occupy themselves with.~ [FHLSP3]
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeArea()~ EXIT
END

//After talking to Xavier
IF WEIGHT #-1 ~Global("FHLSebCatch","GLOBAL",2) !GlobalTimerExpired("FHLSebCatchTime","GLOBAL")~ THEN BEGIN FHLSebCatchNotYet
SAY ~Didn't you hear what he said? Get out before he changes his mind and decides we have to stay here forever!~
IF ~~ EXIT
END

IF WEIGHT #-1 ~Global("FHLSebCatch","GLOBAL",2) GlobalTimerExpired("FHLSebCatchTime","GLOBAL")~ THEN BEGIN FHLSebCatchLeave
SAY ~Come on, let's get out of here. I hope next time you keep your head better.~ [FHLSP1]
IF ~~ THEN DO ~SetGlobal("FHLSebCatch","GLOBAL",3)
JoinParty()~
EXIT
END

//Normal kicked-out dialogue

IF ~Global("FHLMDP","GLOBAL",0) InParty("FHLAND") !Dead("FHLAND") Global("FHLKicked","GLOBAL",0) !Global("FHLReturns","GLOBAL",1) Global("FHLJoined","GLOBAL",1)~ THEN BEGIN FHLSebKick
SAY ~Well, <CHARNAME>, I suppose this is to be our time of parting. I'm shocked that you would cast us aside in such a fashion, but I know when I'm not wanted!~ [FHLSP4]
IF ~CheckStatGT(Player1,10,WIS)~ THEN REPLY ~Fine, fine, you can stay.~ + FHLSebKick_stay
IF ~CheckStatLT(Player1,10,WIS)~ THEN REPLY ~I didn't mean to offend you. Of course you can stay.~ + FHLSebKick_stay
++ ~I think it's best that we separate.~ + FHLSebKick_go
++ ~Don't be so melodramatic. I just don't have room for you in the group.~ + FHLSebKick_go
END

IF ~~ FHLSebKick_stay
SAY ~Excellent. Then what are we waiting for? There are so many things to see!~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLSebKick_go
SAY ~Very well - I wouldn't dream of trespassing on your valuable time. Andrei and I will be in that nice place with all the merchants.~
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY ~All right then, I'll see you in Waukeen's Promenade.~ + FHLSebKick_prom
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")~ THEN REPLY ~I'd rather you just waited here.~ + FHLSebKick_wait
END

IF ~~ FHLSebKick_prom
SAY ~I hope you'll stop by soon! Come along, Andrei.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0700",2140,2409,4)~
EXIT
END

IF ~~ FHLSebKick_wait
SAY ~I hope you'll stop by soon! Come on, Andrei.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",2)
LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)~
EXIT
END

IF WEIGHT #1 ~OR(3)
Global("FHLKicked","GLOBAL",1)
Global("FHLKicked","GLOBAL",2)
Global("FHLKicked","GLOBAL",4)
!InParty(Myself)
Global("FHLJoined","GLOBAL",0)
!Dead("FHLAND")~ THEN BEGIN FHLSebRej
SAY ~Greetings to you, <CHARNAME>! It's been getting so dull without your illuminating light beside us; we were quite despairing.~ [FHLSP5]
++ ~Well, I'd like to have you both back in my group.~ + FHLSebRej_join
++ ~I'll see you around. I've got things to do, people to see.~ EXIT
END

IF ~~ FHLSebRej_join
SAY ~Sound the trumpets, Andrei, for <CHARNAME> wishes to travel with us once more!~
IF ~~ THEN DO ~SetGlobal("FHLKicked","GLOBAL",0)
SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

//MDP kickout
IF ~!InParty("FHLSEB") GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLKickSebMDP
SAY ~Parting so soon? What a pity.~ [FHLSP6]
++ ~Actually, you can stay with me.~ + FHLKickSebMDP_stay
++ ~Yes, I'd like you to leave.~ + FHLKickSebMDP_leave
END

IF ~~ FHLKickSebMDP_stay
SAY ~I'm honoured. Truly honoured.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLKickSebMDP_leave
SAY ~I'll be in Waukeen's Promenade if you feel like dropping by.~
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY ~All right then, I'll see you in Waukeen's Promenade.~ + FHLSebMDPKick_prom
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")~ THEN REPLY ~I'd rather you just waited here.~ + FHLSebMDPKick_wait
END

IF ~~ FHLSebMDPKick_prom
SAY ~I look forward to our next meeting. Oh, wait - no, I won't.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
LeaveParty()
EscapeArea()
MoveGlobal("AR0700","FHLSEB",[2140.2409])~
EXIT
END

IF ~~ FHLSebMDPKick_wait
SAY ~It's all the same to me.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",2)~
EXIT
END

IF ~GlobalGT("FHLMDP","GLOBAL",1)
OR(2)
Global("FHLKicked","GLOBAL",1)
Global("FHLKicked","GLOBAL",2)
!InParty(Myself)
!Global("FHLJoined","GLOBAL",1)
Dead("FHLAND")~ THEN BEGIN FHLSebRejMDP
SAY ~Ah, the wanderer returns. Do you wish to enjoy my charms a little longer?~ [FHLSP7]
++ ~Yes, that sounds like a good idea.~ + FHLSebRejMDP_join
++ ~No thanks. I'll see you around.~ EXIT
END

IF ~~ FHLSebRejMDP_join
SAY ~Excellent, excellent.~
IF ~~ THEN DO
~SetGlobal("FHLJoined","GLOBAL",1)
JoinParty()~ EXIT END

IF ~Global("FHLMDP","GLOBAL",0) Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) Dead("FHLAND") InPartyAllowDead("FHLAND")~ THEN BEGIN FHLSebKickAndDead
SAY ~Now, I know you're dying to get rid of us, but I really can't leave when Andrei's in this state.~ [FHLSP8]
IF ~~ THEN DO ~JoinParty()~
EXIT
END

CHAIN IF ~Global("FHLReturns","GLOBAL",1)~ THEN FHLSEBP FHLReturn
~...well, I thought they were awful things to say to you! When will you grow a backbone and--~ [FHLSAP1]
DO ~SetGlobal("FHLReturns","GLOBAL",2)
SetGlobal("FHLNoXavTalk","GLOBAL",1)~
== FHLANDP
~Stop going on about it, Sebastian, he didn't mean it like that. And besides, it was wonderful to-- Oh, hello, <CHARNAME>.~
== FHLSEBP
~Ah! There you are, we were despairing. Are you ready to carry on?~
END
++ ~Yes, I'd like to travel with the two of you again.~ + FHLSebRej_join
++ ~No, I'd prefer not to travel with you for the moment.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("FHLReturns2","GLOBAL",1)~ THEN FHLSEBP FHLReturn2
~Andrei, you have to have something to eat, otherwise you'll waste away. Come on, for me?~ [FHLSAP2]
DO ~SetGlobal("FHLReturns2","GLOBAL",2)~
== FHLANDP
~I'm not hungry. Look, things won't suddenly get magicked better because I have some - what *is* this?~
== FHLSEBP
~Stew, I think. Oh, look! It's <CHARNAME> - now that's a sight for sore eyes.~
END
++ ~What happened in the estate, you two?~ + FHLSebEst
++ ~It's good to see you both safe and sound.~ + FHLSebReturn2_safe
++ ~I'll be going, now. I just wanted to check that you were all right.~ + FHLSebReturn2_safe

CHAIN FHLSEBP FHLSebEst
~Lots of exciting things. You should have been there, it was incredible.~
== FHLANDP
~Stop it, Sebastian. <CHARNAME>, we've - been banished from the estate, for spreading falsehoods. Xavier took Sebastian's book, so now we can't - get back there.~
== FHLSEBP
~So, is there still room for a couple of vagabonds in your little team of misfits?~
END
++ ~Certainly. Nothing like travelling to take your mind off tragedy!~ + FHLSebReturn2_letsgo
++ ~Are you sure you wouldn't like a couple of days' rest before we leave?~ + FHLSebReturn2_rest
++ ~I'd prefer not to travel with you at the moment, but I may come back.~ + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_safe
~Well, that's one way of putting it. We're safe, not entirely sound, though - though we Luxleys never are!~
== FHLANDP
~We've - been banished from the estate, for spreading falsehoods. Xavier took Sebastian's book, so now we can't - get back there.~
== FHLSEBP
~So, is there still room for a couple of vagabonds in your little team of misfits?~
END
++ ~Certainly. Nothing like travelling to take your mind off tragedy!~ + FHLSebReturn2_letsgo
++ ~Are you sure you wouldn't like a couple of days' rest before we leave?~ + FHLSebReturn2_rest
++ ~I'd prefer not to travel with you at the moment, but I may come back.~ + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_letsgo
~You're a ray of sunshine, aren't you?~
== FHLANDP
~Thank you, <CHARNAME>, it means a lot.~
DO ~SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
DestroyItem("FHLBOOK")
JoinParty()~
EXIT

CHAIN FHLSEBP FHLSebReturn2_rest
~I don't know about this one, but I'd rather stretch my legs a bit.~
== FHLANDP
~I never thought I'd hear you recommending activity! Yes, I'd like to leave straightaway, if that's all right.~
END
++ ~Then let's be off. Things are bound to pick up soon.~ + FHLSebReturn2_letsgo
++ ~I'd prefer not to travel with you at the moment, but I may come back.~ + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_not
~Well, we'll still be here, I think. We don't have any plans of moving yet.~
EXIT
