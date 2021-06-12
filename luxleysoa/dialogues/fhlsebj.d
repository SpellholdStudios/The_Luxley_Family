BEGIN FHLSEBJ

//If Andrei is dead

IF ~Global("FHLAndDead","GLOBAL",1)~ THEN BEGIN FHLAndDead
SAY ~It's not fair, he was so young! Why would he just-- I need to leave, everyone has to know...~
IF ~~ THEN DO ~SetGlobal("FHLAndDead","GLOBAL",2)
LeaveParty()
GivePartyAllEquipment()
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL09")~
EXIT
END

IF ~~ FHLAndTrans_enough
SAY ~Yes, well, we'll see whether it's enough, won't we. Now let's do something. I'm bored just standing around here.~
IF ~~ EXIT
END

IF ~~ FHLLyelArrive_why
SAY ~That's a point. Lyel, not that I don't thank the gods for every exquisite moment we spend together, but why are you here?~
IF ~~ THEN EXTERN FHLLYEL FHLLyelArrive_exp
END

IF ~~ FHLLyelLeave_key
SAY ~This book. It lets you get in, but what Lyel forgot to tell you is that they don't work the other way. We're trapped here!~
IF ~~ THEN EXTERN FHLLYEL FHLLyelLeave_seb
END

IF ~~ FHLLyelLeave_why
SAY ~What was the point of saying anything? We weren't coming here. Until now.~
IF ~~ THEN EXTERN FHLLYEL FHLLyelLeave_seb
END

IF ~~ FHLLyelLeave_far
SAY ~How about 'I'm a child of Bhaal and I killed my half-brother to save the Sword Coast and I was captured and tortured by some insane mage'? Hypocrite.~
IF ~~ THEN EXTERN FHLLYEL FHLLyelLeave_seb
END

//Post-Lyel
IF ~~ FHLPL_yeah
SAY ~I don't have to answer to either of you, and you know it.~
++ ~That's not true at all. You're here on my authority!~ + FHLPL_authority
++ ~That's not true. Andrei's your cousin, and he's your friend too!~ + FHLPL_cousin
++ ~Well, if that's the way you feel, then get out of my group.~ + FHLPL_out
++ ~Listen, Sebastian, I can help you do whatever you need.~ + FHLPL_please
END

IF ~~ FHLPL_deceive
SAY ~Oh, deceive is such a strong word. Perish the thought! Now, let's be moving on before Andrei bursts something...~
IF ~~ EXIT
END

IF ~~ FHLPL_business
SAY ~I'll help you with your business, <CHARNAME>, and you can help me with mine.~
++ ~Excellent. Let's get going, then.~ + FHLPL_go
++ ~I don't trust you, Sebastian. Let's just go.~ + FHLPL_go
++ ~As long as you understand that my affairs take precedence.~ + FHLPL_precedence
END

IF ~~ FHLPL_go
SAY ~Yes, let's!~
IF ~~ EXIT
END

IF ~~ FHLPL_surprise
SAY ~Well, since everyone seems to have such shining confidence in me, let's go, and that way I can work on more ways to disappoint you in the future!~
IF ~~ EXIT
END

//Genevieve blocks
IF ~~ FHLGen_forget
SAY ~Come on, it won't be that bad!~
++ ~I said no, and I mean it!~ EXTERN FHLGEN FHLGen_nonono
++ ~All right. Where is this historian?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ + FHLGen_agree
++ ~Can't you get it, Genevieve?~ EXTERN FHLGEN FHLGen_gene
END

//Quennell blocks
IF ~~ FHLQuen_seb1
SAY ~Psst! <CHARNAME>! Do you need any help?~
++ ~All right, but don't do anything stupid.~ + FHLQuen_sebhelp1
++ ~No, I'm fine. Quennell, sorry for the interruption. I was looking for Aegelfred's Chronicles.~ EXTERN FHLQUEN FHLQuen_nor2
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~Ssh. Quennell, I'm so sorry to waste your valuable time.~ EXTERN FHLQUEN FHLQuen_wis2
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~Quennell, it's you I want to talk to. You're far more experienced than any of my companions.~ EXTERN FHLQUEN FHLQuen_sed2
END

IF ~~ FHLQuen_seb2title
SAY ~Psst! <CHARNAME>! Do you need any help?~
++ ~All right, but don't do anything stupid.~ + FHLQuen_sebhelp1
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY ~Quennell, sorry for the interruption. I'm a genealogist.~ EXTERN FHLQUEN FHLQuen_int4
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~Ssh. Quennell, I'm so sorry to waste your valuable time.~ EXTERN FHLQUEN FHLQuen_wis2
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~Quennell, it's you I want to talk to. You're far more experienced than any of my companions.~ EXTERN FHLQUEN FHLQuen_sed2
END

IF ~~ FHLQuen_sebcha
SAY ~Psst! <CHARNAME>! Do you need any help?~
++ ~All right, but don't do anything stupid.~ + FHLQuen_sebhelpcha
++ ~Mr Quennell, I'm afraid our records show that you withdrew this book on a long-term loan.~ EXTERN FHLQUEN FHLQuen_loan
END

IF ~~ FHLQuen_intseb
SAY ~Hey, <CHARNAME>, need a hand?~
++ ~Thanks. Just don't do anything rash.~ + FHLQuen_sebhelp1
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~I'm <CHARNAME> and I'm a genealogist, researching the Luxley family.~ EXTERN FHLQUEN FHLQuen_genealogy
END

IF ~~ FHLQuen_sebsed
SAY ~<CHARNAME>, it looks like you need some help.~
++ ~Go ahead, try - just don't do anything stupid.~ + FHLQuen_sebhelp1
IF ~Gender(Player1,MALE)~ THEN REPLY ~Now, Quennell, where were we? Ah, yes. We were just getting to the interesting part.~ EXTERN FHLQUEN FHLQuen_sed3male
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Now, Quennell, where were we? Ah, yes. We were just getting to the interesting part.~ EXTERN FHLQUEN FHLQuen_sed3female
END

//ESTM
IF ~~ FHLESTM_let
SAY ~Then you're not coming!~
++ ~Wait, wait. You both need someone with you.~ + FHLESTM_come
++ ~Look, there are things I need to do. I can't come with you, but I don't want you to do anything rash.~ + FHLESTM_time
++ ~Fine. Do what you must.~ + FHLESTM_no
END

IF ~~ FHLESTM_no
SAY ~Then thank you for nothing.~
IF ~~ THEN DO ~SetGlobal("FHLGone","GLOBAL",1)~
EXIT
END

IF ~~ FHLESTM_worstchange
SAY ~You said you'd help me! Why? Why change now? Why not give the bastard what he deserves?~
++ ~Because then you'd be as bad as he is.~ + FHLESTM_wisworst
IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY ~Because it's not what you really want, is it?~ + FHLESTM_wis14
++ ~It won't help. You cure the curse, but at what cost?~ + FHLESTM_live
++ ~You can live with the curse, but it won't be worth it when your whole family is dead because of you.~ + FHLESTM_wis15
END

