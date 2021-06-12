//Jealousy talks for Sebastian flirting

APPEND AERIEJ
IF ~Global("FHLAerieJealous","GLOBAL",1)~ THEN BEGIN FHLAerieJealous
SAY ~There is something I must talk with you about...and it is rather awkward - oh dear, I do not want you to take this badly, but...~
=
~I have been noticing the amount of...time you have been spending with Sebastian, and I do not think it is right, considering what - what our friendship is. Unless...I have been mistaken in your feelings?~
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Oh, Aerie, you don't need to worry. He's been banished from his home - he needs cheering up. But that's all it is.~ + FHLAerieJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Have you seen him lately? His whole world's collapsed - he needs cheering up. But that's all it is.~ + FHLAerieJealous_cheer
++ ~We're just friends, Aerie. I like to be affectionate with people I care about - look at me and you.~ + FHLAerieJealous_affection
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY ~Perhaps you have been mistaken. I enjoy Sebastian's company more than yours, these days.~ + FHLAerieJealous_enjoyLDP
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Perhaps you have been mistaken. I enjoy Sebastian's company more than yours, these days.~ + FHLAerieJealous_enjoyMDP
++ ~I think you misunderstand my feelings for you, Aerie. I hold you in high regard, but my inclinations lie elsewhere.~ + FHLAerieJealous_gay
END

IF ~~ FHLAerieJealous_cheer
SAY ~I do understand that, and you have d-done a lot for me too, but - but I do not like the way you have chosen to do so.~
=
~Please, <CHARNAME>, let him know that - that your feelings lie elsewhere, or I - I do not know what I shall do!~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAerieJealous_affection
SAY ~So - so your feelings toward me are also only friendly? Oooh, you are confusing, <CHARNAME> - just let him know that - that your feelings lie elsewhere, or I do not know what I shall do!~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAerieJealous_enjoyMDP
SAY ~What? Then you are a cruel man, <CHARNAME>! If - if I had known that you liked Sebastian more than me, then I would not have been so foolish as to - to expect more from you!~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAerieJealous_enjoyLDP_afresh
SAY ~Y-yes, <CHARNAME>, I think we can. Let's just...say no more about it.~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~~ FHLAerieJealous_enjoyLDP_break
SAY ~Then...then I shall say no more about it, <CHARNAME>. I had hoped...but that is just silly talk.~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAerieJealous_gay
SAY ~What? Then you are a cruel man, <CHARNAME>! If - if I had known that you would prefer a man over me, then I would not have been so foolish as to - to expect more from you!~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",2) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLAerieJealous","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLAerieJealous2MDP
SAY ~You and Sebastian are - are not considering my feelings in the slightest! I cannot watch this any longer, <CHARNAME>! I-I shall speak to you no more, and I hope you're h-happy for hurting me so!~
IF ~~ THEN DO ~SetGlobal("FHLAerieJealous","GLOBAL",4) SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT
END
END

CHAIN AERIEJ FHLAerieJealous_enjoyLDP
~What? Then you are a cruel man, <CHARNAME>! If - if I had known that you liked Sebastian more than me, then I would not have been so foolish as to - to expect more from you!~
== FHLSEBJ
~What's this? Er, <CHARNAME>, I think you might have got the wrong end of the stick. Pardon the phrase.~
=
~Aerie, I assure you I wouldn't dream of coming between you and your beau.~
==
AERIEJ
~R-really? Then...<CHARNAME>? Am I mistaken, or am I not?~
END
++ ~Are you sure you don't want any more than friendship, Sebastian?~ EXTERN FHLSEBJ FHLAerieJealous_enjoyLDP_friend
++ ~This has all been a misunderstanding. Aerie, can we start afresh?~ + FHLAerieJealous_enjoyLDP_afresh
++ ~I'm sorry, Aerie. I just don't want to be with you like that.~ + FHLAerieJealous_enjoyLDP_break

CHAIN IF ~Global("FHLAerieJealous","GLOBAL",3)
Global("FHLMDP","GLOBAL",0)~ THEN AERIEJ FHLAerieJealous2
~Sebastian, you and <CHARNAME> are not considering my feelings in the slightest! I cannot watch this any longer, and I hope you're h-happy for hurting me so!~
== FHLSEBJ
~Wait, wait, wait. Aerie, I can categorically assure you that I don't want to get into any sort of...'relationship' with your boy.~
=
~Of course, I'd say that you're too good for him if he's treating you like this, but what business is it of mine?~
== AERIEJ
~I-I like him a great deal, Sebastian!~
== FHLSEBJ
~And that's fine. I don't want you to get upset over this.~
== AERIEJ
~Then - then you are no more than friendly?~
== FHLSEBJ
~If that. Frankly, I wouldn't touch him with a barge-pole, but maybe that's just me!~
== AERIEJ
~All - all right, then.~
DO ~SetGlobal("FHLAerieJealous","GLOBAL",4)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

