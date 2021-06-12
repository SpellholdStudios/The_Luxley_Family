BEGIN FHLSEBP

IF ~Global("FHLKicked","GLOBAL",0) HappinessLT("FHLSEB",-299) InParty("FHLAND") Global("FHLJoined","GLOBAL",1)~ FHLSEBLowRep1
SAY @0
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeArea()~ EXIT
END

IF ~Global("FHLKicked","GLOBAL",0) HappinessLT(Myself,-299) !InParty("FHLAND")~ FHLSEBLowRep2
SAY @1
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeArea()~ EXIT
END

//After talking to Xavier
IF WEIGHT #-1 ~Global("FHLSebCatch","GLOBAL",2) !GlobalTimerExpired("FHLSebCatchTime","GLOBAL")~ THEN BEGIN FHLSebCatchNotYet
SAY @2
IF ~~ EXIT
END

IF WEIGHT #-1 ~Global("FHLSebCatch","GLOBAL",2) GlobalTimerExpired("FHLSebCatchTime","GLOBAL")~ THEN BEGIN FHLSebCatchLeave
SAY @3
IF ~~ THEN DO ~SetGlobal("FHLSebCatch","GLOBAL",3)
JoinParty()~
EXIT
END

//Normal kicked-out dialogue

IF ~Global("FHLMDP","GLOBAL",0) InParty("FHLAND") !Dead("FHLAND") Global("FHLKicked","GLOBAL",0) !Global("FHLReturns","GLOBAL",1) Global("FHLJoined","GLOBAL",1)~ THEN BEGIN FHLSebKick
SAY @4
IF ~CheckStatGT(Player1,10,WIS)~ THEN REPLY @5 + FHLSebKick_stay
IF ~CheckStatLT(Player1,10,WIS)~ THEN REPLY @6 + FHLSebKick_stay
++ @7 + FHLSebKick_go
++ @8 + FHLSebKick_go
END

IF ~~ FHLSebKick_stay
SAY @9
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLSebKick_go
SAY @10
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
!AreaCheck("AR2906")~ THEN REPLY @11 + FHLSebKick_prom
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
!AreaCheck("AR0606")~ THEN REPLY @12 + FHLSebKick_wait
END

IF ~~ FHLSebKick_prom
SAY @13
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0700",2140,2409,4)~
EXIT
END

IF ~~ FHLSebKick_wait
SAY @14
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
SAY @15
++ @16 + FHLSebRej_join
++ @17 EXIT
END

IF ~~ FHLSebRej_join
SAY @18
IF ~~ THEN DO ~SetGlobal("FHLKicked","GLOBAL",0)
SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

//MDP kickout
IF ~!InParty("FHLSEB") GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLKickSebMDP
SAY @19
++ @20 + FHLKickSebMDP_stay
++ @21 + FHLKickSebMDP_leave
END

IF ~~ FHLKickSebMDP_stay
SAY @22
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ FHLKickSebMDP_leave
SAY @23
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
!AreaCheck("AR2906")~ THEN REPLY @11 + FHLSebMDPKick_prom
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
!AreaCheck("AR0606")~ THEN REPLY @12 + FHLSebMDPKick_wait
END

IF ~~ FHLSebMDPKick_prom
SAY @24
IF ~~ THEN DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",1)
LeaveParty()
EscapeArea()
MoveGlobal("AR0700","FHLSEB",[2140.2409])~
EXIT
END

IF ~~ FHLSebMDPKick_wait
SAY @25
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
SAY @26
++ @27 + FHLSebRejMDP_join
++ @28 EXIT
END

IF ~~ FHLSebRejMDP_join
SAY @29
IF ~~ THEN DO
~SetGlobal("FHLJoined","GLOBAL",1)
JoinParty()~ EXIT END

IF ~Global("FHLMDP","GLOBAL",0) Global("FHLJoined","GLOBAL",1) Global("FHLKicked","GLOBAL",0) Global("FHLReturns","GLOBAL",0) Global("FHLReturns2","GLOBAL",0) Dead("FHLAND") InPartyAllowDead("FHLAND")~ THEN BEGIN FHLSebKickAndDead
SAY @30
IF ~~ THEN DO ~JoinParty()~
EXIT
END

CHAIN IF ~Global("FHLReturns","GLOBAL",1)~ THEN FHLSEBP FHLReturn
@31
DO ~SetGlobal("FHLReturns","GLOBAL",2)
SetGlobal("FHLNoXavTalk","GLOBAL",1)~
== FHLANDP
@32
== FHLSEBP
@33
END
++ @34 + FHLSebRej_join
++ @35 EXIT

CHAIN IF WEIGHT #-1 ~Global("FHLReturns2","GLOBAL",1)~ THEN FHLSEBP FHLReturn2
@36
DO ~SetGlobal("FHLReturns2","GLOBAL",2)~
== FHLANDP
@37
== FHLSEBP
@38
END
++ @39 + FHLSebEst
++ @40 + FHLSebReturn2_safe
++ @41 + FHLSebReturn2_safe

CHAIN FHLSEBP FHLSebEst
@42
== FHLANDP
@43
== FHLSEBP
@44
END
++ @45 + FHLSebReturn2_letsgo
++ @46 + FHLSebReturn2_rest
++ @47 + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_safe
@48
== FHLANDP
@49
== FHLSEBP
@44
END
++ @45 + FHLSebReturn2_letsgo
++ @46 + FHLSebReturn2_rest
++ @47 + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_letsgo
@50
== FHLANDP
@51
DO ~SetGlobal("FHLJoined","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
DestroyItem("FHLBOOK")
JoinParty()~
EXIT

CHAIN FHLSEBP FHLSebReturn2_rest
@52
== FHLANDP
@53
END
++ @54 + FHLSebReturn2_letsgo
++ @47 + FHLSebReturn2_not

CHAIN FHLSEBP FHLSebReturn2_not
@55
EXIT
