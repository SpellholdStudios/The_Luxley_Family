BEGIN FHLGEN

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,1)
OR(4)
!InParty("FHLSEB")
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter1
SAY ~Aren't these balloons beautiful? I wish I could go up in one, someday, but they seem a little rickety.~ [FHLG9]
IF ~~ EXIT
END

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,2)
OR(4)
!InParty("FHLSEB") 
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter2
SAY ~Phew, it's bustling here, isn't it? And that's just the way I like it.~ [FHLG10]
IF ~~ EXIT
END

IF ~OR(3)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)
RandomNum(3,3)
OR(4)
!InParty("FHLSEB")
Global("FHLGenSebFirst","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",1)~ THEN BEGIN FHLGenNoLetter3
SAY ~This is my favourite part of the city. There's so much going on!~ [FHLG11]
IF ~~ EXIT
END

IF ~~ FHLGen_take
SAY ~I don't mind how you get it - just don't lead the city guard back to me, all right?~
++ ~What use is this old book for curing the curse, anyway?~ + FHLGen_use
++ ~Do you know where is this person is, or will I just have to run around blindly?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~Can't you get it for me? I've got enough to do at the moment.~ + FHLGen_gene
END

IF ~~ FHLGen_gene
SAY ~I could, but for a price. Eight hundred gold should see it all through, plus the actual fee for discovering the cure.~
IF ~PartyGoldGT(801)~ THEN REPLY ~Is that all? Here's the money.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have paid Genevieve d'Arcy for her part in researching the Luxleys' curse. She should have finished in a few days.~ EXTERN FHLANDJ FHLGen_money
++ ~On second thoughts, I'll go and get it myself.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~I can't pay you that much - I don't have the money to spare.~ + FHLGen_broke
END

IF ~~ FHLGen_nonono
SAY ~Touchy, your friend, isn't <PRO_HESHE>?~
=
~Look, if it bothers you that much, I'll do it myself. Eight hundred gold pieces should cover everything. What do you say?~
IF ~PartyGoldGT(801)~ THEN REPLY ~Is that all? Here's the money.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have paid Genevieve d'Arcy for her part in researching the Luxleys' curse. She should have finished in a few days.~ EXTERN FHLANDJ FHLGen_money
++ ~On second thoughts, I'll go and get it myself.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~I can't pay you that much - I don't have the money to spare.~ + FHLGen_broke
END

IF ~~ FHLGen_broke
SAY ~Then you'll have to get it yourselves, I'm afraid.~
=
~The historian, Quennell, is usually in the library with the priests of Oghma. I'll be here when you come back with the book, so don't take too long.~
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",1)~
EXIT
END

IF ~~ FHLGenSword_demons
SAY ~Maybe. I haven't checked it out, yet. I'm sure you'll be fine, though! We need it, <CHARNAME>. Will you get it?~
++ ~No, I won't do the dirty work for a change.~ + FHLGenSword_sure
++ ~Fine, I will get it. I'll be back soon.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I now need to obtain a sword in order that Genevieve can continue her research. According to her, it is in one of the crypts in the Graveyard District.~ + FHLGenSword_agree
++ ~What use will the sword be for breaking the curse, anyway?~ + FHLGenSword_need
END

IF ~~ FHLGenSword_agree
SAY ~Excellent! Happy hunting. Oh, one more thing.~
IF ~~ THEN + FHLGenSword_sample
END

//Second Talk

IF ~Global("FHLGenTalk","GLOBAL",1) Global("FHLPayGen","GLOBAL",0)~ THEN BEGIN FHLGenSword
SAY ~Ah, hello! Got the book?~ [FHLG6]
IF ~PartyHasItem("FHLCHR")~ THEN REPLY ~Yes, here it is - I've got it here.~ DO ~TakePartyItem("FHLCHR")~ + FHLGenSword_got
IF ~!PartyHasItem("FHLCHR")~ THEN REPLY ~No, I haven't been able to get it, yet.~ + FHLGenSword_no
IF ~!PartyHasItem("FHLCHR") Global("FHLQuennellQuestFail","GLOBAL",1)~ THEN REPLY ~Can you get the book for me? Quennell won't give me it.~ + FHLGen_gene
IF ~!PartyHasItem("FHLCHR") Global("FHLQuennellQuestFail","GLOBAL",0)~ THEN REPLY ~Can you get the book for me? I have other things to do.~ + FHLGen_gene
END