APPEND ANOMENJ

IF ~Global("FHLAnomenJealous","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BEGIN FHLAnomenJealousLNLG
SAY ~My lady, there is a matter of some delicacy that I wish to speak of with you - but it is for your ears alone, if you will hear me.~
=
~I have noticed a change in your behaviour towards Sebastian of late. I wish to know whether this is a...test of my affections, or whether it is something more serious.~
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Sebastian's been banished from his home, Anomen - he needs cheering up. But that's all it is.~ + FHLAnomenJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Have you seen him lately? His whole world's collapsed - he needs cheering up. But that's all it is.~ + FHLAnomenJealous_cheer
++ ~I like to be affectionate with people I care about, Anomen. I care about him, but it's nothing more.~ + FHLAnomenJealous_affection
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY ~It's nothing to do with you. I enjoy Sebastian's attention more than yours, these days.~ EXTERN FHLSEBJ FHLAnomenJealous_enjoyLDP
IF ~GlobalGT("FHLMDP","GLOBAL",0)~ THEN REPLY ~It's nothing to do with you. I enjoy Sebastian's attention more than yours, these days.~ + FHLAnomenJealous_enjoy
++ ~I wasn't trying to test you, Anomen, but I realise now that my behaviour was inappropriate.~ + FHLAnomenJealous_inapprop
END

IF ~~ FHLAnomenJealous_cheer
SAY ~I do relate to his circumstance, if not to him as a man. Still, <CHARNAME>, I would have you tell him that your affection lies elsewhere. I do not wish him to think that things between you are more than what they are.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~ EXIT
END

IF ~~ FHLAnomenJealous_affection
SAY ~My lady, you know that I hold you in the highest esteem, but I beg that you would moderate your behaviour with him. I do not wish him - or others - to think that that things between you are more than what they are.~
IF ~~ EXIT
END

IF ~~ FHLAnomenJealous_enjoy
SAY ~I...see. You wound me with your callous words, my lady - I shall speak no more of it.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAnomenJealous_inapprop
SAY ~My lady, you know that I hold you in the highest esteem, and I would not wish to cast aspersions on your behaviour. However, I would ask that you inform him that your affection lies elsewhere. I would not have him think...but enough of this talk.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~ EXIT
END

IF ~Global("FHLAnomenJealous","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)~ THEN BEGIN FHLAnomenJealousCN
SAY ~My lady, I wish to speak with you - but it is for your ears alone. Please, come away from the others a while.~
=
~I have noticed a change in your behaviour towards Sebastian of late. Is this mere frivolity, or is it something more serious?~
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Sebastian's been banished from his home, Anomen - he needs cheering up. But that's all it is.~ + FHLAnomenJealousCN_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Have you seen him lately? His whole world's collapsed - he needs cheering up. But that's all it is.~ + FHLAnomenJealousCN_cheer
++ ~I like to be affectionate with people I care about, Anomen. I care about him, but it's nothing more.~ + FHLAnomenJealousCN_affection
++ ~It's not only frivolity - I enjoy Sebastian's attention more than yours, these days.~ + FHLAnomenJealousCN_enjoy
++ ~You're right, it was just frivolity. I will behave more appropriately in future.~ + FHLAnomenJealousCN_inapprop
END

IF ~~ FHLAnomenJealousCN_cheer
SAY ~I do not like the particular method you have chosen, <CHARNAME>. Please, tell him that your affections lie elsewhere, or he and I may have to come to blows on your behalf.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealousCN_affection
SAY ~Your generous heart does you credit, my lady. But please, tell him that your affections lie elsewhere. I do not wish to be always wondering if you are true to me.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealousCN_enjoy
SAY ~Then you have made me a fool, and it was unworthy of you to do so! I shall speak no more of it.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLAnomenJealousCN_inapprop
SAY ~Ha! You have a generous heart, my lady, and it does you credit. I would not have you change. Still, I would have you inform him that your affections lie elsewhere. I would not have him think...but enough of this talk.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLAnomenJealous_enjoyLDP_afresh
SAY ~Yes...yes, I think that would be a good idea. Let us be on our way.~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",2)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~Global("FHLAnomenJealous","GLOBAL",3)
GlobalTimerExpired("FHLAnomenJealousTime","GLOBAL")
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLAnomenJealous2
SAY ~<CHARNAME>, I cannot understand why you have not done as I asked and told Sebastian that you are not interested in him. I do not wish to be some kind of - of shared goods, so I will leave you alone from now on!~
IF ~~ THEN DO ~SetGlobal("FHLAnomenJealous","GLOBAL",4) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLSEBPID_flirtAnomen_notalk
SAY ~I would be most grateful if you did not. This whole affair feels most unsavoury.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)~
EXIT
END

IF ~~ FHLSEBPID_flirtAnomen_break
SAY ~What?! But then...ah, you are a cruel woman, <CHARNAME>! I suppose I am well out of this affair, if it means that I escape your clutches!~
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("FHLSebJustFriends","GLOBAL",0)~
EXIT
END
END

CHAIN FHLSEBJ FHLAnomenJealous_enjoyLDP
~What's this? Oh, <CHARNAME>, you know I like your company, but I don't want your 'company', if you get my drift.~
=
~The last thing I want to do is cause a ruckus.~
== ANOMENJ
~Hmmm. Then you do not have designs on my lady?~
== FHLSEBJ
~What an odd turn of phrase. No, I don't.~
== ANOMENJ
~Well, <CHARNAME>? What have you to say about this?~
END
++ ~Are you sure you don't want any more than friendship, Sebastian?~ + FHLAnomenJealous_enjoyLDP_friend
++ ~This has all been a misunderstanding. Anomen, can we start afresh?~ EXTERN ANOMENJ FHLAnomenJealous_enjoyLDP_afresh
++ ~I'm sorry, Anomen. I just don't want to be with you like that.~ EXTERN ANOMENJ FHLAnomenJealous_enjoy

CHAIN IF ~Global("FHLAnomenJealous","GLOBAL",3)
Global("FHLMDP","GLOBAL",0)~ THEN ANOMENJ FHLAnomenJealous2
~I cannot fathom why you thought that I would not notice how you have been behaving with my lady!~
== FHLSEBJ
~Relax, Anomen. I don't have any designs on your girl. She's lovely, I'm sure, but you needn't worry that I'm about to get into her skirt.~
== ANOMENJ
~Do not speak of my lady in such a tone!~
== FHLSEBJ
~Fine, fine. I just wanted to try to head this off before we had to have a duel or something.~
DO ~SetGlobal("FHLAnomenJealous","GLOBAL",4)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHLSEBPID_MDPflirtAnomen_change
~Maybe I need a change from your griping, did you ever think of that? But...I can see that you might want someone else to have fun with - and he's hardly much fun.~
== ANOMENJ
~What is this? <CHARNAME>, I thought we had resolved this matter!~
== FHLSEBJ
~So did I. It seems that she thought differently, and who am I to disagree with the Bhaalspawn?~
END
++ ~I'm sorry, Anomen. I was only being facetious. I won't talk to Sebastian about it again.~ EXTERN ANOMENJ FHLSEBPID_flirtAnomen_notalk
++ ~Sebastian, I want to get to know you better. I'd prefer to spend time with you than Anomen.~ EXTERN ANOMENJ FHLSEBPID_flirtAnomen_break

APPEND JAHEIRAJ
IF ~Global("FHLJaheiraJealous","GLOBAL",1)~ THEN BEGIN FHLJaheiraJealous
SAY ~<CHARNAME>, there is something that has been...bothering me, lately. I have noticed you behaving very affectionately towards Sebastian.~
=
~You may be giving him the wrong idea about how you feel, so I would suggest that you tell him otherwise as soon as you can.~
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Sebastian's been banished from his home, Jaheira - he needs cheering up. But that's all it is.~ + FHLJaheiraJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Have you seen him lately? His whole world's collapsed - he needs cheering up. But that's all it is.~ + FHLJaheiraJealous_cheer
++ ~I like to be affectionate with people I care about, Jaheira. I care about him, but it's nothing more.~ + FHLJaheiraJealous_affection
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~The truth is, Jaheira, that I enjoy Sebastian's attention more than yours, these days.~ + FHLJaheiraJealous_enjoy
IF ~Global("FHLMDP","GLOBAL",0)~ THEN REPLY ~The truth is, Jaheira, that I enjoy Sebastian's attention more than yours, these days.~ + FHLJaheiraJealousLDP
++ ~I think you have misunderstood my feelings, Jaheira. I hold you in high regard, but my inclinations lie elsewhere.~ + FHLJaheiraJealous_enjoy
END

IF ~~ FHLJaheiraJealous_cheer
SAY ~That is all very well, but he is not the only--~
=
~Ah, that is not important. Still, I would advise that you do so. It is not proper to toy with a person's affections.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLJaheiraJealous_affection
SAY ~I understand, <CHARNAME>. But such behaviour may lead down avenues that you are unaware of. It is not proper to toy with another's affections.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoy
SAY ~Then...if you have such feelings, I shall stay out of the situation. Clearly you know your own mind.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2) SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoyLDP_afresh
SAY ~I believe that I would like that. A friendship is not something to be lightly cast aside.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)
SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT
END