//MDP
IF ~Global("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLMDP
SAY ~...~
++ ~Sebastian? Are you all right?~ SOLVED_JOURNAL ~The End of the Luxleys' curse

It transpired that to cure the curse the head of the family must be killed. I did so, but Andrei turned against me and I had to fight some of the rest of their relatives.~ + FHLMDP_allright
++ ~Well, I'm glad that's over and done with.~ SOLVED_JOURNAL ~The End of the Luxleys' curse

It transpired that to cure the curse the head of the family must be killed. I did so, but Andrei turned against me and I had to fight some of the rest of their relatives.~ + FHLMDP_over
++ ~Oh...hells, what have we done?~ SOLVED_JOURNAL ~The End of the Luxleys' curse

It transpired that to cure the curse the head of the family must be killed. I did so, but Andrei turned against me and I had to fight some of the rest of their relatives.~ + FHLMDP_done
++ ~(Say nothing.)~ SOLVED_JOURNAL ~The End of the Luxleys' curse

It transpired that to cure the curse the head of the family must be killed. I did so, but Andrei turned against me and I had to fight some of the rest of their relatives.~ + FHLMDP_nothing
END

IF ~~ FHLMDP_allright
SAY ~No. Of course I'm not.~
=
~I suppose the curse has been cured. We need to test it at some point. Soon.~
++ ~Look, I--~ + FHLMDP_argh
++ ~All right.~ + FHLMDP_argh
++ ~I don't--~ + FHLMDP_argh
END

IF ~~ FHLMDP_over
SAY ~Glad?! You sick - I--~
=
~It's done. The curse must have been cured. We need to test it at some point. Soon.~
++ ~Look, I--~ + FHLMDP_argh
++ ~All right.~ + FHLMDP_argh
++ ~I don't--~ + FHLMDP_argh
END

IF ~~ FHLMDP_done
SAY ~Weren't you paying attention? I suppose it didn't matter - that it's over now, anyway--~
=
~<CHARNAME>, I--~
=
~I suppose the curse has been cured, now. We need to test it at some point. Soon.~
++ ~Look, I--~ + FHLMDP_argh
++ ~All right.~ + FHLMDP_argh
++ ~I don't--~ + FHLMDP_argh
END

IF ~~ FHLMDP_nothing
SAY ~(After a moment, Sebastian's expression goes somewhat blank and he turns away.)~
IF ~~ THEN DO ~SetGlobal("FHLMDP","GLOBAL",2)
RealSetGlobalTimer("FHLLuxTalkTime","GLOBAL",900)~
EXIT
END

IF ~~ FHLMDP_argh
SAY ~Thank--~
=
~Yes. I suppose I should be grateful.~
IF ~~ THEN DO ~SetGlobal("FHLMDP","GLOBAL",2)
RealSetGlobalTimer("FHLLuxTalkTime","GLOBAL",900)~
EXIT
END

//Sebastian interjections

INTERJECT_COPY_TRANS ACOLYTE2 2 FHLSebLath
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I'm all for the creativity, but not being proud of it? Now that's just odd.~
END

INTERJECT_COPY_TRANS AERIE 31 FHLSebAer
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I always used to like circuses. I suppose they're not as fun as I thought they were.~
END

INTERJECT_COPY_TRANS AEWERE2 1 FHLSebWere
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ha, but if you don't care for appearance, what is there to care for, I wonder?~
END

INTERJECT_COPY_TRANS ANOMENJ 2 FHLSebAnoFir
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Yes, yes, and then we shall smite them down, I'm sure. People die all the time, not just knights.~
END

INTERJECT_COPY_TRANS ARAN 51 FHLSebAran
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ah, the bait. Not that I'm complaining: you will let me have a look at them, won't you?~
END

INTERJECT_COPY_TRANS2 ARAN 20 FHLSebAran2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Hostility? Not a word I like to hear. I'm sure we can settle this with a few prods in the right direction...~
END

INTERJECT_COPY_TRANS ARAN 85 FHLSebAran3
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~And of course we're the ones who have to help. Whatever happened to hiring official mercenaries?~
END

INTERJECT_COPY_TRANS ARNBOY01 3 FHLSebArnboy
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Well, of course you're going to feel sick if you insist on doing something as stupid as being a torturer. Idiot boy.~
END

APPEND FHLSEBJ
IF ~~ FHLSBAMNG2
SAY ~Oh, come now - snooping is such a strong word.~
IF ~~ THEN DO ~SetGlobal("fhlbamng","GLOBAL",1)~
EXIT
END
END

APPEND BAMNG01
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("fhlbamng","GLOBAL",0)~ THEN BEGIN FHLSBAMNG
SAY ~Hoy, you! I think I know you...haven't I seen you snooping around here before?~
IF ~~ THEN EXTERN FHLSEBJ FHLSBAMNG2
END
END

INTERJECT_COPY_TRANS BARONP 40 FHLSebPloyer
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~If you think she's going to grovel, you're even stupider than I thought.~
END

INTERJECT_COPY_TRANS BBEGG2 4 FHLSebBBegg
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ha! That's a good one. You should practise your deception better, <CHARNAME>.~
END

INTERJECT_COPY_TRANS BDACT06 12 FHLBDact06
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Not as good as something I could have written, though, I'm sure...~
END

INTERJECT_COPY_TRANS BDHIGG01 26 FHLSebHigg
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I suggest Iltheia for the role. Experience always wins the day.~
END

INTERJECT_COPY_TRANS HAERDAJ 60 FHLSebHDBegg
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Yes, and keeping your story straight would be good, as well. Don't make it too elaborate, otherwise no one will believe you.~
END

APPEND BFTOWN1
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("fhlbftown","GLOBAL",0)~ THEN BEGIN FHLSebbftown
SAY ~Hmph, all those scrolls and whatnot are nothing but a danger to everyone in the city. Destroy them all, I say!~
IF ~~ THEN EXTERN FHLSEBJ FHLSbftown
END
END

APPEND FHLSEBJ
IF ~~ FHLSbftown
SAY ~Quickly, madam, I think I saw a wizard over there! They may look like us, but they have magical beams shooting out from under their beards!~
IF ~~ THEN DO ~SetGlobal("fhlbftown","GLOBAL",1)~
EXIT
END
END

APPEND BHALF1
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("fhlstiv","GLOBAL",0)~ THEN BEGIN FHLStiv
SAY ~There be horror in the heart of the seagull...they be the most vicious of all creatures.~
IF ~~ THEN EXTERN FHLSEBJ FHLSStiv
END
END

APPEND FHLSEBJ
IF ~~ FHLSStiv
SAY ~Yes, birds can be a little trying, can't they? They do try to flap so...~
IF ~~ THEN DO ~SetGlobal("fhlstiv","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS RAELIS 15 FHLSBou
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~The playwright really should have been more careful about disguising the truth. Clearly an amateur.~
END

APPEND BPROST2
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("fhlsprost1","GLOBAL",0)~ THEN BEGIN FHLSprost1
SAY ~You're a fine-looking sort. Fancy a tumble or two?~
IF ~~ THEN EXTERN FHLSEBJ FHLSprost1
END
END

APPEND FHLSEBJ
IF ~~ FHLSprost1
SAY ~I'd like to think that I wouldn't have to pay, my dear, but if I ever need a good roll in the hay you'll be the first on my list.~
IF ~~ THEN DO ~SetGlobal("fhlsprost1","GLOBAL",1)~
EXIT
END
END

APPEND BRAT2
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSBrat2","GLOBAL",0)~ THEN BEGIN FHLSBrat2
SAY ~Oooh, what pretty robes you've got, mister! Can I have a piece of them?~
IF ~~ THEN EXTERN FHLSEBJ FHLSBrat2
END
END

APPEND FHLSEBJ
IF ~~ FHLSBrat2
SAY ~Here's a short answer for you: no.~
IF ~~ THEN DO ~SetGlobal("FHLSBrat2","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS BREG01 7 FHLSVisaj
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Hmm, yes, I've heard of him. Only the name, but he's meant to be quite something.~
END

APPEND BSAILOR2
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSBSail","GLOBAL",0)~ THEN BEGIN FHLSBSail
SAY ~Hoy, you...fancy coming up to my room for five minutes?~
IF ~~ THEN EXTERN FHLSEBJ FHLSBSail
END
END

APPEND FHLSEBJ
IF ~~ FHLSBSail
SAY ~If five minutes is all you're capable of I'd rather not, thank you.~
IF ~~ THEN DO ~SetGlobal("FHLSBSail","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 BSHOP02 6 FHLSBShop02
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~And the plot thickens! You'll have to tell me about this sometime, Haer'Dalis, or I'll be most vexed.~
END

APPEND BURCH2
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSBurch2","GLOBAL",0)~ THEN BEGIN FHLSBurch2
SAY ~MY MOTHER SAYS THAT CATS WILL CLAW OUT YOUR EYES SOON AS LOOK AT YOU!~
IF ~~ THEN EXTERN FHLSEBJ FHLSBurch2
END
END

APPEND FHLSEBJ
IF ~~ FHLSBurch2
SAY ~No wonder, if you yell at them so! Shoo, you!~
IF ~~ THEN DO ~SetGlobal("FHLSBurch2","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS C6BODHI 15 FHLSBod1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Well, maybe that has something to do with the fact that you're destroying them! Just a hunch...~
END

INTERJECT_COPY_TRANS C6REGIS1 2 FHLSDrizzt
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~With all the talk about these people, I was expecting them to be a little more...impressive, I have to say.~
END

INTERJECT_COPY_TRANS C6ELHAN2 28 FHLSElhan
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ah, a vanishing curse. Yes, I'm familiar with that sort of thing. Presumably you need a talisman of some sort to unlock it.~
END

APPEND CELVAN
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSCelvan","GLOBAL",0)~ THEN BEGIN FHLSCelvan
SAY ~There once was a man who wrote plays
Lazing through all of his days
He puts on a show
But where shall he go
When he believes in naught that he says?~
IF ~~ THEN EXTERN FHLSEBJ FHLSCelvan
END
END

APPEND FHLSEBJ
IF ~~ FHLSCelvan
SAY ~Do you know this, or are you just insane? I'm going for the latter, here.~
IF ~~ THEN DO ~SetGlobal("FHLSCelvan","GLOBAL",1)~
EXTERN CELVAN 1
END
END

INTERJECT_COPY_TRANS2 CIRCG1 3 FHLSCircguard
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~You should be very careful here, <CHARNAME> - I'd really rather not do it at all. What happens if we get trapped there?~
END

APPEND CIVIL01
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSCivil1","GLOBAL",0)~ THEN BEGIN FHLSCivil1
SAY ~Ah, greetings to you, Mr Zhomar. A pleasure to see you once again.~
IF ~~ THEN EXTERN FHLSEBJ FHLSCivil1
END
END

APPEND FHLSEBJ
IF ~~ FHLSCivil1
SAY ~Thank you, thank you. I'm afraid I can't stop long at the moment.~
IF ~~ THEN DO ~SetGlobal("FHLSCivil1","GLOBAL",1)~
EXIT
END
END

APPEND COPCUST1
IF WEIGHT #-1 ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLSCopCust1","GLOBAL",0)~ THEN BEGIN FHLSCopCust1
SAY ~Hello, there...fancy joining us for a while, love?~
IF ~~ THEN EXTERN FHLSEBJ FHLSCopCust1
END
END

APPEND FHLSEBJ
IF ~~ FHLSCopCust1
SAY ~I'd rather scratch out my eyes. Or yours, depending on how I'm feeling.~
IF ~~ THEN DO ~SetGlobal("FHLSCopCust1","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 CORGEIG 31 FHLSCorg
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I wonder how long it'll take for him to escape, though. Not to put a damper on the proceedings, or anything.~
END

INTERJECT_COPY_TRANS CROTHF01 19 FHLSCroth
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ah, the romance of the young. How well I remember it...~
END

INTERJECT_COPY_TRANS CSSUPP2 1 FHLSCSSupp
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I must say, I admire this fellow's grasp of rhetoric. I wonder if he studied it anywhere I could learn from...~
END

INTERJECT_COPY_TRANS2 DADROW03 22 FHLSDadrow03
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Hmm. I never thought you were the slave-owning type, Veldrin. I'll have to keep an eye on you.~
END

INTERJECT_COPY_TRANS DEGARD 11 FHLSDegard
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Nerveless, eh? It does sound awfully like someone I know...~
END

APPEND DHARLOT1
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLDHarlot1","GLOBAL",0)~ THEN BEGIN FHLDHarlot1
SAY ~Hello there, handsome...ye looks a fine one. D'ye--~
IF ~~ THEN EXTERN FHLSEBJ FHLSDHarlot1
END
END

APPEND FHLSEBJ
IF ~~ FHLSDHarlot1
SAY ~No, I don't care to do anything with you. I don't pay for that kind of thing. Now leave me alone!~
IF ~~ THEN DO ~SetGlobal("FHLSDHarlot1","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS YOSHJ 57 FHLSYoshThief
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ha! Good going, Yoshimo. I'd have done the same if my hands were as fast as yours.~
END

INTERJECT_COPY_TRANS2 EDWINW 0 FHLSEdwinW
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Hardly deforming, Edwin. You make a rather attractive woman. Look on the bright side!~
END

INTERJECT_COPY_TRANS2 FFACTOR1 5 FHLSFFactor
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Roses, eh? Come on, <CHARNAME>, let's get that gem. I like the sound of this.~
END

INTERJECT_COPY_TRANS FFCROWD1 0 FHLFFCrowd1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Sssh, down in the front! They're doing the best they can!~
END

APPEND FFCUST01
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLFFCust01","GLOBAL",0)~ THEN BEGIN FHLFFCust01
SAY ~Oh, it's ye again. Saw ye sneaking around a while back...~
IF ~~ THEN EXTERN FHLSEBJ FHLSFFCust01
END
END

APPEND FHLSEBJ
IF ~~ FHLSFFCust01
SAY ~Hmm, my reputation must have preceded me. That, or this fellow has very good eyes.~
IF ~~ THEN DO ~SetGlobal("FHLFFCust01","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS FIRKRA02 0 FHLSFir1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~...ah. Now that's not something you see every day. Unless you travel with <CHARNAME>, evidently.~
END

INTERJECT_COPY_TRANS2 FOOD 1 FHLSFood
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~She's alive, but no one's in there. Brr, it gives me the shivers - and not in a good way.~
END

INTERJECT_COPY_TRANS2 GAAL 14 FHLSGaal
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~If you need me to tell you to be careful when we're doing this, there's no hope for you.~
END

INTERJECT_COPY_TRANS GARKID01 6 FHLSGarkid
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Oooh, I think that someone has a thing for <CHARNAME>...!~
END

INTERJECT_COPY_TRANS GARKID02 12 FHLSGarkid2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Oooh, I think that someone has a thing for <CHARNAME>...!~
END

INTERJECT_COPY_TRANS2 GERETH 4 FHLSGereth
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Heh, I hope I'm as irritating as he is when I'm his age, otherwise I won't have achieved my dream.~
END

APPEND GNOBLEF1
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLGNOBLEF1","GLOBAL",0)~ THEN BEGIN FHLGNobleF1
SAY ~Oooh, how wonderful! It is Sebastian Zhomar, isn't it?~
IF ~~ THEN EXTERN FHLSEBJ FHLSGNobleF1
END
END

APPEND FHLSEBJ
IF ~~ FHLSGNobleF1
SAY ~Perhaps we should speak at a later time, my lady, when things are a little less...hectic.~
IF ~~ THEN DO ~SetGlobal("FHLGNOBLEF1","GLOBAL",1)~
EXIT
END
END

APPEND GNOBLEM2
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLGNOBLEM2","GLOBAL",0)~ THEN BEGIN FHLGNobleM2
SAY ~You there, Sebastian Luxley? I hear you're quite a wordsmith. I wonder, would I be able to buy your services?~
IF ~~ THEN EXTERN FHLSEBJ FHLSGNobleM2
END
END

APPEND FHLSEBJ
IF ~~ FHLSGNobleM2
SAY ~I'm so sorry, my lord, but I'm otherwise occupied at the moment. Maybe another time I can create a delightful work for you.~
IF ~~ THEN DO ~SetGlobal("FHLGNOBLEM2","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS HAERDA 67 FHLSHaeSlave
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Yes, I can tell. I-- Ah, just get on with it.~
END

INTERJECT_COPY_TRANS HELLJON 7 FHLSIren1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~What is it with him and not staying dead? I suggest we finish this now, and let his death be related throughout the years!~
END

INTERJECT_COPY_TRANS HENDAK 2 FHLSHendak
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~No one should ever have to live like this. I don't know what we can do, but we have to stop it!~
END

INTERJECT_COPY_TRANS JAGALVAR 23 FHLSGalvar
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I'd laugh, if this wasn't so annoyingly stupid.~
END

INTERJECT_COPY_TRANS JAN 15 FHLSJan1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ha! A master storyteller indeed.~
END

INTERJECT_COPY_TRANS LAVOK 9 FHLSLav
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~What's this, Valygar? Things aren't looking so black and white, now? Cheer up, I'm sure you'll understand things someday.~
END

INTERJECT_COPY_TRANS MAZZY 20 FHLSMaz1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I think this would be an excellent time to remember that discretion is the better part of valour.~
END

INTERJECT_COPY_TRANS MEKRAT 1 FHLSMekrath
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~I hate people like this. They think they can just play around with other people as though they were puppets. Don't listen to him, <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 NALIA 13 FHLSNal
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~What a naive little thing she is. I wonder how long she'll last.~
END

APPEND ORIONA
IF ~See("FHLSEB")
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLOriona","GLOBAL",0)~ THEN BEGIN FHLOriona
SAY ~Ah, Sebastian, dearest. Are you ever going to relent and spend some time with me?~
IF ~~ THEN EXTERN FHLSEBJ FHLSOriona
END

IF ~~ FHLOriona2
SAY ~Of course. It takes one to know one, after all. Perhaps later we can talk of your estate and those riches you have hidden away.~
IF ~~ THEN EXTERN FHLSEBJ FHLSOriona2
END
END

APPEND FHLSEBJ
IF ~~ FHLSOriona
SAY ~I've been on the other side of the bargain too often, so I'll have to regretfully decline.~
IF ~~ THEN EXTERN ORIONA FHLOriona2
END

IF ~~ FHLSOriona2
SAY ~That sounds an excellent idea, Oriona.~
IF ~~ THEN DO ~SetGlobal("FHLOriona","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS PIRMUR01 2 FHLPirMur01
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Let's say...they're busy. Hand over the girl and maybe we'll leave you alive.~
=
~That sounded rather good, didn't it?~
END

INTERJECT_COPY_TRANS PLAYER1 3 FHLSDizzy
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Try not to die, there, <CHARNAME> - this is a rather tricky situation we're in, and you'll be no good as a corpse.~
END

INTERJECT_COPY_TRANS PLAYER1 5 FHLSSlay1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~All right, <CHARNAME>, that was one thing about this whole godhood business that no one told me about! Why didn't anyone warn me?~
END

INTERJECT_COPY_TRANS PLAYER1 16 FHLSIrenDead
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Yes, yes, a fairytale ending for all. Why does it feel so anticlimactic?~
END

INTERJECT_COPY_TRANS PLAYER1 25 FHLSHell1
== FHLSEBJ IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID) OR(2) InParty("FHLAND") GlobalGT("FHLLDP","GLOBAL",1)~ THEN
~Don't worry, Andrei, we'll get out of here. It'll be all right. We've done things like this before...well, not quite like this, but, well...ah, you get the picture.~
END

INTERJECT_COPY_TRANS PLAYER1 25 FHLSHell2
== FHLSEBJ IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID) Global("FHLMDP","GLOBAL",1)~ THEN
~Oh. Oh, I understand. This is meant to be some sort of punishment where I'm tormented for my misdeeds. Well, it's NOT GOING TO HAPPEN, DO YOU HEAR?~
END

//Tree of life dialogue

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("FHLSEB")
!Dead("FHLSEB")
Global("FHLSTreeoflife","GLOBAL",0)
OR(2)
GlobalGT("FHLLDP","GLOBAL",1)
GlobalLT("FHLTellCurse","GLOBAL",4)~ THEN DO
~SetGlobal("FHLSTreeoflife","GLOBAL",1)~ GOTO FHLSTreeofLifeLDP

IF ~InParty("FHLSEB")
!Dead("FHLSEB")
Global("FHLSTreeoflife","GLOBAL",0)
Global("FHLMDP","GLOBAL",1)~ THEN DO
~SetGlobal("FHLSTreeoflife","GLOBAL",1)~ GOTO FHLSTreeofLifeMDP
END

APPEND PLAYER1
IF ~~ FHLSTreeofLifeLDP
SAY ~Sebastian: it is difficult to entirely fathom his motivations, even after travelling with him for so long. Perhaps he does not truly understand the threat that Irenicus poses?~
++ ~Sebastian, you know that this isn't your fight. You don't have to do this.~ EXTERN FHLSEBJ FHLSTreeLDP_nofight
++ ~You don't have to do this, Sebastian. You've seen Irenicus' power.~ EXTERN FHLSEBJ FHLSTreeLDP_danger
++ ~Sebastian, I hope you're willing to put everything you have into this battle.~ EXTERN FHLSEBJ FHLSTreeLDP_ready
END

IF ~~ FHLSTreeofLifeMDP
SAY ~Sebastian: even after travelling with him for so long and going through so much, it is difficult to entirely fathom his motivations. Perhaps he does not truly understand the threat that Irenicus poses?~
++ ~Sebastian, you know that this isn't your fight. You don't have to do this.~ EXTERN FHLSEBJ FHLSTreeMDP_nofight
++ ~You don't have to do this, Sebastian. You've seen Irenicus' power.~ EXTERN FHLSEBJ FHLSTreeMDP_nofight
++ ~Sebastian, I hope you're willing to put everything you have into this battle.~ EXTERN FHLSEBJ FHLSTreeMDP_ready
END
END

APPEND FHLSEBJ
IF ~~ FHLSTreeLDP_nofight
SAY ~Stop that, <CHARNAME>, I mean it. Trying to make yourself feel better by offloading the responsibility for my death onto me? Pfeh.~
=
~I know what's ahead, and I couldn't possibly turn back now. Why, Andrei would never look me in the face again. Just let me write the book, and I'll be happy.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLSTreeLDP_danger
SAY ~Yes, now I consider it, Irenicus is far too big and scary--~
=
~Get a grip, <CHARNAME>. I couldn't possibly turn back now. Why Andrei would never look me in the eye again. Just let me write the book, and I'll be happy.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLSTreeLDP_ready
SAY ~Who do you take me for? A layabout? Well, I suppose that would be a reasonable description, but if I turned back now Andrei would never look me in the eye again.~
=
~Just let me write the book after this is all over, and I'll be happy.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLSTreeMDP_nofight
SAY ~Oh, spare me. You know and I know that I'm coming with you. Don't try and unload your responsibility onto me. That's like something I'd do.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLSTreeMDP_ready
SAY ~Yes, of course I'm going to put everything I have into the battle. That isn't much, but I'll be with you all the same.~
COPY_TRANS PLAYER1 33
END
END

INTERJECT_COPY_TRANS PPSAEM 42 FHLSSaem1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Well, that sounds interesting, at any rate. At least the trip won't be completely dull.~
END

EXTEND_BOTTOM PPDESH 12
IF ~InParty("FHLSEB")
!Dead("FHLSEB")~ THEN REPLY ~We're clearly mad. Sebastian, say hello to the nice Pirate Lord.~ EXTERN FHLSEBJ FHLSDesh
END

EXTEND_BOTTOM PPDESH 19
IF ~InParty("FHLSEB")
!Dead("FHLSEB")~ THEN REPLY ~We're clearly mad. Sebastian, say hello to the nice Pirate Lord.~ EXTERN FHLSEBJ FHLSDesh
END

CHAIN FHLSEBJ FHLSDesh
~Ooh, my head hurts...<CHARNAME>, I was just having a really good daydream, and you had to--~
=
~Aieee! Pirate Lord! We must all be on our best behaviour!~
== PPDESH
~Right...~
== FHLSEBJ
~Watch out, <CHARNAME>, don't let him hurt us, otherwise I'll start miaowing and then what will we all do?~
== PPDESH
~I beg your pardon? Miaowing?~
== FHLSEBJ
~But we mustn't let him into our faraway home! No, oh no...~
EXTERN PPDESH 17

INTERJECT_COPY_TRANS2 PPDRADEE 3 FHLSDradeel
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Not a dog person, then? I know how he feels.~
END

INTERJECT_COPY_TRANS2 PPDRADEE 0 FHLSDradeel2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Not a dog person, then? I know how he feels.~
END

INTERJECT_COPY_TRANS PPIRENI2 53 FHLSYoshi1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Yosh-- But--~
END

INTERJECT_COPY_TRANS YOSHJ 13 FHLSYoshi2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~But this isn't...I thought...~
END

INTERJECT_COPY_TRANS PPSAEM2 21 FHLSSaem2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~This man's a slippery one, and it seems awfully convenient that he should repent now. Trust me, it takes one to know one.~
END

INTERJECT_COPY_TRANS PPSAEM3 1 FHLSSaem3
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Oh, come on, this is just ridiculous. All we want is to get back to dry land - if indeed that's ever going to be possible!~
END

INTERJECT_COPY_TRANS HAERDA 210 FHLSHaerdRael2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ha! Looks like you were had, <CHARNAME>. And not for the first time, if I may say so...~
END

INTERJECT_COPY_TRANS RAELIS 59 FHLSRaelis
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~The deeds to the...<CHARNAME>, do you understand what this means? This is fantastic! I never thought travelling with you would get something like this!~
END

INTERJECT_COPY_TRANS RENAL 22 FHLSRenal
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Hmmm, and with all that rival guild business around I suppose he's got enough on your plate, right?~
END

INTERJECT_COPY_TRANS RESUNA 8 FHLSSuna
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Past, eh? Is this a sign I hear that Valygar's heart isn't a chunk of flint in his chest? I think it is!~
END

INTERJECT_COPY_TRANS SAHCPT02 12 FHLSahpr1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~It would be a prophecy, wouldn't it? <CHARNAME>, next time you decide to have a prophecy made about you, could you make it somewhere a little less smelly?~
END

CHAIN
IF ~Name("FHLSEB",LastTalkedToBy)
Global("FHLSalv","GLOBAL",0)~ THEN SALVANAS FHLSalv
~I am Salvanas, conqueror of women and renowned around Faerun for my skill at love...but, obviously, you and I have nothing further to say to one another, I am sure.~
DO ~SetGlobal("FHLSalv","GLOBAL",1)~
== FHLSEBJ
~Really? I would have thought that we had all too much to say to each other.~
== SALVANAS
~Er...pardon?~
== FHLSEBJ
~Oh, come now, Salvanas, don't pretend you don't see it. Don't pretend you don't feel it.~
== SALVANAS
~Feel?~
== FHLSEBJ
~Our eyes meeting across the room...the fire of desire finally lit...~
== SALVANAS
~Ah...I think you must be thinking of someone else. Er, excuse me.~
EXIT

INTERJECT_COPY_TRANS SASSAR 4 FHLSSassar
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~You'd think he would have realised how evil the god was when it asked him to cut out his eyes. There's no accounting for taste...~
END

INTERJECT_COPY_TRANS2 SBWENCH 9 FHLSSBwench
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Oh, come on, Eddie, don't be such a meanie!~
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("FHLSEB",LastTalkedToBy)
Global("FHLLDP","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)~
THEN EXTERN TRGYP02 FHLSGypsy1
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("FHLSEB",LastTalkedToBy)
GlobalGT("FHLLDP","GLOBAL",0)~
THEN EXTERN TRGYP02 FHLSGypsy3
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("FHLSEB",LastTalkedToBy)
GlobalGT("FHLMDP","GLOBAL",0)~
THEN EXTERN TRGYP02 FHLSGypsy4
END

APPEND TRGYP02
IF ~~ FHLSGypsy1
SAY ~You are a cat in a cage - and such tricks you must perform! Let go of your fury, lest it consume you and that smiling face of yours is darkened with sorrow.~
IF ~~ THEN EXTERN FHLSEBJ FHLSGypsy2
END

IF ~~ FHLSGypsy3
SAY ~Ah, you have escaped your cage, have you not? Now you must have a clear gaze forward, lest you be eaten up with sorrow.~
IF ~~ THEN EXTERN FHLSEBJ FHLSGypsy2
END

IF ~~ FHLSGypsy4
SAY ~Ah, you have escaped your cage! Your poor friends, what will they do now? Take heart, and do not throw away what you have left.~
IF ~~ THEN EXTERN FHLSEBJ FHLSGypsy2
END
END

APPEND FHLSEBJ
IF ~~ FHLSGypsy2
SAY ~I...don't know what you mean. I don't believe in fortune-tellers, anyway.~
IF ~~ EXIT
END
END

INTERJECT_COPY_TRANS UDDROW22 2 FHLSUDDrow
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Well, that sounds interesting, at least.~
END

INTERJECT_COPY_TRANS UDDROW22 3 FHLSUDDrow2
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~...or maybe I spoke too soon.~
END

INTERJECT_COPY_TRANS2 UDPHAE01 88 FHLSUDPhae
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~What a charming love story. Maybe there's a different ending than this, though, hmm?~
END

INTERJECT_COPY_TRANS VALYGAR 4 FHLSValy
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~And so I suppose the body can open the sphere whether it's dead or alive. A pretty clever scheme, you have to admit.~
END

INTERJECT_COPY_TRANS VICG1 2 FHLSVicG1
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~Ugh, the small-mindedness of people amazes me, sometimes. Why do they have to be so stupid?~
END

INTERJECT_COPY_TRANS YOSHIMOX 1 FHLSYosh3
== FHLSEBJ
IF ~InParty("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN
~There has to be some other way, Yoshimo!~
END

//Transformation conversation

CHAIN FHLSEBJ FHLTrans_no
~Hmph! Did you hear that, Andrei? <CHARNAME> the drama queen wants us to go.~
== FHLANDJ
~As if you could call anyone that.~
== FHLSEBJ
~Be quiet and hurry up. Goodbye, <CHARNAME> - may the day we meet again be far away.~
DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLGone","GLOBAL",1)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
LeaveParty() EscapeArea()~
EXIT

CHAIN FHLSEBJ FHLAndTrans_getout
~Nice going, Andrei. Now we'll have to go and find some dirty inn somewhere, or of course there's always the option of sleeping in the fields like sheep.~
== FHLANDJ
~I'm sorry you couldn't accept it, <CHARNAME>.~
== FHLSEBJ
~Well, I'm sorry that you had to go and make a fool of yourself and ruin everything for us, but it doesn't help anything, does it?~
DO ~SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLGone","GLOBAL",1)
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
LeaveParty() EscapeArea()~
EXIT

CHAIN FHLSEBJ FHLLyel2_sebastian
~I'm sorry, <CHARNAME>, but it had to be said to that irritating blockhead, trying to take us to some forsaken hole where nothing ever happens and all that's there is crushing horror at the sheer hopelessness of it all!~
=
~So leave us alone, you idiotic--~
== FHLLYEL
~That's enough, Sebastian! Why are you doing this?~
== FHLSEBJ
~No, it's not enough, because you're still here! Don't you understand?~
== FHLLYEL
~I don't understand why you'd be so cruel.~
=
~Andrei?~
== FHLSEBJ
~Who cares what he has to say? It'll probably be some sentimental rubbish about Xavier, who's just a madman--~
== FHLLYEL
~That's it! I'm not listening to another word!~
== FHLSEBJ
~GOOD!~
== FHLANDJ
~Lyel, wait--~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL03")~
EXIT

CHAIN IF ~Global("FHLSebPostLyel","GLOBAL",1)~ THEN FHLSEBJ FHLPL
~Nasty business. At least that's over with.~ [FHLSQ6]
DO ~SetGlobal("FHLSebPostLyel","GLOBAL",2)~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~B-but, I thought you liked Lyel! Why would you talk to him like that?~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN
~Ah, playing callous, are we? I can see through that pathetic guise of yours, and let me tell you that it isn't pretty.~
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN
~My wildcat, still trying on masks. When will you find one that fits?~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN
~Well, that's a side of you I hadn't expected - and I think I would have preferred not to see it.~
== FHLANDJ
~Sebastian! I can't even begin to understand what you think you were doing!~ [FHLAQ3]
== FHLSEBJ
~Look, Andrei, we can't go back now. If we did, Xavier wouldn't let us leave.~
== FHLANDJ
~You don't know that!~
== FHLSEBJ
~Yes, I do! I know much more than you! I've got important things to do and they don't involve going back there!~
== FHLANDJ
~Oh, things like what, exactly? Lazing around and going to plays!~
END
++ ~Tell me what you're up to, Sebastian, or there'll be trouble.~ + FHLPL_yeah
++ ~I think everyone just needs to take a step back and calm down.~ + FHLPL_calm
++ ~Andrei, stop badgering him. He won't say if he doesn't want to.~ + FHLPL_andrei
++ ~Right, that's it. If you don't stop all this melodrama, I'll make you leave.~ + FHLPL_calm

CHAIN FHLSEBJ FHLPL_calm
~Too right. Andrei, stop throwing tantrums.~
== FHLANDJ
~I won't leave this until you tell me what I want to know!~
== FHLSEBJ
~I'm trying to remove the curse!~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's great! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_andrei
~Yes, you heard the <PRO_MANWOMAN>. Leave me alone!~
== FHLANDJ
~I will not! I won't stop asking until you tell me, damn you!~
== FHLSEBJ
~I'm trying to remove the curse!~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's great! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_authority
~Oooh, I'm so scared. We don't need you, <CHARNAME>.~
== FHLANDJ
~Stop saying such stupid things - what has got into you? I won't stop asking until you tell me, damn you!~
== FHLSEBJ
~I'm trying to remove the curse. Happy?~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's great! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_cousin
~Stop being so damn soppy, it won't work on me.~
== FHLANDJ
~Sebastian! For pity's sake, talk to me! I won't stop asking until you tell me, damn you!~
== FHLSEBJ
~I'm trying to remove the curse!~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's great! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_out
~<CHARNAME>, don't be so melodramatic. I'm not your lackey. I'm your companion.~
== FHLANDJ
~Sebastian! For pity's sake, talk to me! I won't stop asking until you tell me, damn you!~
== FHLSEBJ
~I'm trying to remove the curse!~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's great! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_please
~Fine. I'm trying to cure the curse. Some help would be appreciated.~
== FHLANDJ
~...what?~
== FHLSEBJ
~You heard me. I've had enough and I'm trying to cure the curse.~
== FHLANDJ
~But - you can't, we're not allowed! Xavier said it was too dangerous!~
END
++ ~Relax, Andrei. I'm sure Sebastian knows what he's doing.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ EXTERN FHLANDJ FHLPL_doing
++ ~You shouldn't have deceived Andrei about what you were up to, Sebastian.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLPL_deceive
++ ~If this gets in the way of my business, there'll be hell to pay.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ + FHLPL_business
++ ~Sebastian, that's a great idea! What can I do to help you?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

It transpires that despite the almost inevitable danger involved in doing such a thing, Sebastian is determined to cure the curse placed on his family. Whether this is for his own benefit or for more selfless reasons, it is clear that he will not budge from his goal.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLPL_help

CHAIN FHLSEBJ FHLPL_help
~A little bit of this, a little bit of that - we'll see how it goes.~
=
~My, but you are understanding, <CHARNAME> - I knew you were something special. Let's go.~
== FHLANDJ
~This isn't over, Sebastian!~
== FHLSEBJ
~For now it is, cousin. Cool off for a bit.~
EXIT

CHAIN FHLSEBJ FHLPL_do
~Of course, <CHARNAME>, I wouldn't dream of interfering with your affairs!~
== FHLANDJ
~This conversation isn't over!~
== FHLSEBJ
~For now it is, cousin. Cool off for a bit.~
EXIT

CHAIN FHLSEBJ FHLPL_silent
~Well, since you have such astounding confidence in me, I'll leave you be. Come on, <CHARNAME>, we have things to do!~
== FHLANDJ
~But - this isn't over!~
== FHLSEBJ
~For now it is, cousin. Cool off for a bit.~
EXIT

CHAIN FHLSEBJ FHLPL_precedence
~Of course it does, <CHARNAME>. You wouldn't have it any other way. It won't be nearly as arduous as hunting down some rabid archmage, I'm sure.~
== FHLANDJ
~This isn't over--~
== FHLSEBJ
~For now it is, my dear cousin.~
EXIT

//Genevieve talks

CHAIN FHLSEBJ FHLGen_leave
~Don't be so hasty, <CHARNAME>! I'm sure it isn't too much to do - right, Genevieve?~
== FHLGEN
~Not at all. Just go and get the book however you'd like, and bring it to me.~
END
++ ~I've got enough to do without all this nonsense. Forget it.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLGen_forget
++ ~Fine, I'm in. I'll go and find the historian.~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ + FHLGen_agree
++ ~So where can I find this historian, then?~ UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

Genevieve d'Arcy has told us that to cure the curse her colleague requires a book of history called Aegelfred's Chronicles. Quennell, the man who has it, can be found with the priests of Oghma.~ + FHLGen_agree

CHAIN FHLSEBJ FHLGen_informed
~As you wish!~
== FHLGEN
~Right, now that's done with - the historian, Quennell, is usually in the library with the priests of Oghma. I'll be here when you come back with the book, so don't take too long.~
DO ~SetGlobal("FHLQuennellQuest","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHLGen_agree
~I knew you'd agree, <CHARNAME>!~
== FHLGEN
~Right, now that's done with - the historian, Quennell, is usually in the library with the priests of Oghma. I'll be here when you come back with the book, so don't take too long.~
DO ~SetGlobal("FHLQuennellQuest","GLOBAL",1)~
EXIT

//Quennell talks

CHAIN FHLSEBJ FHLQuen_sebhelp1
~Quennell, Quennell...you're a good man. You're obviously a man of refined taste and opinion. And you are also a good judge of character. Those who are steeped in history can be nothing but.~
=
~So I know you'll believe me when I tell you of my plight.~
== FHLQUEN
~What happened to you?~
== FHLSEBJ
~It's not so much what happened to me, but to my ancestors. We do not know who there were, or what they did.~
=
~There is but one thing we know, and that is only because it was past down through unknown generations to my siblings and me: the name 'Luxley'.~
== FHLQUEN
~You mean--~
== FHLSEBJ
~Yes, that's exactly what I mean.~
== FHLQUEN
~Then you will need--~
== FHLSEBJ
~Aegelfred's Chronicles, yes, if you would be so kind.~
== FHLQUEN
~Of course! It would be awful of me not to lend it to you.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHLQuen_sebhelpcha
~Greetings, sir. First of all, I'd like to apologise if my colleague has said anything untoward to you.~
== FHLQUEN
~Well, <PRO_HESHE>--~
== FHLSEBJ
~Put it behind you, Mr. Quennell, I beg of you. All that matters is this small matter of the book we need.~
== FHLQUEN
~Yes, but this was one of the problems - it's my book!~
== FHLSEBJ
~Sir, I mean no offence, but that's simply not the case. Please think back. I remember that you withdrew it along with several others.~
=
~I don't have the records here, obviously, but I can say that one of them was on the Time of Troubles and another was on the Luskan judicial system.~
== FHLQUEN
~Ah, those books! The Darian and Jira-Ne'h accounts. Well, I'm very sorry that I've kept you waiting for so long. Here you go.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT

//ESTM #1

CHAIN IF ~Global("FHLTellCurse","GLOBAL",2)~ THEN FHLSEBJ FHLESTM
~So. So this is how it will be.~ [FHLSQ9]
== FHLANDJ
~Sebastian--~ [FHLAQ4]
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
~I will advise you to proceed with caution, Sebastian, though I doubt very much that you will pay me any heed.~
END
++ ~Calm down, both of you. We'll sort something out, and we'll be able to fix it.~ EXTERN FHLANDJ FHLESTM_breathe
++ ~Can we get this over with?~ + FHLESTM_impatient
++ ~I'm not going to let you do it, you know.~ + FHLESTM_let

CHAIN FHLSEBJ FHLESTM_impatient
~Fine. We're leaving. Now.~
== FHLANDJ
~But--~
== FHLSEBJ
~Shut up! And don't look at me like-- <CHARNAME>, are you with us or not?~
END
++ ~Yes, I'll come with you.~ + FHLESTM_come
++ ~I have no interest in playing nursemaid to you any longer.~ + FHLESTM_no
++ ~There isn't time, Sebastian. I can't come with you, I'm sorry.~ + FHLESTM_time

CHAIN FHLSEBJ FHLESTM_wait
~No, it most certainly can't wait.~
== FHLANDJ
~<CHARNAME>, you've got - got to--~
== FHLSEBJ
~Are you with us or not?~
END
++ ~Yes, I'll come with you.~ + FHLESTM_come
++ ~Do what you want. I can't play nursemaid to you.~ + FHLESTM_no
++ ~There isn't time for me to come with you, Sebastian. I can't come with you.~ + FHLESTM_time

CHAIN FHLSEBJ FHLESTM_come
~Then let's go!~
DO ~SetGlobal("FHLTellCurse","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL07")~
EXIT

CHAIN FHLSEBJ FHLESTM_time
~Then - then we'll be back. Maybe. I don't know.~
DO ~SetGlobal("FHLTellCurse","GLOBAL",4)
SetGlobal("FHLLDP","GLOBAL",2)
SetGlobal("FHLTempGone","GLOBAL",1)
SetGlobal("FHLReturn2Timer","GLOBAL",1)
SetGlobal("FHLJoined","GLOBAL",0)
SetGlobal("FHLKicked","GLOBAL",4)~
EXIT

CHAIN FHLSEBJ FHLESTM_yes
~Andrei, help me.~
== FHLANDJ
~I can't. I won't.~
== FHLSEBJ
~Alexandra - Lyel - Samuel - will none of you stand with me? Knowing what needs to be done?~
=
~Are you all so pathetic? Come ON!~
END
++ ~We should leave, Sebastian. This is getting us nowhere.~ + FHLESTM_live
++ ~You should destroy the curse, it's the right thing to do!~ EXTERN FHLANDJ FHLESTM_worst

CHAIN FHLSEBJ FHLESTM_dead
~Yes. Yes - Xavier, you deserve this a hundredfold!~
== FHLANDJ
~No, Sebastian! I'm warning you--~
== FHLXAV
~GET THEM!~
DO ~SetGlobal("FHLMDP","GLOBAL",1) IncrementGlobal("D0Change","GLOBAL",-3)~
EXIT

CHAIN FHLSEBJ FHLESTM_live
~No. This isn't meant to...~
== FHLXAV
~Sebastian Ambrose Xavier Luxley, I banish you. You are never to return to the estate. Give me your book.~
DO ~TakePartyItem("FHLBOOK")
AddexperienceParty(7500)~
=
~Samuel, have this burnt. Such drivel should never have been written. Now, Andrei.~
== FHLANDJ
~Sir? I - I want to--~
== FHLXAV
~I don't care. Andrei Turi Xavier Luxley, I banish you. You are never to return to this place.~
== FHLANDJ
~But I stood by you - I never wanted any of this!~
== FHLXAV
~You betrayed me when you encouraged Sebastian to begin this investigation of his.~
== FHLLYEL
~This isn't necessary--~
== FHLXAV
~Shut up. Now, get out, you vagabonds, and die unhappy and alone.~
== FHLSEBJ
~Lyel--~
== FHLLYEL
~Yes. I know.~
== FHLXAV
~I said GO!~
DO ~SetGlobal("FHLLDP","GLOBAL",1)
IncrementGlobal("D0Change","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL01")~
EXIT

CHAIN FHLSEBJ FHLESTM_wisworst
~As bad as him? It won't matter when he's dead! Because I'm going to see you die, Xavier!~
== FHLANDJ
~No, Sebastian, please!~
== FHLXAV
~GET THEM!~
DO ~SetGlobal("FHLMDP","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHLESTM_wis14
~I want to be rid of this curse, that's what I want!~
== FHLLYEL
~I thought there was so much more for you, even with the curse. The plays--~
== FHLSEBJ
~Lyel...~
== FHLLYEL
~Everything, all the people you met--~
== FHLANDJ
~Sebastian, this isn't right!~
END
++ ~Listen to them, and to me. Don't kill Xavier.~ + FHLESTM_live
++ ~If you want to be rid of it so badly, so be it!~ + FHLESTM_dead

CHAIN FHLSEBJ FHLESTM_wis15
~I won't know that for sure. You can't know that!~
== FHLANDJ
~Nothing can ever be undone. Don't you remember lecturing me about that? Don't do this. Please.~
END
++ ~You heard him, Sebastian. You know he's right, don't you?~ + FHLESTM_live
++ ~If you want to be rid of the curse so badly, so be it!~ + FHLESTM_dead

//LDP
CHAIN IF ~Global("FHLLDP","GLOBAL",1)~ THEN FHLSEBJ FHLLDP
~This is-- isn't what I was expecting.~ [FHLSQ15]
== FHLANDJ
~We're alone. It's-- Sebastian, if you hadn't--~ [FHLAQ5]
END
++ ~Don't think about that. What's done is done, and it's best not to dwell on it.~ SOLVED_JOURNAL ~The Cure for the Luxleys' curse

As it transpired, the cure for the curse was to kill the head of the family. I refused to help Sebastian to do so, and he and Andrei have been banished indefinitely from the estate.~ EXTERN FHLANDJ FHLLDP_done
++ ~Sebastian is all you have, now. Isn't it time to put these fights behind you?~ SOLVED_JOURNAL ~The Cure for the Luxleys' curse

As it transpired, the cure for the curse was to kill the head of the family. I refused to help Sebastian to do so, and he and Andrei have been banished indefinitely from the estate.~ EXTERN FHLANDJ FHLLDP_fights
++ ~I'm sorry we couldn't end things in a better way.~ SOLVED_JOURNAL ~The Cure for the Luxleys' curse

As it transpired, the cure for the curse was to kill the head of the family. I refused to help Sebastian to do so, and he and Andrei have been banished indefinitely from the estate.~ EXTERN FHLANDJ FHLLDP_done
++ ~He has a point! This is all your fault, Sebastian.~ SOLVED_JOURNAL ~The Cure for the Luxleys' curse

As it transpired, the cure for the curse was to kill the head of the family. I refused to help Sebastian to do so, and he and Andrei have been banished indefinitely from the estate.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-2)~ + FHLLDP_fault

CHAIN FHLSEBJ FHLLDP_fault
~Oh, so we're doing blaming, now? I think you're the one at fault, <CHARNAME>, because you should have reigned me in!~
== FHLANDJ
~Sebastian, don't.~
== FHLSEBJ
~I'm all tense, now. I'm having the oddest urge to actually do something. I don't think it's healthy.~
== FHLANDJ
~<CHARNAME>? Could we get back on the road?~
END
++ ~Of course. Nothing like adventuring to take your mind off tragedy!~ + FHLLDP_letsgo
++ ~Are you sure you wouldn't prefer a couple of days' rest?~ EXTERN FHLANDJ FHLLDP_rest

CHAIN FHLSEBJ FHLLDP_wis
~Would I, now? <CHARNAME>, you're getting far too insightful. It's making you cocky.~
== FHLANDJ
~Don't worry, <PRO_HESHE> could never be as bad as you are.~
== FHLSEBJ
~Andrei, Andrei. You deserve - to go to bed without any supper for such cheek.~
=
~After a while, though. I'm having the oddest urge to actually get something done. I don't think it's healthy.~
END
++ ~Of course. Nothing like adventuring to take your mind off tragedy!~ + FHLLDP_letsgo
++ ~Are you sure you wouldn't prefer a couple of days' rest?~ EXTERN FHLANDJ FHLLDP_rest

CHAIN FHLSEBJ FHLLDP_letsgo
~You're a positive ray of sunshine, aren't you?~
== FHLANDJ
~Thank you, <CHARNAME>.~
DO ~SetGlobal("FHLLDP","GLOBAL",2)
RealSetGlobalTimer("FHLLuxTalkTime","GLOBAL",900)~
EXIT

//Sebastian-Andrei banters//
CHAIN IF ~Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLAndSebTalk","GLOBAL",2)
Global("FHLAndBhaal","GLOBAL",1)~ THEN FHLSEBJ FHLAndSeb2a
~Psst. Andrei, come over here!~ [FHLSA2]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",3) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLANDJ
~What is it?~ [FHLAS8]
== FHLSEBJ
~Well, <CHARNAME> didn't tell you something when you were having that cosy chat earlier.~
== FHLANDJ
~What are you talking about?~
== BFHLSEB
~<CHARNAME>'s the child of a god!~
== FHLANDJ
~What? That's not... Which god?~
== FHLSEBJ
~Bhaal. Oh, don't look so bewildered, you must know about him. The nasty spiky one!~
== FHLANDJ
~I don't believe you.~
== FHLSEBJ
~Ask <CHARNAME>. Go on, ask <PRO_HIMHER>. I dare you! I'm right! You'll see!~
== FHLANDJ
~All right, all right, I believe you. It's just...unexpected, to say the least. Why do you think <PRO_HESHE> didn't tell me?~
== FHLSEBJ
~Maybe <PRO_HESHE> thought you would run away screaming or something. Obviously <PRO_HESHE> doesn't know you like I do!~
== FHLANDJ
~Of course <PRO_HESHE> doesn't. But still, <PRO_HESHE> shouldn't have doubted me.~
== FHLSEBJ
~Good old dependable Andrei. You make me want to cry!~
== FHLANDJ
~Don't get silly. And thank you for telling me.~
== FHLSEBJ
~Are you going to talk to <CHARNAME> about it?~
== FHLANDJ
~I don't think so - <PRO_HESHE> obviously doesn't want to talk about it.~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",2) Global("FHLAndBhaal","GLOBAL",2)~ THEN FHLSEBJ FHLAndSeb2b
~Why on earth are you giving me that look, Andrei?~ [FHLSA3]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",3) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLANDJ
~You know why. Come here, I want to talk to you.~ [FHLAS9]
== FHLSEBJ
~What have I done now, dear cousin?~
== FHLANDJ
~I'm not stupid. You knew about <CHARNAME>'s heritage and you didn't tell me, just to embarrass me!~
== FHLSEBJ
~Maybe I did and maybe I didn't.~
== FHLANDJ
~You wanted to join <CHARNAME> because <PRO_HESHE>'s a child of Bhaal, didn't you?~
== FHLSEBJ
~I'm letting you draw your own conclusions.~
== FHLANDJ
~But why would that make a difference anyway?~
== FHLSEBJ
~I couldn't possibly comment.~
== FHLANDJ
~You-- oh, Sebastian, tell me important things next time. Please! It would be useful.~
== FHLSEBJ
~Oh, if you insist. You really have no sense of humour sometimes.~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",5)~ THEN FHLSEBJ FHLAndSeb5
~Andrei, you're looking a bit sickly.~ [FHLSA6]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",6) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLANDJ
~What - really?~ [FHLAS10]
== FHLSEBJ
~Yes, you're so pale and washed-out.~
=
~A-ha, I know what it is. It's your hair.~
== FHLANDJ
~What now, Sebastian...~
== FHLSEBJ
~It's too pale for you.~
== FHLANDJ
~It's my natural colour!~
== FHLSEBJ
~So? It's still too pale. You need something bright and invigorating on top of your head.~
== FHLANDJ
~You're suggesting I dye my hair?~
== FHLSEBJ
~Well, don't you remember that time when you were four? With Rosanna?~
== FHLANDJ
~What?~
== FHLSEBJ
~Does the colour pink ring any bells?~
== FHLANDJ
~I'd forgotten about that!~
== FHLSEBJ
~It suited you.~
== FHLANDJ
~No, Sebastian, I'm not going to dye my hair.~
== FHLSEBJ
~You're such a spoilsport.~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",7)~ THEN FHLSEBJ FHLAndSeb8
~Andrei, you look positively wan lately.~ [FHLSA9]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",8) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLANDJ
~I'm not in the mood for this.~
== FHLSEBJ
~So cold! I was going to make you some tea, and I have a few ginger biscuits - I know how much you love them - and--~
== FHLANDJ
~Go away. Don't say another word.~
== FHLSEBJ
~Look, I--~
== FHLANDJ
~Aren't you listening to me? I don't want to hear your stupid excuses anymore! I've had enough of you.~
== FHLSEBJ
~They're not excuses. They're reasons.~
== FHLANDJ
~Maybe to you, but not to anyone with a grain of common sense!~
== FHLSEBJ
~That's it. Shut up and listen right this minute.~
== FHLANDJ
~No, I said, no!~
== FHLSEBJ
~Then fine! I'll leave you alone and then you'll never be able to get back!~
=
~There we are. That wiped the smile off your face, didn't it? Go on, then, run off and complain to <CHARNAME>, like usual.~
EXIT

//Player-initiated dialogue

APPEND FHLSEBJ

//Transformed dialogue

IF ~InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
IsGabber(Player1)
CombatCounter(0)
Global("FHLCatChange","LOCALS",1)
!Global("FHLSebPostLyel","GLOBAL",1)
!Global("FHLTellCurse","GLOBAL",2)
!Global("FHLTellCurse","GLOBAL",3)
!Global("FHLLDP","GLOBAL",1)
!Global("FHLMDP","GLOBAL",1)
GlobalGT("FHLSebTalk","GLOBAL",0)~ THEN BEGIN FHLSEBPID_cat
SAY ~What do you want?~
+ ~RandomNum(4,1)~ + ~How are you doing down there, Sebastian?~ + FHLSEBPID_cathow1
+ ~RandomNum(4,2)~ + ~How are you doing down there, Sebastian?~ + FHLSEBPID_cathow2
+ ~RandomNum(4,3)~ + ~How are you doing down there, Sebastian?~ + FHLSEBPID_cathow3
+ ~RandomNum(4,4)~ + ~How are you doing down there, Sebastian?~ + FHLSEBPID_cathow4
+ ~RandomNum(4,1)~ + ~(Snap your fingers above Sebastian's head.)~ + FHLSEBPID_catsnap1
+ ~RandomNum(4,2)~ + ~(Snap your fingers above Sebastian's head.)~ + FHLSEBPID_catsnap2
+ ~RandomNum(4,3)~ + ~(Snap your fingers above Sebastian's head.)~ + FHLSEBPID_catsnap3
+ ~RandomNum(4,4)~ + ~(Snap your fingers above Sebastian's head.)~ + FHLSEBPID_catsnap4
++ ~How can you talk with your mouth all different like that?~ + FHLSEBPID_cattalk
++ ~I think you look quite good as a cat.~ + FHLSEBPID_catsuits
++ ~(Leave Sebastian alone.)~ EXIT
END

IF ~~ FHLSEBPID_cathow1
SAY ~Oh, I'm just peachy. I love being right next to the ground and smelling all your feet.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_cathow2
SAY ~How am I doing? Have you any idea how embarrassing this is?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_cathow3
SAY ~Get me some healing, and then maybe I'll have the energy to talk to you. This transforming lark takes it out of you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_cathow4
SAY ~I'm - fine. Leave me alone.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_catsnap1
SAY ~(Sebastian's ears flatten against his head and he opens his mouth to hiss loudly at you before stalking away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_catsnap2
SAY ~(Sebastian lifts his paw to bat at your hand; his claws are sheathed, however and as far as a cat can smile he appears to be doing so.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_catsnap3
SAY ~(Sebastian gives you a long, unamused glower, then with a flick of his tail he walks away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_catsnap4
SAY ~*snort* If you think I'm going to fall for that one, <CHARNAME>, you'll be disappointed...~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_cattalk
SAY ~How can you talk without a brain? Some of these questions will never be answered...~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_catsuits
SAY ~Why, thank you, kind <SIRMAAM>. Now could you get me something to heal me before I drop dead where I stand?~
IF ~~ EXIT
END

//Ust Natha PID

IF ~InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
IsGabber(Player1)
CombatCounter(0)
OR(11)
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
!Global("FHLSebPostLyel","GLOBAL",1)
!Global("FHLTellCurse","GLOBAL",2)
!Global("FHLTellCurse","GLOBAL",3)
!Global("FHLLDP","GLOBAL",1)
!Global("FHLMDP","GLOBAL",1)
GlobalGT("FHLSebTalk","GLOBAL",0)~ THEN BEGIN FHLSEBPID_ustnath
SAY ~(Sebastian rolls his eyes and turns away from you; he seems not to want to risk your disguise by speaking to you within the Drow city.)~
IF ~~ EXIT
END

IF ~InParty("FHLSEB")
IsGabber(Player1)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
CombatCounter(0)
OR(9)
AreaCheck("FH4800")
AreaCheck("FHLUX1")
AreaCheck("FHLUX2")
AreaCheck("FHLUX3")
AreaCheck("FHLUX4")
AreaCheck("FHLUX5")
AreaCheck("FHLUX6")
AreaCheck("FHLMH1")
AreaCheck("FHLMH2")
!Global("FHLSebPostLyel","GLOBAL",1)
!Global("FHLTellCurse","GLOBAL",2)
!Global("FHLLDP","GLOBAL",1)
!Global("FHLMDP","GLOBAL",1)
GlobalGT("FHLSebTalk","GLOBAL",0)~ THEN BEGIN FHLSEBPID_estate
SAY ~I can't have Xavier thinking that I'm getting too cosy with you and your quest, <CHARNAME>. I'll talk to you later.~
IF ~~ EXIT
END

IF ~InParty("FHLSEB")
IsGabber(Player1)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
CombatCounter(0)
OR(8)
AreaCheck("FHLUX1")
AreaCheck("FHLUX2")
AreaCheck("FHLUX3")
AreaCheck("FHLUX4")
AreaCheck("FHLUX5")
AreaCheck("FHLUX6")
AreaCheck("FHLMH1")
AreaCheck("FHLMH2")
OR(3)
Global("FHLTellCurse","GLOBAL",3)
Global("FHLLDP","GLOBAL",1)
Global("FHLMDP","GLOBAL",1)
GlobalGT("FHLSebTalk","GLOBAL",0)~ THEN BEGIN FHLSEBPID_estm
SAY ~No. Just...I'll talk to you when we're out of here, all right?~
IF ~~ EXIT
END

//Non-MDP player-initiated dialogue

IF ~InParty("FHLSEB")
IsGabber(Player1)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
CombatCounter(0)
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("FH4800")
!AreaCheck("FHLUX1")
!AreaCheck("FHLUX2")
!AreaCheck("FHLUX3")
!AreaCheck("FHLUX4")
!AreaCheck("FHLUX5")
!AreaCheck("FHLUX6")
!AreaCheck("FHLMH1")
!AreaCheck("FHLMH2")
!Global("FHLSebPostLyel","GLOBAL",1)
!Global("FHLTellCurse","GLOBAL",2)
!Global("FHLLDP","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
GlobalGT("FHLSebTalk","GLOBAL",0)~ THEN BEGIN FHLSebPID
SAY ~Yes? What is it?~ [FHLSF1]
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(2,1)~ THEN REPLY ~Can I ask you something about your family?~ + FHLSebPID_ask1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(2,2)~ THEN REPLY ~Can I ask you something about your family?~ + FHLSebPID_ask2
IF ~GlobalLT("FHLSebLike","GLOBAL",-7)~ THEN REPLY ~Can I ask you something about your family?~ + FHLSebPID_askdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(5,1)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSebPID_hug1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(5,2)~ THEN REPLY ~(Give Sebastian a hug.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSebPID_hug2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(5,3)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSebPID_hug3
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(5,4)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSebPID_hug4
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(5,5)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSebPID_hug5
IF ~GlobalLT("FHLSebLike","GLOBAL",-7)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSebPID_hugdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSebPID_glad1
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSebPID_glad2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSebPID_glad3a
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSebPID_glad2
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSebPID_gladdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_how1
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_how2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_how3
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_howdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4) Global("FHLRow","GLOBAL",0)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_how4a
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4) Global("FHLRow","GLOBAL",1)~ THEN REPLY ~How are you, Sebastian?~ + FHLSebPID_how4b
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSebPID_back1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSebPID_back2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSebPID_back3
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSebPID_back4
IF ~GlobalLT("FHLSebLike","GLOBAL",-7)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSebPID_askdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~(Study Sebastian.)~ + FHLSebPID_study1
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~(Study Sebastian.)~ + FHLSebPID_study2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~(Study Sebastian.)~ + FHLSebPID_study3
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~(Study Sebastian.)~ + FHLSebPID_study4
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~(Study Sebastian.)~ + FHLSebPID_studydislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,1)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_ruffle1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,2)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_ruffle2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,3)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_ruffle3
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,4)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_ruffle4
IF ~GlobalLT("FHLSebLike","GLOBAL",-7) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_ruffle5dislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_smile1
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_smile2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_smile3
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_smile4
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_smile5dislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLSebJustFriends","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_notflirt
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLSebJustFriends","GLOBAL",1)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_notflirtsebfriend1
IF ~OR(3)
Race(Player1,HALFLING)
Race(Player1,GNOME)
Race(Player1,DWARF)
GlobalGT("FHLSebLike","GLOBAL",-6) 
Global("FHLBrushOff","GLOBAL",0) 
Global("FHLSebJustFriends","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_notflirt
IF ~Global("FHLSebCatch","GLOBAL",3) CheckStatGT(Player1,13,WIS) Global("FHLAskCatch","GLOBAL",0)~ THEN REPLY ~I was wondering, what happened when you had to go and convince Xavier to let you travel with me?~ DO ~SetGlobal("FHLAskCatch","GLOBAL",1)~ + FHLSEBPID_askcatch
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) Global("FHLRow","GLOBAL",1) RandomNum(2,1)~ THEN REPLY ~Perhaps you should try making up with Andrei. This can't be nice for either of you.~ + FHLSEBPID_makeup1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) Global("FHLRow","GLOBAL",1) RandomNum(2,2)~ THEN REPLY ~Perhaps you should try making up with Andrei. This can't be nice for either of you.~ + FHLSEBPID_makeup2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1) Gender(Player1,MALE)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think1male
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,1) Gender(Player1,FEMALE)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think1female
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think3
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think4
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_think5dislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Can I talk to you about the things that happened with your family?~ + FHLSEBPID_LDPask
IF ~GlobalLT("FHLSebLike","GLOBAL",-7) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Can I talk to you about the things that happened with your family?~ + FHLSebPID_askdislike
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud1
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud2
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud3
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalLT("FHLSebLike","GLOBAL",-5) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud4
IF ~~ THEN REPLY ~Never mind, I don't need to speak to you after all.~ + FHLSebPID_notalk
END

IF ~~ FHLSebPID_studydislike
SAY ~Stop staring at me. I don't like the attention.~
=
~Or at least, attention from you.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_howdislike
SAY ~I was fine, until you started bothering me.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_gladdislike
SAY ~I'm sorry that I can't return the sentiment, <CHARNAME>!~
=
~Well, you're not all that bad, I suppose. When you stop bothering me, that is.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hugdislike
SAY ~Please, keep it to yourself. I'm perfectly fine without your dubious affections.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_askdislike
SAY ~No, I'm afraid you can't.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_ask1
SAY ~Hmm...no. I value my privacy, <CHARNAME>, and you should respect that!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_ask2
SAY ~My, but you're persistent, aren't you? Go on, then.~
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) GlobalLT("FHLSebPostLyel","GLOBAL",2) RandomNum(2,1)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel1a
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) GlobalLT("FHLSebPostLyel","GLOBAL",2) RandomNum(2,2)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel1b
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) Global("FHLSebPostLyel","GLOBAL",2) Global("FHLLDP","GLOBAL",0) RandomNum(2,2)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel2a
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) Global("FHLSebPostLyel","GLOBAL",2) Global("FHLLDP","GLOBAL",0) RandomNum(2,2)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel2b
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) Global("FHLSebPostLyel","GLOBAL",2) GlobalGT("FHLLDP","GLOBAL",0) RandomNum(2,2)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel3
IF ~GlobalGT("FHLSpawnLyel","GLOBAL",0) Global("FHLSebPostLyel","GLOBAL",2) GlobalGT("FHLLDP","GLOBAL",0) RandomNum(2,2)~ THEN REPLY ~Can you tell me more about Lyel? You seem close.~ + FHLSebPID_lyel1b
IF ~RandomNum(2,1)~ THEN REPLY ~Do you have any friends in your estate?~ + FHLSebPID_friends1
IF ~Global("FHLSebPostLyel","GLOBAL",0) RandomNum(2,2)~ THEN REPLY ~Do you have any friends in your estate?~ + FHLSebPID_friends2
IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN REPLY ~Do you have any friends in your estate?~ + FHLSebPID_friends3
IF ~Global("FHLRow","GLOBAL",0) RandomNum(3,1)~ THEN REPLY ~Why did you start looking after Andrei in the first place?~ + FHLSebPID_andrei1
IF ~Global("FHLRow","GLOBAL",0) RandomNum(3,2)~ THEN REPLY ~Why did you start looking after Andrei in the first place?~ + FHLSebPID_andrei3
IF ~Global("FHLRow","GLOBAL",0) RandomNum(3,3)~ THEN REPLY ~Why did you start looking after Andrei in the first place?~ + FHLSebPID_andrei4
IF ~Global("FHLRow","GLOBAL",1)~ THEN REPLY ~Why did you start looking after Andrei in the first place?~ + FHLSebPID_andrei2
IF ~RandomNum(3,1)~ THEN REPLY ~You're close to Xavier. Tell me something about him.~ + FHLSebPID_xav1
IF ~RandomNum(3,2)~ THEN REPLY ~You're close to Xavier. Tell me something about him.~ + FHLSebPID_xav2
IF ~RandomNum(3,3)~ THEN REPLY ~You're close to Xavier. Tell me something about him.~ + FHLSebPID_xav3
IF ~GlobalGT("FHLLDP","GLOBAL",1) RandomNum(3,1)~ THEN REPLY ~You were close to Xavier - didn't you suspect him at all?~ + FHLSebPID_xavsuspect1
IF ~GlobalGT("FHLLDP","GLOBAL",1) RandomNum(3,2)~ THEN REPLY ~You were close to Xavier - didn't you suspect him at all?~ + FHLSebPID_xavsuspect2
IF ~GlobalGT("FHLLDP","GLOBAL",1) RandomNum(3,3)~ THEN REPLY ~You were close to Xavier - didn't you suspect him at all?~ + FHLSebPID_xavsuspect3
END

IF ~~ FHLSEBPID_LDPask
SAY ~Hmm. All right, if you must. You should know that curiosity killed the Bhaalspawn, though.~
IF ~RandomNum(2,1)~ THEN REPLY ~You don't have to get sarcastic or anything, but I wanted to say that I'm sorry for not doing more to help.~ + FHLSEBPID_LDPasksorry1
IF ~RandomNum(2,2)~ THEN REPLY ~You don't have to get sarcastic or anything, but I wanted to say that I'm sorry for not doing more to help.~ + FHLSEBPID_LDPasksorry2
IF ~RandomNum(2,1)~ THEN REPLY ~I know you can't feel happy about the way things turned out, but do you feel at all satisfied? Surely things could have been worse.~ + FHLSEBPID_LDPasksatisfied1
IF ~RandomNum(2,2)~ THEN REPLY ~I know you can't feel happy about the way things turned out, but do you feel at all satisfied? Surely things could have been worse.~ + FHLSEBPID_LDPasksatisfied2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(3,1)~ THEN REPLY ~I just wanted to see how you're feeling about it, that's all.~ + FHLSEBPID_LDPaskfeel1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(3,2)~ THEN REPLY ~I just wanted to see how you're feeling about it, that's all.~ + FHLSEBPID_LDPaskfeel2
IF ~GlobalGT("FHLSebLike","GLOBAL",8) RandomNum(3,3)~ THEN REPLY ~I just wanted to see how you're feeling about it, that's all.~ + FHLSEBPID_LDPaskfeel3
++ ~Never mind, it's nothing.~ + FHLSEBPID_LDPasknothing
END

IF ~~ FHLSEBPID_LDPasknothing
SAY ~If you say so!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPasksatisfied1
SAY ~Things can always be worse, <CHARNAME>. That's not a reason to be happy with a situation.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPasksatisfied2
SAY ~Satisfied? No. As I doubt you'd be satisfied if the end to your sorry situation was that Irenicus was actually Gorion in disguise, and that Sarevok was just misunderstood, and that you're--~
=
~Hmm. It's not often that I bore myself. I must be catching it from you!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPaskfeel1
SAY ~Hmm. As much as you may think I need a shoulder to cry on, I actually don't. So don't worry your pretty little head over me.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPaskfeel2
SAY ~I'm absolutely fine and dandy.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPaskfeel3
SAY ~How do you expect me to feel? At least there's Andrei, I suppose, but I've been spending all this time getting free of them and now--~
=
~Well. You obviously don't want to hear me prattle on, <CHARNAME>. Let's just get going, shall we?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPasksorry1
SAY ~Don't beat yourself up over it. I doubt you could have done more.~
=
~Unless you had challenged Xavier to single combat - a fight to the death!~
=
~I would have rooted for you, of course.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_LDPasksorry2
SAY ~And I'm sorry that Imoen got kidnapped and Irenicus got you and blah, blah.~
=
~Thanks, <CHARNAME>, but I don't need to hear apologies from you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think5dislike
SAY ~(He smiles.) What would happen if, say, you were to suddenly fall into a pit of vicious crocodiles...~
=
~Ah, the tragedy.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_makeup3dislike
SAY ~Perhaps you should go mind your own business. I don't pester you, so don't pester me!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle5dislike
SAY ~(He shrugs you off, definitely not amused.) Ugh. Now I have Bhaalspawn in my hair.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_smile5dislike
SAY ~(Sebastian gives you a sickly-sweet smile, then sneers as he turns away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think4
SAY ~Nothing of any importance, I'm sure.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think1female
SAY ~Just thinking of the distances we travel, yet how far we've still to go as men.~
=
~Or women, of course.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think1male
SAY ~Just thinking of the distances we travel, yet how far we've still to go as men.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think3
SAY ~My thoughts are steeped in horror and dread, as they always are.~
=
~Or perhaps what I'm thinking is just none of your business, hmm?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_think2
SAY ~Nothing, really. Just sorting out a stanza in my head.~
=
~What, are you surprised? I do work sometimes, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_askcatch
SAY ~He said some things, he threw some things. Just Xavier being his usual self.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_makeup1
SAY ~(Whatever scathing remark Sebastian was probably about to make dies suddenly, and he looks at you silently for a moment.)~
=
~No, I wouldn't say that it is at all nice.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_makeup2
SAY ~Perhaps he should try to make up with me. I've done enough for the little brat.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_smile1
SAY ~(Sebastian makes a great show of looking behind him, then of goggling at you.)~
=
~Smiling at me? Whatever for?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_smile2
SAY ~(He doesn't seem to notice your attempts, so intent is he on sight-seeing - or rather more likely, he's ignoring you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_smile3
SAY ~(He smiles and nods humouringly at you. When he turns away and he assumes you're no longer looking, though, the smile disappears and he glares down at the ground.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_smile4
SAY ~Ah, <CHARNAME>, you never cease to amaze me. What a fount of cheer and happiness you are!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle1
SAY ~Help! Help! Oh Gods, won't someone think of the children!~
++ ~Excuse me?~ + FHLSEBPID_ruffle1stop
++ ~What children?~ + FHLSEBPID_ruffle1stop
++ ~(Ignore him and carry on.)~ + FHLSEBPID_ruffle1go
END

IF ~~ FHLSEBPID_ruffle1stop
SAY ~(You hesitate in your confusion and Sebastian takes the chance to extricate himself. He then glares at you triumphantly, primping at his hair.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle1go
SAY ~(Sebastian stops flailing and glares at you, pouting, until you decide to stop.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle2
SAY ~(Sebastian's eyes close and he smiles happily.)~
++ ~Aw, does the kitty like being petted?~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_ruffle2kitty
++ ~(Carry on.)~ + FHLSEBPID_ruffle2carry
++ ~(Snatch hand away.) Okay, now I'm uncomfortable.~ + FHLSEBPID_ruffle2uncomfortable
END

IF ~~ FHLSEBPID_ruffle2kitty
SAY ~(He opens his eyes just enough to look at you.) Less talking, more stroking.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle2carry
SAY ~(After a few more moments you're sure that if Sebastian were in cat form, he'd be purring.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle2uncomfortable
SAY ~Hmph. You're such a tease!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle3
SAY ~(Without hesitation he returns the favour, patting you rather violently on the top of the head with his open palm.)~
=
~Aww, <CHARNAME>. Feeling okay? You're not scared by the big nasty Irenicus?~
=
~Heh. Can't spell patronising without pat!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ruffle4
SAY ~I spent hours styling this morning, you traitor!~
=
~All right, so I didn't. That still doesn't give you the right to mess it up.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_lyel1a
SAY ~Lyel and I used to do everything together. That was before I met you, of course, so don't get jealous.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_lyel1b
SAY ~(Sebastian smiles, and the nostalgic look on his face seems entirely genuine.)~
=
~Hmm? Where to start, where to start. Lyel taught me everything I know, besides the wit and charm, of course!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_lyel2a
SAY ~Lyel is-- he was-- he's not important to you. So keep yourself out of my business.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_lyel2b
SAY ~We were close, yes.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_lyel3
SAY ~He...he is one of the only people in that family to ever interact with Xavier and stay so damnably *good*.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_friends1
SAY ~No, <CHARNAME>, I sat alone and rejected in my dark and cobwebbed room, bemoaning my lonely state.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_friends2
SAY ~Josefyne and I have always enjoyed each other's company. Beyond her, well, I get on with most of the family well enough!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_friends3
SAY ~Does that really matter, <CHARNAME>? I'll probably never see any of them ever again.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_andrei1
SAY ~Oh, you know. I was but seventeen. Strange mood swings impaired my ability to make rational decisions.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_andrei2
SAY ~It was something to do, I suppose. I can't honestly remember why I thought it was a good idea.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_andrei3
SAY ~I can never resist small, endearing children. 'Tis one of my few unavoidable faults!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_andrei4
SAY ~I knew he could do better for himself than being stuck inside, spurned because of the rages. I knew I could help him.~
=
~And let me tell you a secret: I knew I could use him as a reason to stay outside for longer periods, once the time came. It was all part of the plan!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xav1
SAY ~His favourite colour is burgundy, and sometimes plum, and he favours silk brocade for his dressing gowns. I hope that satisfies you, because it's all you'll get!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xav2
SAY ~If he gets into one of his moods, he sometimes throws objects around. Only little things - cups, books, that kind of thing - but you get the idea. He's a charming sort.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xav3
SAY ~I'm 'close to Xavier'? Go away, <CHARNAME>, and stay away from subjects you couldn't understand.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xavsuspect1
SAY ~He was the head of the family, not that you could ever understand what that really means. Meant. Whether or not he enjoyed being my - our - jailer, I never thought everything was solely based around him.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xavsuspect2
SAY ~No, I didn't. Mainly because he was always being nasty in other ways, so it distracted me.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_xavsuspect3
SAY ~Be quiet, <CHARNAME>, and don't poke into things you don't understand.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hug1
SAY ~(He makes an almost-surprised noise, then returns the embrace with unusual sincerity.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hug2
SAY ~<CHARNAME>, this is shocking behaviour. Trying to buy my loyalty with affection, tsk. I think I've had a good effect on you already!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hug3
SAY ~(As the two of you embrace, Sebastian's hands drift towards your lower back. One hand darts down and pinches you on the rear.)~
=
~(He gives you a sickly-sweet smile, then holds up his other hand and brandishes one of your gold pieces at you.)~
=
~You should be more careful. You never know who'll be in your pockets otherwise.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hug4
SAY ~Not to<DAYNIGHT>, <CHARNAME> dear, I have a headache.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_hug5
SAY ~Really, if you're looking to boost my morale I'll want more than some measly hug.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_glad1
SAY ~(He peers at you for a few seconds, then shakes his head.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_glad2
SAY ~And I'm glad to be at yours, O <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_glad3a
SAY ~Why, exactly? Is it the charming wit I bring to your side, or perhaps the roguish devil-may-care outlook?~
IF ~~ EXIT
END

IF ~~ FHLSebPID_how1
SAY ~It's not a question of 'how', my dear, but 'who'!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_how2
SAY ~I'm just peachy, thank you.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_how3
SAY ~Nothing could be better, <CHARNAME>, and yes, I do mean that to be ambiguous.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_how4a
SAY ~(Sebastian is actually writing something in his book for a change, and shoots you a wounded look.)~
=
~Andrei, make <CHARNAME> stop distracting me!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_how4b
SAY ~Stop distracting me. I have private thoughts to detail.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_back1
SAY ~Oh, yes. Then I'll wash your hair and trim your toenails for you.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_back2
SAY ~Take better care of your muscles instead. I'm busy.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_back3
SAY ~(The massage Sebastian gives you is surprisingly good, and you feel aches you hadn't even noticed fade under his hands. When he speaks his voice is unusually soft.)~
=
~There we go. Take better care of yourself next time, won't you?~
IF ~~ EXIT
END

IF ~~ FHLSebPID_back4
SAY ~Normally I charge five gold pieces - I am very good. But for you, only one. Bhaalchild discount.~
++ ~Don't be ridiculous.~ + FHLSebPID_ridiculous
++ ~You're not a professional masseur, are you?~ + FHLSebPID_masseur
++ ~So you charge for that little? That's impressive, even for you.~ + FHLSebPID_impressive
IF ~PartyGoldGT(1)~ THEN REPLY ~Fine, here you go.~ DO ~TakePartyGold(1)~ + FHLSebPID_discount
++ ~Never mind, then.~ + FHLSebPID_nevermind
END

IF ~~ FHLSebPID_ridiculous
SAY ~I am being nothing of the sort, my good <PRO_MANWOMAN>. My hands are delicate, and even the slightest strain on them could interfere with the writing of my next masterpiece. The money is simply insurance that I get a hot meal to<DAYNIGHT>!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_masseur
SAY ~I can imagine what you're thinking right now: 'that charming and mysterious Sebastian, why, every time I think I know him it turns out that I have but pierced another layer!'~
=
~I'm right, aren't I? I know I'm right!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_impressive
SAY ~And they call me the catty one!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_discount
SAY ~(Sebastian's claim proves true: his technique is very skilful and it feels like a well-spent gold piece.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_nevermind
SAY ~Charming.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_study1
SAY ~(One cannot look at Sebastian without noticing his brightly-coloured clothing. Despite the hard days of travel, his cloak is still as shockingly cerise as ever.)~
=
~(As you watch, Sebastian spots a bit of mud on his tunic and tuts while brushing it off. He looks over at you and smiles somewhat quirkily before turning away.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_study2
SAY ~(You're focusing on the path ahead when you hear Sebastian humming to himself. You can't place the tune.)~
++ ~Keep it down. I'm trying to concentrate.~ + FHLSebPID_concentrate
++ ~What's that, Sebastian? A song from home?~ + FHLSebPID_home
++ ~(Say nothing.)~ + FHLSebPID_nothing
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~(Hum along with him.)~ + FHLSebPID_join1
IF ~!Class(Player1,BARD_ALL)~ THEN REPLY ~(Hum along with him.)~ + FHLSebPID_join2
END

IF ~~ FHLSebPID_concentrate
SAY ~(He hums louder, with a satisfied-looking smirk.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_home
SAY ~No, it's actually a ditty these charming young sailors taught me. I'd tell you the words...but I wouldn't want to be the one responsible for ruining your innocence.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_nothing
SAY ~(After a couple more repeats of what sounds like the chorus, Sebastian quietens.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_join1
SAY ~Fine. Show off your superior voice, see if I care!~
IF ~~ EXIT
END

IF ~~ FHLSebPID_join2
SAY ~<CHARNAME>, you're excellent at what you do, but never let it be said that you're anything but tone-deaf.~
IF ~~ EXIT
END

IF ~~ FHLSebPID_study3
SAY ~(When feeling under par, Sebastian usually compensates with capers or insults, so it is unusual to see him looking so downcast.)~
=
~(He brushes one hand through his hair with a slight grimace, but when he glances over to you by chance his face smoothes out. His smile would have been convincing had you not been watching before; he seems to sense this, and turns away.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_study4
SAY ~(Sebastian is deep in thought, not really watching where he is going. From the set of his eyes it looks as though he is troubled, but then he snorts to himself in an amused manner.)~
=
~(He clearly knows you are watching him, but he makes no move to explain himself; he just chuckles quietly and continues to walk.)~
IF ~~ EXIT
END

IF ~~ FHLSebPID_notalk
SAY ~Time is money, <CHARNAME>, time is money.~
IF ~~ EXIT
END

//non-mdp flirts

IF ~~ FHLSEBPID_notflirt
SAY ~I'm waiting...~
IF ~RandomNum(3,1)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_go1
IF ~RandomNum(3,2)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_go2
IF ~RandomNum(3,3)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_go3
IF ~RandomNum(4,1)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtwolf1
IF ~RandomNum(4,2)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ + FHLSEBPID_notflirtwolf2
IF ~RandomNum(4,3)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ + FHLSEBPID_notflirtwolf3
IF ~RandomNum(4,4)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ + FHLSEBPID_notflirtwolf4
IF ~RandomNum(4,1)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ + FHLSEBPID_notflirtarm1
IF ~RandomNum(4,2)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ + FHLSEBPID_notflirtarm2
IF ~RandomNum(4,3)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ + FHLSEBPID_notflirtarm3
IF ~RandomNum(4,4)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtarm4
IF ~RandomNum(4,1)~ THEN REPLY ~(Put your arm around Sebastian.)~ + FHLSEBPID_notflirtarm2
IF ~RandomNum(4,2)~ THEN REPLY ~(Put your arm around Sebastian.)~ + FHLSEBPID_notflirtaround2
IF ~RandomNum(4,3)~ THEN REPLY ~(Put your arm around Sebastian.)~ + FHLSEBPID_notflirtaround3
IF ~RandomNum(4,4)~ THEN REPLY ~(Put your arm around Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtaround4
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,1)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtstroke1
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,2)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ + FHLSEBPID_notflirtstroke2
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,3)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtstroke3
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,4)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ + FHLSEBPID_notflirtstroke4
IF ~RandomNum(4,1)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_notflirtlookgood1
IF ~RandomNum(4,2)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_notflirtlookgood2
IF ~RandomNum(4,3)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_notflirtpickupaccept
IF ~RandomNum(4,4)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_notflirtwolf4
IF ~RandomNum(4,1)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_notflirteye1
IF ~RandomNum(4,2)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_notflirteye2
IF ~RandomNum(4,3) !PartyHasItem("FHLBOOK")~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_notflirteye3a
IF ~RandomNum(4,3) PartyHasItem("FHLBOOK")~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_notflirteye3b
IF ~RandomNum(4,4)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_notflirteye4
IF ~RandomNum(14,1)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_notflirtpickup1a
IF ~RandomNum(14,2)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_notflirtpickup2a
IF ~RandomNum(14,3)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_notflirtpickup3a
IF ~RandomNum(14,4)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ + FHLSEBPID_notflirtpickup4a
IF ~RandomNum(14,5)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_notflirtpickupgenreject
IF ~RandomNum(14,6)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_notflirtpickupgenreject
IF ~RandomNum(14,7)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_notflirtpickupgenreject
IF ~RandomNum(14,8)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ + FHLSEBPID_notflirtpickupgenreject
IF ~RandomNum(14,9)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_notflirtpickupgenlaugh
IF ~RandomNum(14,10)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_notflirtpickupgenlaugh
IF ~RandomNum(14,11)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_notflirtpickupgenlaugh
IF ~RandomNum(14,12)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtpickupaccept
IF ~RandomNum(14,13)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_notflirtpickupaccept
IF ~RandomNum(14,14)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ + FHLSEBPID_notflirtpickupaccept
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) GlobalLT("FHLSebLike","GLOBAL",1)~ THEN REPLY ~Sebastian, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_notflirtjustfriendsdislike
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) GlobalGT("FHLSebLike","GLOBAL",0)~ THEN REPLY ~Sebastian, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_notflirtjustfriendslike
IF ~OR(3)
Race(Player1,GNOME)
Race(Player1,DWARF)
Race(Player1,HALFLING) 
GlobalLT("FHLSebLike","GLOBAL",1)~ THEN REPLY ~Sebastian, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_justfriendsdislike
IF ~OR(3)
Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING) GlobalGT("FHLSebLike","GLOBAL",0)~ THEN REPLY ~Sebastian, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_justfriendsdislike
++ ~Oh, nothing, nothing.~ + FHLSEBPID_notflirtnothing
END

IF ~~ FHLSEBPID_go1
SAY ~What kind of question is that? Are you trying to proposition me, because you'll have to do a lot better than that to get my attention!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_go2
SAY ~They have to be interesting, of course. Otherwise, what's the point?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_go3
SAY ~Now, let's see: an inventory. I like red hair on a woman, and if she's wearing purple that's all to the good, and blond hair on a man is always nice...~
=
~Sorry, what? I was getting distracted.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtsebfriend1
SAY ~Hmm, I thought we'd talked this over. Far be it from me to cause a ruckus, I assure you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtjustfriendsdislike
SAY ~Er, <CHARNAME>...we're not friends.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_notflirtjustfriendslike
SAY ~Oh, <CHARNAME>, I am spurned and heartsick, left broken on the shores of your fickle desires!~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_notflirtnothing
SAY ~I swear, <CHARNAME>, we'll get a parade of honour the day you actually make your mind up about something!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirteye1
SAY ~(When he sees the approving gleam in your eyes, he smirks and looks away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirteye2
SAY ~(Sebastian must have been tired when you set out, for his hair isn't brushed and his clothes aren't as immaculate as they normally are.)~
=
~(Despite the unfamiliarity - or because of it - he looks attractively rumpled, and you enjoy the view whilst you can.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirteye3a
SAY ~(Sebastian's expression is alert and his eyes are bright as he surveys his surroundings. His animation gives him definite appeal, and you watch him peer around for a few minutes.)~
=
~(All of a sudden, the view is ruined when his expression sours. He touches the pocket in which he used to keep his book, and his shoulders sag.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirteye3b
SAY ~(Sebastian's expression is alert and his eyes bright as he surveys the surroundings. His animation gives him definite appeal; you watch him peer around for a few minutes.)~
=
~(He pulls out his book and starts scribbling something with a flourish.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirteye4
SAY ~(You know that Sebastian is many things, but definitely not the strongest, tallest or dextrous man you know. As you watch him fuss over his cloak, though, and fumble with his weapon and drop it all at once, you are reminded of the old adage: Good things come in small packages.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtlookgood2
SAY ~Who am I to argue with <CHARNAME>, Mighty Bhaalspawn?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtlookgood1
SAY ~You say that like it's *news*, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtstroke1
SAY ~Mmm, nice.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtstroke3
SAY ~(He turns his gaze away from you, but leans his head against your hand approvingly.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtstroke4
SAY ~Aiee! Get off!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtstroke2
SAY ~My hair, my poor, ruined hair!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtaround2
SAY ~Really, <CHARNAME>. So impertinent.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtaround3
SAY ~Oi! Stop that.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtaround4
SAY ~(You make a show of yawning, stretching out your arms, then 'accidentally' putting one arm around Sebastian's waist. He looks at you curiously for a moment, then snorts with laughter.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtarm1
SAY ~Ooh, that tickles!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtarm2
SAY ~(He sneers and pulls away from you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtarm3
SAY ~Yes, it's lovely fabric, isn't it? Very soft. I can give you the name of the tailor I bought it from, so you can stop fondling my clothes.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtarm4
SAY ~(He touches your hand lightly with his fingertips, giving you permission rather than trying to stop you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtwolf1
SAY ~(He gives you a sidelong glance and exaggeratedly preens.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtwolf2
SAY ~Such appreciation from a child of Bhaal, and this child of Bhaal, no less. What an honour.~ [FHLSF7]
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtwolf3
SAY ~Hmm, I thought I heard something. It must have been some fly buzzing around my ears!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtwolf4
SAY ~You're a dear, <CHARNAME>, but you're just not my type.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickupaccept
SAY ~(He raises an eyebrow at you, with a small smile of appreciation.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickupgenlaugh
SAY ~Heehee! That was definitely worth the horrific one-liner.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickup1a
SAY ~(Sebastian snorts, then breaks down into laughter.)~
=
~Oh, I'm sorry, <CHARNAME>. Not the response you were looking for?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickup2a
SAY ~And your brain too, obviously.~ [FHLSF6]
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickup3a
SAY ~(snort) Get more lost, <CHARNAME>, and stay lost!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickup4a
SAY ~I'm surprised, <CHARNAME>. I assumed you didn't know how to read!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_notflirtpickupgenreject
SAY ~When people say you learnt everything from the monks at Candlekeep, they really weren't kidding, were they?~ [FHLSF5]
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ud1
SAY ~I was actually trying not to think about it, <CHARNAME>, but you had to go and bring it up again, didn't you?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ud2
SAY ~Thank you. I do appreciate it.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ud3
SAY ~Nice to see that you noticed me looking twitchy. I'm not built for life underground!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_ud4
SAY ~Yes, you can say that all you like, but it was you who brought us here, wasn't it?~
IF ~~ EXIT
END


//MDP PID
IF ~InParty("FHLSEB")
IsGabber(Player1)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
CombatCounter(0)
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("FHLUX1")
!AreaCheck("FHLUX2")
!AreaCheck("FHLUX3")
!AreaCheck("FHLUX4")
!AreaCheck("FHLUX5")
!AreaCheck("FHLUX6")
!AreaCheck("FHLMH1")
!AreaCheck("FHLMH2")
!Global("FHLSpawnLyel2","GLOBAL",1)
!Global("FHLTellCurse","GLOBAL",2)
!Global("FHLLDP","GLOBAL",1)
GlobalGT("FHLSebTalk","GLOBAL",0)
!Global("FHLFirstMorningAfter","GLOBAL",2)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLSebPID_MDP
SAY ~Yes? What is it?~ [FHLSF1]
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(4,1)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSEBPID_MDPhug1
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(4,2)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSEBPID_MDPhug2
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(4,3)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSEBPID_MDPhug3
IF ~GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(4,4)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSEBPID_MDPhug4
IF ~GlobalLT("FHLSebLike","GLOBAL",-5)~ THEN REPLY ~(Give Sebastian a hug.)~ + FHLSEBPID_MDPhugdislike
IF ~CheckStatLT(Player1,10,WIS)~ THEN REPLY ~Can I ask you something about your family?~ + FHLSEBPID_MDPaskfam
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSEBPID_MDPglad1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPglad2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSEBPID_MDPglad3
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSEBPID_MDPglad4
IF ~GlobalLT("FHLSebLike","GLOBAL",-7)~ THEN REPLY ~I'm glad I've got you by my side, Sebastian.~ + FHLSEBPID_MDPgladdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(3,1)~ THEN REPLY ~How are you, Sebastian?~ + FHLSEBPID_MDPhow1
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(3,2)~ THEN REPLY ~How are you, Sebastian?~ + FHLSEBPID_MDPhow2
IF ~GlobalGT("FHLSebLike","GLOBAL",-10) RandomNum(3,3)~ THEN REPLY ~How are you, Sebastian?~ + FHLSEBPID_MDPhow3
IF ~GlobalLT("FHLSebLike","GLOBAL",-9)~ THEN REPLY ~How are you, Sebastian?~ + FHLSEBPID_MDPhowdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) RandomNum(3,1)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSEBPID_MDPback1
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) RandomNum(3,2)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSEBPID_MDPback2
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) RandomNum(3,3)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSEBPID_MDPback3
IF ~GlobalLT("FHLSebLike","GLOBAL",-6)~ THEN REPLY ~Can I have a backrub, Sebastian?~ + FHLSEBPID_MDPbackdislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,1)~ THEN REPLY ~(Study Sebastian.)~ + FHLSEBPID_MDPstudy1
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,2)~ THEN REPLY ~(Study Sebastian.)~ + FHLSEBPID_MDPstudy2
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,3)~ THEN REPLY ~(Study Sebastian.)~ + FHLSEBPID_MDPstudy3
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,4)~ THEN REPLY ~(Study Sebastian.)~ + FHLSEBPID_MDPstudy4
IF ~GlobalLT("FHLSebLike","GLOBAL",-8)~ THEN REPLY ~(Study Sebastian.)~ + FHLSEBPID_MDPstudydislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(3,1)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_MDPruffle1
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(3,2)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_MDPruffle2
IF ~GlobalGT("FHLSebLike","GLOBAL",-7) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(3,3)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_MDPruffle3
IF ~GlobalLT("FHLSebLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF)~ THEN REPLY ~(Ruffle Sebastian's hair.)~ + FHLSEBPID_MDPruffledislike
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_MDPsmile1
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_MDPsmile2
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_MDPsmile3
IF ~GlobalGT("FHLSebLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_MDPsmile4
IF ~GlobalLT("FHLSebLike","GLOBAL",-7)~ THEN REPLY ~(Smile at Sebastian.)~ + FHLSEBPID_MDPsmiledislike
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirt
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) Global("FHLAerieJealous","GLOBAL",0) Global("FHLAnomenJealous","GLOBAL",0) Global("FHLJaheiraJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtjustfriendsnorom
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) GlobalGT("FHLAerieJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtAerie
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) GlobalGT("FHLAnomenJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtAnomen
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) GlobalGT("FHLJaheiraJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtJaheira
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) GlobalGT("FHLNathJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtNathaniel
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",1) GlobalGT("FHLViconiaJealous","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_MDPflirtViconia
IF ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) GlobalGT("FHLSebLike","GLOBAL",-6) Global("FHLBrushOff","GLOBAL",0) Global("FHLSebJustFriends","GLOBAL",2)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_notflirtsebfriend1
IF ~OR(3)
Race(Player1,HALFLING) 
Race(Player1,GNOME) 
Race(Player1,DWARF) 
GlobalGT("FHLSebLike","GLOBAL",-6) 
Global("FHLBrushOff","GLOBAL",0) 
Global("FHLSebJustFriends","GLOBAL",0)~ THEN REPLY ~(Flirt with Sebastian.)~ + FHLSEBPID_notflirt
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,1)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_MDPthink1
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,2)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_MDPthink2
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,3)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_MDPthink3
IF ~GlobalGT("FHLSebLike","GLOBAL",-9) RandomNum(4,4)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_MDPthink4
IF ~GlobalLT("FHLSebLike","GLOBAL",-8)~ THEN REPLY ~What are you thinking about?~ + FHLSEBPID_MDPthinkdislike
IF ~Global("FHLSebCatch","GLOBAL",3) CheckStatGT(Player1,13,WIS) Global("FHLAskCatch","GLOBAL",0)~ THEN REPLY ~I was wondering, what happened when you had to go and convince Xavier to let you travel with me?~ DO ~SetGlobal("FHLAskCatch","GLOBAL",1)~ + FHLSEBPID_askcatch
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud1
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud2
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLSebLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud3
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalLT("FHLSebLike","GLOBAL",-5) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Sebastian. We'll get out in the end.~ + FHLSEBPID_ud4
IF ~~ THEN REPLY ~Never mind, I don't need to speak to you after all.~ + FHLSEBPID_MDPnotalk
END

IF ~~ FHLSEBPID_MDPnotalk
SAY ~Make up your mind, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPglad4
SAY ~And I'm happy to be at your side too, <CHARNAME>.~
=
~Granted, the alternative was being at Xavier's, and, well, need I go on?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPglad3
SAY ~And I'm glad to be at yours, O <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPglad2
SAY ~(He peers at you for a few seconds, then shakes his head, but you can see that he's smiling.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthinkdislike
SAY ~What would happen if, say, you were to suddenly fall into a pit of vicious crocodiles...~
=
~Ah, the tragedy.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink4
SAY ~I - um, I'd rather not say.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink1
SAY ~Stopping early, going to a nice inn - not that hideous Copper Coronet - and having a hot bath.~
++ ~If you want, then we can.~ + FHLSEBPID_MDPthink1can
++ ~Come on, Sebastian. I need you focused.~ + FHLSEBPID_MDPthink1focus
IF ~GlobalGT("FHLSebFlirt","GLOBAL",9)~ THEN REPLY ~Perhaps I could join you?~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPthink1bath
END

IF ~~ FHLSEBPID_MDPthink1can
SAY ~<CHARNAME>, you're a dear.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink1focus
SAY ~I'll do my best. It's either that or feel the whip at my back, hmm?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink1bath
SAY ~Perhaps, perhaps. I could use the company.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink3
SAY ~Nothing of any importance, I'm sure.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPthink2
SAY ~Nothing, really. Just sorting out a stanza in my head.~
=
~What, are you surprised? I still have my muses, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPsmiledislike
SAY ~(Sebastian gives you a sickly-sweet smile, then sneers as he turns away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPsmile4
SAY ~(He smiles and nods at you. When he turns away and he assumes you're no longer looking, though, the smile disappears and he glares down at the ground.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPsmile3
SAY ~(He smiles at you, sincerely, and when he looks back in front of him his shoulders are a little straighter.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPsmile2
SAY ~Ah, <CHARNAME>, you never cease to amaze me. What a font of cheer and happiness you are!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPsmile1
SAY ~(Sebastian smirks, making a great show of looking behind him, then of goggling at you.)~
=
~Smiling at me? Whatever for?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffledislike
SAY ~(He shrugs you off, definitely not amused.) Ugh. Now I have Bhaalspawn in my hair.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle2
SAY ~(Without hesitation he returns the favour, patting you rather violently on the top of the head with his open palm.)~
=
~Aww, <CHARNAME>. Feeling okay? You're not scared by the big nasty Irenicus?~
=
~Heh. Can't spell patronising without pat.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle3
SAY ~I spent hours styling this morning!~
=
~All right, so I didn't. That doesn't give you the right to mess it up anyway.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle1
SAY ~(Sebastian's eyes drift close, and there appears to be the start of a real smile in his expression.)~
IF ~CheckStatLT(Player1,10,WIS)~ THEN REPLY ~Just like stroking a cat!~ + FHLSEBPID_MDPruffle1cat
++ ~(Carry on.)~ + FHLSEBPID_MDPruffle1carry
++ ~(Snatch hand away.) Okay, now I'm uncomfortable.~ + FHLSEBPID_MDPruffle1uncomfortable
IF ~GlobalGT("FHLSebLike","GLOBAL",4)~ THEN REPLY ~Sebastian, if you like it when I do things like this maybe you should be less irritable at me. I'd do it more often.~ + FHLSEBPID_MDPruffle1often
IF ~GlobalLT("FHLSebLike","GLOBAL",5)~ THEN REPLY ~Sebastian, if you like it when I do things like this maybe you should be less irritable at me. I'd do it more often.~ + FHLSEBPID_MDPruffle1often2
END

IF ~~ FHLSEBPID_MDPruffle1cat
SAY ~(He pulls away immediately. He has a wounded expression for all of a second before his face goes blank, and he walks away from you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle1carry
SAY ~(He seems perfectly content to just stand around with you stroking his head. He sighs, but then his breath catches in his throat and he ducks out from under your hand.)~
=
~My mother - that is to say, I--~
=
~Never mind. But thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle1uncomfortable
SAY ~(He shrugs, but the set of his jaw belies his irritation.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle1often
SAY ~Well maybe if you were less annoying I'd be irritable less often, did you think of that?~
=
~(He grimaces.) I didn't mean to - sorry.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPruffle1often2
SAY ~Well maybe if you were less annoying I'd be irritable less often, did you think of that?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPstudy1
SAY ~(It seems that whenever you look at Sebastian these days he's either bordering on hyperactive, or totally shut down. To<DAYNIGHT> is no exception: he's fidgeting, which he barely ever used to do, with the cuff of his robe, fraying it at the seam.)~
=
~(He lets go of it suddenly, probably because he's noticed you looking.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPstudydislike
SAY ~(Sebastian fakes a large yawn, stretches his arms out, and contrives to hit you in the face with his fist.)~
=
~Oh, sorry, <CHARNAME>. I didn't see you there.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPstudy2
SAY ~(You're focusing on the path ahead when you hear Sebastian humming to himself. You can't place the tune.)~
++ ~Keep it down. I'm trying to concentrate.~ + FHLSEBPID_MDPconcentrate
++ ~What's that, Sebastian? A song from home?~ + FHLSEBPID_MDPhome
++ ~(Say nothing.)~ + FHLSEBPID_MDPnothing
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~(Hum along with him.)~ + FHLSEBPID_MDPjoin1
IF ~!Class(Player1,BARD_ALL)~ THEN REPLY ~(Hum along with him.)~ + FHLSEBPID_MDPjoin2
END

IF ~~ FHLSEBPID_MDPconcentrate
SAY ~(He smirks and hums louder.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhome
SAY ~No, it's actually a ditty these charming young sailors taught me. I'd tell you the words...but you probably wouldn't understand them.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPnothing
SAY ~(After a couple more repeats of what sounds like the chorus, Sebastian sighs quietly, and stops.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPjoin1
SAY ~Fine. Show off your superior voice, see if I care.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPjoin2
SAY ~<CHARNAME> never let it be said that you're anything but tone-deaf.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPstudy3
SAY ~(Sebastian yawns, hiding his mouth with a closed fist, then brushes one hand through his hair with a slight grimace; he looks tired. When he glances over to you by chance, though, his face smoothes out. His smile isn't one of his most convincing and he seems to sense this, for he quickly turns away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPstudy4
SAY ~(Sebastian is deep in thought, not really watching where he is going. From the set of his eyes it looks as though he is troubled, but then he snorts to himself in an amused manner.)~
=
~(He clearly knows you are watching him, but he makes no move to explain himself; he just chuckles quietly and continues to walk.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPbackdislike
SAY ~I'd rather put my hands in the fire, thank you very much. No offence or anything.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPback1
SAY ~Oh, yes. Then I'll wash your hair and trim your toenails for you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPback2
SAY ~Take better care of your muscles instead. I'm busy.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPback3
SAY ~(Sebastian shrugs and starts massaging your back and shoulders. After a while, though, his fingers stiffen and he snatches his hands away.)~
++ ~What was that about?~ + FHLSEBPID_MDPback3what
++ ~Are you all right? You look a little pale.~ + FHLSEBPID_MDPback3pale
++ ~Hey, I was enjoying that!~ + FHLSEBPID_MDPback3enjoy
END

IF ~~ FHLSEBPID_MDPback3what
SAY ~Nothing. Don't worry about me, <CHARNAME>, I'm tough as old boots.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPback3pale
SAY ~Pale? Maybe I need to get out in the sun more.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPback3enjoy
SAY ~I don't care. If you were enjoying it then that's all the more reason for my not--~
=
~(He takes a deep breath.) Excuse me, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhowdislike
SAY ~Worse for having your attentions, I'm afraid.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhow1
SAY ~How am I? I'm free as a bird, fluttering through life without a care.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhow2
SAY ~I'm just peachy, thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhow3
SAY ~Nothing could be better, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPgladdislike
SAY ~Just when I thought things couldn't get worse.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPglad1
SAY ~Why, exactly? Is it the charming wit I bring to your side, or perhaps the roguish devil-may-care outlook?~
=
~Or, better yet, the reminder that no matter how awful your life gets, it could always be worse?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPaskfam
SAY ~...no. Go away.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhugdislike
SAY ~Keep your hands to yourself. I'm not in the mood.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhug3
SAY ~Not to<DAYNIGHT>, <CHARNAME> dear, I have a headache.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhug4
SAY ~Really, if you're looking to boost my morale I'll want more than some measly hug.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhug1
SAY ~(He makes an almost-surprised noise, then returns the embrace with unusual sincerity.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPhug2
SAY ~(After the two of you embrace Sebastian gives you a sickly-sweet smile, then holds up his hand and brandishes one of your gold pieces at you.)~
=
~You should be more careful. You never know who'll be in your pockets otherwise.~
IF ~~ EXIT
END

//MDP flirts//

IF ~~ FHLSEBPID_MDPflirtjustfriendsnorom
SAY ~I thought we'd talked about this. But...maybe you've changed your mind after all?~
++ ~That's right, Sebastian. I do like you a lot.~ + FHLSEBPID_MDPjustfriendsnorom_like
++ ~No, never mind.~ + FHLSEBPID_MDPnotalk
END

IF ~~ FHLSEBPID_MDPjustfriendsnorom_like
SAY ~Well. Well, that's interesting to know.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",0)~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtAerie
SAY ~Aren't you cosied up with Aerie? She's hardly the robust type, and I very much doubt that she'd be happy to see you making eyes me.~
IF ~Global("AerieRomanceActive","GLOBAL",3)~ THEN REPLY ~If you didn't notice, Aerie and I have broken up.~ + FHLSEBPID_MDPflirt_end2
++ ~Never mind, then.~ + FHLSEBPID_MDPnotalk
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtAnomen
SAY ~I wouldn't think that Anomen would be very happy to see his lady making eyes at a storytelling layabout. Not that I mind your eyes, they're very pretty, but...~
++ ~I'm not happy with Anomen, Sebastian. I need a change.~ + FHLSEBPID_MDPflirtAnomen_change
IF ~!Global("AnomenRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with him. I'd like to get to know you better.~ + FHLSEBPID_MDPflirtAnomen_end
IF ~Global("AnomenRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with him. I'd like to get to know you better.~ + FHLSEBPID_MDPflirt_end2
++ ~What he doesn't know won't hurt him. Come on, I thought you liked risks.~ + FHLSEBPID_MDPflirtAnomen_risk
END

IF ~~ FHLSEBPID_MDPflirtAnomen_end
SAY ~You know, all I need to do is go and ask him if that's true, and then we'll see what he says, all right?~
=
~I thought you wouldn't like that. I have no wish to have him bring down Helm's wrath on me, or whatever he'll do if he thinks I'm stealing his wonderful virtuous bride.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirt_end2
SAY ~Really? Well, then, it seems that we're free to do whatever we like.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",0)~
EXIT
END

IF ~~ FHLSEBPID_MDPflirtAnomen_risk
SAY ~I have absolutely no desire for that sort of 'risk', thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtJaheira
SAY ~I don't think Jaheira would like to see you making eyes at me, <CHARNAME>. Not that I mind your eyes, they're rather nice, but...~
++ ~I'm not happy with Jaheira, Sebastian. I need a change.~ + FHLSEBPID_MDPflirtJaheira_change
++ ~I've made mistakes with her. I'm uncomfortable with how far it's gone with her.~ + FHLSEBPID_MDPflirtJaheira_mistake
IF ~!Global("JaheiraRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with her. I'd like to get to know you better.~ + FHLSEBPID_MDPflirtJaheira_end
IF ~Global("JaheiraRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with her. I'd like to get to know you better.~ + FHLSEBPID_MDPflirt_end2
++ ~What she doesn't know won't hurt her. Come on, I thought you liked risks.~ + FHLSEBPID_MDPflirtJaheira_risk
END

IF ~~ FHLSEBPID_MDPflirtJaheira_change
SAY ~Well, maybe I need a change from your griping. Get over it, <CHARNAME> - you should count yourself lucky.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtJaheira_risk
SAY ~What she doesn't know is that I'm a much better man than her prospective partner! Go away, <CHARNAME>. You're pathetic.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtViconia
SAY ~Would your delightful bundle of viciousness be happy to see you making eyes at me, <CHARNAME>?~
++ ~I'm not happy with Viconia, Sebastian. I need a change.~ + FHLSEBPID_MDPflirtViconia_change
IF ~!Global("ViconiaRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with her. I'd like to get to know you better.~ + FHLSEBPID_MDPflirtJaheira_end
IF ~Global("ViconiaRomanceActive","GLOBAL",3)~ THEN REPLY ~I've decided to end things with her. I'd like to get to know you better.~ + FHLSEBPID_MDPflirt_end2
++ ~What she doesn't know won't hurt her. Come on, I thought you liked risks.~ + FHLSEBPID_MDPflirtViconia_risk
END

IF ~~ FHLSEBPID_MDPflirtNathaniel
SAY ~I don't think Nathaniel would particularly like you making eyes at another man, <CHARNAME>.~
IF ~Global("NathRomanceActive","GLOBAL",3)~ THEN REPLY ~Nathaniel and I broke up, Sebastian - I'm a free man.~ + FHLSEBPID_MDPflirt_end2
++ ~Never mind, then.~ + FHLSEBPID_MDPnotalk
END

IF ~~ FHLSEBPID_MDPflirtViconia_change
SAY ~Well, I can certainly understand that. But I have no wish to be poisoned in my sleep, so I'll respectfully decline.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtJaheira_end
SAY ~Maybe I should go and ask her that, and then you can see her expression.~
=
~Or maybe you can stop trying to pull the wool over my eyes. I've had enough of it.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtViconia_risk
SAY ~I like risks that don't involve me imminently dead. We are talking about the same Viconia, aren't we?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirt
SAY ~I'm waiting...~
IF ~RandomNum(3,1)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_MDPgo1
IF ~RandomNum(3,2)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_MDPgo2
IF ~RandomNum(3,3)~ THEN REPLY ~What kind of person do you go for, Sebastian?~ + FHLSEBPID_MDPgo3
IF ~RandomNum(4,1)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtwolf1
IF ~RandomNum(4,2)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ + FHLSEBPID_MDPflirtwolf2
IF ~RandomNum(4,3)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtwolf3
IF ~RandomNum(4,4)~ THEN REPLY ~(Wolf whistle at Sebastian.)~ + FHLSEBPID_MDPflirtwolf4
IF ~RandomNum(4,1)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtarm1
IF ~RandomNum(4,2)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ + FHLSEBPID_MDPflirtarm2
IF ~RandomNum(4,3)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ + FHLSEBPID_MDPflirtarm3
IF ~RandomNum(4,4)~ THEN REPLY ~(Run your hand down Sebastian's arm.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtarm4
IF ~RandomNum(4,1)~ THEN REPLY ~(Put your arm around Sebastian.)~ + FHLSEBPID_MDPflirtarm2
IF ~RandomNum(4,2)~ THEN REPLY ~(Put your arm around Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtaround2
IF ~RandomNum(4,3)~ THEN REPLY ~(Put your arm around Sebastian.)~ + FHLSEBPID_MDPflirtaround3
IF ~RandomNum(4,4)~ THEN REPLY ~(Put your arm around Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtaround4
IF ~RandomNum(4,1)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtstroke1
IF ~RandomNum(4,2)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ + FHLSEBPID_MDPflirtstroke2
IF ~RandomNum(4,3)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtstroke3
IF ~RandomNum(4,4)~ THEN REPLY ~(Run your hands through Sebastian's hair.)~ + FHLSEBPID_MDPflirtstroke4
IF ~RandomNum(4,1)~ THEN REPLY ~Looking good, Sebastian!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtlookgood1
IF ~RandomNum(4,2)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_MDPflirtlookgood2
IF ~RandomNum(4,3)~ THEN REPLY ~Looking good, Sebastian!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtpickupaccept
IF ~RandomNum(4,4)~ THEN REPLY ~Looking good, Sebastian!~ + FHLSEBPID_MDPflirtwolf4
IF ~RandomNum(4,1)~ THEN REPLY ~(Eye him appreciatively.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirteye1
IF ~RandomNum(4,2)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_MDPflirteye2
IF ~RandomNum(4,3) !PartyHasItem("FHLBOOK")~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_MDPflirteye3a
IF ~RandomNum(4,3) PartyHasItem("FHLBOOK")~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_MDPflirteye3b
IF ~RandomNum(4,4)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLSEBPID_MDPflirteye4
IF ~RandomNum(14,1)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_MDPflirtpickup1a
IF ~RandomNum(14,2)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_MDPflirtpickup2a
IF ~RandomNum(14,3)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_MDPflirtpickup3a
IF ~RandomNum(14,4)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ + FHLSEBPID_MDPflirtpickup4a
IF ~RandomNum(14,5)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_MDPflirtpickupgenreject
IF ~RandomNum(14,6)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_MDPflirtpickupgenreject
IF ~RandomNum(14,7)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_MDPflirtpickupgenreject
IF ~RandomNum(14,8)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ + FHLSEBPID_MDPflirtpickupgenreject
IF ~RandomNum(14,9)~ THEN REPLY ~You must be tired, Sebastian: you've been running through my mind all <DAYNIGHT>.~ + FHLSEBPID_MDPflirtpickupgenlaugh
IF ~RandomNum(14,10)~ THEN REPLY ~You're must be a hell of a thief, Sebastian - you stole my heart from across the room.~ + FHLSEBPID_MDPflirtpickupgenlaugh
IF ~RandomNum(14,11)~ THEN REPLY ~Your eyes are blue like the ocean, baby, and I'm lost at sea.~ + FHLSEBPID_MDPflirtpickupgenlaugh
IF ~RandomNum(14,12)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtpickupaccept
IF ~RandomNum(14,13)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtpickupaccept
IF ~RandomNum(14,14)~ THEN REPLY ~Sebastian, if you were words on a page you'd be called 'Fine Print'!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtpickupaccept
IF ~GlobalGT("FHLSebFlirt","GLOBAL",4) RandomNum(4,1)~ THEN REPLY ~(Embrace Sebastian.)~ + FHLSEBPID_MDPflirtgenreject
IF ~GlobalGT("FHLSebFlirt","GLOBAL",4) RandomNum(4,2)~ THEN REPLY ~(Embrace Sebastian.)~ + FHLSEBPID_MDPflirtembrace1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",4) RandomNum(4,3)~ THEN REPLY ~(Embrace Sebastian.)~ + FHLSEBPID_MDPflirtembrace2
IF ~GlobalGT("FHLSebFlirt","GLOBAL",4) RandomNum(4,4)~ THEN REPLY ~(Embrace Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtembrace3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",5) RandomNum(4,1)~ THEN REPLY ~(Stroke Sebastian's neck.)~ + FHLSEBPID_MDPflirtembrace1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",5) RandomNum(4,2)~ THEN REPLY ~(Stroke Sebastian's neck.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtneck1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",5) RandomNum(4,3)~ THEN REPLY ~(Stroke Sebastian's neck.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtneck2
IF ~GlobalGT("FHLSebFlirt","GLOBAL",5) RandomNum(4,4)~ THEN REPLY ~(Stroke Sebastian's neck.)~ + FHLSEBPID_MDPflirtneck3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",6) RandomNum(4,1)~ THEN REPLY ~(Kiss Sebastian's cheek.)~ + FHLSEBPID_MDPflirtkisscheek1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",6) RandomNum(4,2)~ THEN REPLY ~(Kiss Sebastian's cheek.)~ + FHLSEBPID_MDPflirtkisscheek2
IF ~GlobalGT("FHLSebFlirt","GLOBAL",6) RandomNum(4,3)~ THEN REPLY ~(Kiss Sebastian's cheek.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisscheek3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",6) RandomNum(4,4)~ THEN REPLY ~(Kiss Sebastian's cheek.)~ + FHLSEBPID_MDPflirtgenreject
IF ~GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(4,1)~ THEN REPLY ~(Nuzzle at Sebastian's neck.)~ + FHLSEBPID_MDPflirtnuzzle1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(4,2)~ THEN REPLY ~(Nuzzle at Sebastian's neck.)~ + FHLSEBPID_MDPflirtnuzzle2
IF ~GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(4,3)~ THEN REPLY ~(Nuzzle at Sebastian's neck.)~ + FHLSEBPID_MDPflirtnuzzle3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(4,4)~ THEN REPLY ~(Nuzzle at Sebastian's neck.)~ + FHLSEBPID_MDPflirtgenreject
IF ~GlobalGT("FHLSebFlirt","GLOBAL",13) RandomNum(4,1)~ THEN REPLY ~(Grab Sebastian by the collar and pull him against you.)~ + FHLSEBPID_MDPflirtcollar1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",13) RandomNum(4,2)~ THEN REPLY ~(Grab Sebastian by the collar and pull him against you.)~ + FHLSEBPID_MDPflirtembrace1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",13) RandomNum(4,3)~ THEN REPLY ~(Grab Sebastian by the collar and pull him against you.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtcollar3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",13) Global("FHLDoneTheNasty","GLOBAL",0) RandomNum(4,4)~ THEN REPLY ~(Grab Sebastian by the collar and pull him against you.)~ + FHLSEBPID_MDPflirtcollar4nonasty
IF ~GlobalGT("FHLSebFlirt","GLOBAL",13) Global("FHLDoneTheNasty","GLOBAL",1) RandomNum(4,4)~ THEN REPLY ~(Grab Sebastian by the collar and pull him against you.)~ + FHLSEBPID_MDPflirtcollar4nasty
IF ~GlobalGT("FHLSebFlirt","GLOBAL",11) RandomNum(4,1)~ THEN REPLY ~(Squeeze Sebastian's thigh.)~ + FHLSEBPID_MDPflirtthigh1
IF ~GlobalGT("FHLSebFlirt","GLOBAL",11) RandomNum(4,2)~ THEN REPLY ~(Squeeze Sebastian's thigh.)~ + FHLSEBPID_MDPflirtthigh2
IF ~GlobalGT("FHLSebFlirt","GLOBAL",11) RandomNum(4,3)~ THEN REPLY ~(Squeeze Sebastian's thigh.)~ + FHLSEBPID_MDPflirtthigh3
IF ~GlobalGT("FHLSebFlirt","GLOBAL",11) RandomNum(4,4)~ THEN REPLY ~(Squeeze Sebastian's thigh.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtthigh4
IF ~Global("FHLDoneTheNasty","GLOBAL",0) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(2,1)~ THEN REPLY ~(Kiss Sebastian.)~ + FHLSEBPID_MDPflirtkissnonasty1
IF ~Global("FHLDoneTheNasty","GLOBAL",0) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(2,2)~ THEN REPLY ~(Kiss Sebastian.)~ + FHLSEBPID_MDPflirtkissnonasty2
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(5,1)~ THEN REPLY ~(Kiss Sebastian.)~ + FHLSEBPID_MDPflirtkissnonasty1
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(5,2)~ THEN REPLY ~(Kiss Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkissnasty1
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(5,3)~ THEN REPLY ~(Kiss Sebastian.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkissnasty2
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(5,4)~ THEN REPLY ~(Kiss Sebastian.)~ + FHLSEBPID_MDPflirtkissnasty3
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",9) RandomNum(5,5)~ THEN REPLY ~(Kiss Sebastian.)~ + FHLSEBPID_MDPflirtkissnasty4
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",16) RandomNum(4,1)~ THEN REPLY ~(Kiss Sebastian hard.)~ + FHLSEBPID_MDPflirtkissnonasty2
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",16) Global("FHLNoBiting","GLOBAL",0) RandomNum(4,2)~ THEN REPLY ~(Kiss Sebastian hard.)~ + FHLSEBPID_MDPflirtkisshard1before
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",16) Global("FHLNoBiting","GLOBAL",1) RandomNum(4,2)~ THEN REPLY ~(Kiss Sebastian hard.)~ + FHLSEBPID_MDPflirtkisshard1after
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",16) RandomNum(4,3)~ THEN REPLY ~(Kiss Sebastian hard.)~ + FHLSEBPID_MDPflirtkisshard2
IF ~Global("FHLDoneTheNasty","GLOBAL",1) GlobalGT("FHLSebFlirt","GLOBAL",16) RandomNum(4,4)~ THEN REPLY ~(Kiss Sebastian hard.)~ + FHLSEBPID_MDPflirtkisshard3
IF ~Global("FHLSebTellLove","GLOBAL",0) Global("FHLDoneTheNasty","GLOBAL",1)~ THEN REPLY ~I love you, Sebastian.~ + FHLSEBPID_firstlove
IF ~Global("FHLSebTellLove","GLOBAL",1) Global("FHLDoneTheNasty","GLOBAL",1)~ THEN REPLY ~I love you, Sebastian.~ + FHLSEBPID_secondlove
IF ~!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")
GlobalGT("FHLSebFlirt","GLOBAL",19)
Global("FHLDoneTheNasty","GLOBAL",0)~ THEN REPLY ~Sebastian, I want you with me tonight.~ + FHLSEBPID_MDPaskfirstsexnotinn
IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
GlobalGT("FHLSebFlirt","GLOBAL",19)
Global("FHLDoneTheNasty","GLOBAL",0)~ THEN REPLY ~Sebastian, I want you with me tonight. Shall we go upstairs?~ + FHLSEBPID_MDPaskfirstsex
IF ~!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")
GlobalGT("FHLSebFlirt","GLOBAL",19)
Global("FHLDoneTheNasty","GLOBAL",1)~ THEN REPLY ~Sebastian, I want you tonight.~ + FHLSEBPID_MDPsexnotinn2
IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
GlobalGT("FHLSebFlirt","GLOBAL",19)
Global("FHLDoneTheNasty","GLOBAL",1)~ THEN REPLY ~Sebastian, shall we go up to my room?~ + FHLSEBPID_MDPsex2
IF ~GlobalGT("FHLSebLike","GLOBAL",0)~ THEN REPLY ~Sebastian, I think I've been giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_justfriendslike
IF ~GlobalLT("FHLSebLike","GLOBAL",1)~ THEN REPLY ~Sebastian, I think I've been giving you the wrong idea. I want us to be just friends.~ + FHLSEBPID_justfriendsdislike
++ ~Never mind.~ + FHLSEBPID_flirtnevermind
END

IF ~~ FHLSEBPID_MDPgo1
SAY ~I don't think I have to answer that, thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPgo2
SAY ~Why, are you volunteering for the job?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPgo3
SAY ~I used to like... but that's not interesting. Come on, let's go.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_justfriendslike
SAY ~'Just friends'? Ah, <CHARNAME>, more naive words have never been spoken.~
=
~But do whatever you want, regardless. I don't care.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_justfriendsdislike
SAY ~We aren't friends, <CHARNAME>. But do whatever you want, regardless. I don't care.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_secondlove
SAY ~You said you wouldn't--~
=
~Right, <CHARNAME>. Seeing as you can't keep a thought straight in that empty head, there's nothing more you need to say to me.~
IF ~~ THEN DO ~IncrementGlobal("FHLSebLike","GLOBAL",-3) SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_firstlove
SAY ~What? Don't say that!~ [FHLSF8]
++ ~Why shouldn't I say it? It's how I feel about you.~ + FHLSEBPID_firstlovedo
++ ~I was just trying to unnerve you - and it looks like I succeeded!~ + FHLSEBPID_firstlovefreak
++ ~What's up with you, Sebastian? There's nothing wrong with love.~ + FHLSEBPID_firstlovewrong
END

IF ~~ FHLSEBPID_firstlovedo
SAY ~Listen to me very carefully. If you say that to me one more time, it's over. Do you understand me?~ [FHLSF9]
++ ~Of course I understand. I think it's ridiculous.~ + FHLSEBPID_firstridiculous
++ ~I understand. I won't mention it again, but that doesn't mean I don't care about you.~ + FHLSEBPID_firstagain
++ ~What's up with you? There's nothing wrong with love.~ + FHLSEBPID_firstlovewrong
++ ~What, so you've decided you don't care about anything now?~ + FHLSEBPID_firstcare
END

IF ~~ FHLSEBPID_firstlovefreak
SAY ~Fine. Congratulations, you're a real scream. Such wit and panache.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_firstlovewrong
SAY ~I won't listen to such drivel. What's wrong with love - I'll let you figure that one out on your own. But mention it again and we're done.~
++ ~All right, I'm sorry. I won't do it again.~ + FHLSEBPID_firstagain
++ ~You're being irrational, Sebastian. Calm down and tell me what's up.~ + FHLSEBPID_firstirrational
++ ~Why do you have such a thing against hearing that, Sebastian?~ + FHLSEBPID_firstirrational
++ ~Love, love, love. See? You're not dying, Sebastian!~ + FHLSEBPID_firstridiculous
++ ~Fine. I understand, and I won't mention it, but that doesn't mean I don't care about you.~ + FHLSEBPID_firstagain
END

IF ~~ FHLSEBPID_firstridiculous
SAY ~Whatever you say. Don't try anything with me again.~
IF ~~ THEN DO ~SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_firstagain
SAY ~Well. I...appreciate the sentiment, I suppose.~
IF ~~ THEN DO ~SetGlobal("FHLSebTellLove","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_firstirrational
SAY ~I don't give a damn! You'll agree with me or that's it!~
++ ~This is ridiculous. I have no idea what's going on with you!~ + FHLSEBPID_firstridiculous
++ ~Fine, I understand, and I won't mention it - but it doesn't mean I don't care about you.~ + FHLSEBPID_firstagain
++ ~Listen, you can't tell me what to do. You're in my group and these are my rules.~ + FHLSEBPID_firstrules
END

IF ~~ FHLSEBPID_firstcare
SAY ~How dare you--~
=
~Actually, you're partly right. There is one thing I don't give a damn about: you.~
IF ~~ THEN DO ~SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_firstrules
SAY ~(His shoulders slump.) Don't try anything with me again, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_flirtnevermind
SAY ~I do wish you'd stop needlessly bothering me.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard3
SAY ~(He holds up his hands as you approach, warding you off. He opens his mouth to show the boiled sweet he's eating.)~
=
~Busy already, thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard2
SAY ~(An indeterminate length of time later finds Sebastian pressed up against you with the kiss still going on strong.)~
++ ~We should stop, Sebastian.~ + FHLSEBPID_MDPflirtkisshard2stop
IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY ~How about we go up to my room, Sebastian?~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisshard2inn
IF ~!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")~ THEN REPLY ~How about we rest early, Sebastian?~ + FHLSEBPID_MDPflirtkisshard2early
++ ~Gods, Sebastian, get a hold of yourself.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLSEBPID_MDPflirtkisshard2hold
++ ~(Finish the kiss without saying anything.)~ + FHLSEBPID_MDPflirtkisshard2finish
END

IF ~~ FHLSEBPID_MDPflirtkisshard2hold
SAY ~(He pushes you back angrily.) Thank you for that stellar advice, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard2stop
SAY ~(Sebastian scowls and reluctantly pulls away.) I'm never this mean to you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard2early
SAY ~Ugh. Here on the ground? You certainly know how to kill the mood.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard2finish
SAY ~(Soon afterwards Sebastian pulls away as though he's forcing himself. He wipes his mouth with the back of his hand and looks away without meeting your eyes.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard2inn
SAY ~Yes, yes, I think we should.~
IF ~~ THEN DO ~RestParty()~ EXIT
END


IF ~~ FHLSEBPID_MDPflirtkisshard1after
SAY ~(You put your hands at the back of Sebastian's head and pull him into a passionate kiss. He makes a pleased noise and runs his hands down your back as he responds in kind, breathing heavily through his nose. When you part, he's smiling like a cat that got the cream.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard1before
SAY ~(You put your hands at the back of Sebastian's head and pull him into a passionate kiss. He responds quickly, breathing heavily through his nose and biting at your bottom lip.~
++ ~Ow! Can you not bite so hard, please?~ DO ~SetGlobal("FHLNoBiting","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",-1)~ + FHLSEBPID_MDPflirtkisshard1ow
++ ~(Bite back.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisshard1bite
++ ~Mmm.~ + FHLSEBPID_MDPflirtkisshard1mmm
END

IF ~~ FHLSEBPID_MDPflirtkisshard1mmm
SAY ~(Sebastian draws away, smiling faintly.) Mmm, indeed.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard1bite
SAY ~(When you nibble at his upper lip in return, Sebastian gets more fired up than before and in the end you're the one who has to withdraw, dazed and with rather sore lips.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisshard1ow
SAY ~Oh. Fine.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty1
SAY ~(Sebastian is tentative for all of a second, then kisses you back.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty2
SAY ~(Sebastian draws back no more than an inch and flicks his tongue out, licking your lips with a sly smile.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty3
SAY ~(Sebastian seems to enjoy the kiss whilst it lasts, but after he withdraws his shoulders suddenly droop and he turns away from you.)~
++ ~(Say nothing.)~ + FHLSEBPID_MDPflirtkissnasty3nothing
IF ~GlobalGT("FHLSebLike","GLOBAL",6)~ THEN REPLY ~Sebastian? What is it?~ + FHLSEBPID_MDPflirtkissnasty3whatlike
IF ~GlobalLT("FHLSebLike","GLOBAL",7)~ THEN REPLY ~Sebastian? What is it?~ + FHLSEBPID_MDPflirtkissnasty3what
++ ~We can do that again, if you'd like.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkissnasty3bad
++ ~Come on, I didn't think I was that bad!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLSEBPID_MDPflirtkissnasty3bad
END

IF ~~ FHLSEBPID_MDPflirtkissnasty3nothing
SAY ~(As usual, the sadness in his expression clears in a few moments as if it had never been there, and Sebastian smiles not-that-convincingly at you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty3whatlike
SAY ~Nothing new.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty3what
SAY ~What do you think it is, <CHARNAME>? Your bad breath?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty3bad
SAY ~(He snorts, shaking his head. He's amused at your expense, to be sure, but his melancholy seems to have faded.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnasty4
SAY ~Stop it, I'm not in the mood.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnonasty1
SAY ~No, don't do that.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkissnonasty2
SAY ~I'm not at your beck and call, <CHARNAME>, so back the hell off.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtthigh1
SAY ~(He jumps away from your hand, and shoots you an angry look.)~
=
~Say it with me, <CHARNAME>: Personal. Space.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtthigh2
SAY ~(He irritably removes your hand.) Contrary to what you might think, I'm not particularly interested in being fondled with the whole world watching.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtthigh3
SAY ~(His thigh tenses under your hand.) I don't need my own personal limpet, thank you. Get off.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtthigh4
SAY ~Really, you're incorrigible.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar1
SAY ~(He grabs your hands and tugs them off his clothes.)~
=
~I, unlike you, take pride in my appearance. So don't mess it up.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar3
SAY ~You're not making me go weak at the knees or anything, you know.~
=
~(Sebastian may be telling the truth there, but that doesn't mean he's not obviously enjoying himself.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nonasty
SAY ~(Sebastian puts his hands on your shoulders and grips them tightly. Your faces are a few inches apart at most.)~
++ ~(Kiss him.)~ + FHLSEBPID_MDPflirtcollar4nonastykiss
++ ~(Let go.)~ + FHLSEBPID_MDPflirtcollar4nonastylet
++ ~(Hug him normally, instead.)~ + FHLSEBPID_MDPflirtcollar4nonastyhug
++ ~(Hold him in position.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtcollar4nonastyhold
END

IF ~~ FHLSEBPID_MDPflirtcollar4nonastyhold
SAY ~(You're close enough that you can see his pupils dilate, and you feel him shiver. All of a sudden he pulls free, straightens his clothes, and turns away as if nothing had happened.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nonastykiss
SAY ~(He pulls back before your lips meet, then squeezes your shoulders before letting go completely. He tugs your hands free of his clothes, straightens them, and turns away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nonastylet
SAY ~(He looks vaguely disappointed, but straightens out his clothes.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nonastyhug
SAY ~(Sebastian looks vaguely disappointed after you part, then busies himself with straightening out his cloak.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nasty
SAY ~(When your bodies meet Sebastian puts his hands on your shoulders and grips them tightly. Your faces are at most a few inches apart, and you fancy you can feel his heart race under your hands.)~
++ ~(Kiss him.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtcollar4nastykiss
++ ~(Let go.)~ + FHLSEBPID_MDPflirtcollar4nonastylet
++ ~(Hug him normally, instead.)~ + FHLSEBPID_MDPflirtcollar4nonastyhug
IF ~RandomNum(2,1)~ THEN REPLY ~(Hold him in position.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",2)~ + FHLSEBPID_MDPflirtcollar4nastyholdkiss
IF ~RandomNum(2,2)~ THEN REPLY ~(Hold him in position.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtcollar4nastyholdnokiss
END

IF ~~ FHLSEBPID_MDPflirtcollar4nastykiss
SAY ~(His fingers dig into your shoulders as he responds almost ferociously, leaving you dazed and your lips tingling.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nastyholdkiss
SAY ~(You gaze at him unmoving for a moment, then he leans in and kisses you almost ferociously, leaving you dazed and your lips tingling.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtcollar4nastyholdnokiss
SAY ~(You're close enough that you can see his pupils dilate, and you feel him shiver. All of a sudden he pulls free, straightens his clothes, and turns away as if nothing had happened.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtnuzzle2
SAY ~(He shivers and makes a quiet, low growling noise.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtnuzzle3
SAY ~(He twists his head around, not to make you stop but so he can press against your neck and scrape his teeth gently on your skin.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtnuzzle1
SAY ~(He squawks loudly, pushing you away.) Off, off!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek3
SAY ~(He looks a little taken aback, but there's a smile tugging at his lips nonetheless.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek1
SAY ~(The kiss you land on his cheek is quick, chaste, and over before Sebastian has time to decide whether he wants it or not. He rubs at the area afterwards and gives you a glare lacking in its usual venom.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2
SAY ~(Sebastian surprises you with quick enough reactions to put one hand to the back of your head. He holds your face next to his.)~
++ ~Let me go, please.~ + FHLSEBPID_MDPflirtkisscheek2letgo
IF ~CheckStatGT(Player1,9,STR)~ THEN REPLY ~(Pull away from him.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",-1)~ + FHLSEBPID_MDPflirtkisscheek2pullstrong
IF ~CheckStatLT(Player1,10,STR)~ THEN REPLY ~(Try to pull away.)~ + FHLSEBPID_MDPflirtkisscheek2pullweak
IF ~GlobalLT("FHLSebFlirt","GLOBAL",15)~ THEN REPLY ~If you want more, then you can have it.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisscheek2wantmore
IF ~GlobalGT("FHLSebFlirt","GLOBAL",14) Global("FHLDoneTheNasty","GLOBAL",0)~ THEN REPLY ~If you want more, then I'm all yours.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisscheek2more
IF ~GlobalGT("FHLSebFlirt","GLOBAL",14) Global("FHLDoneTheNasty","GLOBAL",1)~ THEN REPLY ~If you want more, then I'm all yours.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtkisscheek2morenasty
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2letgo
SAY ~(He takes his hand away, and turns away from you before you can read his expression.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2wantmore
SAY ~(He lets go of you quickly, but his expression is amused more than anything.)~
=
~Perhaps I'll hold you to that.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2more
SAY ~(Sebastian's grip in your hair tightens and he half-bites at your cheekbone before pulling away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2morenasty
SAY ~(Sebastian's grip in your hair tightens and he half-bites at your cheekbone, then leans forward a little more to whisper against your ear.)~
=
~Perhaps I'll hold you to that.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2pullweak
SAY ~(His grip is strong enough so that your attempts to escape are ineffectual. He puts his mouth close to your ear.)~
=
~Has no one taught you how to follow through, <CHARNAME>?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtkisscheek2pullstrong
SAY ~(You tug yourself free in time to see Sebastian clear the anger from his expression. He turns away from you without a word.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtneck2
SAY ~(He leans his head away from your hand to better expose his neck and stands still, head cocked, whilst you trail your fingers along his skin.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtneck3
SAY ~Stop that, you're disturbing my concentration.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtneck1
SAY ~(Sebastian's expression is one of intense seriousness. He holds your gaze as he puts his hand over yours, so you can't remove your hand until he wants you to.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace1
SAY ~Please, <CHARNAME>, even a permissive and loose individual such as I needs personal space. So back off.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace3
SAY ~You're definitely getting better at this, my young <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtgenreject
SAY ~Ah ah, none of that, thank you.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace2
SAY ~(Sebastian makes a faintly surprised noise and settles in your arms.)~
++ ~(Keep it quick and simple.)~ + FHLSEBPID_MDPflirtembrace2simple
IF ~GlobalGT("FHLSebFlirt","GLOBAL",10) RandomNum(2,1)~ THEN REPLY ~(Cop a feel.)~ + FHLSEBPID_MDPflirtembrace2cop
IF ~GlobalGT("FHLSebFlirt","GLOBAL",10) RandomNum(2,2)~ THEN REPLY ~(Cop a feel.)~ + FHLSEBPID_MDPflirtembrace2copreject
IF ~GlobalLT("FHLSebFlirt","GLOBAL",11)~ THEN REPLY ~(Cop a feel.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtembrace2copreject
++ ~(Hug him for as long as he needs.)~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLSEBPID_MDPflirtembrace2long
END

IF ~~ FHLSEBPID_MDPflirtembrace2copreject
SAY ~Keep your hands to yourself, you uncouth <PRO_MANWOMAN>!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace2cop
SAY ~(Sebastian lets out a soft chuckle; you feel it more than you hear it. He presses one hand against the dip of your lower back and nuzzles at your neck for just a second before briskly pulling away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace2simple
SAY ~(He half-smiles at you briefly as you pull away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtembrace2long
SAY ~(He rests his head heavily against your shoulder as if overcome with weariness, pulling away after several long moments.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirteye1
SAY ~(When he sees the approving gleam in your eyes, Sebastian smirks and looks away.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirteye2
SAY ~(To<DAYNIGHT>, Sebastian seems not to have taken the care he normally does over his appearance: his bright clothes are a little creased and his hair isn't as neat as it usually is.)~
=
~(Despite the unfamiliarity - or perhaps because of it - he looks attractively rumpled, and you enjoy the view while you can.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirteye3a
SAY ~(Sebastian's expression is alert and his eyes bright as he surveys the surroundings. His animation gives him definite appeal; you watch him peer around for a few minutes.)~
=
~(All of a sudden, the view is ruined when his expression sours. He touches the pocket in which he used to keep his book, and his shoulders sag.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirteye3b
SAY ~(Sebastian's expression is alert and his eyes bright as he surveys the surroundings. His animation gives him definite appeal; you watch him peer around for a few minutes.)~
=
~(He pulls out his book and a pen and flicks to the last page. His whole body tenses up, however, as he stares down at the half-filled page. From the look on his face he seems to be torn between sadness and anger; he settles on the latter and thrusts the book back with the rest of his belongings without any care.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirteye4
SAY ~(You know that Sebastian is many things, but he is definitely not the strongest, tallest or dextrous man you know. As you watch him fuss over his cloak, though, and fumble with his weapon and drop it all at once, you are reminded of the old adage: good things come in small packages.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtlookgood2
SAY ~(He looks somewhat sceptical.) Who am I to argue with <CHARNAME>, Mighty Bhaalspawn?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtlookgood1
SAY ~You say that like it's news, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke1
SAY ~Mmm, nice.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke3
SAY ~(He turns his gaze away from you, but leans his head against your hand approvingly.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke4
SAY ~(Sebastian's expression becomes somewhat downcast, but he doesn't ask you to stop. When you're done, he gives you a vague smile.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke2
SAY ~Stop it. Now.~
IF ~GlobalGT("FHLSebLike","GLOBAL",6)~ THEN REPLY ~Why? I thought you liked it.~ + FHLSEBPID_MDPflirtstroke2whylike
IF ~GlobalLT("FHLSebLike","GLOBAL",7)~ THEN REPLY ~Why? I thought you liked it.~ + FHLSEBPID_MDPflirtstroke2whyless
++ ~Fine, if you're not in the mood.~ + FHLSEBPID_MDPflirtstroke2mood
++ ~But I like to do it.~ + FHLSEBPID_MDPflirtstroke2but
END

IF ~~ FHLSEBPID_MDPflirtstroke2mood
SAY ~(He nods curtly, but it's obvious his attention is somewhere else.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke2but
SAY ~Perhaps I don't care what *you* like. Did you think of that?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke2whylike
SAY ~I do. I always have, ever since I was very young. So you can imagine I'd have some bad associations with it every once in a while.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtstroke2whyless
SAY ~I don't think I have to explain myself to you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtaround2
SAY ~(Sebastian shivers slightly as you slide your arm around his waist.) Really, <CHARNAME>. So impertinent.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtaround3
SAY ~Oi! Stop that.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtaround4
SAY ~(You make a show of yawning, stretching out your arms, then 'accidentally' putting one of your arms around Sebastian's shoulders. He looks at you curiously for a moment, then snorts with laughter.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtarm1
SAY ~Ooh, that tickles!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtarm2
SAY ~(He sneers and pulls away from you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtarm3
SAY ~Yes, it's lovely fabric, isn't it? Very soft. I can give you the name of the tailor I bought it from, so you can stop fondling my clothes.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtarm4
SAY ~(He touches your hand lightly with his fingertips, giving you permission rather than trying to stop you.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtwolf1
SAY ~(He gives you a sidelong glance and exaggeratedly preens.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtwolf2
SAY ~Such appreciation from a child of Bhaal, and this child of Bhaal, no less. What an honour.~ [FHLSF7]
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtwolf3
SAY ~(He gives you a sidelong glance and exaggeratedly preens.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtwolf4
SAY ~I'm not in the mood, so be quiet.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickupaccept
SAY ~(He raises an eyebrow at you, with a small smile of appreciation.)~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickupgenlaugh
SAY ~Haha!~
=
~(Sebastian looks surprised at his own laughter, then flashes you a quick grin.) That was definitely worth the horrific one-liner.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickup1a
SAY ~(Sebastian snorts, then breaks down into laughter.)~
=
~Oh, I'm sorry, <CHARNAME>. Not the response you were looking for?~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickup2a
SAY ~And your brain too, obviously.~ [FHLSF6]
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickup3a
SAY ~(snort) Get more lost, <CHARNAME>, and stay lost!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickup4a
SAY ~I'm surprised, <CHARNAME>. I assumed you didn't know how to read!~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPflirtpickupgenreject
SAY ~When people say you learnt everything from the monks at Candlekeep, they really weren't kidding, were they?~ [FHLSF5]
IF ~~ EXIT
END

//the sex itself

IF ~~ FHLSEBPID_MDPaskfirstsexnotinn
SAY ~Only if it's a bed you want me in, <CHARNAME>. I won't roll around on the ground.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_MDPaskfirstsex
SAY ~All right. Lead the way.~
=
~(Sebastian follows you to your room and shuts the door behind him when you're both inside. He leans against the door and gives you a level, thoughtful look.) So?~
++ ~So...what do you like?~ + FHLSEBPID_sexso
++ ~(Pull him towards the bed.)~ + FHLSEBPID_1sexpullbed
++ ~Let's get on with it. We've got a busy enough schedule as it is.~ + FHLSEBPID_sexbusy
++ ~(Trap him against the door and kiss him hard.)~ + FHLSEBPID_1sexwallkink
++ ~(Start undressing him.)~ + FHLSEBPID_1sexundress
++ ~(Kiss him.)~ + FHLSEBPID_1sexkiss
++ ~On second thoughts, maybe this isn't a good idea. Forget I asked.~ + FHLSEBPID_sexchicken
END

IF ~~ FHLSEBPID_sexchicken
SAY ~Yes, <CHARNAME>. Then I'll sit, stay and fetch. Make up your mind every once in a while, hmm?~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexso
SAY ~A myriad of unsettling and provocative things, <CHARNAME>. I wouldn't want to disturb your innocence.~ [FHLSF4]
++ ~I hardly think my innocence is of any importance. (Kiss him.)~ + FHLSEBPID_1sexkiss
++ ~Come on, I'm at a loss here.~ + FHLSEBPID_1sexloss
++ ~(Shut him up by leaning against him and kissing him hard.)~ + FHLSEBPID_1sexwallkink
++ ~Can you come over to the bed, Sebastian?~ + FHLSEBPID_1sexpullbed
++ ~(Go over and start to undress him.)~ + FHLSEBPID_1sexundress
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchicken
END

IF ~~ FHLSEBPID_sexchickenworse
SAY ~What? You lead me on and then...~
=
~Right. Fine. I'm going.~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexchickenworseclothes
SAY ~What? You lead me on and then--~
=
~(He gathers his clothes and pulls them on haphazardly.) Right. Fine. I'm going.~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_1sexpullbed
SAY ~(Sebastian hesitates as you urge him towards the bed, then stumbles. You try to catch him by grabbing his wrists but he falls anyway; luckily, he's close enough to the bed by that time to land on it, rather than tumble to the floor. He pulls you down with him and raises his eyebrows in what looks like an 'I meant to do that' expression.)~
++ ~(Straddle him.)~ + FHLSEBPID_2sexpullbedstraddle
++ ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace
++ ~(Give him a lovebite.)~ + FHLSEBPID_2bedshirtonlovebite
++ ~Very graceful, Sebastian.~ + FHLSEBPID_2verygraceful
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_sexbusy
SAY ~Ha, and they say romance is dead.~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_1sexwallkink
SAY ~(When you hold him by the shoulders he shivers and responds eagerly to your kiss, licking the inside of your upper lip and drawing your tongue into his mouth. Somehow he shifts your position so your hands are on his wrists.)~
++ ~(Give him a lovebite.)~ + FHLSEBPID_2wallshirtonlovebite
++ ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_1sexundress
SAY ~(Sebastian barely moves as you remove his cloak and unlace his shirt, but his eyes dart between following the movement of your hands and watching your face. There's a complex, almost unreadable expression on his face - a mixture of desire, sadness and anticipation. You ease the shirt off his shoulders and discard it, leaving him bare to the waist.)~
++ ~(Give him a lovebite.)~ + FHLSEBPID_2wallshirtofflovebite
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ +FHLSEBPID_noshirtwallguide
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworseclothes
END

IF ~~ FHLSEBPID_1sexkiss
SAY ~(Sebastian slowly meets your lips with an oddly chaste kiss. He isn't taking advantage of you like he normally might; his hands are resting gently on your forearms.)~
++ ~(Give him a lovebite.)~ + FHLSEBPID_2wallshirtonlovebite
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide
++ ~(Deepen the kiss.)~ + FHLSEBPID_walldeepenkiss
++ ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_walldeepenkiss
SAY ~(With a flick of your tongue inside his mouth, you manage to get Sebastian fired up: he jolts once and his fingers clench on your arms. In seconds you've gone from a gentle kiss to Sebastian scraping his teeth against your bottom lip, flipping your positions so you're the one with your back at the door.)~
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
++ ~(Slide your hands underneath his shirt.)~ + FHLSEBPID_wallslideshirt
END

IF ~~ FHLSEBPID_1sexloss
SAY ~All right, just trust me. You trust me, don't you, <CHARNAME>?~
=
~(He doesn't wait for a response, pulling you towards him so you're pressing him against the door, and kissing you, drawing your tongue into his mouth. He presses your hands against his chest, hard; your fingers entangle with his.)~
++ ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace
++ ~(Give him a lovebite.)~ + FHLSEBPID_2wallshirtonlovebite
++ ~Mmm, let's get to the good stuff, shall we? ~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide
END

IF ~~ FHLSEBPID_2sexpullbedstraddle
SAY ~(You feel the change in Sebastian's mood very clearly: suddenly he's all fired up, holding you by your shoulders to make sure you don't try to get off him. He keeps one hand pressed against your shoulder, runs the other across your collarbone and up your neck and leans up to kiss you.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedunlace
SAY ~(Sebastian's hands fall away from you as you unlace his shirt, and he leans away so he can watch you, his gaze darting between the movement of your hands and watching your face. Once there's enough room for your hands you slide the shirt partway off his shoulders and run your palms across his chest, feeling his heartbeat quicken as he reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallunlace
SAY ~(Sebastian's hands fall from you as you unlace his shirt, and he leans away so he can watch you, his gaze darting between the movement of your hands and watching your face. Once there's enough room for your hands you slide the shirt halfway off his shoulders and run your palms across his chest. His heartbeat quickens; you feel him gasp and start to shiver and he reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_2bedshirtonlovebite
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress
++ ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide
END

IF ~~ FHLSEBPID_2wallshirtonlovebite
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Let's take this to the bed, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Slide your hands under his shirt.)~ + FHLSEBPID_wallslideshirt
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide
++ ~Let's do this right here.~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_2bedshirtofflovebite
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworseclothes
END

IF ~~ FHLSEBPID_2wallshirtofflovebite
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Let's take this to the bed, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_noshirtwallguide
++ ~Let's do this right here.~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworseclothes
END

IF ~~ FHLSEBPID_wallshirtoffkisschest
SAY ~(Steadying yourself with your hands, you leave a trail of kisses on his neck, down his sternum and to his navel, finally going down on one knee for comfort. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
++ ~(Pull him down with you.)~ + FHLSEBPID_pulldown
++ ~Let's take this to the bed, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworseclothes
END

IF ~~ FHLSEBPID_wallshirtonkisschest
SAY ~(You lean down on one knee and push Sebastian's shirt up to his neck, exposing his chest. Steadying yourself with your hands, you leave a trail of kisses leading down his sternum, to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
++ ~(Pull him down with you.)~ + FHLSEBPID_pulldown
++ ~Let's take this to the bed, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_2bedshirtoffkisschest
SAY ~(Steadying yourself with your hands on the mattress, you leave a trail of kisses on his neck, down his sternum and to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworseclothes
END

IF ~~ FHLSEBPID_2bedshirtonkisschest
SAY ~(You push Sebastian's shirt up to his neck, exposing his chest. Steadying yourself with your hands on the mattress, you leave a trail of kisses leading down his sternum, to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_2verygraceful
SAY ~(He glowers at you then rolls with you, pushing you against the mattress and pinning you there with his hands, one leg between yours.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
++ ~Get off me, Sebastian. I don't want you holding me down!~ + FHLSEBPID_pin
END

IF ~~ FHLSEBPID_pin
SAY ~(He removes his hands from your shoulders so he's not pressing you against the mattress but he doesn't move off you; instead, he kisses your neck, trailing his tongue along your collarbone.)~
++ ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
++ ~(Guide his hands under your clothes.)~ + FHLSEBPID_bottombedguide
++ ~Sebastian, I'm not sure this is a good idea after all.~ + FHLSEBPID_sexchickenworse
END

IF ~~ FHLSEBPID_topbedguide
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallguide
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_noshirtwallguide
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_topbednoshirtguide
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bottombedguide
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest. With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtslide
SAY ~(The skin of his abdomen is warm and soft to the touch, and he gasps when you run your palms all the way up to his chest. His shirt rides up with your hands and ends up gathered at Sebastian's neck. He doesn't seem to care that he's still half-dressed; he starts shifting under your touch and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallslideshirt
SAY ~(The skin of his abdomen is warm and soft to the touch, and he gasps when you run your palms all the way up to his chest. His shirt rides up with your hands and ends up gathered at Sebastian's neck. He doesn't seem to care that he's still half-dressed; he starts shifting under your touch and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtonundress
SAY ~(Sebastian kisses you and his hands join yours in beginning to remove your clothes; he breaks the kiss for only as long as is possibly needed before straining up for more. Once your skin is exposed he runs his hands down your back, pressing down enough so that your bare chest ends up pressed against him. You can feel his heartbeat go from fast to even faster as he starts kissing your neck.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_pulldown
SAY ~(At your urging he falls to his knees with a heavy thunk; it probably hurt, but he doesn't seem to care. He's too busy kissing you, sliding one hand up your leg. The bed seems very far away, but you can always use Sebastian to cushion yourself against the hard floor.)~
IF ~~ THEN DO ~SetGlobal("FHLDoneTheNasty","GLOBAL",1) SetGlobal("FHLFirstMorningAfter","GLOBAL",1) RestParty()~ EXIT
END

//morning after talk

IF ~Global("FHLFirstMorningAfter","GLOBAL",2) GlobalLT("FHLSebLike","GLOBAL",3)~ THEN BEGIN FHLSebFirstMorningAfterDislike
SAY ~(Sebastian wakes up a minute or so after you do, and stretches out his arms and legs with a groan of tiredness.)~
=
~Good morning.~ [FHLSF3]
++ ~Mmm, thank you for a lovely night.~ + FHLSEBPID_morningfirstmmm
++ ~So, how was it for you?~ + FHLSEBPID_morningfirsthow
++ ~Considering how much practice you say you've had, I thought you'd be better.~ + FHLSEBPID_morningfirstpractice
++ ~(Put your arms around him.)~ + FHLSEBPID_morningfirstcuddle
++ ~Mmm, that was wonderful. I love you, Sebastian.~ + FHLSEBPID_morningfirstlove
++ ~Ah, good morning. How about getting me some breakfast?~ + FHLSEBPID_morningfirstbreakfast
++ ~Sebastian, I'm sorry. I think this was a mistake.~ + FHLSEBPID_morningfirstmistake
END

IF ~Global("FHLFirstMorningAfter","GLOBAL",2) GlobalGT("FHLSebLike","GLOBAL",2)~ THEN BEGIN FHLSebFirstMorningAfterLike
SAY ~(Sebastian wakes up a minute or so after you do, and stretches out his arms and legs with a groan of tiredness.)~
=
~Good morning.~ [FHLSF2]
++ ~Mmm, thank you for a lovely night.~ + FHLSEBPID_morningfirstmmm
++ ~So, how was it for you?~ + FHLSEBPID_morningfirsthow
++ ~Considering how much practice you say you've had, I thought you'd be better.~ + FHLSEBPID_morningfirstpractice
++ ~(Put your arms around him.)~ + FHLSEBPID_morningfirstcuddle
++ ~Mmm, that was wonderful. I love you, Sebastian.~ + FHLSEBPID_morningfirstlove
++ ~Ah, good morning. How about getting me some breakfast?~ + FHLSEBPID_morningfirstbreakfast
++ ~Sebastian, I'm sorry. I think this was a mistake.~ + FHLSEBPID_morningfirstmistake
END

IF ~~ FHLSEBPID_morningfirstmmm
SAY ~I wasn't doing you a favour or anything. It's not something you say thank you for.~
++ ~I was just trying to be polite!~ + FHLSEBPID_morningfirstpolite
++ ~Well, it was still lovely.~ + FHLSEBPID_morningfirstmmmlovely
IF ~Global("SleptAerie","GLOBAL",0) Global("FWAnomenNookie","GLOBAL",0) Global("JaheiraNookie","GLOBAL",0) !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~I just wanted to let you know I was grateful for making my first time special.~ + FHLSEBPID_morningfirstmmmfirsttime
++ ~Whatever. Let's get up - I'm hungry and we've got things to do.~ + FHLSEBPID_morningfirstwhatever
END

IF ~~ FHLSEBPID_morningfirsthow
SAY ~I would have thought it was obvious how I felt at the time. Should I have been more obvious?~
++ ~There's no need to patronise me - I was just being polite.~ + FHLSEBPID_morningfirstpolite
++ ~I was more wondering if it was good, great or mind-blowing. Sometimes it's hard to tell.~ + FHLSEBPID_morningfirstsmug
++ ~Maybe you can be, next time. I think I'd prefer it.~ + FHLSEBPID_morningfirstnexttime
++ ~Never mind. Let's just get up and be gone.~ + FHLSEBPID_morningfirstgettup
END

IF ~~ FHLSEBPID_morningfirstgettup
SAY ~Yes, let's. I'm hungry.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstpractice
SAY ~If it was such a chore for you, <CHARNAME>, then you don't have to force yourself.~
IF ~Global("SleptAerie","GLOBAL",0) Global("FWAnomenNookie","GLOBAL",0) Global("JaheiraNookie","GLOBAL",0) !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~I just meant that I was hoping my first time would be...more special.~ + FHLSEBPID_morningfirstmmmfirsttime
++ ~You're right, I don't. Go on, get out of here. I need to get dressed.~ + FHLSEBPID_morningfirstdressed
++ ~I'm sorry, I'm still half-asleep. Just ignore me!~ + FHLSEBPID_morningfirstignore
++ ~Forget it. Let's just get up.~ + FHLSEBPID_morningfirstgettup
END

IF ~~ FHLSEBPID_morningfirstignore
SAY ~Oh, I will, don't worry. It's easy to.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstdressed
SAY ~I don't have to take that kind of treatment, you know. Say the word and I'll leave, and not look back.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstmistake
SAY ~Think what you like, <CHARNAME>. I won't bother arguing with a person of such obviously high standards.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstcuddle
SAY ~What's this? <CHARNAME>, you certainly have stamina.~
++ ~No, I just wanted to cuddle.~ + FHLSEBPID_morningfirstjustcuddle
++ ~Of course I do, I have Bhaal in me, remember?~ + FHLSEBPID_morningfirstbhaal
++ ~Maybe I'm just inspired by the company.~ + FHLSEBPID_morningfirstinspired
END

IF ~~ FHLSEBPID_morningfirstbhaal
SAY ~<CHARNAME>, you managed to seduce such a prim and proper man such as I, but you're damnably strange.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ FHLSEBPID_morningfirstinspired
SAY ~Such things you say!~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstjustcuddle
SAY ~I don't have any objections to cuddling. As long as you-- (He stretches out his neck, offering it to you.)~
++ ~(Pet his neck.)~ + FHLSEBPID_morningfirstcuddlepet
++ ~(Kiss his neck.)~ + FHLSEBPID_morningfirstcuddlekiss
++ ~Maybe I want you to cuddle me, ever think of that?~ + FHLSEBPID_morningfirstcuddleme
END

IF ~~ FHLSEBPID_morningfirstcuddlepet
SAY ~Ahhmmmmmgh, good. Thanks.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstcuddlekiss
SAY ~Eeeeehhhh, good. Thanks.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstcuddleme
SAY ~Very well, my most egocentric Bhaalspawn. You shall have all the affection I can muster.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstbreakfast
SAY ~Hmph. I was going to get some anyway, so I suppose I can bring you back something.~
=
~(Sebastian dresses haphazardly and totters sleepily out of the room. He's gone for a while and you start to worry that he's forgotten about you, but moments after the thought crosses your mind he nudges the door open with his shoulder and brings in breakfast.)~
=
~(He unceremoniously puts the tray down on your legs, tutting when you jolt it in your efforts to sit up properly, and thrusts a glass of orange juice into your hand. He points out which plate is yours; his has a slice of melon and a bacon sandwich whereas yours is laden with fruit, pastries, and a sandwich of your own.)~
++ ~Are you trying to ruin my figure or something?~ + FHLSEBPID_morningfirstfigure
++ ~This is brilliant, Sebastian! Thank you.~ + FHLSEBPID_morningfirstbrilliant
++ ~Would you like one of my pastries?~ + FHLSEBPID_morningfirstpastry
++ ~(Tuck in.)~ + FHLSEBPID_morningfirsttuck
END

IF ~~ FHLSEBPID_morningfirstfigure
SAY ~Yes. It's all a conspiracy against you, <CHARNAME>. I'm trying to make you fat and slow so you won't be able to run away from your enemies so fast.~
=
~Or maybe I wasn't sure what you liked, ever think of that?~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstbrilliant
SAY ~Of course it's brilliant - rather like me, in fact.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstpastry
SAY ~No thank you, <CHARNAME>. Oh, and don't eat too fast or you'll explode, as my father used to--~
=
~Oh, what do I care? Eat as fast as you like.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirsttuck
SAY ~Don't eat too fast or you'll explode, as my father used to--~
=
~Oh, what do I care? Eat as fast as you like.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstmmmlovely
SAY ~Of course it was. Now, I'm going to go eat something - I'm famished. Come too, if you want.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstlove
SAY ~What? Don't say that!~
++ ~Why shouldn't I say it? It's how I feel about you.~ + FHLSEBPID_morningfirstlovedo
++ ~I was just trying to unnerve you - and it looks like I succeeded!~ + FHLSEBPID_morningfirstlovefreak
++ ~What's up with you, Sebastian? There's nothing wrong with love.~ + FHLSEBPID_morningfirstlovewrong
END

IF ~~ FHLSEBPID_morningfirstlovedo
SAY ~Listen to me very carefully, <CHARNAME>. If you say that to me one more time, this is over. Whatever 'this' is. Do you understand me?~
++ ~Of course I understand. I think it's ridiculous.~ + FHLSEBPID_morningfirstridiculous
++ ~I understand. I won't mention it again, but that doesn't mean I don't care about you.~ + FHLSEBPID_morningfirstagain
++ ~What's up with you? There's nothing wrong with love.~ + FHLSEBPID_morningfirstlovewrong
++ ~What, so you've decided you don't care about anything now?~ + FHLSEBPID_morningfirstcare
END

IF ~~ FHLSEBPID_morningfirstlovefreak
SAY ~Fine. Congratulations, you're a real scream. Such wit and panache.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstlovewrong
SAY ~I won't listen to such drivel. What's wrong with love - I'll let you figure that one out on your own. But mention it again and we're done.~
++ ~All right, I'm sorry. I won't do it again.~ + FHLSEBPID_morningfirstagain
++ ~You're being irrational, Sebastian. Calm down and tell me what's up.~ + FHLSEBPID_morningfirstirrational
++ ~Why do you have such a thing against hearing that, Sebastian?~ + FHLSEBPID_morningfirstirrational
++ ~Love, love, love. See? You're not dying, Sebastian!~ + FHLSEBPID_morningfirstridiculous
++ ~Fine. I understand, and I won't mention it, but that doesn't mean I don't care about you.~ + FHLSEBPID_morningfirstagain
END

IF ~~ FHLSEBPID_morningfirstridiculous
SAY ~Whatever you say. Don't try anything with me again.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstagain
SAY ~(His shoulders slump a little, and he gets out of bed to dress.) Well. I...appreciate the sentiment, I suppose.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) SetGlobal("FHLSebTellLove","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstirrational
SAY ~I don't give a damn! You'll agree with me or that's it!~
++ ~This is ridiculous. I have no idea what's going on with you!~ + FHLSEBPID_morningfirstridiculous
++ ~Fine, I understand, and I won't mention it - but it doesn't mean I don't care about you.~ + FHLSEBPID_morningfirstagain
++ ~Listen, you can't tell me what to do. You're in my group and these are my rules.~ + FHLSEBPID_morningfirstrules
END

IF ~~ FHLSEBPID_morningfirstcare
SAY ~How dare you--~
=
~Actually, you're partly right. There is one thing I don't give a damn about: you.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstrules
SAY ~(His shoulders slump and he scrambles out of bed to dress.)~
=
~Don't try anything with me again, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3) SetGlobal("FHLBrushOff","GLOBAL",1)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstmmmfirsttime
SAY ~Your first time? Oh, hells.~
=
~Well, nothing to be done for it now. Come on, <CHARNAME>, don't get doe-eyed on me - let's go and eat breakfast.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstwhatever
SAY ~We certainly do.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstpolite
SAY ~Oh, forget 'polite'. It's got no place nor point.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstsmug
SAY ~Ha, then I'll say it was average and leave it at that. Your ego obviously doesn't need any stroking from me.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstnexttime
SAY ~You seem awfully sure there'll be a next time.~
++ ~Why wouldn't there be a next time?~ + FHLSEBPID_morningfirstnexttimesmug
++ ~Don't tease me like that, Sebastian, it's not fooling anyone.~ + FHLSEBPID_morningfirstnexttimetease
++ ~Well, you're not going to just leave me, are you?~ + FHLSEBPID_morningfirstnexttimeleave
END

IF ~~ FHLSEBPID_morningfirstnexttimesmug
SAY ~Hmm. Fair point.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstnexttimetease
SAY ~I'll tease you however I like, and if you can't put up with it then don't try anything with me.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

IF ~~ FHLSEBPID_morningfirstnexttimeleave
SAY ~I'll pretend that you meant the group, not you in particular. And even then, you'll have to make me want to stay.~
IF ~~ THEN DO ~SetGlobal("FHLFirstMorningAfter","GLOBAL",3)~ EXIT
END

//"again"sex

IF ~~ FHLSEBPID_MDPsex2
SAY ~All right. Lead the way.~
=
~(Sebastian follows you to your room and shuts the door behind him when you're both inside. He leans against the door and gives you a level, thoughtful look.) So?~
++ ~So...what shall we do tonight?~ + FHLSEBPID_sexso2
IF ~RandomNum(2,1)~ THEN REPLY ~(Pull him towards the bed.)~ + FHLSEBPID_sexpullbed2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Pull him towards the bed.)~ + FHLSEBPID_sexpullbed2b
++ ~Let's get on with it. We've got a busy enough schedule as it is.~ + FHLSEBPID_sexbusy2
IF ~RandomNum(2,1)~ THEN REPLY ~(Trap him against the door and kiss him hard.)~ + FHLSEBPID_sexwallkink2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Trap him against the door and kiss him hard.)~ + FHLSEBPID_sexwallkink2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Start undressing him.)~ + FHLSEBPID_sexundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Start undressing him.)~ + FHLSEBPID_sexundress2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss him.)~ + FHLSEBPID_sexkiss2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss him.)~ + FHLSEBPID_sexkiss2b
++ ~On second thoughts, I'm a little tired. Let's not bother.~ + FHLSEBPID_sexchicken
END

IF ~~ FHLSEBPID_MDPsexnotinn2
SAY ~Only if it's a bed you want me in, <CHARNAME>. I won't roll around on the ground.~
IF ~~ EXIT
END

IF ~~ FHLSEBPID_sexchicken2
SAY ~Yes, <CHARNAME>. Then I'll sit, stay and fetch at your whim. Make up your mind every once in a while, hmm?~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexchickenworse2
SAY ~You're tired? Tired? Dammit, <CHARNAME>--~
=
~Right. Fine. I'm going.~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexchickenworse2clothes
SAY ~You're tired? Tired? Dammit, <CHARNAME>--~
=
~(He gathers his clothes together and pulls them on haphazardly.) Right. Fine. I'm going.~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexso2
SAY ~You're the one who dragged me up here; surely you have some idea?~
IF ~RandomNum(2,1)~ THEN REPLY ~Let's start with something slow, then. (Kiss him.)~ + FHLSEBPID_sexkiss2a
IF ~RandomNum(2,2)~ THEN REPLY ~Let's start with something slow, then. (Kiss him.)~ + FHLSEBPID_sexkiss2b
IF ~RandomNum(2,1)~ THEN REPLY ~Come on, I'm at a loss here.~ + FHLSEBPID_sexloss2a
IF ~RandomNum(2,1)~ THEN REPLY ~Come on, I'm at a loss here.~ + FHLSEBPID_sexloss2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Shut him up by leaning against him and kissing him hard.)~ + FHLSEBPID_sexwallkink2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Shut him up by leaning against him and kissing him hard.)~ + FHLSEBPID_sexwallkink2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Go to the bed.) Can you come here, Sebastian?~ + FHLSEBPID_sexpullbed2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Go to the bed.) Can you come here, Sebastian?~ + FHLSEBPID_sexpullbed2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Go over and start to undress him.)~ + FHLSEBPID_sexundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Go over and start to undress him.)~ + FHLSEBPID_sexundress2b
++ ~Actually, Sebastian, I'm too tired. Let's do this another time.~ + FHLSEBPID_sexchicken2
END

IF ~~ FHLSEBPID_sexpullbed2a
SAY ~(Sebastian hesitates as you urge him towards the bed, then stumbles. You try to catch him by grabbing his wrists but he falls anyway; luckily, he's close enough to the bed by that time to land on it, rather than tumble to the floor. Using your grip on his wrists, he pulls you down with him and raises his eyebrows in what you think is a 'I meant to do that' expression.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Straddle him.)~ + FHLSEBPID_sexpullbedstraddle2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Straddle him.)~ + FHLSEBPID_sexpullbedstraddle2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2b
++ ~Very graceful, Sebastian.~ + FHLSEBPID_verygraceful2
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexpullbed2b
SAY ~(Sebastian saunters over and sits on the side of the bed. His expression is rather smug, but there's something else there; perhaps sadness or even boredom, it's hard to tell with Sebastian's capricious moods. He takes your hands and pulls you over towards him, leaning back to get you on the bed.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Straddle him.)~ + FHLSEBPID_sexpullbedstraddle2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Straddle him.)~ + FHLSEBPID_sexpullbedstraddle2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Very graceful, Sebastian.~ + FHLSEBPID_verygraceful2
++ ~Mmm, let's get to good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexbusy2
SAY ~And they say romance is dead.~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexwallkink2a
SAY ~(When you hold him by the shoulders he shivers and responds eagerly to your kiss, licking the inside of your upper lip and drawing your tongue into his mouth. Somehow he shifts your position so your hands are on his wrists.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtonkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_sexwallkink2b
SAY ~(Sebastian shivers beneath your hands, murmuring noises that you assume mean 'yes' into your mouth. He runs his hands down your arms, massaging as he goes, and contrives to get your hands around his wrists.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtonkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_sexundress2a
SAY ~(Sebastian barely moves as you remove his cloak and unlace his shirt, but his eyes dart between following the movement of your hands and watching your face. There's a complex, almost unreadable expression on his face - a mixture of desire, sadness and anticipation. You ease the shirt off his shoulders and discard it, leaving him bare to the waist.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ +FHLSEBPID_noshirtwallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ +FHLSEBPID_noshirtwallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_sexundress2b
SAY ~(Sebastian wriggles out of his cloak and his shirt without further encouragement and gives you a look filled with anticipation and desire.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ +FHLSEBPID_noshirtwallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ +FHLSEBPID_noshirtwallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_sexkiss2a
SAY ~(Sebastian slowly meets your lips with an oddly chaste kiss. He isn't taking advantage of you like he normally might; his hands are resting gently on your forearms.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Deepen the kiss.)~ + FHLSEBPID_walldeepenkiss2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Deepen the kiss.)~ + FHLSEBPID_walldeepenkiss2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_sexkiss2b
SAY ~(Sebastian tilts his head to meet yours and grips your arms as you kiss; you can hear a quiet gasp at the same time as his fingers twitch against your skin.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Deepen the kiss.)~ + FHLSEBPID_walldeepenkiss2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Deepen the kiss.)~ + FHLSEBPID_walldeepenkiss2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_walldeepenkiss2a
SAY ~(With a flick of your tongue inside his mouth, you manage to get Sebastian fired up: he jolts once and his fingers clench on your arms. In seconds you've gone from a gentle kiss to Sebastian scraping his teeth against your bottom lip, flipping your positions so you're the one with your back at the door.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands underneath his shirt.)~ + FHLSEBPID_wallslideshirt2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands underneath his shirt.)~ + FHLSEBPID_wallslideshirt2b
END

IF ~~ FHLSEBPID_walldeepenkiss2b
SAY ~(As you dip your head in to press against his lips more firmly, Sebastian groans and his fingers scratch at your arms. He pulls you around so he's leaning you against the door and reaches down with one hand, stroking your side and hip.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands underneath his shirt.)~ + FHLSEBPID_wallslideshirt2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands underneath his shirt.)~ + FHLSEBPID_wallslideshirt2b
END

IF ~~ FHLSEBPID_sexloss2a
SAY ~All right, just trust me. You trust me, don't you, <CHARNAME>?~
=
~(He doesn't wait for a response, pulling you towards him so you're pressing him against the door, and kissing you, drawing your tongue into his mouth. He presses your hands against his chest, hard; your fingers entangle with his.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
++ ~Mmm, let's get to the good stuff, shall we? ~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
END

IF ~~ FHLSEBPID_sexloss2b
SAY ~All right, just trust me. You should trust me by now, after all.~
=
~(He gestures you over towards him and puts his hands on your hips, drawing you in for a deep kiss. His hands slide up your hips, to your chest and then down your arms, before he entangles your fingers with his.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_wallunlace2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtonlovebite2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to the good stuff, shall we? ~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
END

IF ~~ FHLSEBPID_sexpullbedstraddle2a
SAY ~(You feel the change in Sebastian's mood very clearly: suddenly he's all fired up, holding you by your shoulders to make sure you don't try to get off him. He keeps one hand pressed against your shoulder, runs the other across your collarbone and up your neck and leans up to kiss you.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_sexpullbedstraddle2b
SAY ~(Sebastian's hips buck when you throw one leg over to straddle him, a smile growing on his face. He grabs you by the shoulders and pulls you down so your lips meet; you can feel that his lips are still curved whilst you kiss.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtonlovebite2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtonkisschest2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Unlace his shirt and stroke his chest.)~ + FHLSEBPID_bedunlace2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedunlace2a
SAY ~(Sebastian's hands fall away from you as you unlace his shirt, and he leans away so he can watch you, his gaze darting between the movement of your hands and watching your face. Once there's enough room for your hands you slide the shirt partway off his shoulders and run your palms across his chest. His heartbeat quickens; you feel him gasp and start to shiver.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtofflovebite2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedunlace2b
SAY ~(Sebastian tries to help you unclasp his cloak and unlace his shirt but his fingers are getting in the way of yours. After a few seconds of this he gives up and leans up on his elbows, watching your face. Once you're done he shifts his shoulders around so his shirt can be discarded, and you run your palms across his bare chest. He smiles, biting his lip, and trails the fingertips of one hand up your thigh.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_bedshirtofflovebite2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallunlace2a
SAY ~(Sebastian's hands fall from you as you unlace his shirt, and he leans away so he can watch you, his gaze darting between the movement of your hands and watching your face. Once there's enough room for your hands you slide the shirt halfway off his shoulders and run your palms across his chest. His heartbeat quickens; you feel him gasp and start to shiver.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallunlace2b
SAY ~(Sebastian tries to help you unclasp his cloak and unlace his shirt but his fingers are getting in the way of yours. After a few seconds of this he settles instead for holding you in place by your hips, his thumbs tracing circles through your clothes. Once you're done he shifts his shoulders around so his shirt can be discarded, and you run your palms across his bare chest. He smiles, biting his lip, and trails his fingers up your abdomen.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Give him a lovebite.)~ + FHLSEBPID_wallshirtofflovebite2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtonlovebite2a
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_bedshirtonlovebite2b
SAY ~(He holds his breath as you bite at the skin at the base of his neck, his nails digging into your back as he clenches and unclenches his fists. When your teeth let go he gasps a breath and kisses you fiercely.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Start to undress.)~ + FHLSEBPID_bedshirtonundress2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
END

IF ~~ FHLSEBPID_wallshirtonlovebite2a
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_wallslideshirt2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_wallslideshirt2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Let's do this right here.~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallshirtonlovebite2b
SAY ~(He holds his breath as you bite the skin at the base of his neck, his nails digging into your back as he clenches and unclenches his fists. When your teeth let go he gasps in a breath and kisses you fiercely.)~
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_wallslideshirt2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_wallslideshirt2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_wallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Let's do this right here.~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtofflovebite2a
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_bedshirtofflovebite2b
SAY ~(He holds his breath as you bite at the skin at the base of his neck, his nails digging into your back as he clenches and unclenches his fists. When your teeth let go he gasps in a breath and kisses you fiercely.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_bedshirtoffkisschest2b
END

IF ~~ FHLSEBPID_wallshirtofflovebite2a
SAY ~(As you lean down to his neck, he shifts his legs, pressing himself against you. Gasping, he wrenches his hands away and runs his nails down your back.)~
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_noshirtwallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_noshirtwallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Let's do this right here.~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallshirtofflovebite2b
SAY ~(He holds his breath as you bite at the skin at the base of his neck, his nails digging into your back as he clenches and unclenches his fists. When your teeth let go he gasps in a breath and kisses you fiercely.)~
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Kiss his chest.)~ + FHLSEBPID_wallshirtoffkisschest2b
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_noshirtwallguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_noshirtwallguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Let's do this right here.~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallshirtoffkisschest2a
SAY ~(Steadying yourself with your hands, you leave a trail of kisses on his neck, down his sternum and to his navel, finally going down on one knee for comfort. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2b
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_wallshirtoffkisschest2b
SAY ~(Sebastian's breath hitches as you kiss his neck, then his chest, then his ribs. You kneel to finally reach his stomach, pushing the waistband of his trousers down enough to expose his hipbones; you kiss them too and are rewarded with a loud groan.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2b
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallshirtonkisschest2a
SAY ~(You lean down on one knee and push Sebastian's shirt up to his neck, exposing his chest. Steadying yourself with your hands, you leave a trail of kisses leading down his sternum, to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2b
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallshirtonkisschest2b
SAY ~(Sebastian's breath hitches as you pull his shirt up and kiss his neck, then his chest, then his ribs. You kneel to finally reach his stomach, pushing the waistband of his trousers down enough to expose his hipbones; you kiss them too and are rewarded with a loud groan.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Pull him down with you.)~ + FHLSEBPID_pulldown2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Let's take this to the bed, shall we?~ DO ~RestParty()~ EXIT
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtoffkisschest2a
SAY ~(Steadying yourself with your hands on the mattress, you leave a trail of kisses on his neck, down his sternum and to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_bedshirtoffkisschest2b
SAY ~(His skin is flushed and slightly sticky with sweat; it tastes vaguely of salt as you lick and kiss your way down from his jawline to his stomach. Sebastian is panting by the time you're pushing the waistband of his trousers down enough to expose his hipbones; you kiss them too and are rewarded with a loud groan.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2clothes
END

IF ~~ FHLSEBPID_bedshirtonkisschest2a
SAY ~(You push Sebastian's shirt up to his neck, exposing his chest. Steadying yourself with your hands on the mattress, you leave a trail of kisses leading down his sternum, to his navel. His skin is pale and soft, his abdomen lean; you lick his side and kiss more. He grabs your head with a noise of surprise and holds you there.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2b
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbedguide2a
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtonkisschest2b
SAY ~(You unlace his shirt quickly and deftly, exposing his chest. His skin is flushed and slightly sticky with sweat; it tastes vaguely of salt as you lick and kiss your way down from his jawline to his stomach. Sebastian is panting by the time you're pushing the waistband of his trousers down enough to expose his hipbones; you kiss them too and are rewarded with a loud groan.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_topbednoshirtguide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_verygraceful2
SAY ~(He glowers at you then rolls with you, pushing you against the mattress and pinning you there with his hands, one leg between yours.)~
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2b
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
++ ~Get off me, Sebastian. I don't want you holding me down!~ + FHLSEBPID_pin2
END

IF ~~ FHLSEBPID_pin2
SAY ~(He removes his hands from your shoulders so he's not pressing you against the mattress but he doesn't move off you; instead, he kisses your neck, trailing his tongue along your collarbone.)~
IF ~RandomNum(2,1)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Slide your hands under his shirt.)~ + FHLSEBPID_bedshirtslide2b
++ ~Mmm, let's get to the good stuff, shall we?~ DO ~RestParty()~ EXIT
++ ~I'm sorry, Sebastian, I'm too tired. We'll have to finish this another time.~ + FHLSEBPID_sexchickenworse2
IF ~RandomNum(2,1)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_bottombedguide2a
IF ~RandomNum(2,2)~ THEN REPLY ~(Guide his hands under your clothes.)~ + FHLSEBPID_bottombedguide2b
END

IF ~~ FHLSEBPID_topbedguide2a
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist, against your skin. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_topbedguide2b
SAY ~(Sebastian's hands slide confidently up from your waist to your chest, massaging and stroking in wide spirals, before moving around to your back. He watches your face as his movements bring his hands further and further down, towards your hips.)~
=
~(His fingers sneak under your clothes and caress the soft skin there; Sebastian looks at you with half-closed eyes and smirks as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END


IF ~~ FHLSEBPID_wallguide2a
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallguide2b
SAY ~(Sebastian's hands slide confidently up from your waist to your chest, massaging and stroking in wide spirals, before moving around to your back. He watches your face as his movements bring his hands further and further down, towards your hips.)~
=
~(His fingers sneak under your clothes and caress the soft skin there; Sebastian looks at you with half-closed eyes and smirks as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_noshirtwallguide2a
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_noshirtwallguide2b
SAY ~(Sebastian's hands slide confidently up from your waist to your chest, massaging and stroking in wide spirals, before moving around to your back. He watches your face as his movements bring his hands further and further down, towards your hips.)~
=
~(His fingers sneak under your clothes and caress the soft skin there; Sebastian looks at you with half-closed eyes and smirks as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_topbednoshirtguide2a
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_topbednoshirtguide2b
SAY ~(Sebastian's hands slide confidently up from your waist to your chest, massaging and stroking in wide spirals, before moving around to your back. He watches your face as his movements bring his hands further and further down, towards your hips.)~
=
~(His fingers sneak under your clothes and caress the soft skin there; Sebastian looks at you with half-closed eyes and smirks as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bottombedguide2a
SAY ~(For a moment it seems like Sebastian isn't going to let you take the initiative, but then he lets you place his hands at your waist, against your skin. He watches your face as he drags his fingernails lightly up your abdomen, to your chest.)~
=
~(With the fingertips of one hand he traces slow, teasing circles and with the other he reaches down past your waist; a rather self-satisfied smirk grows on Sebastian's face as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bottombedguide2b
SAY ~(Sebastian's hands slide confidently up from your waist to your chest, massaging and stroking in wide spirals, before moving around to your back. He watches your face as his movements bring his hands further and further down, towards your hips.)~
=
~(His fingers sneak under your clothes and caress your skin; he looks at you with half-closed eyes and smirks as he goes.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtslide2a
SAY ~(The skin of his abdomen is warm and soft to the touch, and he gasps when you run your palms all the way up to his chest. His shirt rides up with your hands and ends up gathered at Sebastian's neck. He doesn't seem to care that he's still half-dressed; he starts shifting under your touch and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtslide2b
SAY ~(You run your hands up Sebastian's abdomen, towards his neck, scratching a little with your nails as you go. Sebastian whispers something that sounds like 'yes', but you can't be sure; then, he holds you by the hips and massages, stroking at your upper thighs as well. Between your touch and his it's no surprise Sebastian can't hold on any longer: he shivers and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallslideshirt2a
SAY ~(The skin of his abdomen is warm and soft to the touch, and he gasps when you run your palms all the way up to his chest. His shirt rides up with your hands and ends up gathered at Sebastian's neck. He doesn't seem to care that he's still half-dressed; he starts shifting under your touch and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_wallslideshirt2b
SAY ~(You run your hands up Sebastian's abdomen, towards his neck, scratching a little with your nails as you go. Sebastian whispers something that sounds like 'yes', but you can't be sure; then, he holds you by the hips and massages, stroking at your upper thighs as well. Between your touch and his it's no surprise Sebastian can't hold on any longer: he shivers and reaches for the fastenings at your waist.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtonundress2a
SAY ~(Sebastian kisses you and his hands join yours in beginning to remove your clothes; he breaks the kiss for only as long as is possibly needed before straining up for more. Once your skin is exposed he runs his hands down your back, pressing down enough so that your bare chest ends up pressed against him. You can feel his heartbeat go from fast to even faster as he starts kissing your neck.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_bedshirtonundress2b
SAY ~(Sebastian leans up to kiss you as you begin to remove your clothes, reaching round and running his fingertips over your hips and lower thighs. His whole body starts to tremble when you press your exposed chest against his, and the groan he lets out is quiet enough that you feel it, more than hear it. His pulse is racing as he kisses you again but with terrible aim, his lips hot against your mouth and jawline, and he fumbles at the fastenings at your waist.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_pulldown2a
SAY ~(At your urging he falls to his knees with a heavy thunk; it probably hurt, but he doesn't seem to care. He's too busy kissing you, sliding one hand up your leg. The bed seems very far away, but you can always use Sebastian to cushion yourself against the hard floor.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ FHLSEBPID_pulldown2b
SAY ~(Sebastian carefully lowers himself down next to you, leaning against the door for support. He pulls you over so you're almost sitting in his lap and presses himself against you, his hands sliding up your legs. The bed seems very far away, but you can always use Sebastian to cushion yourself against the hard floor.)~
IF ~~ THEN DO ~RestParty()~ EXIT
END

END
