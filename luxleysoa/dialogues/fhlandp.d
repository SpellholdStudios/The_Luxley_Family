BEGIN FHLANDP

IF ~OR(3)
Global("FHLKicked","GLOBAL",1)
Global("FHLKicked","GLOBAL",2)
Global("FHLKicked","GLOBAL",4)
!InParty(Myself)
Global("FHLJoined","GLOBAL",0)
!Dead("FHLSEB")~ THEN BEGIN FHLAndRej
SAY @0
++ @1 + FHLAndRej_join
++ @2 EXIT
END

IF ~~ FHLAndRej_join
SAY @3
IF ~~ THEN DO ~SetGlobal("FHLKicked","GLOBAL",0)
SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
END

IF ~Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) Dead("FHLSEB") InPartyAllowDead("FHLSEB")~ THEN BEGIN FHLAndKickSebDead
SAY @4
IF ~~ THEN DO ~JoinParty()~
EXIT
END

IF ~Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) !Dead("FHLSEB")~ THEN BEGIN FHLAndKick
SAY @5
++ @6 + FHLAndKick_stay
++ @7 + FHLAndKick_go
END

IF ~~ FHLAndKick_stay
SAY @8
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLAndKick_go
SAY @9
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
!AreaCheck("AR2906")~ THEN REPLY @10 + FHLAndKick_prom
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
!AreaCheck("AR0606")~ THEN REPLY @11 + FHLAndKick_wait
END

IF ~~ FHLAndKick_prom
SAY @12
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
EscapeAreaMove("AR0700",2169,2452,0)~
EXIT
END

IF ~~ FHLAndKick_wait
SAY @13
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",2)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)~
EXIT
END