IF ~~ FHLJaheiraJealous_enjoyLDP_enjoy2
SAY ~Then...I shall stay out of the situation from now on.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",2)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLJaheiraJealousTimer2","GLOBAL",1)
Global("FHLJaheiraJealous","GLOBAL",3)
GlobalTimerExpired("FHLJaheiraJealousTime","GLOBAL")
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BEGIN FHLJaheiraJealous2
SAY ~This is becoming ridiculous. <CHARNAME>, I clearly cannot hope...that is, while you continue your attention to Sebastian I do not feel at all comfortable with our friendship. I shall continue at your side, but as any more than a companion? Never.~
IF ~~ THEN DO ~SetGlobal("FHLJaheiraJealous","GLOBAL",4)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHLSEBPID_flirtJaheira_notalk
SAY ~We shall...continue as usual, then. But do not trifle so with people's feelings - it does no credit whatsoever to either of us.~
IF ~~ THEN DO ~SetGlobal("FHLSebJustFriends","GLOBAL",2)~
EXIT
END

IF ~~ FHLSEBPID_flirtJaheira_break
SAY ~What?! You are a cruel man indeed, <CHARNAME>! Gorion would not have been proud of such conduct.~
IF ~~ THEN DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("FHLSebJustFriends","GLOBAL",0)~
EXIT
END
END