IF ~~ FHLGenSword_got
SAY ~Excellent! There's one more thing, though...~
++ ~No. Definitely not. You do the dirty work, this time.~ + FHLGenSword_time
++ ~What is it? Not another historian to charm, I hope.~ + FHLGenSword_tell
++ ~If we must, we must. What is it you need me to do?~ + FHLGenSword_tell
END

IF ~~ FHLGenSword_no
SAY ~Well, get to it. The curse won't cure itself, now will it?~
IF ~~ EXIT
END

IF ~~ FHLGenSword_time
SAY ~Are you sure you don't even want to know what it is?~
++ ~Yes, I'm sure. There are so many other things I've got to do.~ + FHLGenSword_sure2
++ ~I suppose I can listen. Tell me what you want.~ + FHLGenSword_tell
END

IF ~~ FHLGenSword_tell
SAY ~Well, there's an enchanted sword in one of the crypts in the graveyard.~
++ ~I'm not graverobbing, and that's final.~ + FHLGenSword_graverob
++ ~Let me guess - it's guarded by some sort of foul beings?~ + FHLGenSword_demons
++ ~That can't be too difficult, I suppose. We'll be back soon.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I now need to obtain a sword in order that Genevieve can continue her research. According to her, it is in one of the crypts in the Graveyard District.~ + FHLGenSword_agree
++ ~A book I can understand, but what's the use of a sword for curing the curse?~ + FHLGenSword_need
END

IF ~~ FHLGenSword_sure
SAY ~Fine, then. Just pay me five hundred gold and I'll go and get it myself!~
++ ~I don't have that kind of money to spend.~ + FHLGenSword_poor2
IF ~PartyGoldGT(501)~ THEN REPLY ~Here you go, then.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have paid Genevieve to retrieve a sword she needs for her research into the curse. She should be finished in a few days.~ + FHLGenSword_give
++ ~Why am I not surprised? I'll do it myself, in that case.~ + FHLGenSword_tell2
END

IF ~~ FHLGenSword_sure2
SAY ~Fine, then. Just pay me five hundred gold and I'll go and get the thing myself!~
++ ~I don't have that kind of money to spend.~ + FHLGenSword_poor2
IF ~PartyGoldGT(501)~ THEN REPLY ~Here you go, then.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have paid Genevieve to retrieve a sword she needs for her research into the curse. She should be finished in a few days.~ + FHLGenSword_give
++ ~Why am I not surprised? I'll do it myself, in that case.~ + FHLGenSword_tell2
END

IF ~~ FHLGenSword_tell2
SAY ~All right, then... I need you to get an enchanted sword from one of the crypts in the graveyard.~
++ ~I'm not graverobbing, and that's final.~ + FHLGenSword_graverob
++ ~Let me guess - it's guarded by some sort of foul beings?~ + FHLGenSword_demons
++ ~That can't be too difficult, I suppose. We'll be back soon.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I now need to obtain a sword in order that Genevieve can continue her research. According to her, it is in one of the crypts in the Graveyard District.~ + FHLGenSword_agree
++ ~A book I can understand, but what's the use of a sword for curing the curse?~ + FHLGenSword_need
END

IF ~~ FHLGenSword_need
SAY ~Durydil says that it was enchanted by none other than the Luxley from way back when. We'll be able to understand his magic better with it, and then break the curse.~
=
~So? Will you go and get it?~
++ ~No, I won't.~ + FHLGenSword_sure
++ ~Fine, I'll be back soon.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I now need to obtain a sword in order that Genevieve can continue her research. According to her, it is in one of the crypts in the Graveyard District.~ + FHLGenSword_agree
END

IF ~~ FHLGenSword_poor
SAY ~Then you'll have to get it yourself. I don't work for free.~
=
~Oh, one more thing before you go.~
IF ~~ THEN + FHLGenSword_sample
END

