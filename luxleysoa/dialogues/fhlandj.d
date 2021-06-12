BEGIN FHLANDJ

//If Sebastian is dead

IF ~Global("FHLSebDead","GLOBAL",1)~ THEN BEGIN FHLSebDead
SAY ~Sebastian? He's...he's gone. Why would he die like that?! I have to go. I have to tell them...~
IF ~~ THEN DO ~SetGlobal("FHLSebDead","GLOBAL",2)
LeaveParty()
GivePartyAllEquipment()
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL08")~
EXIT
END

IF ~~ FHLAndTrans_getit
SAY ~I'll do my best, I promise.~
++ ~And that's all I can ask of you. Thank you.~ + FHLAndTrans_canthelp
++ ~It had better be enough.~ EXTERN FHLSEBJ FHLAndTrans_enough
END

IF ~~ FHLAndTrans_notenough
SAY ~Well, that's all I can offer you, I'm afraid.~
++ ~Then I'd rather you didn't travel with us.~ EXTERN FHLSEBJ FHLAndTrans_getout
++ ~Let's just carry on, then. We'll leave it at that.~ + FHLAndTrans_leaveit
END

IF ~~ FHLAndTrans_leaveit
SAY ~If you think it's best.~
IF ~~ EXIT
END

//Andrei Apology

IF WEIGHT #-1 ~Global("FHLAndApology","GLOBAL",1)~ THEN BEGIN FHLAndApology
SAY ~I've been thinking a bit, and I just wanted to let you know that I'm sorry for the way I spoke to you before.~ [FHLAJ1]
++ ~Is that all you have to say to me? Just forgive and forget?~ + FHLAndApology_faf
++ ~I'm not interested in your apologies, Andrei. I'm not your babysitter.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ ~I'd prefer you not doing it again than you apologising to me.~ + FHLAndApology_rather
++ ~Thank you, Andrei. It's good to know that you care about my feelings.~ + FHLAndApology_thank
++ ~I don't blame you for shouting, considering everything. Don't worry about it.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_blame
END

IF ~~ FHLAndApology_faf
SAY ~Well, not forget, but forgive would be nice. If you're not in the mood to talk, that's fine, but I'm not going to grovel at your feet.~
++ ~I'm not interested in your apologies, Andrei. I'm not your babysitter.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ ~I'd prefer you not doing it again than you apologising to me.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_rather
++ ~Thank you, Andrei. It's good to know that you care about my feelings.~ + FHLAndApology_thank
++ ~I don't blame you for shouting, considering everything. Don't worry about it.~ + FHLAndApology_blame
END

IF ~~ FHLAndApology_problem
SAY ~Fine, then. I can see you don't want to be sensible about this, so I'll leave you alone.~
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~ EXIT
END

IF ~~ FHLAndApology_rather
SAY ~Oh, yes, of course. I just wanted you to know that I didn't mean those things, and that I knew it was wrong of me.~
=
~I'll do my best not to let it happen again.~
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF ~~ FHLAndApology_thank
SAY ~Oh, you're welcome, <CHARNAME>. I'll do my best not to let it happen again.~
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF ~~ FHLAndApology_blame
SAY ~Thank you, <CHARNAME>, I appreciate that a lot. I'll do my best not to let it happen again.~
IF ~~ THEN DO ~SetGlobal("FHLAndApology","GLOBAL",2)~
EXIT
END

IF WEIGHT #-1 ~Global("FHLAndShout","GLOBAL",1) Global("FHLAndApology","GLOBAL",0) IsGabber(Player1)
!ActuallyInCombat()
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
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
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHLAndApologyPID
SAY ~Ah yes, I've been wanting to speak to you, too. I just wanted to let you know that I'm sorry for the way I spoke to you before.~
++ ~Is that all you have to say to me? Just forgive and forget?~ + FHLAndApology_faf
++ ~I'm not interested in your apologies, Andrei. I'm not your babysitter.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAndApology_problem
++ ~I'd prefer you not doing it again than you apologising to me.~ + FHLAndApology_rather
++ ~Thank you, Andrei. It's good to know that you care about my feelings.~ + FHLAndApology_thank
++ ~I don't blame you for shouting, considering everything. Don't worry about it.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAndApology_blame
END

//Andrei interjections

INTERJECT_COPY_TRANS AERIE 32 FHLAndAer2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I've seen magic being done before, but never anything on this scale...I wonder how he did it?~
END

INTERJECT_COPY_TRANS ARAN 49 FHLAndAran
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Well, it was a high price, so it had better be!~
END

INTERJECT_COPY_TRANS ARAN 77 FHLAndAran2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What! This is ridiculous - why does nothing ever just go smoothly around here?~
END

INTERJECT_COPY_TRANS IMOEN2J 26 FHLAndArIm
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Don't worry, Imoen, we're here to get it back for you.~
END

INTERJECT_COPY_TRANS ARNBOY01 0 FHLAndArnboy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~...oh...this is so awful...~
END

INTERJECT_COPY_TRANS BARONP 42 FHLAndPloyer
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~You're not going to humiliate her any more, you monster!~
END

INTERJECT_COPY_TRANS BEELOO 2 FHLAndBeeloo
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Uh...I swear, this is far too confusing for me.~
END

APPEND BFISHW1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("fhlbfishw","GLOBAL",0)~ THEN BEGIN FHLAndFishw
SAY ~You there, boy! Get a haircut and do somethin' useful with yer life.~
IF ~~ THEN EXTERN FHLANDJ FHLAFishW
END
END

