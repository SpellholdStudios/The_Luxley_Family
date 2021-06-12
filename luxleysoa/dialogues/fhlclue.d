BEGIN FHLCRIM1

BEGIN FHLALI

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN FHLAli21
SAY ~Approaching me in a public place? What impudence!~
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLAli22
SAY ~I believe there is a term for ones like you: riff-raff.~
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLAliSeb","GLOBAL",1)
RandomNum(3,3)~ THEN BEGIN FHLAli23
SAY ~Do you people not clean the streets any more? The decline in cleanliness is simply dreadful.~
IF ~~ EXIT
END

BEGIN FHLFRED

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN FHLFred21
SAY ~The Council keeps on raisin' taxes, not worryin' at all about us poor folk.  Pretty soon I won't be able to afford a single ale.~
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLFred22
SAY ~(hic) Urrgh, not feeling so good...~
IF ~~ EXIT
END

IF ~OR(2)
!See("FHLSEB")
Global("FHLFredSeb","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN FHLFred23
SAY ~Good to see you, good to see you...~
IF ~~ EXIT
END

BEGIN FHLKAV

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLAliSeb","GLOBAL",0)~ THEN FHLALI FHLAliGreet
~Ah, finally you have arrived. How charming to see you again.~
DO ~SetGlobal("FHLAliSeb","GLOBAL",1)~
== FHLSEBJ
~I could be away for only so long, my dear.~
== FHLALI
~Imnesvale is very pleasant for the time of year.~
== FHLSEBJ
~Oh? I will endeavour to visit it - perhaps in your company?~
EXIT

CHAIN IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLFredSeb","GLOBAL",0)~ THEN FHLFRED FHLFredGreet
~Heeey, good to see you again!~
DO ~SetGlobal("FHLFredSeb","GLOBAL",1)~
== FHLSEBJ
~The same to you, Frederick! How's the wife?~
== FHLFRED
~She's good, she's good, just had our third little boy - lemme buy you a drink at the Coronet to celebrate!~
== FHLSEBJ
~Not for me, thanks.~
== FHLFRED
~Not even a mead? C'mon...~
== FHLSEBJ
~Sorry, Frederick, people to see, things to do...or is it the other way round? I forget.~
== FHLFRED
~Hahaha! Yer a good 'un, Sebastian!~
EXIT

CHAIN IF ~Global("FHLKav","GLOBAL",1)~ THEN FHLKAV FHLKav
~Sebastian Ambrose Xavier Luxley?~
DO ~SetGlobal("FHLKav","GLOBAL",2)~
== FHLSEBJ
~Yes, that's me.~
== FHLKAV
~Genevieve d'Arcy sent me with this letter for you. Said you'd know what it meant.~
== FHLSEBJ
~Oh! Excellent. Give it to me.~
=
~Hmmm, interesting...~
DO ~SetGlobal("FHLKavLetter","GLOBAL",1)
GiveItemCreate("FHLNOTE","FHLSEB",0,0,0)
ActionOverride("FHLKAV",EscapeArea())~
EXIT

BEGIN FHLBOY2

IF ~Global("FHLSpawnBoy","GLOBAL",1)~ THEN BEGIN FHLBOY2
SAY ~We-ell, ye don't look like a big rav-en-ing monster, but I think ye're the one I'm lookin' for.~
++ ~What is it, child? Who sent you?~ + FHLBOY2_who
++ ~Get away from me, brat. I don't need you disturbing me.~ + FHLBOY2_away
END

IF ~~ FHLBOY2_who
SAY ~Two men, one of them had a lot of pink on and one of them had really weird white hair! They said they're at the Mithrest Inn if ye want to see them.~
++ ~Did they say what happened? How did they look?~ + FHLBOY2_how
++ ~Thank you. Now, run along home.~ + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY ~Here, have a gold piece for the trouble.~ DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ ~I don't know what you're talking about. Now, leave me alone.~ + FHLBOY2_home
END

IF ~~ FHLBOY2_away
SAY ~Eeek! But the man in pink'll sneer at me if I don't tell you! They said they're at the Mithrest Inn if ye want to see them.~
++ ~Did they say what happened? How did they look?~ + FHLBOY2_how
++ ~Thank you. Now, run along home.~ + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY ~Here, have a gold piece for the trouble.~ DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ ~I don't know what you're talking about. Now, leave me alone.~ + FHLBOY2_home
END

IF ~~ FHLBOY2_how
SAY ~I dunno! They looked tired, I guess.~
++ ~Thank you. Now, run along home.~ + FHLBOY2_home
IF ~PartyGoldGT(0)~ THEN REPLY ~Here, have a gold piece for the trouble.~ DO ~TakePartyGold(1)~ + FHLBOY2_gold
++ ~I don't know what you're talking about. Now, leave me alone.~ + FHLBOY2_home
END

IF ~~ FHLBOY2_home
SAY ~Okay, okay! I'll go away already!~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ FHLBOY2_gold
SAY ~Yay! Thank you, <SIRMAAM>, thank you!~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