IF ~~ FHLGenSword_poor2
SAY ~Then you'll have to do it yourself. There's an enchanted sword I need from one of the crypts in the graveyard.~
=
~Oh, one more thing before you go.~
IF ~~ THEN + FHLGenSword_sample
END

IF ~~ FHLGenSword_give
SAY ~All right, then - I'll go and get that sword, and you can come and find me in a couple of days - Durydil's done.~
IF ~~ THEN DO ~TakePartyGold(500)~ + FHLGenSword_sample2
END

//Third talk
IF ~Global("FHLGenTalk","GLOBAL",2) Global("FHLTellCurse","GLOBAL",0) Global("FHLPayGen","GLOBAL",0)~ THEN BEGIN FHLGenSword2
SAY ~Ho there! Do you have the sword for me?~ [FHLG7]
IF ~PartyHasItem("FHLSW")~ THEN REPLY ~Yes, I have it right here for you.~ + FHLGenSwordgive
IF ~!PartyHasItem("FHLSW")~ THEN REPLY ~I don't have it on me at the moment.~ + FHLGenSword_no
IF ~!PartyHasItem("FHLSW")~ THEN REPLY ~I've changed my mind - can you get it for me?~ + FHLGen_gene
END

//Fourth talk
IF ~OR(2) Global("FHLGenTalk","GLOBAL",3) Global("FHLPayGen","GLOBAL",1) Global("FHLTellCurse","GLOBAL",0)~ THEN BEGIN FHLGenPat
SAY ~Patience, patience. Durydil requires some more time, I'm afraid.~ [FHLG12]
IF ~~ EXIT
END

IF ~Global("FHLTellCurse","GLOBAL",1)~ THEN BEGIN FHLGenCure
SAY ~Speak of the devil! Sebastian, allow me to introduce my good associate, Durydil.~ [FHLG8]
IF ~~ THEN EXTERN FHLDU FHLESTM1
END

