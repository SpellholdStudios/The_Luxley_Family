BEGIN FHLANDP

IF ~OR(3)
Global("FHLKicked","GLOBAL",1)
Global("FHLKicked","GLOBAL",2)
Global("FHLKicked","GLOBAL",4)
!InParty(Myself)
Global("FHLJoined","GLOBAL",0)
!Dead("FHLSEB")~ THEN BEGIN FHLAndRej
SAY ~Hello again, <CHARNAME>. How are things going?~ [FHLAP2]
++ ~Fine, thanks. Would you care to join me again?~ + FHLAndRej_join
++ ~They're fine. Well, I'll see you around.~ EXIT
END

IF ~~ FHLAndRej_join
SAY ~That would be nice. Come on, Sebastian.~
IF ~~ THEN DO ~SetGlobal("FHLKicked","GLOBAL",0)
SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
END

IF ~Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) Dead("FHLSEB") InPartyAllowDead("FHLSEB")~ THEN BEGIN FHLAndKickSebDead
SAY ~Sorry, but I don't think I can leave when Sebastian's like this.~
IF ~~ THEN DO ~JoinParty()~
EXIT
END

IF ~Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) !Dead("FHLSEB")~ THEN BEGIN FHLAndKick
SAY ~It's been pleasant travelling with you, but if you want us to go that's fine.~ [FHLAP3]
++ ~No, I've changed my mind. I'd rather you stayed.~ + FHLAndKick_stay
++ ~You're right - I don't have room for you in the group at the moment.~ + FHLAndKick_go
END

IF ~~ FHLAndKick_stay
SAY ~Then we should be getting going. Thank you, <CHARNAME>.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLAndKick_go
SAY ~Of course. I think Sebastian wanted to do some more shopping, so we can meet in Waukeen's Promenade if you'd like.~
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
!AreaCheck("AR2906")~ THEN REPLY ~All right. I'll see you there.~ + FHLAndKick_prom
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
!AreaCheck("AR0606")~ THEN REPLY ~I'd rather you just waited here.~ + FHLAndKick_wait
END

IF ~~ FHLAndKick_prom
SAY ~It would be nice to see you again - we'll see you there. Come on, Sebastian.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
EscapeAreaMove("AR0700",2169,2452,0)~
EXIT
END

IF ~~ FHLAndKick_wait
SAY ~It would be nice to see you again - well, we'll be here if you need us. Come on, Sebastian.~
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",2)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)~
EXIT
END

