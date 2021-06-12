BEGIN FHLXAV

//First visit with Xavier
IF ~~ FHLXav1_manip1
SAY ~Oh, I am, I most certainly am. Nothing can quite do my family and me justice, but the estate is quite lovely.~
=
~And my cousins? Tell me, are they serviceable?~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~They tell me all sorts of wonderful things about the estate.~ + FHLXav1_manip2
++ ~They're useful companions to have around.~ + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseen
++ ~'Serviceable'? They are their own people, not slaves!~ + FHLXav1_slave
END

IF ~~ FHLXav1_good1
SAY ~I am glad to hear that you think so. Little can do my family and me justice, but the estate comes close.~
=
~And my cousins? Tell me, are they serviceable?~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~They tell me all sorts of wonderful things about the estate.~ + FHLXav1_manip2
++ ~They're useful companions to have around.~ + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseen
++ ~'Serviceable'? They are their own people, not slaves!~ + FHLXav1_slave
END

IF ~~ FHLXav1_foot1
SAY ~I doubt, <CHARNAME>, that you have seen a place like this. The pride of our family.~
=
~And my cousins? Are they also only 'quite nice'? Tell me, are they serviceable?~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I apologise, Xavier. I didn't mean any offence and your cousins certainly do you justice.~ + FHLXav1_manip2
++ ~They're useful companions to have around.~ + FHLXav1_good2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~They can be tiring, but I'm glad to be with them.~ + FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~Sometimes I don't know why I bother with them, to be honest.~ + FHLXav1_badworseen
++ ~'Serviceable'? They are their own people, not slaves!~ + FHLXav1_slave
END

IF ~~ FHLXav1_manip2
SAY ~I am glad that Sebastian and Andrei are at least making themselves useful. Do you wish to remain travelling with them?~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I would be grateful if I could have the honour of associating with your family.~ + FHLXav1_bestcatch
++ ~I would like to carry on travelling with them, yes.~ + FHLXav1_bestcatch
++ ~I suppose so.~ + FHLXav1_bestcatch
++ ~Not really, no. I couldn't care less about this family.~ EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_good2
SAY ~You please me with your words, <CHARNAME>. I am glad that they are making themselves useful. Do you wish to travel with them still?~
++ ~I would like to, yes.~ + FHLXav1_bestcatch
++ ~I suppose so.~ + FHLXav1_faircatch
++ ~Not really, no. I couldn't care less about this family.~ EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_badgoodun
SAY ~Somehow such a statement from you hardly seems a reliable recommendation. I know that you were less than eager to come here and now you tell me that my estate does not meet your standards.~
=
~So I ask myself if you are at all worthy of my cousins' time. Even though you may enjoy their company I do not see that as a reason why I cannot prevent their leaving with you.~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I can only hope that such a man as you can deem me so.~ + FHLXav1_faircatch
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I don't have to answer to you, Xavier.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I certainly am.~ + FHLXav1_moreawful
END

IF ~~ FHLXav1_badgooden
SAY ~Somehow such a statement from you hardly seems a reliable recommendation. However, I know that you were eager to visit me. This counts in your favour.~
=
~So I ask myself if you are worthy of my cousins' time.~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I can only hope that such a man as you can deem me so.~ + FHLXav1_bestcatch
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I don't have to answer to you, Xavier.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I certainly am.~ + FHLXav1_faircatch
END

IF ~~ FHLXav1_fairun
SAY ~I wonder if I should be pleased with such a response. I know that you were hardly eager to accompany my cousins here. So I ask myself if you are worth my cousins' time. My time.~
=
~Are you worth the heartsick feelings I have when my dear cousins are away from me? What will you say for yourself, I wonder.~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I can only hope that such a man as you can deem me so.~ + FHLXav1_faircatch
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I don't have to answer to you, Xavier.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I certainly am.~ + FHLXav1_moreawful
END

IF ~~ FHLXav1_fairen
SAY ~I wonder if I should be pleased with such a response. Still, Lyel has told me of your eagerness to see me. So tell me. Are you worthy of my cousins' time?~
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~I can only hope that such a man as you can deem me so.~ + FHLXav1_faircatch
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I don't have to answer to you, Xavier.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I certainly am.~ + FHLXav1_faircatch
END