//Initial talk
CHAIN IF ~Global("FHLGenSebFirst","GLOBAL",0)
Global("FHLKavLetter","GLOBAL",0)
Global("FHLLDP","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
InParty("FHLAND")~ THEN FHLGEN FHLGenSebFirst
~Sebastian! Wherever have you been hiding yourself?~ [FHLG5]
DO ~SetGlobal("FHLGenSebFirst","GLOBAL",1)~
== FHLSEBJ
~Oh, you know, here and there - and how are things with you?~ [FHLSG1]
== FHLGEN
~Well, that girl I told you about has been very interested in some things, and then of course there's--~
=
~Ah, it's not for innocent ears like your cousin's, I fear. Come over to my house sometime, and we can have a good old chat.~
EXIT

CHAIN IF ~Global("FHLGenTalk","GLOBAL",0) Global("FHLKavLetter","GLOBAL",1) Global("FHLGenSebFirst","GLOBAL",0)~ THEN FHLGEN FHLGenGreet
~Hello, there! Where have you been, Sebastian? It took a ridiculous amount of time for Kavyn to find you.~ [FHLG1]
DO ~SetGlobal("FHLGenTalk","GLOBAL",1)~
== FHLSEBJ
~A-ha - this is our contact. Genevieve, you look well!~ [FHLSQ7]
== FHLGEN
~You're not looking so bad yourself! Don't tell me - this is your cousin Andrei, yes? Andrei, I've heard so much about you.~ [FHLG2]
== FHLSEBJ
~Yes, and this is my wonderful travelling companion, <CHARNAME>. Without <PRO_HISHER> help, I may never have got this far!~
== FHLGEN
~Speaking of which...~
== FHLSEBJ
~'The kobold has no agenda'. You always try to make me look stupid!~
== FHLGEN
~It isn't difficult, sweetheart. Now, to business. I got your note. My associate Durydil is happy to scry up what you want, but he'll need some items first.~
=
~There's a book some historian owns that Durydil needs called Aegelfred's Chronicles. It has a lot of information about the era you're interested in, and what your ancestors were up to.~
END
++ ~I need an explanation. Who is this Durydil person, and what is he planning?~ EXTERN FHLANDJ FHLGen_explain
++ ~That seems simple enough. Do you know where I can find this historian?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~And we're supposed to take it from him? That hardly seems fair.~ + FHLGen_take
++ ~I don't have time for this. Come on, we're leaving.~ EXTERN FHLSEBJ FHLGen_leave

CHAIN IF ~Global("FHLGenTalk","GLOBAL",0) Global("FHLKavLetter","GLOBAL",1) Global("FHLGenSebFirst","GLOBAL",1)~ THEN FHLGEN FHLGenGreet_metbefore
~Hello, there!~ [FHLG4]
DO ~SetGlobal("FHLGenTalk","GLOBAL",1)~
== FHLSEBJ
~A-ha - this is our contact. Genevieve, you look well!~ [FHLSQ7]
== FHLGEN
~You're not looking so bad yourself! I remember Andrei, of course.~ [FHLG3]
== FHLSEBJ
~Yes, and this is my wonderful travelling companion, <CHARNAME>. Without <PRO_HISHER> help, I may never have got this far!~
== FHLGEN
~Speaking of which...~
== FHLSEBJ
~'The kobold has no agenda'. You always try to make me look stupid!~
== FHLGEN
~It isn't difficult, sweetheart. Now, to business. I got your note. My associate Durydil is happy to scry up what you want, but he'll need some items first.~
=
~There's a book some historian owns that Durydil needs called Aegelfred's Chronicles. It has a lot of information about the era you're interested in, and what your ancestors were up to.~
END
++ ~I need an explanation. Who is this Durydil person, and what is he planning?~ EXTERN FHLANDJ FHLGen_explain
++ ~That seems simple enough. Do you know where I can find this historian?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~And we're supposed to take it from him? That hardly seems fair.~ + FHLGen_take
++ ~I don't have time for this. Come on, we're leaving.~ EXTERN FHLSEBJ FHLGen_leave

CHAIN FHLGEN FHLGen_use
~That's Durydil's line of expertise, but he said that it was linked with the person we think created the estate itself.~
== FHLANDJ
~What? You can't-- Xavier always said that--~
== FHLSEBJ
~That we should follow him like obedient puppies? Andrei, I would have thought you would have learned something from me by now.~
=
~So, <CHARNAME>? Let's not waste time!~
END
++ ~So where can we find this historian?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ EXTERN FHLSEBJ FHLGen_agree
++ ~Can't Genevieve get the book? I have enough to do.~ + FHLGen_gene

//Talk 2
CHAIN FHLGEN FHLGenSword_graverob
~Such sensitivities! Sebastian, I'm surprised at your friend.~
== FHLSEBJ
~<CHARNAME> can be a little quirky that way.~
== FHLGEN
~Well, quirkiness aside, we do need it. Will you get it?~
END
++ ~No, I won't get it. Some things just aren't right.~ + FHLGenSword_sure
++ ~Fine, I'll get it for you. I'll be back soon.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I now need to obtain a sword in order that Genevieve can continue her research. According to her, it is in one of the crypts in the Graveyard District.~ + FHLGenSword_agree
++ ~Why do you need it, anyway? What will it do to help cure the curse?~ + FHLGenSword_need

CHAIN FHLGEN FHLGenSword_sample
~To get a good understanding of the curse and how it affects people, I'll need some samples.~
== FHLANDJ
~What kind of samples?~
== FHLGEN
~Just some hair. And blood, of course.~
== FHLSEBJ
~Andrei will be more than happy to oblige.~
== FHLANDJ
~This is your mess. You deal with it.~
== FHLSEBJ
~Fine, fine.~
== FHLGEN
~Hold out your hand - there you go, that wasn't too hard, was it? And the hair...~
== FHLSEBJ
~Ouch!~
== FHLGEN
~You baby. Once again, thank you for your time. I'll get these to Durydil and he'll get working. See you soon!~
DO ~SetGlobal("FHLSwordQuest","GLOBAL",1)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)
SetGlobal("FHLGenTalk","GLOBAL",2)~
EXIT