APPEND FHLANDJ
IF ~~ FHLAFishW
SAY ~I am doing something useful, ma'am, but-- Oh, never mind, you're obviously not listening.~
IF ~~ THEN DO ~SetGlobal("fhlbfishw","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS BOOTER 3 FHLABooter
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I know I prefer not to lose control of myself, but for this man I could make an exception. <CHARNAME>, let's get away from here.~
END

INTERJECT_COPY_TRANS BORINALL 13 FHLABorinall
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~The gods tend to take a very...active role in things, don't they?~
END

APPEND BPROST1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("fhlaprost1","GLOBAL",0)~ THEN BEGIN FHLAprost1
SAY ~Mmm, you're handsome enough. How about it, boy? Make your first time a good 'un...~
IF ~~ THEN EXTERN FHLANDJ FHLAprost1
END

IF ~~ FHLAprost12
SAY ~Once ye've made up yer mind come and see me, eh?~
IF ~~ THEN DO ~SetGlobal("fhlaprost1","GLOBAL",1)~
EXIT
END
END

APPEND FHLANDJ
IF ~~ FHLAprost1
SAY ~Um, thank you, but, that is...I...~
IF ~~ THEN EXTERN BPROST1 FHLAprost12
END
END

APPEND BRAT1
IF ~See("FHLAND")
InParty("FHLAND")
InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLABrat1","GLOBAL",0)~ THEN BEGIN FHLABrat1
SAY ~Oi, you! Why's your hair all white? Are you old?~
IF ~~ THEN EXTERN FHLANDJ FHLABrat1
END
END

APPEND FHLANDJ
IF ~~ FHLABrat1
SAY ~No, I was born like it. My mother said it was a birthmark of some kind.~
IF ~~ THEN DO ~SetGlobal("FHLABrat1","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS ANOMENJ 150 FHLAAno2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Don't be ridiculous, of course it's clear. That man murdered your sister! Are you just going to let that slide?~
END

INTERJECT_COPY_TRANS2 ANOMENJ 176 FHLAByl
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Hmmph. I think this Saerk man's getting off far too easily in this.~
END

INTERJECT_COPY_TRANS C6BODHI 1 FHLABod1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Just get on with this, <CHARNAME>, she's not going to listen to anything you say.~
END

INTERJECT_COPY_TRANS CEBEGGAR 6 FHLACeBegg
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~There aren't any reasons good enough to abandon your loved one, and you know it.~
END

INTERJECT_COPY_TRANS CERNDJ 38 FHLCeLife
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Maybe if you'd put all that righteous energy into looking after your wife, this wouldn't have happened!~
END

INTERJECT_COPY_TRANS2 DELCIA 16 FHLADelcia
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What an unpleasant woman. I hope not all the nobility of Amn are like this.~
END

APPEND DFTOWN2
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHADFTown2","GLOBAL",0)~ THEN BEGIN FHLADftown
SAY ~Haven't I seen ye before, somewhere?~
IF ~~ THEN EXTERN FHLANDJ FHLDftown
END
END

APPEND FHLANDJ
IF ~~ FHLDftown
SAY ~I doubt it. I haven't been in the city for very long.~
IF ~~ THEN DO ~SetGlobal("FHADFTown2","GLOBAL",1)~
EXIT
END
END

APPEND DHALF1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
PartyGoldGT(9)
Global("FHLDHalf1","GLOBAL",0)~ THEN BEGIN FHLDHalf1
SAY ~(sniff) If only I could get back to my little home...~
IF ~~ THEN EXTERN FHLANDJ FHLDHalf
END
END

APPEND FHLANDJ
IF ~~ FHLDHalf
SAY ~Oh, that's awful! Here's some gold to help you on your way.~
IF ~~ THEN DO ~TakePartyGold(10)
SetGlobal("FHLDHalf1","GLOBAL",1)~
EXIT
END
END

APPEND DRUFF1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLADruff","GLOBAL",0)~ THEN BEGIN FHLDruff
SAY ~Hah! Ye look like yer fresh out of school, boy! Best go back home to yer mother!~
IF ~~ THEN EXTERN FHLANDJ FHLADruff
END
END

APPEND FHLANDJ
IF ~~ FHLADruff
SAY ~Actually, I wish I was back home sometimes. Don't make fun of things you know nothing about.~
IF ~~ THEN DO ~SetGlobal("FHLADruff","GLOBAL",1)~
EXIT
END
END

APPEND DSAILOR1
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLADSailor1","GLOBAL",0)~ THEN BEGIN FHLDSailor
SAY ~I swear, sailing be the best thing...there's nothin' like the wind in yer hair...~
IF ~~ THEN EXTERN FHLANDJ FHLADSailor
END
END

APPEND FHLANDJ
IF ~~ FHLADSailor
SAY ~It sounds amazing. Maybe one day I'll be able to travel all over the world...~
IF ~~ THEN DO ~SetGlobal("FHLADSailor","GLOBAL",1)~
EXIT
END
END

APPEND FFCUST08
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLFFCust08","GLOBAL",0)~ THEN BEGIN FHLFFCust08
SAY ~Hey, you, monk-boy! I can take you, any day! Haiii-yaa!~
IF ~~ THEN EXTERN FHLANDJ FHLAFFCust08
END
END

APPEND FHLANDJ
IF ~~ FHLAFFCust08
SAY ~Aaah! Stop it - stop it!~
IF ~~ THEN DO ~SetGlobal("FHLFFCust08","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 FHLAFir1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I'd definitely like to see some more places in the area. I never realised Amn was so big!~
END

INTERJECT_COPY_TRANS2 FIRKRA02 21 FHLAFir2
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I think...that's a good idea, <CHARNAME>. Let's get out of here as soon as we can.~
END

APPEND GCHILD01
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLGChild01","GLOBAL",0)~ THEN BEGIN FHLGChild01
SAY ~I bet you all live in nasty little peasant-houses. That's what my mother says.~
IF ~~ THEN EXTERN FHLANDJ FHLAGChild01
END
END

APPEND FHLANDJ
IF ~~ FHLAGChild01
SAY ~My home's better than any of this, and I'm sure I appreciate it much more than you do.~
IF ~~ THEN DO ~SetGlobal("FHLGChild01","GLOBAL",1)~
EXIT
END
END

APPEND GFTOWN01
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLGFTown01","GLOBAL",0)~ THEN BEGIN FHLGFTown01
SAY ~What an...interesting way to dress. I'm sure that robe is considered very much in style...fifty years ago.~
IF ~~ THEN EXTERN FHLANDJ FHLAGFTown01
END
END

APPEND FHLANDJ
IF ~~ FHLAGFTown01
SAY ~We don't have the time to keep up with things like fashion, ma'am - if you don't mind me saying so.~
IF ~~ THEN DO ~SetGlobal("FHLGFTown01","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS HELLJON 7 FHLAIren1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~This ends here, Irenicus! You're going to die here in Hell and then we'll be free!~
END

INTERJECT_COPY_TRANS2 MARIA 5 FHLAMaria
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I'm not surprised she's seeing someone else if he's been wandering around away from home the whole time. He's been neglecting them!~
END

APPEND MURTLEN
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLMurtlen","GLOBAL",0)~ THEN BEGIN FHLMurtlen
SAY ~You! Have you ever been cheated, here?  I bet ye have!~
IF ~~ THEN EXTERN FHLANDJ FHLAMurtlen
END
END

APPEND FHLANDJ
IF ~~ FHLAMurtlen
SAY ~I'm sure my cousin would have warned me if he thought anyone was trying it. He has a sense for things like that.~
IF ~~ THEN DO ~SetGlobal("FHLMurtlen","GLOBAL",1)~
EXIT
END
END

APPEND PIRCOR01
IF ~!NumberOfTimesTalkedTo(0)
OR(2)
Name("FHLAND",LastTalkedToBy)
Name("FHLSEB",LastTalkedToBy)~ THEN BEGIN FHLPirCor01
SAY ~Well met! Are you looking for bit of fun? You seem to be a REAL man...~
++ ~In fact, I am looking for a girl named Claire. I believe she's in your line of business.~ EXTERN PIRCOR01 5
++ ~Why don't you tell me how I might get into your Guildhouse? I have business to discuss with Lady Galvena.~ EXTERN PIRCOR01 7
++ ~Excuse me. I must be going.~ EXTERN PIRCOR01 13
END
END

APPEND MADAM
IF WEIGHT #-1
~OR(2)
Name("FHLSEB",LastTalkedToBy)
Name("FHLAND",LastTalkedToBy)~ THEN BEGIN FHLMadam
SAY ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~
++ ~No, thank you.  I am not interested in such activities at the moment.~ EXTERN MADAM 2
++ ~Um... perhaps I had best be on my way.  Please excuse me.~ EXTERN MADAM 1
END
END

INTERJECT_COPY_TRANS PLAYER1 3 FHLADizzy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Are you all right? I could get you something to lean on, if you need it.~
END

INTERJECT_COPY_TRANS PLAYER1 5 FHLASlay1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What in the hells was that?!~
END

INTERJECT_COPY_TRANS PLAYER1 15 FHLAAsylum
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Come on, <CHARNAME>, we have to free the inmates before they do something!~
END

INTERJECT_COPY_TRANS PLAYER1 16 FHLAIrenDead
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Excellent! I think we finally managed it!~
END

INTERJECT_COPY_TRANS PLAYER1 25 FHLAHell
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What...what happened, back there? It was all dark, and then, then after that I don't remember...~
END

INTERJECT_COPY_TRANS SAHKNG01 30 FHLASahkng
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Oh dear...be careful with this one, <CHARNAME>, he seems rather unpredictable.~
END

INTERJECT_COPY_TRANS SAHPR4 4 FHLASahpr4
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~It wouldn't be good for them all to die, I know. But still, I can't help thinking that they could cause trouble for us in the future.~
END

INTERJECT_COPY_TRANS SEVBAR01 19 FHLASevBar
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Ha, Sebastian always said that mangling the verse to make it rhyme was one of the worst things to do.~
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("FHLAND",LastTalkedToBy)~
THEN EXTERN TRGYP02 FHLAGypsy
END

APPEND TRGYP02
IF ~~ FHLAGypsy
SAY ~Loyalty is your friend, young one, but it is a sword with a double edge: your eyes must be opened if you are to pass the hardest tests of all.~
IF ~~ THEN EXTERN FHLANDJ FHLAGypsy2
END
END

APPEND FHLANDJ
IF ~~ FHLAGypsy2
SAY ~Sorry, I don't really understand. But thank you - I'm sure I will, someday.~
IF ~~ EXIT
END
END

INTERJECT_COPY_TRANS IMOEN2J 35 FHLUDSilver
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~Yes, I've never seen something as lovely as you...~
END

APPEND URCHIN1
IF ~InParty("FHLAND")
See("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLUrch1","GLOBAL",0)~ THEN BEGIN FHLUrch1
SAY ~You talk funny! Why'd you talk funny?~
IF ~~ THEN EXTERN FHLANDJ FHLAUrch1
END
END

APPEND FHLANDJ
IF ~~ FHLAUrch1
SAY ~Do I? I didn't realise. I suppose it's because of not being in Athkatla for long.~
IF ~~ THEN DO ~SetGlobal("FHLUrch1","GLOBAL",1)~ EXIT
END
END

INTERJECT_COPY_TRANS VALYGAR 43 FHLAValy
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I think we should listen to his side of things. He doesn't seem like the sort of person who'd lie to us.~
END

INTERJECT_COPY_TRANS VICG1 2 FHLVicG1
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What kind of creature is she? They're not going to burn her just because of what she is, are they? That's terrible!~
END

INTERJECT_COPY_TRANS VICG1 4 FHLVicG12
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~No! <CHARNAME>, she hasn't done anything - you can't let this happen!~
END

INTERJECT_COPY_TRANS VICONI 2 FHLAVic
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I think we should look after her. It's not fair to turn her loose and risk her getting captured again.~
END


//Tree of life dialogue
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("FHLAND")
!Dead("FHLAND")
Global("FHLATreeoflife","GLOBAL",0)~ THEN DO
~SetGlobal("FHLATreeoflife","GLOBAL",1)~ GOTO FHLATreeofLife
END

APPEND PLAYER1
IF ~~ FHLATreeofLife
SAY ~Andrei: still struggling with his own demons, he has gone through a great deal while in your service. Is he ready for what lies ahead?~
++ ~Andrei, you don't have to continue past these stairs. This isn't your fight.~ EXTERN FHLANDJ FHLATree_nofight
++ ~You know how dangerous Irenicus is, Andrei. You don't have to endanger yourself.~ EXTERN FHLANDJ FHLATree_danger
++ ~Andrei, are you ready to face this? I need to know that you'll be willing to do all you can.~ EXTERN FHLANDJ FHLATree_ready
END
END

APPEND FHLANDJ
IF ~~ FHLATree_nofight
SAY ~<CHARNAME>, I don't mean to be rude but it's my decision to make. I know what's ahead, and I know that I'm ready to face it.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLATree_danger
SAY ~Yes, I do know how dangerous he is. And that's why I'm scared, but I also know that I'm ready to face this.~
COPY_TRANS PLAYER1 33
END

IF ~~ FHLATree_ready
SAY ~Absolutely, <CHARNAME>. You say the word and I'll follow you. I know that I'm ready.~
COPY_TRANS PLAYER1 33
END
END

APPEND POSTUL3
IF ~See("FHLAND")
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLPostul3","GLOBAL",0)~ THEN BEGIN FHLPostul3
SAY ~Oh dear, oh dear, the Talassans keep on telling us that a storm is coming. We haven't been paying them enough!~
IF ~~ THEN EXTERN FHLANDJ FHLAPostul3
END
END

APPEND FHLANDJ
IF ~~ FHLAPostul3
SAY ~I don't see why Talos would care how much money you give the priests...but maybe that's just me.~
IF ~~ THEN DO ~SetGlobal("FHLPostul3","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS2 RENFELD 6 FHLARen
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~I hate to say it, but maybe there was a reason why those men were attacking him. What if more come after us?~
END

INTERJECT_COPY_TRANS RESUNA 9 FHLASuna
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~What? Hasn't she ever heard of loyalty? This isn't right!~
END

INTERJECT_COPY_TRANS2 RIFTG03 26 FHLARiftAv
== FHLANDJ
IF ~InParty("FHLAND") !StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN
~That's...I just...I don't think I've...that's amazing.~
END

//Transformation chains

CHAIN FHLANDJ FHLAndTrans_canthelp
~That's nice of you to say, but I don't know how true it really is.~
== FHLSEBJ
~Whether he really can help it remains to be seen. So, <CHARNAME>, you know all our secrets now. I hope you're not thinking about blackmailing us - at least, not until we can do the same back to you!~
== FHLANDJ
~Sebastian? I'm--~
== FHLSEBJ
~Not now, sweet cousin. Let's leave it all for now, shall we? This talk is boring.~
EXIT

CHAIN FHLANDJ FHLAndTrans_trust
~You can trust me when I'm in control of myself, but if I don't trust myself when I'm...like that, I don't see how anyone else can.~
== FHLSEBJ
~You can depend on him to be undependable!~
END
++ ~I suppose that's the best I'm going to get.~ EXTERN FHLSEBJ FHLAndTrans_enough
++ ~That's not good enough for me.~ + FHLAndTrans_notenough

CHAIN FHLANDJ FHLST3_brooding
~You should see him when he has a bad hair day.~
== BFHLSEB
~I can act, and I act well. So there!~
=
~Now, what rhymes with Sarevok...~
DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT


//Lyel #2

CHAIN FHLANDJ FHLLyel2_upleave
~I don't think we can keep Xavier waiting. You remember what he was like, before.~
== FHLLYEL
~Too right. So, say your goodbyes. I'm sorry about this, but it's what I have to do.~
== FHLSEBJ
~Like hell it is!~
== FHLLYEL
~Now, don't--~
== FHLSEBJ
~Just shut up. Shut up and crawl back to your stupid master, lapdog!~
== FHLANDJ
~Sebastian!~
== FHLLYEL
~That - wasn't funny. I don't--~
== FHLSEBJ
~Good! I'm glad! I never liked you, anyway. You sicken me and we're never going back to that bastard. Do you hear me? I will not lick his bootheels any more! I won't stand for it!~
=
~Now go away and stay away!~
END
++ ~Sebastian!~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~(Stay silent.)~ EXTERN FHLLYEL FHLLyel2_silent
++ ~That was a very disturbing outburst...~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~Well, Lyel, you heard him. Go back to Xavier.~ EXTERN FHLLYEL FHLLyel2_alone

//Post-Lyel

CHAIN FHLANDJ FHLPL_doing
~No, he doesn't! He never does! He just - drifts around and pretends to be doing useful things and expects everything in return! He doesn't--~
== FHLSEBJ
~Really, Andrei, I admit I may be lazy, but you know I'm not lying right now. Won't you give me a chance?~
END
++ ~Can we get this over with? I have things to do.~ EXTERN FHLSEBJ FHLPL_do
++ ~Come on, let's go. You need to get used to the idea, that's all.~ + FHLPL_idea
++ ~(Stay silent.)~ EXTERN FHLSEBJ FHLPL_silent
++ ~I'm not surprised that he's worried, Sebastian.~ EXTERN FHLSEBJ FHLPL_surprise

CHAIN FHLANDJ FHLPL_idea
~I can't get used to this.~
== FHLSEBJ
~Of course you can. Come on.~
== FHLANDJ
~This isn't over, Sebastian!~
== FHLSEBJ
~For now it is, cousin. Cool off for a bit.~
EXIT

CHAIN FHLANDJ FHLPL_sorry
~Don't bother apologising, he's not worth it.~
== FHLSEBJ
~Ouch! Andrei, go and cool off.~
EXIT

//Genevieve talks

CHAIN FHLANDJ FHLGen_explain
~Yes, Sebastian, what are you planning - without the family's permission?~
== FHLSEBJ
~Genevieve is an old friend of mine. She's rather efficient at getting people what they need, and a while back I told her that I needed to find a cure.~
== FHLANDJ
~You mean you've told even more people about us?~
== FHLSEBJ
~Hush, you. Where was I? Genevieve has made the acquaintance of some old wizard called Durydil.~
== FHLGEN
~We're business partners. It works well!~
== FHLSEBJ
~I hired them to investigate our curse, so if she says we need to get that book I say there's no time to lose.~
END
++ ~Wait - I have enough to do without this. Can't you get the book, Genevieve?~ EXTERN FHLGEN FHLGen_gene
++ ~What use is an old book for a cure?~ EXTERN FHLGEN FHLGen_use
++ ~If you insist. But keep me informed on what's going on.~ EXTERN FHLSEBJ FHLGen_informed
++ ~Right. Where's this historian?~ EXTERN FHLSEBJ FHLGen_agree

CHAIN FHLANDJ FHLGen_money
~You shouldn't give him your charity. Let him figure out his own messes.~
== FHLGEN
~...Right. Anyway, thank you for your contribution! I'll contact you when the time is right.~
== FHLSEBJ
~When you have the cure, you mean.~
== FHLGEN
~Or as near as possible. Take care!~
DO ~SetGlobal("FHLPayGen","GLOBAL",1)
TakePartyGold(800)
SetGlobalTimer("FHLCureCurse","GLOBAL",TWO_DAYS)~
EXIT

//ESTM

CHAIN FHLANDJ FHLESTM_breathe
~But I don't--~
== FHLSEBJ
~Pull yourself together, for heaven's sake!~
== FHLANDJ
~Sebastian, it must be wrong, it has to be wrong!~
== FHLSEBJ
~Stop - stop! I am going to do what has to be done--~
== FHLANDJ
~You can't! You mustn't!~
== FHLSEBJ
~We're going there, at least - straight to the Main House! Now be quiet! <CHARNAME>, are you coming?~
END
++ ~I'm with you. We all are.~ EXTERN FHLSEBJ FHLESTM_impatient
++ ~I can't sit by while you do whatever you're going to do, Sebastian.~ EXTERN FHLSEBJ FHLESTM_let
++ ~I'm in the middle of other things. Can't this wait?~ EXTERN FHLSEBJ FHLESTM_wait

CHAIN FHLANDJ FHLESTM_worst
~I won't let you do this, Sebastian, I mean it!~
== FHLSEBJ
~Get out of our way. I don't want to hurt you, but I'll go through you if I-- Alexandra, damn it, help me - you know this is what needs to be done!~
== FHLAL
~Don't bring me into your foolishness. I've never been on your side, and you needn't pretend I am when it suits you.~
== FHLSEBJ
~You bitch! I knew you wouldn't--~
== FHLLYEL
~Andrei, listen to me. Get the children and leave. This fight isn't for you.~
== FHLANDJ
~I'm staying. I have to defend the family. You go.~
== FHLSEBJ
~Andrei, you know this needs to happen!~
== FHLANDJ
~Sebastian, if you try and get to Xavier I'll stop you, you know I will!~
== FHLXAV
~Hear that? Turn around. Walk away now. I'll let you live with what you've become, willing to kill those of your own blood!~
END
++ ~This isn't right, Sebastian. We can't kill your relatives - we must leave.~ EXTERN FHLSEBJ FHLESTM_worstchange
++ ~That's for cowards, Sebastian - let's destroy this curse!~ EXTERN FHLSEBJ FHLESTM_dead

CHAIN FHLANDJ FHLESTM_andrei
~I won't do it! He's Xavier, Sebastian, think about what you're doing.~
== FHLSEBJ
~I have, and all there is to think about is all the reasons that Xavier should die!~
=
~Don't you want to be free?~
== FHLANDJ
~It's nothing compared to our family. You know that.~
END
++ ~He's right, Sebastian. Don't take this path; you'll regret it for a long time.~ EXTERN FHLSEBJ FHLESTM_live
++ ~Andrei may not want freedom, but you know you do. I say you should go for it.~ + FHLESTM_worst

//LDP

CHAIN FHLANDJ FHLLDP_done
~I know - and there's nothing we can do.~
== FHLSEBJ
~Things are better this way.~
== FHLANDJ
~I can't help but wonder. If things had been...~
== FHLSEBJ
~I'd rather be cast out forever than cosy up to that madman for one more second.~
END
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY ~Sebastian, you'd say things were better whatever had happened.~ EXTERN FHLSEBJ FHLLDP_wis
++ ~Hear, hear!~ + FHLLDP_hear
++ ~Sometimes knowledge isn't worth the price of knowing it.~ + FHLLDP_fights
++ ~It's not worth dwelling on. It might be better or worse, but that doesn't matter.~ + FHLLDP_fights

CHAIN FHLANDJ FHLLDP_fights
~Yes. Yes, you're right.~
=
~Sebastian, there - isn't much I can say. But if I'm going to be cut off from the family, there's no one I'd rather it was with.~
== FHLSEBJ
~Me too. Well. Maybe Lyel, but he isn't here, and you are, so.~
=
~We'll stick together, Andrei, don't you worry.~
== FHLANDJ
~Thank you. I...um, I'd like to get moving now, if that's all right with you.~
END
++ ~Of course. Nothing like adventuring to take your mind off tragedy!~ EXTERN FHLSEBJ FHLLDP_letsgo
++ ~Are you sure you wouldn't prefer a couple of days' rest?~ + FHLLDP_rest

CHAIN FHLANDJ FHLLDP_hear
~I don't-- Oh, Sebastian, there isn't much I can say. But if I'm going to be cut off from the family, there's no one I'd rather it was with.~
== FHLSEBJ
~Me too. Well. Maybe Lyel, but he isn't here, and you are, so.~
=
~We'll stick together, Andrei, don't you worry.~
== FHLANDJ
~Thank you. I...um, I'd like to get moving now, if that's all right with you.~
END
++ ~Of course. Nothing like adventuring to take your mind off tragedy!~ EXTERN FHLSEBJ FHLLDP_letsgo
++ ~Are you sure you wouldn't prefer a couple of days' rest?~ + FHLLDP_rest

CHAIN FHLANDJ FHLLDP_rest
~I don't think so. I don't want to, to think about things.~
== FHLSEBJ
~Come on, anyway. I don't like feeling antsy.~
DO ~SetGlobal("FHLLDP","GLOBAL",2)
RealSetGlobalTimer("FHLLuxTalkTime","GLOBAL",900)~
EXIT


//Seb/And talks//
CHAIN IF ~Global("FHLAndSebFirstTalk","GLOBAL",1)~ THEN FHLANDJ FHLAndSebFirstTalk
~Sebastian, I have to talk to you. Now.~ [FHLAAD]
DO ~SetGlobal("FHLAndSebFirstTalk","GLOBAL",2)~
== FHLSEBJ
~Oh dear, you've got that look in your eye! What's up?~ [FHLSAD]
== FHLANDJ
~You told <CHARNAME> about the curse, you idiot! What were you thinking? Why didn't we just leave <PRO_HIMHER> alone like I wanted to?~
== FHLSEBJ
~Just trust in me, and all will be well. You're having fun, aren't you? And your diplomatic skills haven't been tested with any brigands, lately.~
== FHLANDJ
~Don't patronise me, dammit!~
== FHLSEBJ
~Ah. Oh dear.~
== FHLANDJ
~What, things aren't going your precious way? Sweet old Sebastian, never taking responsibility for the messes he causes. Because that's not how you want it, is it!~
== FHLSEBJ
~<CHARNAME>, I should explain. Andrei--~
== FHLANDJ
~I'll make you sorry, you bastard!~
== FHLSEBJ
~Stop it, Andrei. Now. You ought to be ashamed of yourself.~
== FHLANDJ
~...~
=
~I...Sebastian, I...did it again?~
== FHLSEBJ
~Evidently. <CHARNAME>, Andrei has this problem. You might have seen it before when we were fighting, but it's never been this bad. It's nothing to do with the curse. He-- Andrei, you should say. Go on.~
== FHLANDJ
~I lose control sometimes. Ever since I was young if I get too aggravated I go into this rage. I do and say things...that I can't remember exactly, but I know they're things that aren't fair. I...always feel so tired after them too.~
=
~I'm sorry that it happened, <CHARNAME>. I do my best to keep myself under control but I obviously failed that time.~
END
++ ~If you do everything you can to stop it, then it's not like you can help it.~ EXTERN FHLANDJ FHLAndTrans_canthelp
++ ~I hope you won't start behaving like that to me.~ EXTERN FHLANDJ FHLAndTrans_getit
++ ~If you lose control like that at a critical moment, I don't know what will happen. Can I trust you?~ EXTERN FHLANDJ FHLAndTrans_trust
++ ~To be honest, I'd rather you didn't travel with us.~ EXTERN FHLSEBJ FHLAndTrans_getout
IF ~GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~I know what it's like to lose control, Andrei. It's not a bad thing that you do.~ EXTERN FHLANDJ FHLAndTrans_canthelp
IF ~GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~Look, I have enough problems of my own with losing control. I don't need yours. I don't want you with me.~ EXTERN FHLSEBJ FHLAndTrans_getout

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLAndSebTalk","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0)~ THEN FHLANDJ FHLAndSeb1
~Sebastian, I'm sorry.~ [FHLAS1]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",2) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
~For what?~ [FHLSA1]
== FHLANDJ
~I shouted at you, and--~
== FHLSEBJ
~No, Andrei. By saying 'for what', I am denoting that I have contrived to forget about the whole thing. So let's start again. For what, dear cousin?~
== FHLANDJ
~Nothing. How's that?~
== FHLSEBJ
~You're learning. Now go forth and learn that saying sorry doesn't make anything better, and go out into the big wide world and--~
== FHLANDJ
~We are in the big wide world. And don't preach, it doesn't suit you.~
== FHLSEBJ
~There. That's better!~
EXIT

//banter 3
CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",3)~ THEN FHLANDJ FHLAndSeb3
~Sebastian, should we really be telling people about--~ [FHLAS2]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",4) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
~No time for that now. I have to write a script!~ [FHLSA4]
== FHLANDJ
~Oh, you're not actually doing that, are you? That's pushing the realms of the ridiculous...even for you.~
== FHLSEBJ
~Oh, don't be so heartless! I'm just not in the mood for writing.~
== FHLANDJ
~But I've read some of your manuscripts and they're really good!~
== FHLSEBJ
~Yes, there is that. But there's so much else I have to do--~
== FHLANDJ
~Like what?~
== FHLSEBJ
~Oh, you know. Things. Andrei?~
== FHLANDJ
~What?~
== FHLSEBJ
~My dear, sweet cousin?~
== FHLANDJ
~Oh, no...~
== FHLSEBJ
~My beautiful and lovely friend, whom I helped raise?~
== FHLANDJ
~No. Completely and without reservation, no.~
== FHLSEBJ
~Please write it for me?~
== FHLANDJ
~Didn't you hear what I just said?~
== FHLSEBJ
~Please?~
== FHLANDJ
~No!~
== FHLSEBJ
~You hate me!~
== FHLANDJ
~Go on, get writing. You got yourself into this.~
== FHLSEBJ
~He hates me!~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",4)~ THEN FHLANDJ FHLAndSeb4
~Sebastian, why can't we go to visit Xavier and the others?~ [FHLAS3]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",5) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
~This isn't a topic that's up for discussion.~ [FHLSA5]
== FHLANDJ
~Sebastian!~
== FHLSEBJ
~I say we don't go back.~
== FHLANDJ
~But why not?~
== FHLSEBJ
~We've only just got free of the place! Why are you so eager--~
== FHLANDJ
~They're family!~
== FHLSEBJ
~Of course, of course. Why did I even bother asking?~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",6)~ THEN FHLANDJ FHLAndSeb7
~Sebastian, I overheard that conversation you had about the history of the curse.~ [FHLAS4]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",7) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
~Egads! Whatever shall I do?~ [FHLSA8]
== FHLANDJ
~Stop that. I just wanted to know...where did you find all that out about the curse? I was told we didn't know anything about it.~
== FHLSEBJ
~As Xavier's confidant, I got to hear some choicer titbits.~
== FHLANDJ
~But why weren't all of us told?~
== FHLSEBJ
~Beats me. I'm sure you'll think of some reason: you always do.~
== FHLANDJ
~Oh, Sebastian, what is wrong? I can tell there's something on your mind!~
== FHLSEBJ
~There's never anything in my mind, Andrei, don't you know that by now?~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",8)~ THEN FHLANDJ FHLAndSeb9
~Sebastian, I--~ [FHLAS5]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",9) SetGlobal("FHLAndSebTalkStart","GLOBAL",0) SetGlobalTimer("FHLKavArrive","GLOBAL",ONE_DAY)~
== FHLSEBJ
~Have you just realised that your calling in life is to become a moose tamer? Because I think bears would be more your speciality, you know?~ [FHLSA10]
== FHLANDJ
~No.  I was going to apologise. Even after that spectacle with <CHARNAME> and all that's happened, I was going to apologise and forgive you. So.~
=
~I'm sorry. I said those awful things to you, and I wasn't even dark.~
== FHLSEBJ
~You're going to deign to forgive me? I, who have your best interests at heart?~
== FHLANDJ
~I didn't mean it like that!~
== FHLSEBJ
~I'm sure you did, you annoying little cry-baby.~
== FHLANDJ
~...you once told me that name-calling was for idiots who couldn't think of anything else.~
== FHLSEBJ
~I said go away, you stupid boy!~
EXIT

CHAIN IF ~Global("FHLAndSebTalkStart","GLOBAL",1) Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",9)~ THEN FHLANDJ FHLAndSeb10
~Sebastian, I don't care if you accept it. I want to apologise.~ [FHLAS6]
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",10) SetGlobal("FHLAndSebTalkStart","GLOBAL",0)~
== FHLSEBJ
~Hmm. You're a very annoying child, Andrei.~ [FHLSA11]
== FHLANDJ
~I learnt it from the best.~
== FHLSEBJ
~All right, all right. But I wouldn't apologise to you, even if I wanted to.~
== FHLANDJ
~Not even if I cried?~
== FHLSEBJ
~Especially if you cried.~
== FHLANDJ
~Not even if I...bought you something nice?~
== FHLSEBJ
~With my money, I suppose.~
== FHLANDJ
~What about if I told you that your apology meant nothing to me at all?~
== FHLSEBJ
~...maybe then I'd apologise, yes.~
== FHLANDJ
~Thank you.~
EXIT

CHAIN IF ~Global("FHLLuxTalk","GLOBAL",0) Global("FHLAndSebTalk","GLOBAL",10)~ THEN FHLANDJ FHLAndSeb12
~Sebastian, I've got something to--~
DO ~SetGlobal("FHLAndSebTalk","GLOBAL",11)~
== FHLSEBJ
~I know what you're going to say.~ [FHLSA12]
== FHLANDJ
~You do?~
== FHLSEBJ
~Yes. I've been thinking about it.~
=
~The truth isn't lost to them. Samuel, Alexandra and Lyel were there, and they heard it.~
== FHLANDJ
~Sebastian--~
== FHLSEBJ
~No, no, wait. I know Samuel's a lost cause: he'll never even think a word against Xavier. But Alexandra doesn't like it there, and Lyel's a good - he--~
== FHLANDJ
~I know, but--~
== FHLSEBJ
~He knows what we know now, and I'm sure he'll do something. He will.~
== FHLANDJ
~For once in your life, be quiet and listen to me!~
=
~I have a present for you. If you're too busy, I'm sure I can find some urchin to give it to, instead.~
== FHLSEBJ
~...a present? Ooh!~
== FHLANDJ
~I thought you'd like a replacement for the one he took.~
DO ~GiveItemCreate("FHLBK2","FHLSEB",0,0,0)~
== FHLSEBJ
~Andrei, my dear cousin.~
== FHLANDJ
~Do you like it?~
== FHLSEBJ
~The cover is yellow. You know how much I hate yellow.~
== FHLANDJ
~I can always take it back...~
== FHLSEBJ
~No, it's mine now!~
EXIT

//Player-initiated dialogue

//Transformed dialogue

APPEND FHLANDJ

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("FHLBearChange","LOCALS",1)
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID_bear
SAY ~(Andrei looks up at you rather reproachfully as you approach him.)~
+ ~RandomNum(4,1)~ + ~Are you all right there, Andrei?~ + FHLANDPID_bearok1
+ ~RandomNum(4,2)~ + ~Are you all right there, Andrei?~ + FHLANDPID_bearok2
+ ~RandomNum(4,3)~ + ~Are you all right there, Andrei?~ + FHLANDPID_bearok3
+ ~RandomNum(4,4)~ + ~Are you all right there, Andrei?~ + FHLANDPID_bearok4
+ ~RandomNum(4,1)~ + ~(Poke Andrei.)~ + FHLANDPID_bearpoke1
+ ~RandomNum(4,2)~ + ~(Poke Andrei.)~ + FHLANDPID_bearpoke2
+ ~RandomNum(4,3)~ + ~(Poke Andrei.)~ + FHLANDPID_bearpoke3
+ ~RandomNum(4,4)~ + ~(Poke Andrei.)~ + FHLANDPID_bearpoke4
++ ~How come you can speak to me while you're like that?~ + FHLANDPID_bearspeak
++ ~That form rather suits you, I think.~ + FHLANDPID_bearsuits
++ ~(Leave Andrei alone.)~ EXIT
END

IF ~~ FHLANDPID_bearok1
SAY ~I'm fine - just need a second to catch my breath.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok2
SAY ~I'd be better if you gave me some healing...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok3
SAY ~(Andrei is breathing quite heavily through his snout and it looks as though he is holding himself from giving you a nasty nip.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearok4
SAY ~I...will be. It doesn't tend to last too long...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke1
SAY ~(sigh) I'm transformed, <CHARNAME>, not stupid...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke2
SAY ~Get off me! I'm not feeling my best right now!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke3
SAY ~(Andrei shakes his head slowly and moves away from you.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearpoke4
SAY ~(Andrei snaps half-heartedly at your hand, but you think you hear him chuckle as you turn away.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearspeak
SAY ~It's just the way it works - it's not like werewolves and people like that. We still keep our minds, if you see what I mean.~
=
~*cough* Still, I'd prefer to get some healing - I'm not feeling too good at the moment...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_bearsuits
SAY ~*cough* Heh, thank you, I suppose.~
IF ~~ EXIT
END

//Ust Natha PID

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
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
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID_ustnath
SAY ~(Andrei frowns and gives you a little shake of his head; he does not seem at ease in the Drow city, and clearly does not want to risk your disguise.)~
IF ~~ EXIT
END

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
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
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)
!Global("FHLTellCurse","GLOBAL",3)
!Global("FHLLDP","GLOBAL",1)
!Global("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLANDPID_estate
SAY ~(Andrei smiles as you approach; he is obviously pleased to be back in his home.)~
IF ~~ THEN + FHLANDPID
END

IF
~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
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
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)
OR(2)
Global("FHLTellCurse","GLOBAL",3)
Global("FHLLDP","GLOBAL",1)~ THEN BEGIN FHLANDPID_estm
SAY ~Leave me alone! I'll talk to you when we're out of here, all right? I can't have my mind on so many things at once!~
IF ~~ EXIT
END

IF ~InParty("FHLAND")
IsGabber(Player1)
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!ActuallyInCombat()
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
!Global("FHLAndApology","GLOBAL",1)
!Global("FHLAndSaysFriends","GLOBAL",1)
!Global("FHLSebDead","GLOBAL",1)
GlobalGT("FHLAndTalk","GLOBAL",0)~ THEN BEGIN FHLANDPID
SAY ~Is there something you need?~ [FHLAF1]
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLLDP","GLOBAL",0)~ THEN REPLY ~Can I ask you about your family?~ + FHLANDPID_ask
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) GlobalGT("FHLLDP","GLOBAL",0)~ THEN REPLY ~Can I ask you about your family?~ + FHLANDPID_ask2
IF ~GlobalLT("FHLAndLike","GLOBAL",-5)~ THEN REPLY ~Can I ask you about your family?~ + FHLANDPID_askdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY ~(Give Andrei a hug.)~ + FHLANDPID_hug1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY ~(Give Andrei a hug.)~ + FHLANDPID_hug2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY ~(Give Andrei a hug.)~ + FHLANDPID_hug3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY ~(Give Andrei a hug.)~ + FHLANDPID_hug4
IF ~GlobalLT("FHLAndLike","GLOBAL",-12)~ THEN REPLY ~(Give Andrei a hug.)~ + FHLANDPID_hugdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,1)~ THEN REPLY ~How are you to<DAYNIGHT>, Andrei?~ + FHLANDPID_how1
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,2)~ THEN REPLY ~How are you to<DAYNIGHT>, Andrei?~ + FHLANDPID_how2
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,3)~ THEN REPLY ~How are you to<DAYNIGHT>, Andrei?~ + FHLANDPID_how3
IF ~GlobalGT("FHLAndLike","GLOBAL",-12) RandomNum(4,4)~ THEN REPLY ~How are you to<DAYNIGHT>, Andrei?~ + FHLANDPID_how4
IF ~GlobalLT("FHLAndLike","GLOBAL",-11)~ THEN REPLY ~How are you today, Andrei?~ + FHLANDPID_howdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~(Study Andrei.)~ + FHLANDPID_study1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~(Study Andrei.)~ + FHLANDPID_study2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~(Study Andrei.)~ + FHLANDPID_study3
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~(Study Andrei.)~ + FHLANDPID_study4
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY ~(Study Andrei.)~ + FHLANDPID_studydislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",0)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ DO ~SetGlobal("FHLAndBackrub","GLOBAL",1)~ + FHLANDPID_giverub4
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,1)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ + FHLANDPID_giverub1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,2)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ + FHLANDPID_giverub2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) RandomNum(3,3)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ + FHLANDPID_giverub3
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",0)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ + FHLANDPID_giverubdislike
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",1)~ THEN REPLY ~Would you like a backrub, Andrei? You look like you need calming down.~ + FHLANDPID_giverubdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",0)~ THEN REPLY ~It's time to give me a nice back massage, Andrei!~ DO ~SetGlobal("FHLAndGiveRub","GLOBAL",1)~ + FHLANDPID_getrub1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,1)~ THEN REPLY ~It's time to give me a nice back massage, Andrei!~ + FHLANDPID_getrub2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,2)~ THEN REPLY ~It's time to give me a nice back massage, Andrei!~ + FHLANDPID_getrub3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1) RandomNum(3,3)~ THEN REPLY ~It's time to give me a nice back massage, Andrei!~ + FHLANDPID_getrub4
IF ~GlobalLT("FHLAndLike","GLOBAL",-7) Global("FHLAndBackrub","GLOBAL",1) Global("FHLAndGiveRub","GLOBAL",1)~ THEN REPLY ~It's time to give me a nice back massage, Andrei!~ + FHLANDPID_getrubdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,1)~ THEN REPLY ~(Ruffle Andrei's hair.)~ + FHLANDPID_ruffle1
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,2)~ THEN REPLY ~(Ruffle Andrei's hair.)~ + FHLANDPID_ruffle2
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,3)~ THEN REPLY ~(Ruffle Andrei's hair.)~ + FHLANDPID_ruffle3
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,4)~ THEN REPLY ~(Ruffle Andrei's hair.)~ + FHLANDPID_ruffle4
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) !Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF) RandomNum(4,4)~ THEN REPLY ~(Ruffle Andrei's hair.)~ + FHLANDPID_ruffledislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLRow","GLOBAL",1) RandomNum(2,1)~ THEN REPLY ~Have you thought about patching things up with Sebastian?~ + FHLANDPID_patch1
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLRow","GLOBAL",1) RandomNum(2,2)~ THEN REPLY ~Have you thought about patching things up with Sebastian?~ + FHLANDPID_patch2
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) Global("FHLRow","GLOBAL",1)~ THEN REPLY ~Have you thought about patching things up with Sebastian?~ +FHLANDPID_patchdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Can I talk to you about what happened with your family?~ + FHLANDPID_LDPask
IF ~GlobalLT("FHLAndLike","GLOBAL",-5) GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Can I talk to you about what happened with your family?~ + FHLANDPID_askdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,1)~ THEN REPLY ~(Smile at Andrei.)~ + FHLANDPID_smile1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,2)~ THEN REPLY ~(Smile at Andrei.)~ + FHLANDPID_smile2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,3)~ THEN REPLY ~(Smile at Andrei.)~ + FHLANDPID_smile3
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(4,4)~ THEN REPLY ~(Smile at Andrei.)~ + FHLANDPID_smile4
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY ~(Smile at Andrei.)~ + FHLANDPID_smiledislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,1)~ THEN REPLY ~What are you thinking about?~ + FHLANDPID_think1
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,2)~ THEN REPLY ~What are you thinking about?~ + FHLANDPID_think2
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,3)~ THEN REPLY ~What are you thinking about?~ + FHLANDPID_think3
IF ~GlobalGT("FHLAndLike","GLOBAL",-8) RandomNum(4,4)~ THEN REPLY ~What are you thinking about?~ + FHLANDPID_think4
IF ~GlobalLT("FHLAndLike","GLOBAL",-7)~ THEN REPLY ~What are you thinking about?~ + FHLANDPID_thinkdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",-6) Global("FHLAndJustFriends","GLOBAL",0)~ THEN REPLY ~(Flirt with Andrei.)~ + FHLANDPID_notflirt
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,1)~ THEN REPLY ~I'm glad you're here, Andrei. Your help is most useful.~ + FHLANDPID_glad1
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,2)~ THEN REPLY ~I'm glad you're here, Andrei. Your help is most useful.~ + FHLANDPID_glad2
IF ~GlobalGT("FHLAndLike","GLOBAL",-10) RandomNum(3,3)~ THEN REPLY ~I'm glad you're here, Andrei. Your help is most useful.~ + FHLANDPID_glad3
IF ~GlobalLT("FHLAndLike","GLOBAL",-9)~ THEN REPLY ~I'm glad you're here, Andrei. Your help is most useful.~ + FHLANDPID_gladdislike
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,1)~ THEN REPLY ~Don't worry about being underground, Andrei. It'll be all right.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud1
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,2)~ THEN REPLY ~Don't worry about being underground, Andrei. It'll be all right.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud2
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalGT("FHLAndLike","GLOBAL",-6) RandomNum(3,3)~ THEN REPLY ~Don't worry about being underground, Andrei. It'll be all right.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud3
IF ~OR(6) AreaCheck("AR2100") AreaCheck("AR2101") AreaCheck("AR2102") AreaCheck("AR2400") AreaCheck("AR2401") AreaCheck("AR2402") GlobalLT("FHLAndLike","GLOBAL",-5)~ THEN REPLY ~Don't worry about being underground, Andrei. It'll be all right.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_ud4
++ ~Never mind, actually. I don't need to talk to you.~ + FHLANDPID_notalk
END