IF ~~ FHLXav1_badworseun
SAY ~I know of your intransigence regarding coming to see me. How you had to be convinced, when you should hardly have been given the honour. Are you worthy of my time? Is there any reason why I should allow my cousins to continue travelling with you?~
++ ~I am certainly worthy.~ + FHLXav1_moreawful
++ ~I'm sorry. I didn't understand how great a man you are.~ + FHLXav1_failedmanip
++ ~I don't have to answer to you.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_badworseen
SAY ~Lyel has told me of your eagerness to see me, but I see little evidence of it. Is there any reason to allow you to carry on travelling with my cousins, I wonder. Are you worthy of their time?~
++ ~I am certainly worthy.~ + FHLXav1_moreawful
++ ~I'm sorry. I didn't understand how great a man you are.~ + FHLXav1_failedmanip
++ ~I don't have to answer to you.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~I'm far more worthy than a creep like you!~ EXTERN FHLSEBJ FHLXav1_awful
END

IF ~~ FHLXav1_failedmanip
SAY ~That will not work on me!~
IF ~~ THEN + FHLXav1_scaryawful
END

//Talking to Xavier after the initial visit

IF ~OR(2) Global("FHLSebCatch","GLOBAL",2)
Global("FHLXavierStrop","GLOBAL",1)~ THEN BEGIN FHLXavStrop
SAY ~Out of my sight!~ [FHLX7]
IF ~~ EXIT
END

IF ~!Global("FHLSebCatch","GLOBAL",2)
!Global("FHLXavierStrop","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",1)
Global("FHLTellCurse","GLOBAL",0)~ THEN BEGIN FHLXavier
SAY ~You again. What do you want?~ [FHLX8]
++ ~What's it like to be the head of this family?~ + FHLXavier_like
++ ~Tell me about Sebastian and Andrei. Why did you allow them outside?~ + FHLXavier_seband
++ ~How did you get chosen as the head of the family?~ + FHLXavier_choose
IF ~Global("FHLSamTalk","GLOBAL",1)~ THEN REPLY ~Tell me about your brother. He seems little more than a servant.~ + FHLXavier_samuel
++ ~Nothing, I was just leaving.~ + FHLXavier_leave
END

IF ~~ FHLXavier_like
SAY ~You couldn't possibly understand. We are ill all the time because of the curse placed upon us. Luckily Lealia is always around to heal me. It is her duty, after all.~ [FHLX10]
++ ~You don't seem especially ill to me.~ + FHLXavier_feeble
++ ~So you're the focus of the curse? Do you transform?~ + FHLXavier_focus
++ ~My heart bleeds. Anyone with this much luxury can't have a hard life.~ + FHLXavier_heart
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_choose
SAY ~The head of the family before me sensed when I was born. We do not have the resonance of the curse because it grows from us, and that is how they knew.~
++ ~So you don't transform like the rest of the family, then.~ + FHLXavier_focus
++ ~Who decided that the closest relatives to you would be your guards?~ + FHLXavier_guards
++ ~Tell me about Sebastian and Andrei. Why did you allow them outside?~ + FHLXavier_seband
++ ~Well, you seem to have done well for yourself from it.~ + FHLXavier_focus
END

IF ~~ FHLXavier_samuel
SAY ~He isn't a servant. I wouldn't be able to do anything without Samuel with me. And Alexandra, too. Things are very difficult for the head of the family.~ [FHLX14]
++ ~You don't seem especially ill to me.~ + FHLXavier_feeble
++ ~So you're the focus of the curse? Do you transform?~ + FHLXavier_focus
++ ~My heart bleeds. Anyone with this much luxury can't have a hard life.~ + FHLXavier_heart
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_leave
SAY ~Very well.~
IF ~~ EXIT
END