CHAIN FHLGEN FHLGenSword_sample2
~To get a good understanding of the curse and how it affects people, I'll need some samples.~
== FHLANDJ
~What kind of samples?~
== FHLGEN
~Just some hair. And blood, of course.~
== FHLSEBJ
~Andrei will be more than happy to oblige.~
== FHLANDJ
~This is your mess. You deal with it.~
== FHLSEBJ
~Fine, fine.~
== FHLGEN
~Hold out your hand - there you go, that wasn't too hard, was it? And the hair...~
== FHLSEBJ
~Ouch!~
== FHLGEN
~You baby. Once again, everyone, thank you for your time... I'll get these to Durydil and he'll get working. See you soon!~
DO ~SetGlobal("FHLPayGen","GLOBAL",1)
SetGlobal("FHLGenTalk","GLOBAL",2)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)~
EXIT

CHAIN FHLGEN FHLGenSwordgive
~Excellent! Now, Durydil has been working hard, and--~
== FHLANDJ
~Don't tell me the sword was for you!~
== FHLSEBJ
~You sly minx. It wasn't even enchanted by a Luxley, was it?~
== FHLGEN
~Not even close.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
~Bah! As if working for this woman was not bad enough, she tries to make us graverob because she lacks the courage! I cannot take this treatment much longer.~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
~I do not approve of this action, <CHARNAME>. Graverobbing is a serious offence, and it was not even for a just cause.~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
~Hmm. I cannot condone this path, <CHARNAME>. Stealing from the dead is not a worthy action. Still, what is done is done, I suppose.~
== FHLGEN
~Come back in a bit. Durydil still needs some time to work.~
DO ~TakePartyItem("FHLSW")
SetGlobal("FHLGenTalk","GLOBAL",3)~
EXIT

CHAIN FHLGEN FHLGenSwordCuregive
~Excellent! Now, Durydil has finished, and--~
== FHLANDJ
~Don't tell me the sword was for you!~
== FHLSEBJ
~You sly minx. It wasn't even enchanted by a Luxley, was it?~
== FHLGEN
~Not even close.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
~Bah! As if working for this woman was not bad enough, she tries to make us graverob because she lacks the courage! I cannot take this treatment much longer.~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
~I do not approve of this action, <CHARNAME>. Graverobbing is a serious offence, and it was not even for a just cause.~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
~Hmm. I cannot condone this path, <CHARNAME>. Stealing from the dead is not a worthy action. Still, what is done is done, I suppose.~
== FHLSEBJ
~You-- Wait. Did you say Durydil had finished?~
== FHLGEN
~Allow me to introduce him!~
DO ~TakePartyItem("FHLSW")
SetGlobal("FHLGenTalk","GLOBAL",3)~
EXIT

CHAIN IF WEIGHT #-1 
~GlobalGT("FHLLDP","GLOBAL",1)
Global("FHLGenLDP","GLOBAL",0)
InParty("FHLSEB")~ THEN FHLGEN FHLGenLDP
~Oh! There you are. So...what happened? Did Xavier...~ [FHLG13]
DO ~SetGlobal("FHLGenLDP","GLOBAL",1)~
== FHLSEBJ
~Things. We're both all right, which is the important thing - or so my dear Andrei keeps telling me!~ [FHLSG4]
== FHLANDJ
~Hello, Genevieve. Sorry if we're a bit...~ [FHLAG1]
== FHLGEN
~Don't worry about it, not in the slightest. If I'd known...but enough about that. You must come and see me again, both of you. I'm sure we'll have lots to talk about!~ [FHLG18]
EXIT

CHAIN IF WEIGHT #-1
~GlobalGT("FHLMDP","GLOBAL",1)
Global("FHLGenMDP","GLOBAL",0)
InParty("FHLSEB")
!InParty("FHLAND")~ THEN FHLGEN FHLGenMDP
~Sebastian? What happ-- where the hell is Andrei?~ [FHLG14]
DO ~SetGlobal("FHLGenMDP","GLOBAL",1)~
== FHLSEBJ
~I don't want to talk about it, Genevieve.~ [FHLSG2]
== FHLGEN
~Now that's just the kind of thing you always do! When will you learn to accept help instead of throwing it--~ [FHLG15]
== FHLSEBJ
~Be quiet! I said I don't want to talk about it! Go and pretend to be someone important, because you're never going to be!~ [FHLSG3]
== FHLGEN
~Fine, I will!~ [FHLG16]
DO ~EscapeArea()~
EXIT