IF ~~ FHLANDPID_notflirt
SAY ~If there's something you need, please say.~
IF ~RandomNum(3,1)~ THEN REPLY ~What kind of person do you go for, Andrei?~ + FHLANDPID_go1
IF ~RandomNum(3,2)~ THEN REPLY ~What kind of person do you go for, Andrei?~ + FHLANDPID_go2
IF ~RandomNum(3,3)~ THEN REPLY ~What kind of person do you go for, Andrei?~ + FHLANDPID_go3
IF ~RandomNum(3,1)~ THEN REPLY ~(Wolf whistle at Andrei.)~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtwolf1
IF ~RandomNum(3,2)~ THEN REPLY ~(Wolf whistle at Andrei.)~ + FHLANDPID_notflirtwolf2
IF ~RandomNum(3,3)~ THEN REPLY ~(Wolf whistle at Andrei.)~ + FHLANDPID_notflirtwolf3
IF ~RandomNum(3,1)~ THEN REPLY ~(Run your hand down Andrei's arm.)~ + FHLANDPID_notflirtaround3
IF ~RandomNum(3,2)~ THEN REPLY ~(Run your hand down Andrei's arm.)~ + FHLANDPID_notflirtarm3
IF ~RandomNum(3,3)~ THEN REPLY ~(Run your hand down Andrei's arm.)~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtarm4
IF ~RandomNum(3,1)~ THEN REPLY ~(Put your arm around Andrei.)~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtaround2
IF ~RandomNum(3,2)~ THEN REPLY ~(Put your arm around Andrei.)~ + FHLANDPID_notflirtaround3
IF ~RandomNum(3,3)~ THEN REPLY ~(Put your arm around Andrei.)~ + FHLANDPID_notflirtaround4
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,1)~ THEN REPLY ~(Run your hands through Andrei's hair.)~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtstroke1
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,2)~ THEN REPLY ~(Run your hands through Andrei's hair.)~ + FHLANDPID_notflirtstroke2
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,3)~ THEN REPLY ~(Run your hands through Andrei's hair.)~ + FHLANDPID_notflirtstroke3
IF ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,4)~ THEN REPLY ~(Run your hands through Andrei's hair.)~ + FHLANDPID_notflirtstroke4
IF ~RandomNum(4,1)~ THEN REPLY ~Looking good, Andrei!~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtlookgood1
IF ~RandomNum(4,2)~ THEN REPLY ~Looking good, Andrei!~ + FHLANDPID_notflirtlookgood2
IF ~RandomNum(4,3)~ THEN REPLY ~Looking good, Andrei!~ + FHLANDPID_notflirtpickupaccept
IF ~RandomNum(4,1)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLANDPID_notflirteye1
IF ~RandomNum(4,2)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLANDPID_notflirteye2
IF ~RandomNum(4,3)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLANDPID_notflirteye3
IF ~RandomNum(4,4)~ THEN REPLY ~(Eye him appreciatively.)~ + FHLANDPID_notflirteye4
IF ~RandomNum(12,1)~ THEN REPLY ~You must be tired, Andrei: you've been running through my mind all <DAYNIGHT>.~ + FHLANDPID_notflirtpickup1a
IF ~RandomNum(12,2)~ THEN REPLY ~You're a hell of a thief, Andrei - you stole my heart from across the room.~ + FHLANDPID_notflirtpickup2a
IF ~RandomNum(12,3)~ THEN REPLY ~I must be a snowflake, because I've fallen for you.~ + FHLANDPID_notflirtpickup3a
IF ~RandomNum(12,4)~ THEN REPLY ~Do you have a map? I just keep on getting lost in your eyes.~ + FHLANDPID_notflirtpickup4a
IF ~RandomNum(12,5)~ THEN REPLY ~You must be tired, Andrei: you've been running through my mind all <DAYNIGHT>.~ + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,6)~ THEN REPLY ~You're a hell of a thief, Andrei - you stole my heart from across the room.~ + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,7)~ THEN REPLY ~I must be a snowflake, Andrei because I've fallen for you.~ + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,8)~ THEN REPLY ~Hey, Andrei, do you have a map? I just keep on getting lost in your eyes!~ + FHLANDPID_notflirtpickupgenreject
IF ~RandomNum(12,9)~ THEN REPLY ~You must be tired, Andrei: you've been running through my mind all <DAYNIGHT>.~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,10)~ THEN REPLY ~You're a hell of a thief, Andrei - you stole my heart from across the room.~ + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,11)~ THEN REPLY ~I must be a snowflake, because I've fallen for you.~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLANDPID_notflirtpickupgenlaugh
IF ~RandomNum(12,12)~ THEN REPLY ~Do you have a map? I just keep on getting lost in your eyes.~ + FHLANDPID_notflirtpickupaccept
IF ~GlobalLT("FHLAndLike","GLOBAL",1)~ THEN REPLY ~Andrei, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLANDPID_notflirtjustfriendsdislike
IF ~GlobalGT("FHLAndLike","GLOBAL",0)~ THEN REPLY ~Andrei, I think I'm giving you the wrong idea. I want us to be just friends.~ + FHLANDPID_notflirtjustfriendslike
++ ~Don't worry, it's nothing.~ + FHLANDPID_notflirtnothing
END

IF ~~ FHLANDPID_go1
SAY ~What do you mean, go for? I don't really do that kind of thing.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_go2
SAY ~Oh, um, you know. Someone who's nice? I don't really know.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_go3
SAY ~Um, I like dark hair? I'm not sure why you're asking...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtjustfriendsdislike
SAY ~Just friends? I'm sorry, <CHARNAME>, I didn't realise you thought enough of me for even that.~
IF ~~ THEN DO ~SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_notflirtjustfriendslike
SAY ~I'm sorry if you think I'm getting the wrong idea. I don't think I am. I mean, I like you and you're a good friend, but that's it.~ [FHLAF5]
=
~So...we're in agreement. Yes.~
IF ~~ THEN DO ~SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_notflirtnothing
SAY ~If you're sure.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye1
SAY ~Is everything all right? You're looking at me a little strangely.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye2
SAY ~(Andrei is taking your short pause to adjust his robes, and you are treated with tantalising glimpses of his chest and arms. He only notices when you start craning your neck for a better view.)~
=
~It's not that interesting, you know.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye3
SAY ~(Occasionally Andrei pauses to stretch his muscles, contorting himself into odd positions. This time you enjoy the show even more, for he's bending down, facing away from you, and you have an excellent view of his rear.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirteye4
SAY ~(He looks a little abashed at your attention, then grins at you.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtlookgood2
SAY ~Thank you! You're doing well, yourself.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtlookgood1
SAY ~I am? I don't think I look particularly different to normal.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke3
SAY ~(Andrei sees you coming, and manages to duck away in time.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke1
SAY ~(Andrei's hair is soft and thick between your fingers, and he watches you warily as you pet his head.)~
=
~That was strangely nice, <CHARNAME>, though I'd rather you warn me first. Thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke4
SAY ~Oh! Please don't, it's a bit greasy, and you'll just make it worse.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtstroke2
SAY ~I know you must find my hair a bit strange, but really, it's just the same as any other person's.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround2
SAY ~(Andrei grins at you and puts his arm around your shoulder companionably.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround3
SAY ~(He flinches away from you.) Oh, sorry, you made me jump!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtaround4
SAY ~(You make a show of yawning, stretching out your arms, then 'accidentally' putting one arm around Andrei's waist. He looks at you, confused.) Are you tired? I don't know if I could carry you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtarm3
SAY ~Hey!~
=
~Sorry. It was a bit tickly.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtarm4
SAY ~That's sort of nice, though I'm not sure what you mean by it.~ [FHLAF4]
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf2
SAY ~(He looks at you, startled.)~
=
~Er...thank you?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf1
SAY ~(He shakes his head, looking like he's trying not to smile.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtwolf3
SAY ~(He looks very confused, and shoots you a couple of sidelong glances before getting distracted by something else.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupaccept
SAY ~I think that's supposed to be a compliment, isn't it? Then thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupgenlaugh
SAY ~(Andrei's shoulders shake; he's definitely trying not to laugh.) Um...thank you?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup1a
SAY ~What? What are you saying? Is that from something?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup2a
SAY ~Ha! I don't think having your heart stolen would be very pleasant, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup3a
SAY ~Falling? I didn't trip you over, did I?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickup4a
SAY ~<CHARNAME>, you have a very odd sense of humour.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notflirtpickupgenreject
SAY ~That's not very funny. Perhaps you should stop?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_gladdislike
SAY ~Oh! Thank you. Sometimes it seems like you're not, so it's nice to hear you say differently.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_thinkdislike
SAY ~Um. Nothing interesting, I guess.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_smiledislike
SAY ~(He looks confused, and tries to smile back.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_patchdislike
SAY ~I don't think it's any business of yours. Unless you're worried that it will interfere with my function, in which case: it won't. Please don't ask me again.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffledislike
SAY ~Stop that, <CHARNAME>. It's not funny.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverubdislike
SAY ~No thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrubdislike
SAY ~I'm afraid I think you should get one from someone else instead.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_studydislike
SAY ~(When Andrei notices you looking at him, his expression becomes wary. He stares at you for a few moments, obviously expecting you to say something, and then turns slowly away.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_howdislike
SAY ~I don't know why you suddenly seem to care, <CHARNAME>...but I'm fine, thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdislike
SAY ~(He jerks away from you.) What are you doing?~
++ ~I'm just trying to give you a hug!~ + FHLANDPID_hugdislikehug
++ ~Oh, never mind.~ + FHLANDPID_hugdislikemind
++ ~Wasting my time, obviously.~ + FHLANDPID_hugdisliketime
END

IF ~~ FHLANDPID_hugdislikehug
SAY ~Oh. Perhaps you could try Sebastian instead? He likes hugging people more.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdislikemind
SAY ~(He looks at you a little oddly but says nothing.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hugdisliketime
SAY ~I don't know why I'm always surprised whenever you're so *rude*!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_askdislike
SAY ~I'm sorry, I don't think I'd feel comfortable talking to you about that.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_think1
SAY ~What it would be like to be an elf. Such a long life - and those ears!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_think2
SAY ~Just something silly. I was just imagining what Lucas and Rosanna would think if they actually saw all these amazing things that we do.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_think3
SAY ~Food, actually. I'm a bit hungry.~
++ ~Here, have some good ol' dried meat. It'll fill you up.~ + FHLANDPID_think3meat
++ ~Well, you have food, don't you? Eat it!~ + FHLANDPID_think3eat
END

IF ~~ FHLANDPID_think3meat
SAY ~Thank you, this is exactly what I needed.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_think3eat
SAY ~I will, I will. Don't worry, I'm not going to waste away.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_think4
SAY ~I have this tune in my head, I'm trying to remember the words. I think it was a lullaby my mother used to sing to me after I'd calm down.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad1
SAY ~(He gives you a bright smile and nods in thanks.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad2
SAY ~Thank you! I'm glad you think so.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_glad3
SAY ~It's nice of you to say, but you shouldn't--~
=
~Never mind. I *am* glad to be here, and thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile1
SAY ~(He nods briskly, and smiles back.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile2
SAY ~(Andrei's glowering at the world when you catch his eye and smile brightly at him. It takes a couple of seconds, but all of a sudden his fierce expression breaks and he grins back.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile3
SAY ~(His smile is reserved and somewhat sad, but he still makes the effort to return yours.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_smile4
SAY ~(He looks half-amused, half-confused at your grinning at him, and cautiously smiles back.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPask
SAY ~I guess. What's wrong?~
IF ~RandomNum(2,1)~ THEN REPLY ~I wanted to apologise. I know I could have done more to help.~ + FHLANDPID_LDPasksorry1
IF ~RandomNum(2,2)~ THEN REPLY ~I wanted to apologise. I know I could have done more to help.~ + FHLANDPID_LDPasksorry2
IF ~RandomNum(2,1)~ THEN REPLY ~Things didn't go the way you wanted them to, Andrei, but you're not too unhappy here, are you?~ + FHLANDPID_LDPaskunhappy1
IF ~RandomNum(2,2)~ THEN REPLY ~Things didn't go the way you wanted them to, Andrei, but you're not too unhappy here, are you?~ + FHLANDPID_LDPaskunhappy2
IF ~RandomNum(2,1)~ THEN REPLY ~I just wanted to see how you're feeling about it, that's all.~ + FHLANDPID_LDPaskfeel1
IF ~RandomNum(2,2)~ THEN REPLY ~I just wanted to see how you're feeling about it, that's all.~ + FHLANDPID_LDPaskfeel2
IF ~RandomNum(2,1)~ THEN REPLY ~Nothing's wrong - though I'd like to know how you and Sebastian are with each other at the moment.~ + FHLANDPID_LDPaskSeb1
IF ~RandomNum(2,2)~ THEN REPLY ~Nothing's wrong - though I'd like to know how you and Sebastian are with each other at the moment.~ + FHLANDPID_LDPaskSeb2
END

IF ~~ FHLANDPID_LDPasksorry1
SAY ~No, <CHARNAME>, it's not your fault at all. You did everything you could and I'm honestly very grateful for it.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPasksorry2
SAY ~I don't know what you could have done to make things any different - any better, at least. You stopped Sebastian and you're sticking with us now, so I don't see what you have to apologise for.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskunhappy1
SAY ~No, I'm not. I've been happier, but...Sebastian's always told me how it's more important to be informed than happy, and I guess this is what he means.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskunhappy2
SAY ~I think I'd feel much worse if I wasn't here. It's good to have goals.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskfeel1
SAY ~It hasn't really sunk in yet. I still expect I'll transform when I get hurt, and, well...~
=
~I'm sorry, <CHARNAME>, but I don't think I can talk about it much yet.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskfeel2
SAY ~How I'm feeling about it? Do you want a list?~
=
~Um. I'm sorry. I'm all right, really. I just don't try to think about it much.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskSeb1
SAY ~A lot better, thank you. It's such a relief!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_LDPaskSeb2
SAY ~Sometimes I get nervous thinking about what we're going to do later. We've always argued, but it'll never be like it was before, so we'll be all right.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_patch1
SAY ~(sigh) I doubt he'd want to, so it doesn't matter what I think.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_patch2
SAY ~Maybe I should try...Oh, I don't know. I'll think about it.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle1
SAY ~...Thank you for that, <CHARNAME>. Honestly, you're as bad as Sebastian sometimes.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle2
SAY ~(Andrei sees you coming, and manages to duck away in time.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle3
SAY ~(Andrei's hair is soft and thick between your fingers, but he leans quickly out of your grasp.)~
=
~If you have an opinion about my hair I'd rather you just said it, you know.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4
SAY ~(Andrei stares at you in confusion as you briskly rub his hair so it sticks up in every direction.) Are you finished?~
++ ~Yep.~ + FHLANDPID_ruffle4yep
++ ~Sorry about that. The urge overwhelmed me!~ + FHLANDPID_ruffle4urge
++ ~I think it could do with a bit more. You know - make it 'stylishly messy'.~ + FHLANDPID_ruffle4messy
END

IF ~~ FHLANDPID_ruffle4yep
SAY ~Good. (He smiles briefly before smoothing his hair down.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4urge
SAY ~That's all right, no harm done. (He smiles briefly before smoothing his hair down.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ruffle4messy
SAY ~(He uncertainly pats his hair into place.) Thank you, <CHARNAME>, but I think I'd rather it was neat.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub3
SAY ~If it's all right with you, I'll do it later. I don't want to make you feel more tense because of me not feeling so good.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub4
SAY ~You seem to have this fondness for backrubs! I don't mind - I quite like it. It's very relaxing.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1
SAY ~(He nods seriously, and takes to the task with only a little hesitation. It's a fairly good backrub, for a supposed first, and by the end your muscles are appreciably looser.)~
++ ~You must have beginner's luck, Andrei - that was very good.~ + FHLANDPID_getrub1luck
++ ~Thank you. I'll be sure to get you to do it again.~ + FHLANDPID_getrub1again
++ ~Ahhh, that was good...~ +FHLANDPID_getrub1ahh
END

IF ~~ FHLANDPID_getrub1luck
SAY ~Thank you. I thought, after the one you gave me, that it wasn't much different from what we'd do in training if one of us got muscle cramps so I used what I knew from that.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1again
SAY ~It'd be my pleasure - I'd like to try it again!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub1ahh
SAY ~Heh, I'm glad you liked it!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_getrub2
SAY ~Of course. (He stretched out his fingers, and then applies them to your back with earnest concentration.)~
=
~(He's a little too forceful for it to be relaxing, but afterwards you feel invigorated and considerably looser.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub1
SAY ~Thank you, but I wouldn't want to trouble you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub2
SAY ~I think you're right. I guess I feel a bit off at the moment.~
++ ~Hopefully this will help.~ + FHLANDPID_giverub2help
END

IF ~~ FHLANDPID_giverub2help
SAY ~I'm sure it will!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub3
SAY ~Yes please - I think I strained a muscle in my back earlier.~
IF ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ THEN REPLY ~You should have said something. Let me look at it for you.~ + FHLANDPID_giverub3heal
++ ~(Give him the backrub.)~ + FHLANDPID_giverub3go
END

IF ~~ FHLANDPID_giverub3heal
SAY ~It's doesn't hurt, really. It's just a bit stiff.~
++ ~All right, if you're sure. (Give him the backrub.)~ + FHLANDPID_giverub3go
END

IF ~~ FHLANDPID_giverub3go
SAY ~(Andrei sighs as you massage his shoulders, and relaxes in moments. When you're done, he rolls his arms about and smiles in satisfaction.) Thank you!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4
SAY ~(He nods and lets you rub his shoulders without comment. It's obvious he's making an effort to relax for you, but you suspect he'd relax more if he stopped trying to.)~
=
~(Nevertheless he sighs, more relaxed and happier than before.) Thank you, <CHARNAME>. That was very good!~
++ ~You'll have to return the favour for me sometime.~ + FHLANDPID_giverub4favour
++ ~I'm glad. I don't want you flying off the handle when a quick massage could help.~ + FHLANDPID_giverub4help
++ ~You're welcome, though it wasn't exactly hard.~ + FHLANDPID_giverub4hard
END

IF ~~ FHLANDPID_giverub4favour
SAY ~Definitely, though I've never done it myself - I hope you don't mind me fumbling it at first.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4help
SAY ~I have to admit, no one thought of that method before! I'll have to pay you back with one, someday.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_giverub4hard
SAY ~If it's not hard, then perhaps I can pay you back, someday.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ask
SAY ~All right - I'll answer what I can.~ [FHLAF3]
IF ~RandomNum(3,1) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY ~You hardly ever mention your parents. What are they like?~ + FHLANDPID_parents1
IF ~RandomNum(3,2) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY ~You hardly ever mention your parents. What are they like?~ + FHLANDPID_parents2
IF ~RandomNum(3,3) !Global("FHLMetParents","GLOBAL",1)~ THEN REPLY ~You hardly ever mention your parents. What are they like?~ + FHLANDPID_parents3
IF ~Global("FHLMetParents","GLOBAL",1)~ THEN REPLY ~You hardly ever mention your parents. What are they like?~ + FHLANDPID_parents4
IF ~RandomNum(3,1)~ THEN REPLY ~I'd like to know more about your combat training.~ + FHLANDPID_monk1
IF ~RandomNum(3,2)~ THEN REPLY ~I'd like to know more about your combat training.~ + FHLANDPID_monk2
IF ~RandomNum(3,3)~ THEN REPLY ~I'd like to know more about your combat training.~ + FHLANDPID_monk3
IF ~Global("FHLAndChildren","GLOBAL",0)~ THEN REPLY ~Tell me something about the other children you grew up with.~ + FHLANDPID_children1
IF ~Global("FHLAndChildren","GLOBAL",1) RandomNum(2,1)~ THEN REPLY ~Tell me something about the other children you grew up with.~ + FHLANDPID_children2
IF ~Global("FHLAndChildren","GLOBAL",1) RandomNum(2,2)~ THEN REPLY ~Tell me something about the other children you grew up with.~ + FHLANDPID_children3
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~What's the deal with Xavier, really?~ + FHLANDPID_xav
END

IF ~~ FHLANDPID_ask2
SAY ~I'd rather not talk about them. It's all still...a bit too much.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug1
SAY ~Oh - what was that all about?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug2
SAY ~(Andrei takes a moment to relax, then pats you on the back before letting you go.)~
IF ~~ EXIT END

IF ~~ FHLANDPID_hug3
SAY ~(Andrei has been seeming quite tightly-wound, and when you try to hug him he tries to pull away, then squeezes you back.)~
=
~Thank you, <CHARNAME>, it's good to have a friend around.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_hug4
SAY ~(When you try to put your arms around him, Andrei leans back a little uncomfortably. He smiles and pats you on the arm.)~
=
~Er - thank you, but not right now.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_how1
SAY ~I'm all right, thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_how2
SAY ~I think I strained my shoulder in the last battle - it's a bit sore - but I'm fine. Thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_how3
SAY ~I was just thinking about my family.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_how4
SAY ~I *was* fine, but you keep on bothering me!~
=
~Um - sorry, I'm just a little tired. Excuse me.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_study1
SAY ~(You take a quiet moment to look at Andrei while he's unawares. He's taking advantage of the break to stretch out the muscles in his back.)~
=
~(He's very flexible - he can clasp his hands and rotate his arms behind his back almost the entire way. When he sees you watching him, he smiles and drops his arms back to his sides.~
=
~It's really invigorating - you should try it!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_study2
SAY ~The strain on Andrei's hands is high, so it comes as no surprise that he is taking this quiet moment to tend to them.)~
=
~He is wrapping thin bandages around his palms and knuckles, not for any injuries but for protection in the next battle. Once the wrapping is secure he flexes his fingers and nods to himself, satisfied.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_study3
SAY ~(Andrei's shoulders are set rather stiffly and his brow is furrowed. When he sees you looking, however, he makes an obvious effort to look content.)~
IF ~~ EXIT
END

IF ~~ FHLANDPID_study4
SAY ~What is it? I don't have something on my face, do I?~
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents1
SAY ~They're good people. Mother's an excellent seamstress and Father's one of the farmers. I...I miss them.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents2
SAY ~Don't I? I didn't realise. I love them, but after I started training and met Sebastian, I spent less time with them.~
=
~I always stayed with them on rest days, though. It feels a bit odd not to.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_parents3
SAY ~They were planning to have more children, but Xavier thought it best that they didn't risk it. Because of my rages, you see. It would have been awful for any siblings to be afflicted with it as well.~
++ ~Xavier decided for them?~ + FHLANDPID_parentsXavier
++ ~That's a shame.~ + FHLANDPID_shame
END

IF ~~ FHLANDPID_parents4
SAY ~Come on, <CHARNAME>, you *met* them. You know what they're like.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_monk1
SAY ~Simeon is a master - he's simply amazing! If I ever have half of his skill and control, I'll be happy.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_monk2
SAY ~My parents were advised to send me to Simeon to train so I could gain control over my rages.~
++ ~Did it help at all?~ + FHLANDPID_monkhelp
++ ~Did you have a say in this at all?~ + FHLANDPID_monksay
END

IF ~~ FHLANDPID_monk3
SAY ~It was so difficult at first, trying to have the patience to do anything right. But once I realised it was good for me I enjoyed it a lot more.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_children1
SAY ~Lucas and Rosanna are my age, and they studied with Simeon too, so naturally we made friends.~
=
~They were such good fun - drilling sessions were never boring with the two of them around!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_children2
SAY ~What's a good thing to tell you - oh, there was one time when Lucas, Rosanna and I tried to play a practical joke on Simeon!~
=
~It wasn't my idea, of course, but I still agreed to put all that horseradish in his afternoon tea...~
IF ~~ EXIT
END

IF ~~ FHLANDPID_children3
SAY ~Well. Even though Xavier hasn't allowed it yet, Rosanna has her heart set on marrying Lucas. He always acts like she's mad, but he obviously cares a great deal for her.~
=
~I hope they do get married, they'll be good for each other!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_xav
SAY ~The 'deal'? I'm not sure what you mean, and I don't think I care to, thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_parentsXavier
SAY ~Of course. Besides, they agreed with him.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_shame
SAY ~Yes. It would have been nice to have a younger brother or sister.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_monkhelp
SAY ~It took a long time, but between the training and Sebastian I've improved, thankfully!~
IF ~~ EXIT
END

IF ~~ FHLANDPID_monksay
SAY ~I was very young at the time - I can't remember very well. I'm grateful for it now, and that's what matters.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_notalk
SAY ~Fair enough. If you need anything, let me know, won't you?~
IF ~~ EXIT
END

//andrei complains

IF ~Global("FHLAndSaysFriends","GLOBAL",1)~ THEN BEGIN FHLAndSaysFriends
SAY ~I know this might sound rude, or presumptuous, but I think you've got the wrong idea about me. Us, I mean.~ [FHLAF2]
IF ~GlobalGT("FHLAndLike","GLOBAL",2)~ THEN REPLY ~What do you mean? I'm not sure I understand.~ + FHLANDPID_friendsunderstandlike
IF ~GlobalLT("FHLAndLike","GLOBAL",3)~ THEN REPLY ~What do you mean? I'm not sure I understand.~ + FHLANDPID_friendsunderstanddislike
++ ~Are you talking about our flirting?~ + FHLANDPID_friendsflirting
++ ~It's neither rude nor presumptuous - you have every right to bring it up.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_friendsright
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~What's exactly the wrong idea? Are you not interested in me?~ + FHLANDPID_friendsnotinterested
IF ~Gender(Player1,MALE)~ THEN REPLY ~What's exactly the wrong idea? Are you not interested in me?~ + FHLANDPID_friendsnotinterestedmale
END

IF ~~ FHLANDPID_friendsunderstandlike
SAY ~Well, I've got the impression that you're interested in me, in a - a more than friendly way.~
=
~I count you as a good friend, <CHARNAME>, and I don't want to offend you, but I also don't want you thinking that there's more than there is.~
++ ~I can't say that I'm not disappointed, Andrei, because I think you're a great catch.~ + FHLANDPID_friendslikedisappointed
IF ~Gender(Player1,MALE)~ THEN REPLY ~But why don't you think of me the way I think of you?~ + FHLANDPID_friendsnotinterestedmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~But why don't you think of me the way I think of you?~ + FHLANDPID_friendsnotinterested
++ ~I understand now. Don't worry, Andrei, I was just being affectionate. If it makes you uncomfortable, I can stop.~ + FHLANDPID_friendsuncomfortable
++ ~Oh, I'm not at all interested in you. It's just harmless flirting, I promise.~ + FHLANDPID_friendsharmlessflirtlike
END

IF ~~ FHLANDPID_friendsunderstanddislike
SAY ~Well, I've got the impression that you're interested in me, in a - a more than platonic way.~
=
~I know we often don't see eye to eye, but I enjoy your company a lot of the time and I don't want you thinking that there's more to is than there is.~
++ ~All right, so we're not the closest of friends, but that doesn't mean we can't have a little fun.~ + FHLANDPID_friendsweirdfun
++ ~I understand now. Don't worry, Andrei, I was just being affectionate. If it makes you uncomfortable, I can stop.~ + FHLANDPID_friendsuncomfortable
++ ~Oh, I'm not at all interested in you. It's just harmless flirting, I promise.~ + FHLANDPID_friendsharmlessflirtdislike
END

IF ~~ FHLANDPID_friendsflirting
SAY ~Yes, I am. Was I right about the...wrong idea?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~I'm embarrassed to admit it now, but you're right. I think you're a great catch!~ + FHLANDPID_friendsgreatcatchmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I'm embarrassed to admit it now, but you're right. I think you're a great catch!~ + FHLANDPID_friendsgreatcatch
IF ~Gender(Player1,MALE)~ THEN REPLY ~Yes, and why are you so against the idea of something between us? We'd make a great couple.~ + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Yes, and why are you so against the idea of something between us? We'd make a great couple.~ + FHLANDPID_friendscouple
++ ~No, it was just harmless flirting - I'm not interested in you.~ + FHLANDPID_harmlessflirting
++ ~I was just being my usual, affectionate self. If it makes you uncomfortable, I can stop.~ + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_harmlessflirting
SAY ~That's a relief!~
=
~I don't mean to say that I hate you, or anything - it was just bothering me, that's all, and now you've set my mind at rest. Thank you.~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendscouplemale
SAY ~I'm afraid I don't think we would - I'm not interested in men.~
=
~Look, I don't want to press the issue, but it has been bothering me. Would you be able to stop?~
++ ~Of course. I'm sorry, I didn't mean to make you uneasy.~ + FHLANDPID_friendsuncomfortable
++ ~Come on, it's not hurting anybody.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
++ ~Oh, I didn't realise you weren't - well, anyway. I'll stop, if that's what you want.~ + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendscouple
SAY ~I'm afraid I don't think we would. Look, I don't want to press the issue, but it has been bothering me. Would you be able to stop?~
++ ~Oh, I didn't realise you weren't - well, anyway. I'll stop, if that's what you want.~ + FHLANDPID_friendsuncomfortable
++ ~Come on, it's not hurting anybody.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
END

IF ~~ FHLANDPID_friendsright
SAY ~Thank you. I'm sorry to press you, but I need to know, am I right?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~I'm embarrassed to admit it now, but you're right. I think you're a great catch!~ + FHLANDPID_friendsnotinterestedmale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I'm embarrassed to admit it now, but you're right. I think you're a great catch!~ + FHLANDPID_friendsnotinterested
IF ~Gender(Player1,MALE)~ THEN REPLY ~Yes, and why are you so against the idea of something between us? We'd make a great couple.~ + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Yes, and why are you so against the idea of something between us? We'd make a great couple.~ + FHLANDPID_friendscouple
++ ~No, it was just harmless flirting. I'm not interested in you!~ + FHLANDPID_harmlessflirting
++ ~I was just being my usual, affectionate self. If it makes you uncomfortable, I can stop.~ + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsnotinterested
SAY ~I don't want to upset you, but I can't say I've ever thought of you in that way.~
IF ~Gender(Player1,MALE)~ THEN REPLY ~Why not? We'd make a great couple!~ + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Why not? We'd make a great couple!~ + FHLANDPID_friendscouple
++ ~That's fine, I'm not upset. We're friends and that's the way it should be!~ + FHLANDPID_friendsshouldbe
++ ~Oh, all right. I'm sorry to have embarrassed you.~ + FHLANDPID_friendsembarrass
END

IF ~~ FHLANDPID_friendsembarrass
SAY ~Ha, I'm sorry for embarrassing myself!~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsshouldbe
SAY ~Too true!~
IF ~~ THEN DO ~IncrementGlobal("FHLAndLike","GLOBAL",1) SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsnotinterestedmale
SAY ~Um, I - I'm not interested in men, in general.~
++ ~Oh, I see! I'm sorry, I thought you were.~ + FHLANDPID_friendsgaywtf
++ ~I see I've embarrassed you - I'm sorry, I won't make you bring it up again.~ + FHLANDPID_friendsisee
IF ~Gender(Player1,MALE)~ THEN REPLY ~That's a pity. I think we would have made a great couple.~ + FHLANDPID_friendscouplemale
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~That's a pity. I think we would have made a great couple.~ + FHLANDPID_friendscouple
++ ~Of course. Don't worry, I don't have any designs on you. We're friends and that's how it should be!~ + FHLANDPID_friendsshouldbe
END

IF ~~ FHLANDPID_friendsisee
SAY ~Thank you, <CHARNAME>, you're a good <PRO_MANWOMAN>!~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsgaywtf
SAY ~What? Why?~
=
~(sigh) It must be Sebastian. People just assume...~
=
~Never mind that. Now we've got all this cleared up, though, I do feel a little better about it. Thank you.~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendslikedisappointed
SAY ~Thank you, <CHARNAME>, that's very kind. Thank you for understanding.~
++ ~Don't worry about it. 'Understanding' is my middle name!~ + FHLANDPID_friendsmiddlename
++ ~You're welcome. I'm just sorry to have made you have to bring it up at all.~ + FHLANDPID_friendsembarrass
++ ~It's all right. I'll change my behaviour, if it will make you more comfortable.~ + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsmiddlename
SAY ~'<CHARNAME> Understanding Bhaalspawn'? Sounds good to me!~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) IncrementGlobal("FHLAndLike","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_friendsuncomfortable
SAY ~I'd really appreciate that. Thank you!~
IF ~~ THEN DO ~IncrementGlobal("FHLAndLike","GLOBAL",1) SetGlobal("FHLAndJustFriends","GlOBAL",1) SetGlobal("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsharmlessflirtlike
SAY ~Okay, if you're sure, then I won't bring it up again. Thank you for understanding.~
++ ~Don't worry about it. 'Understanding' is my middle name!~ + FHLANDPID_friendsmiddlename
++ ~You're welcome. I'm just sorry to have made you have to bring it up at all.~ + FHLANDPID_friendsembarrass
++ ~It's all right. If it really makes you uncomfortable then I can change my ways, for you.~ + FHLANDPID_friendsuncomfortable
END

IF ~~ FHLANDPID_friendsgreatcatch
SAY ~Oh! Thank you, <CHARNAME>, but I'm so sorry, I don't feel the same way.~
=
~I mean, I think you'll be great for someone, but just not for me. Is that all right?~
++ ~Of course it's all right! I can't force you to like me.~ + FHLANDPID_friendslikedisappointed
++ ~I can't say it doesn't hurt, Andrei. But I suppose there's nothing I can do.~ + FHLANDPID_friendsnothing
++ ~I'd rather you didn't go on about it; it's all rather embarrassing.~ + FHLANDPID_friendsnothing
++ ~You're a sweet man, Andrei. I wish we could have more.~ + FHLANDPID_friendsnothing
END

IF ~~ FHLANDPID_friendsnothing
SAY ~I really am sorry to have given you the wrong idea. I...I hope you'll feel better about it soon.~
IF ~~ THEN DO ~SetGlobal ("FHLAndSaysFriends","GLOBAL",2)~ EXIT
END

IF ~~ FHLANDPID_friendsgreatcatchmale
SAY ~Oh! Thank you, <CHARNAME>, but I'm so sorry, I don't feel the same way.~
=
~I mean, I think you'll be great for some other man, but just not for me. Is that all right?~
++ ~Of course it's all right! I can't force you to like me.~ + FHLANDPID_friendslikedisappointed
++ ~I can't say it doesn't hurt, Andrei. But I suppose there's nothing I can do.~ + FHLANDPID_friendsnothing
++ ~I'd rather you didn't go on about it; it's all rather embarrassing.~ + FHLANDPID_friendsnothing
++ ~You're a sweet man, Andrei. I wish we could have more.~ + FHLANDPID_friendsnothing
END

IF ~~ FHLANDPID_friendsharmlessflirtdislike
SAY ~Well, be that as it may, it does make me uncomfortable. I was wondering if you could stop?~
++ ~Of course. I don't want to make you uneasy.~ + FHLANDPID_friendsuncomfortable
++ ~Come on, it's not hurting anybody.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLANDPID_friendsdislikestubborn
++ ~I could be much worse than I am, Andrei - you should be grateful I'm holding myself back, not complaining!~ + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsweirdfun
SAY ~When you put it like that, <CHARNAME>, it's not fun. It makes me feel uncomfortable and I was wondering if you could stop.~
++ ~Of course. I'm sorry, I don't really want to make you uneasy.~ + FHLANDPID_friendsuncomfortable
++ ~Come on, it's not hurting anybody.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLANDPID_friendsdislikestubborn
++ ~I could be much worse than I am, Andrei - you should be grateful I'm holding myself back, not complaining!~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsdislikestubborn
SAY ~I just said I didn't like it! I'll ask again, can you please stop?~
++ ~Of course, I'm sorry. I don't really want to upset you like this.~ + FHLANDPID_friendsdislikestubborngivein
++ ~I don't want to stop, and that's that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLANDPID_boomeanycharname
END

IF ~~ FHLANDPID_friendsdislikestubborngivein
SAY ~(sigh) Thank you. I'm glad we could clear this up.~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_boomeanycharname
SAY ~If that's how you feel then I must say I'm surprised. I had thought you better than that.~
=
~Don't try anything like that with me again.~
IF ~~ THEN DO ~SetGlobal("FHLAndSaysFriends","GLOBAL",2) SetGlobal("FHLAndJustFriends","GLOBAL",1)~ EXIT
END

IF ~~ FHLANDPID_ud1
SAY ~Thanks, <CHARNAME> - it means a lot to hear you say that.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud2
SAY ~Leave me alone, I need to concentrate!~
=
~(sigh) Sorry. It's just - being down here, it doesn't exactly make me feel comfortable.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud3
SAY ~I know. And I know it's important to remember that it's not going to end here, so...thank you.~
IF ~~ EXIT
END

IF ~~ FHLANDPID_ud4
SAY ~Oh - I didn't think you'd notice me looking off. Thanks.~
IF ~~ EXIT
END
END