IF ~~ FHLXavier_feeble
SAY ~You cannot understand these things! You are not one of us and I will not listen to another word from you! Sebastian, take this <PRO_MANWOMAN> out of here!~
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLXavier_focus
SAY ~No, I do not. My affliction is worse: I am constantly ill and I need Alexandra and Samuel, and of course Lyel, to attend me.~ [FHLX11]
++ ~You don't seem especially ill to me.~ + FHLXavier_feeble
++ ~It must be very difficult for you to cope with.~ + FHLXavier_cope
++ ~My heart bleeds. Anyone with this much luxury can't have a hard life.~ + FHLXavier_heart
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_heart
SAY ~Luxury? Luxury? You pathetic <PRO_MANWOMAN>, you've never felt what it's like to be cursed this way. You are not one of us and you know nothing!~
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLXavier_guards
SAY ~It is the way things are. Samuel is my brother, and Alexandra was a troubled girl. Lyel wished her to be helped, and so I allowed her to become a guardian.~ [FHLX15]
++ ~Tradition is often the way towards wisdom.~ + FHLXavier_trad
++ ~Why should Samuel be forced into service just because of his relation to you?~ + FHLXavier_feeble
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_seband
SAY ~Sebastian has long been a friend. And Andrei has been a nuisance for most of his life. Sebastian offered to take him on as a favour to me, and now he guides him outside.~
=
~Sebastian knows where his true home is, however.~
++ ~I'm not sure he does, actually. He hates it here.~ + FHLXavier_seb1
++ ~Andrei doesn't seem a nuisance to me.~ + FHLXavier_andrei1
++ ~He certainly seems to know what's best for him.~ + FHLXavier_seb2
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_cope
SAY ~It is. Thankfully my family are around to help me. This is why I wished to have Sebastian and Andrei back. They had been gone for so long.~ [FHLX13]
=
~Sebastian knows where his true home is, however.~
++ ~I'm not sure he does, actually. He hates it here.~ + FHLXavier_seb1
++ ~He certainly seems to know what's best for him.~ + FHLXavier_seb2
++ ~I see. Well, I should be going.~ + FHLXavier_leave
END

IF ~~ FHLXavier_trad
SAY ~It is indeed.~
=
~Now, I am tired. Leave me.~ [FHLX16]
IF ~~ EXIT
END

IF ~~ FHLXavier_seb1
SAY ~You shall not come between Sebastian and me! Spreading your poisonous talk around the estate - Sebastian, get <PRO_HIMHER> out of here!~
IF ~~ THEN DO ~SetGlobal("FHLXavierStrop","GLOBAL",1)~
EXIT
END

IF ~~ FHLXavier_seb2
SAY ~Yes. He does.~
=
~Now, I am tired. Leave me.~ [FHLX16]
IF ~~ EXIT
END

IF ~~ FHLXavier_andrei1
SAY ~You did not witness his earlier behaviour.~
=
~Now, I am tired. Leave me.~ [FHLX16]
IF ~~ EXIT
END

//First talk

