BEGIN FHLSIM

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,1) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand1
SAY @0
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,2) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand2
SAY @1
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,3) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand3
SAY @2
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,4) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand4
SAY @3
IF ~~ EXIT
END

CHAIN IF ~!Global("FHLMDP","GLOBAL",1)
Global("FHLSimGreet","GLOBAL",0)
!Global("FHLMDP","GLOBAL",1)~ THEN FHLSIM FHLSimGreet
@4
DO ~SetGlobal("FHLSimGreet","GLOBAL",1)~
== FHLANDJ
@5
== FHLSIM
@6
EXIT

CHAIN IF ~Global("FHLMDP","GLOBAL",1)
See("FHLSEB")~ THEN FHLSIM FHLSimMDP
@7
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)~
== FHLSEBJ
@8
== FHLROS
@9
== FHLLEAL
@10
== FHLSEBJ
@11
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)
ActionOverride("FHLSIM",Enemy())
ActionOverride("FHLROS",Enemy())
ActionOverride("FHLLUC",Enemy())
ActionOverride("FHLLEAL",Enemy())~
EXIT

CHAIN IF ~Global("FHLMDP","GLOBAL",1)
OR(2)
InPartyAllowDead("FHLSEB")
Dead("FHLSEB")~ THEN FHLSIM FHLSimMDP
@12
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)~
== FHLLUC
@13
== FHLSIM
@14
== FHLROS
@15
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)
ActionOverride("FHLSIM",Enemy())
ActionOverride("FHLROS",Enemy())
ActionOverride("FHLLUC",Enemy())
ActionOverride("FHLLEAL",Enemy())~
EXIT
