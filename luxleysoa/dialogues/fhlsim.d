BEGIN FHLSIM

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,1) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand1
SAY ~Try not to stir things up too much while you're here. We're not used to strangers.~ [FHLSIM1]
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,2) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand2
SAY ~I hope Andrei's been well in your company. I wouldn't like to think of him suffering outside.~ [FHLSIM2]
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,3) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand3
SAY ~Greetings to you.~ [FHLSIM3]
IF ~~ EXIT
END

IF ~!Global("FHLMDP","GLOBAL",1) RandomNum(4,4) Global("FHLSimGreet","GLOBAL",1)~ THEN BEGIN FHLSimeonRand4
SAY ~Maintain a balance within yourself. That is the only way to achieve happiness.~ [FHLSIM4]
IF ~~ EXIT
END

CHAIN IF ~!Global("FHLMDP","GLOBAL",1)
Global("FHLSimGreet","GLOBAL",0)
!Global("FHLMDP","GLOBAL",1)~ THEN FHLSIM FHLSimGreet
~Hello, Sebastian. Andrei, how have your rages been?~ [FHLSIM5]
DO ~SetGlobal("FHLSimGreet","GLOBAL",1)~
== FHLANDJ
~I've been trying to control them, sir, and I think I've been getting better.~ [FHLASI1]
== FHLSIM
~Excellent. I hope you have a good stay.~
EXIT

CHAIN IF ~Global("FHLMDP","GLOBAL",1)
See("FHLSEB")~ THEN FHLSIM FHLSimMDP
~What in the world? The ground's shaking outside, everyone's running around and--~ [FHLSIM6]
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)~
== FHLSEBJ
~This is what has to be done, Simeon, there's nothing for it!~
== FHLROS
~Where's Andrei? What have you done to him?!~
== FHLLEAL
~Sebastian, we're going to have to--~
== FHLSEBJ
~No! No, I won't go back there! I'll kill you if I have to!~
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
~What in the world? The ground's shaking outside, and where are Sebastian and Andrei?~ [FHLSIM7]
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)~
== FHLLUC
~I swear, if you've done something to Andrei--~
== FHLSIM
~Get away, you two. Lealia and I can handle this.~
== FHLROS
~Never! I'm not going to leave you with these - these murderers!~
DO ~SetGlobal("FHLSimTalks","GLOBAL",1)
ActionOverride("FHLSIM",Enemy())
ActionOverride("FHLROS",Enemy())
ActionOverride("FHLLUC",Enemy())
ActionOverride("FHLLEAL",Enemy())~
EXIT