CHAIN IF ~Global("FHLXavTalk","GLOBAL",0) Global("FHLTellCurse","GLOBAL",0)~ THEN FHLXAV FHLXav1
~Sebastian, Andrei, it gives me great pleasure to see you again.~ [FHLX1]
DO ~SetGlobal("FHLXavTalk","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
~<CHARNAME>, this man seems rather unsavoury. I would advise you to be careful in his presence.~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
~Ugh, this is so ostentatious! Surely he doesn't need all this - and besides, everyone else is living in those little houses!~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
~This looks an odd man, <CHARNAME>, and if what others have said is true you would do well to be on your guard.~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
~Boo is getting a cough from all these smelly candles, <CHARNAME>! Can we be away soon?~
== FHLANDJ
~Xavier! I've missed being here. It's so good to see you!~ [FHLAX1]
== FHLXAV
~My dear cousin. Come here. You look tired.~ [FHLX2]
== FHLANDJ
~Oh, no, I'm fine. It's wonderful travelling outside, like nothing I'd ever--~ [FHLAX2]
== FHLXAV
~They know about our secrets, Lyel tells me. Do they know about your problem?~ [FHLX3]
=
~Of course they do. How could anyone not notice such a freakish, awful thing...I hope you did not conduct yourself foolishly.~ [FHLX4]
== FHLSEBJ
~Xavier, haven't you noticed me yet? I've been out and about spreading merriment and good cheer and all sorts - you know how I am.~ [FHLSX1]
== FHLXAV
~We have suffered in your absence. I am in half a mind to ask you to stay.~ [FHLX5]
=
~But you. How do you find my little realm?~ [FHLX6]
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~It's extremely beautiful. I'm sure you're very proud of it.~ + FHLXav1_manip1
++ ~It was quite overwhelming at first, but it's a lovely place.~ + FHLXav1_good1
++ ~It's quite nice, but I've seen more impressive things.~ + FHLXav1_foot1
++ ~There's not really anything great about it.~ EXTERN FHLSEBJ FHLXav1_bad1
++ ~Who are you to talk like that? It's not your realm, it's your family's.~ EXTERN FHLSEBJ FHLXav1_awful
++ ~So-so. I find it rather stifling, tucked away like this.~ EXTERN FHLSEBJ FHLXav1_bad1

CHAIN FHLSEBJ FHLXav1_bad1
~I think what <CHARNAME> means to say is--~
== FHLXAV
~Be quiet. I heard <CHARNAME> correctly; <PRO_HESHE> does not approve of our family home. Our pride.~
=
~But what about my cousins? Are they so...spectacularly unspectacular? Do they meet with your high standards?~
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~My apologies, I didn't mean to belittle you. Your family is most impressive.~ EXTERN FHLXAV FHLXav1_manip2
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~They're good companions - I like having them around.~ EXTERN FHLXAV FHLXav1_badgoodun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~They're good companions - I like having them around.~ EXTERN FHLXAV FHLXav1_badgooden
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Sometimes they can be a little tiring, but I'm glad to be with them.~ EXTERN FHLXAV FHLXav1_fairun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~Sometimes they can be a little tiring, but I'm glad to be with them.~ EXTERN FHLXAV FHLXav1_fairen
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Sometimes I don't know why I bother with them.~ EXTERN FHLXAV FHLXav1_badworseun
IF ~Global("FHLUnenthus","GLOBAL",0)~ THEN REPLY ~Sometimes I don't know why I bother with them.~ EXTERN FHLXAV FHLXav1_badworseen
++ ~My 'standards'? Do you know who you're talking to?~ + FHLXav1_awful
IF ~Global("FHLUnenthus","GLOBAL",1)~ THEN REPLY ~Leave them out of this - they're not your slaves.~ EXTERN FHLXAV FHLXav1_slave

CHAIN FHLSEBJ FHLXav1_awful
~<CHARNAME>, that fever must have come back - it's making you delirious again! I'm sorry about this, Xavier, <PRO_HESHE>'s had a lot of problems lately--~
== FHLXAV
~Be still. <CHARNAME>, you insult me with your presence. Get out of my sight. Andrei, go to your parents. Sebastian--~
== FHLSEBJ
~Look, Xavier, <PRO_HESHE> wasn't trying to be malicious, <PRO_HESHE> was just being an idiot. Trust me, no one could ever think that badly of you - it's impossible.~
=
~Before you make a decision about it, how about we have a chat about it away from these people, hmmm?~
=
~Please?~
== FHLXAV
~...~
=
~Very well. Andrei, Sebastian will join you later.~
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatch","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

CHAIN FHLXAV FHLXav1_slave
~Slaves? What would you know? I am a slave to my family and to the curse. They owe me a debt that someone like you would never understand!~
== FHLSEBJ
~Xavier, calm down, please. I don't want you hurting yourself!~
== FHLXAV
~Silence! <CHARNAME>, I know that you had the barest intention of coming here. Yet you did and you have the gall to insult me in my own house! Tell me why I should even consider allowing my cousins to travel with you!~
END
++ ~Of course I'm worthy to stay in their company. I'm not some lackey to be ordered around!~ + FHLXav1_moreawful
++ ~I don't have to answer to you, Xavier - I'm far more worthy than a creep like you.~ + FHLXav1_scaryawful
++ ~Xavier, I apologise most wholeheartedly for offending you. I didn't intend it at all.~ + FHLXav1_failedmanip

CHAIN FHLXAV FHLXav1_bestcatch
~Then you shall continue. You seem to be worthy of that honour. You must be tired. You may rest within the estate and leave when you wish.~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN
~Well, that was easier than I expected. The way Sebastian was going on, I thought we'd be facing some sort of ogre from the deep!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
~How can that man speak of honour, when he speaks so to a knight of the Order? Hmmph!~
EXIT

CHAIN FHLXAV FHLXav1_faircatch
~I have my doubts about you and they are more than likely correct. Still, I will allow you the honour of travelling with my relatives for now. Do not make me regret it.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN
~How can that man speak of honour, when he speaks so to a knight of the Order? Hmmph!~
== FHLSEBJ
~Excellent! I'm glad to see everyone getting on so well.~
EXIT

CHAIN FHLXAV FHLXav1_scaryawful
~How dare you! How dare you come into my realm and insult me so!~
== FHLSEBJ
~Xavier--~
== FHLXAV
~SILENCE! <CHARNAME>, you will leave at once! Andrei, get out! Sebastian--~
== FHLSEBJ
~Xavier. It would be so unlike you to make a decision that you might regret. How about we have a chat about it away from these people, hmmm?~
=
~Please?~
== FHLXAV
~Hmm. Very well. Andrei, you may leave. Sebastian will join you later.~
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatchTime","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

CHAIN FHLXAV FHLXav1_moreawful
~You are not worthy in the slightest! You are disrespectful and I will not stand it!~
== FHLSEBJ
~Xavier--~
== FHLXAV
~I want you out of my realm now! Andrei, get out and go to your parents. Sebastian--~
== FHLSEBJ
~Xavier. Let's talk about this. It would be so unlike you to make a decision that you might regret. How about we have a chat about it away from these people, hmmm?~
=
~Please?~
== FHLXAV
~Hmm. Very well. Andrei, you may leave. Sebastian will join you later.~
DO ~SetGlobal("FHLSebCatch","GLOBAL",2)
SetGlobalTimer("FHLSebCatch","GLOBAL",TWO_HOURS)
ActionOverride("FHLSEB",LeaveParty())
ActionOverride("FHLSEB",SetLeavePartyDialogFile())
ActionOverride("FHLSEB",ChangeAIScript("",DEFAULT))
ActionOverride("FHLXAV",MoveToPoint([1105.1623])
ActionOverride("FHLSEB",MoveToPoint([1152.1650])~
EXIT

//ESTM
CHAIN IF ~Global("FHLTellCurse","GLOBAL",3)~ THEN FHLXAV FHLESTM
~Sebastian. I am disappointed in you. Can I even list the things that you have done wrong?~ [FHLX17]
DO ~SetGlobal("FHLTellCurse","GLOBAL",4)~
== FHLLYEL
~Sebastian, what are you-- What's happened?~ [FHLLY7]
== FHLSEBJ
~We know the truth, that's what. We know the truth!~ [FHLSQ10]
== FHLXAV
~Ha. And what does little Andrei know?~ [FHLX18]
== FHLSEBJ
~Matthias Nicolai Luxley! Remember him?~ [FHLSQ11]
== FHLXAV
~Be quiet.~ [FHLX19]
== FHLSEBJ
~He cursed his own family to get what he wanted--~ [FHLQ12]
== FHLXAV
~I order you to be quiet!~ [FHLX20]
== FHLSEBJ
~He lied to them and made them worship him!~ [FHLS13]
== FHLLYEL
~Is this-- Sebastian, is this true?~ [FHLLY8]
== FHLAL
~Don't be stupid. It's one of Sebastian's fancies.~ [FHLAL9]
== FHLANDJ
~No, it's - true. He, he made the estate, too. To rule the family. And there's, there's a cure--~
== FHLAL
~Tell me. Now.~
== FHLSEBJ
~I know you want to escape, too, Alexandra! Help me. Help me kill him!~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~You mustn't do this, Sebastian! Andrei wouldn't want you to hurt your family!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",LAWFUL_GOOD)~ THEN
~Andrei is right - do not give into your baser instincts in this.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN
~I...cannot say what would be a good course of action in this case. On the one hand, Xavier is clearly evil. On the other...~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN
~I believe the course is obvious - Xavier is a blight on these people's happiness and he should be killed!~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN
~Ah, do whatever you will. If you kill him, however, you will be able to raid whatever treasures he has squirrelled away...~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN
~Can't you see that Andrei's not going to support you on this? Think of what he would want, Sebastian!~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN
~Sebastian, consider this carefully. If you kill this man you will destroy your own life.~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
~The right path is...unclear to me. On the one hand, Xavier is clearly an agent of evil. On the other, innocents could die if they get caught up in this.~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
~I say kill 'im! If ye've got any guts ye'll stand up for yerself for a change!~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
~My heart says that we must squash Xavier beneath the boot of justice! But...Andrei does not look so happy about that.~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
~This is what happens when filthy magics get out of hand. If it was me, I know what I'd do, but you need to decide for yourself.~
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN
~Sebastian, I know what it is to wish a man dead...but you are risking your own life, here.~
== FHLANDJ
~No - Sebastian, you can't do that, it's wrong!~
END
++ ~Don't do this, Sebastian. It isn't right, and you'll suffer from it.~ EXTERN FHLSEBJ FHLESTM_yes
++ ~I'm behind you all the way, Sebastian! You need your freedom.~ EXTERN FHLANDJ FHLESTM_worst
++ ~What about Andrei - doesn't he matter to you? He obviously doesn't want you to do this.~ EXTERN FHLANDJ FHLESTM_andrei