CHAIN JAHEIRAJ FHLJaheiraJealousLDP
~Clearly you know your own mind, then.~
== FHLSEBJ
~Um, not to put too fine a point on it, but I don't think he does.~
== JAHEIRAJ
~Eh? But it seemed that you and he were...~
== FHLSEBJ
~I think <CHARNAME> might have got the wrong end of the stick, if you'll pardon the expression. I don't really want to have anything to do with him if it'll cause a fuss.~
== JAHEIRAJ
~I...see. Then what do you have to say, <CHARNAME>?~
END
++ ~Are you sure you don't want any more than friendship, Sebastian?~ EXTERN FHLSEBJ FHLJaheiraJealous_enjoyLDP_friend
++ ~This has all been a misunderstanding. Jaheira, can we start afresh?~ + FHLJaheiraJealous_enjoyLDP_afresh
++ ~I'm sorry, Jaheira. I just don't want to be with you like that.~ + FHLJaheiraJealous_enjoyLDP_enjoy2

CHAIN IF ~Global("FHLJaheiraJealousTimer2","GLOBAL",1)
Global("FHLJaheiraJealous","GLOBAL",3)
GlobalTimerExpired("FHLJaheiraJealousTime","GLOBAL")
Global("FHLMDP","GLOBAL",0)~ THEN JAHEIRAJ FHLJaheiraJealous2_LDP
~This is becoming ridiculous. Sebastian, while you and <CHARNAME> carry on in this way I do not feel at all comfortable with our friendship.~
== FHLSEBJ
~Ridiculous is one word for it. I don't feel comfortable either - it's not fair on you, is it?~
== JAHEIRAJ
~What? But...I thought that you were interested in him.~
== FHLSEBJ
~Certainly not. Jaheira, he's all yours. Er, maybe that was an unfortunate phrase, but really! I don't want to come between you.~
== JAHEIRAJ
~I...I see. Thank you for clearing up the misunderstanding.~
DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)
SetGlobal("FHLJaheiraJealous","GLOBAL",4)~
EXIT

CHAIN FHLSEBJ FHLSEBPID_MDPflirtJaheira_mistake
~We all make mistakes. That doesn't mean you can just--~
=
~Oh, to hell with it. Fine, we can go and hold hands in the fields, or whatever you want to do.~
== JAHEIRAJ
~<CHARNAME>, what is this? I thought that we were in agreement that this behaviour with Sebastian was over.~
END
++ ~Jaheira's right, Sebastian. Sorry, I was just joking around.~ EXTERN JAHEIRAJ FHLSEBPID_flirtJaheira_notalk
++ ~Not any more. I want to get to know Sebastian better, now.~ EXTERN JAHEIRAJ FHLSEBPID_flirtJaheira_break

APPEND VICONIJ
IF ~Global("FHLViconiaJealous","GLOBAL",1)~ THEN BEGIN FHLViconiaJealous
SAY ~I was not aware that you preferred males to females, <CHARNAME>. Is this a new development, or were you planning to tell me at some later point of your own choosing? I cannot believe that you would behave so foolishly with that absurd male Sebastian, even in jest.~
IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN REPLY ~Sebastian's been banished from his home, Viconia - he needs cheering up. But that's all it is.~ + FHLViconiaJealous_cheer
IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN REPLY ~Have you seen him lately? His whole world's collapsed - he needs cheering up. But that's all it is.~ + FHLViconiaJealous_cheer
++ ~I like to be affectionate with people I care about, Viconia. I care about him, but it's nothing more.~ + FHLViconiaJealous_affection
++ ~The truth is, Viconia, that I enjoy Sebastian's attention more than yours, these days.~ + FHLViconiaJealous_enjoy
++ ~You're right, Viconia. I wasn't sure when to tell you, but my inclinations lie elsewhere.~ + FHLViconiaJealous_enjoy
END

IF ~~ FHLViconiaJealous_cheer
SAY ~He has no monopoly on suffering, <CHARNAME>. Tell him that you do not feel for him, or I shall speak with you no more.~
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLViconiaJealous_affection
SAY ~What you term 'affection' is nothing more than ridiculous pawing. Stop making eyes at the male, and tell him you do not feel for him, or I shall speak with you no more.~
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2)~
EXIT
END

IF ~~ FHLViconiaJealous_enjoy
SAY ~Ha! Then you are less worthy of my concern than I imagined. I shall leave you to your pathetic existence.~
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",2) SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT
END

IF ~Global("FHLViconiaJealous","GLOBAL",3)~ THEN BEGIN FHLViconiaJealous2
SAY ~I was right all along, I see: you have not even bothered to tell Sebastian that you do not care not for him. You are a weak, pathetic creature, and will die never having known what you have missed by spurning me.~
IF ~~ THEN DO ~SetGlobal("FHLViconiaJealous","GLOBAL",4)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT
END
END

APPEND FHLSEBJ
IF ~~ FHLAerieJealous_enjoyLDP_friend
SAY ~Pretty much. Oh, don't get me wrong, I like a bit of affection as much as the next man. But if Aerie's going to get upset I'd rather you didn't do it.~
++ ~Still, Aerie, I just don't feel that way about you.~ EXTERN AERIEJ FHLAerieJealous_enjoyLDP_break
++ ~All right. Aerie, can we start afresh after this?~ EXTERN AERIEJ FHLAerieJealous_enjoyLDP_afresh
END

IF ~~ FHLAnomenJealous_enjoyLDP_friend
SAY ~Pretty much. Oh, don't get me wrong, I like a bit of affection as much as the next man. But if Anomen's going to start challenging me to single combat I'd rather you didn't act that way.~
++ ~Still, Anomen, I just don't feel that way about you.~ EXTERN ANOMENJ FHLAnomenJealous_enjoy
++ ~All right. Anomen, can we start afresh after this?~ EXTERN ANOMENJ FHLAnomenJealous_enjoyLDP_afresh
END

IF ~~ FHLJaheiraJealous_enjoyLDP_friend
SAY ~Pretty much. Oh, don't get me wrong, I like a bit of affection as much as the next man. But if Jaheira's going to frown at me about it, I'd rather you didn't act that way.~
++ ~Still, Jaheira, I just don't feel that way about you.~ EXTERN JAHEIRAJ FHLJaheiraJealous_enjoyLDP_enjoy2
++ ~All right. Jaheira, can we start afresh after this?~ EXTERN JAHEIRAJ FHLJaheiraJealous_enjoyLDP_afresh
END
END
