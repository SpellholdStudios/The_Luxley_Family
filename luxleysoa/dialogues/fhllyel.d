BEGIN FHLLYEL

//Before seeing Xavier, after arriving at the estate

IF ~Global("FHLLyelEstate","GLOBAL",2) Global("FHLXavTalk","GLOBAL",0) Global("FHLLyelTalk1","GLOBAL",0)~ THEN BEGIN FHLLyelBeforeXavier
SAY ~Ah, good to see that you made it! Xavier's just upstairs with Samuel - that's his brother, one of his guards. He's looking forward to seeing you, so don't keep him waiting!~ [FHLLY4]
IF ~Global("FHLAlSeb","GLOBAL",1)~ THEN REPLY ~Your sister doesn't seem very happy here.~ + FHLLyelBeforeXavier_sister
++ ~Tell me about you and Sebastian. Have you been friends for long?~ + FHLLyelBeforeXavier_seb
++ ~Are you happy, running errands for Xavier like this?~ + FHLLyelBeforeXavier_happy
++ ~Do you have any suggestions about how to deal with Xavier?~ + FHLLyelBeforeXavier_tips
++ ~I'll head upstairs, then.~ + FHLLyelBeforeXavier_xavier
END

IF ~~ FHLLyelBeforeXavier_sister
SAY ~Alexandra? Yes, she's...well, between you and me she had a lot of problems when she was younger, and I don't think Sebastian and I helped the situation much.~
=
~She's been better since she became one of Xavier's guards, but of course that means I don't see her very often.~
++ ~How do you mean, you didn't make things much better?~ + FHLLyelBeforeXavier_better
++ ~What was she like before?~ + FHLLyelBeforeXavier_before
++ ~What animal does she transform into?~ + FHLLyelBeforeXavier_trans
++ ~Perhaps I could take her with me when I leave.~ + FHLLyelBeforeXavier_leave
END

IF ~~ FHLLyelBeforeXavier_seb
SAY ~Oh, yes, since we were young. I was the one who took him outside the first time and, yes, he's a great friend.~
=
~It's a shame that he's away so much, really, though I shouldn't be surprised - he was pretty adventurous even when we were little.~
++ ~Care to share any embarrassing tales?~ + FHLLyelBeforeXavier_embarrass
++ ~I should head up to Xavier now, I think.~ + FHLLyelBeforeXavier_xavier
++ ~How old were you when you first left the estate?~ + FHLLyelBeforeXavier_old
END

IF ~~ FHLLyelBeforeXavier_happy
SAY ~Of course. Sometimes I'd rather I could spend more time in the estate, but that's just the way things are.~
=
~Why, do you find it awfully stuffy here?~
++ ~It feels quite cooped up, I must admit.~ + FHLLyelBeforeXavier_cooped
++ ~No, it feels nice and safe. I could get used to somewhere like this.~ + FHLLyelBeforeXavier_safe
++ ~I just don't know how you can live like this.~ + FHLLyelBeforeXavier_live
END

IF ~~ FHLLyelBeforeXavier_tips
SAY ~Just be polite. He's under a lot of strain with bearing the brunt of the curse, so sometimes he can seem a bit...forbidding, but all he does is for the good of the estate.~
++ ~So everyone keeps telling me.~ + FHLLyelBeforeXavier_tell
++ ~Very well. I'll go up and see him now.~ + FHLLyelBeforeXavier_xavier
++ ~That doesn't seem too difficult to cope with.~ + FHLLyelBeforeXavier_cope
END

IF ~~ FHLLyelBeforeXavier_better
SAY ~Oh, you know how children are. She was younger, and we rather left her out. I've tried to say sorry, but she won't hear of it.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_before
SAY ~She'd sit in her room and not do a thing all day. At least she has something to occupy her now, and of course Samuel to talk to.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_trans
SAY ~A snake - a rather poisonous one at that, as I found out when I tried to pick her up once.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_leave
SAY ~Ha! Wait - you're serious? Oh, no, that wouldn't do at all, I'm afraid. Besides, I doubt she'd *want* to leave - this is all she knows, after all.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_embarrass
SAY ~I don't think Sebastian would ever forgive me if I took you up on that offer!~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_xavier
SAY ~Of course. Go on up those stairs, and remember - be on your best behaviour!~
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLLyelBeforeXavier_old
SAY ~Didn't you know it's rude to ask someone their age? No, don't worry - I can't quite remember now, I must have been eighteen or so. Sebastian was allowed out earlier, but that's just because he's friends with Xavier.~
++ ~That seems a little young to be let out.~ + FHLLyelBeforeXavier_young
++ ~Didn't you get bored before then?~ + FHLLyelBeforeXavier_cooped
++ ~How did Sebastian get Xavier to let him out earlier?~ + FHLLyelBeforeXavier_earlier
END

IF ~~ FHLLyelBeforeXavier_cooped
SAY ~I imagine it might seem that way, after living outside all your life. But it's home for me, and I wouldn't change it for the world.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_safe
SAY ~That's lovely to hear. I'm glad you like the estate - be sure to tell Xavier, he'll appreciate it.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_live
SAY ~Well, it takes all sorts, doesn't it?~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_tell
SAY ~Oh, don't frown like that. It's hard for outsiders to understand, but we owe him everything, especially our loyalty.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_cope
SAY ~Excellent. I'll see you later, then.~
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~ EXIT
END

IF ~~ FHLLyelBeforeXavier_ahem
SAY ~But you should probably be off upstairs. And remember - be on your best behaviour!~
IF ~~ THEN DO ~SetGlobal("FHLLyelTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLLyelBeforeXavier_young
SAY ~They needed someone to do the job of running errands outside, and Xavier thought I was the best at it.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

IF ~~ FHLLyelBeforeXavier_earlier
SAY ~Oh, that's his business - you'd have to ask him that yourself!~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN + FHLLyelBeforeXavier_ahem
END

//After talking to him, before talking to Xavier

IF ~Global("FHLLyelEstate","GLOBAL",2) Global("FHLXavTalk","GLOBAL",0) Global("FHLLyelTalk1","GLOBAL",1)~ THEN BEGIN FHLLyelBeforeXavier2
SAY ~Go on, you should go and speak to Xavier before he gets angry that you're keeping him waiting.~ [FHLLY5]
IF ~~ EXIT
END

//After talking to Xavier

IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLLyelAfterXavier
SAY ~Nice to see you again. Is there anything that you need?~ [FHLLY6]
IF ~Global("FHLAlSeb","GLOBAL",1)~ THEN REPLY ~Your sister doesn't seem very happy here.~ + FHLLyelAfterXavier_sister
++ ~Tell me about you and Sebastian. Have you been friends for long?~ + FHLLyelAfterXavier_seb
++ ~Are you happy, running errands for Xavier like this?~ + FHLLyelAfterXavier_happy
++ ~How exactly do I leave the estate?~ + FHLLyelAfterXavier_leave
++ ~No, I don't need anything, thanks.~ + FHLLyelAfterXavier_no
END

IF ~~ FHLLyelAfterXavier_sister
SAY ~Alexandra? Yes, she's...well, between you and me she had a lot of problems when she was younger, and I don't think Sebastian and I helped the situation much.~
=
~She's been better since she became one of Xavier's guards, but of course that means I don't see her very often.~
++ ~How do you mean, you didn't make things much better?~ + FHLLyelAfterXavier_better
++ ~What was she like before?~ + FHLLyelAfterXavier_before
++ ~What animal does she transform into?~ + FHLLyelAfterXavier_trans
++ ~Perhaps I could take her with me when I leave.~ + FHLLyelAfterXavier_takeleave
END

IF ~~ FHLLyelAfterXavier_seb
SAY ~Oh, yes, since we were young. I was the one who took him outside the first time and, yes, he's a great friend.~
=
~It's a shame that he's away so much, really, though I shouldn't be surprised - he was pretty adventurous even when we were little.~
++ ~Care to share any embarrassing tales?~ + FHLLyelAfterXavier_embarrass
++ ~How old were you when you first left the estate?~ + FHLLyelAfterXavier_old
END

IF ~~ FHLLyelAfterXavier_happy
SAY ~Of course. Sometimes I'd rather I could spend more time in the estate, but that's just the way things are.~
=
~Why, do you find it awfully stuffy here?~
++ ~It feels quite cooped up, I must admit.~ + FHLLyelAfterXavier_cooped
++ ~No, it feels nice and safe. I could get used to somewhere like this.~ + FHLLyelAfterXavier_safe
++ ~I just don't know how you can live like this.~ + FHLLyelAfterXavier_live
END

IF ~~ FHLLyelAfterXavier_leave
SAY ~Go and talk to Josefyne - she was near where we arrived. It's her job to send people outside, and she can send you back where you came from right away.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_no
SAY ~Don't hesitate to ask, if you do.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_better
SAY ~Oh, you know how children are. She was younger, and we rather left her out. I've tried to say sorry, but she won't hear of it.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_before
SAY ~She'd sit in her room and not do a thing all day. At least she has something to occupy her now, and of course Samuel to talk to.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_trans
SAY ~A snake - a rather poisonous one at that, as I found out when I tried to pick her up once.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_takeleave
SAY ~Ha! Wait - you're serious? Oh, no, that wouldn't do at all, I'm afraid. Besides, I doubt she'd want to leave - this is all she knows, after all.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_embarrass
SAY ~I don't think Sebastian would ever forgive me if I took you up on that offer!~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_old
SAY ~Didn't you know it's rude to ask someone their age? No, don't worry - I can't quite remember now, I must have been eighteen or so. Sebastian was allowed out earlier, but that's just because he's friends with Xavier.~
++ ~That seems a little young to be let out.~ + FHLLyelAfterXavier_young
++ ~Didn't you get bored before then?~ + FHLLyelAfterXavier_cooped
++ ~How did Sebastian get Xavier to let him out earlier?~ + FHLLyelAfterXavier_earlier
END

IF ~~ FHLLyelAfterXavier_cooped
SAY ~I imagine it might seem that way, after living outside all your life. But it's home for me, and I wouldn't change it for the world.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_safe
SAY ~That's lovely to hear. I'm glad you like the estate - we get so few visitors.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_live
SAY ~Well, it takes all sorts, doesn't it?~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_young
SAY ~They needed someone to do the job of running errands outside, and Xavier thought I was the best at it.~
IF ~~ EXIT
END

IF ~~ FHLLyelAfterXavier_earlier
SAY ~Oh, that's his business - you'd have to ask him that yourself!~
IF ~~ EXIT
END


//First arrival

IF ~~ FHLLyelArrive_seb
SAY ~Sebastian will be fine, don't you worry.~
++ ~Then let's be off - I'll be happy to come with you.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have been invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I have gone with Sebastian and Andrei to see this place for myself.~ + FHLLyelArrive_come
++ ~If we have to. I don't want it to take too long.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have been invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I have gone with Sebastian and Andrei to see this place for myself.~ + FHLLyelArrive_time
++ ~I've got my own things to do, I'm afraid. Could you two meet me later?~ + FHLLyelArrive_own
++ ~No. I've had enough of your dysfunctional family.~ + FHLLyelArrive_dys
END

IF ~~ FHLLyelArrive_own
SAY ~I'm sorry, but this can't wait. If you like I can take Andrei and Sebastian alone and they'll be back soon - but Xavier won't be pleased.~
++ ~All right, I'll come along, then.~ DO ~SetGlobal("FHLUnenthus","GLOBAL",1)~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have been invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I have gone with Sebastian and Andrei to see this place for myself.~ + FHLLyelArrive_come
++ ~I really can't come with you - can't you come and find me later?~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I was invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I let Sebastian and Andrei go ahead and will meet them later.~ + FHLLyelArrive_later
++ ~No. I've had enough of your dysfunctional family.~ + FHLLyelArrive_dys
END

IF ~~ FHLLyelLeave_where
SAY ~Oh, so they didn't tell you everything! The estate is protected by a magical shield. It always has been - well, since the curse was put on us, which is pretty much the same thing.~
=
~It's inaccessible from the outside without a key. Sebastian has a key for himself and Andrei, which is why it's inexcusable that they haven't come back for so long!~
++ ~What is this key, exactly?~ EXTERN FHLSEBJ FHLLyelLeave_key
++ ~Why did no one tell me this before?~ EXTERN FHLSEBJ FHLLyelLeave_why
++ ~So who created this shield? Was it the same people who put the curse on you?~ + FHLLyelLeave_create
++ ~That sounds a little far-fetched, to be honest.~ EXTERN FHLSEBJ FHLLyelLeave_far
END

IF ~~ FHLLyelLeave_style
SAY ~Thank you! I didn't realise that Sebastian had told you about the shield on the estate as well as everything else.~
++ ~Shield?~ + FHLLyelLeave_where
END

IF ~~ FHLLyelLeave_strange
SAY ~It's no stranger than we are ourselves. You see, the estate is protected by a magical shield. It always has been, since the curse happened. It's inaccessible from the outside without a key.~
=
~Sebastian has a key for himself and Andrei, which is why it's inexcusable that they didn't visit!~
++ ~What is this key, exactly?~ EXTERN FHLSEBJ FHLLyelLeave_key
++ ~Why did no one tell me this before?~ EXTERN FHLSEBJ FHLLyelLeave_why
++ ~So who created this shield? Was it the same people who put the curse on you?~ + FHLLyelLeave_create
++ ~That sounds a little far-fetched, to be honest.~ EXTERN FHLSEBJ FHLLyelLeave_far
END

CHAIN IF ~Global("FHLLyelEstate","GLOBAL",1)~ THEN FHLLYEL FHLLyelLeave
~There we go! Ah, smell that air! Isn't it good to be home?~ [FHLLY2]
DO ~SetGlobal("FHLLyelEstate","GLOBAL",2)~
== HAERDAJ IF ~InParty("Haerdalis")~ THEN
~Ah, now another piece of the puzzle clicks into place. This family grows more and more interesting - I would like to see how it plays out.~
== AERIEJ IF ~InParty("Aerie")~ THEN
~It's so beautiful here! Oh, I'm not surprised you like it so much!~
== FHLLYEL IF ~InParty("Aerie")~ THEN
~Thank you, my dear. It's awfully nice of you to say so.~
== EDWINJ IF ~InParty("Edwin")~ THEN
~Hmmm, that transportation must have taken a powerful amount of magic. I wonder...~
== VALYGARJ IF ~InParty("Valygar")~ THEN
~I don't care to admit it, but this place gives me the shivers. Be on your guard while we're here.~
== JANJ IF ~InParty("Jan")~ THEN
~Well, goodness me! I'm glad I hadn't just eaten, or things might've gotten a little messy.~
== FHLANDJ
~It's just wonderful...~
== FHLSEBJ
~Woohoo. I'm jumping for joy. Somebody hold me back.~ [FHLSQ4]
== FHLLYEL
~Ah, Sebastian, you know you're happy really. Now, are you all right? The transportation didn't shock you too much, did it?~ [FHLLY3]
END
++ ~What in the hells? Is walking not good enough for you people?~ + FHLLyelLeave_where
++ ~It was...interesting, if a little hard on my stomach.~ + FHLLyelLeave_style
++ ~Why didn't you tell me that your estate was so odd?~ + FHLLyelLeave_strange

CHAIN FHLLYEL FHLLyelLeave_create
~A Luxley ancestor. That's all we know, I'm afraid!~
== FHLSEBJ
~Conspiracy of ignorance.~
EXTERN FHLLYEL FHLLyelLeave_seb

CHAIN FHLLYEL FHLLyelLeave_seb
~Don't be so glum! We're hardly trapped.~
=
~You don't have anything to worry about, because I'll go on ahead to Xavier and make sure he's in a good mood. Have a look around - it's the first time an outsider has visited for ages!~
=
~Andrei, make sure Sebastian has fun. And, <CHARNAME>, it was a pleasure to meet you!~
DO ~MoveToPoint([202.2390])
EscapeAreaMove("FHLMH1",1570,998,14)~
EXIT


//second appearance
CHAIN FHLLYEL FHLLyel2_well
~Oh, I'm fine. Not thrilled at doing this, but a job's a job.~
=
~I'm sorry that it's so soon, but it's just the way things have happened. I've...come to take these two back. Xavier's changed his mind.~
== FHLANDJ
~But, Lyel, he said that we could carry on--~
== FHLLYEL
~I know. He just woke up and said that he wanted Sebastian back. And, by default, you as well.~
END
++ ~Is that it? You're just going to up and leave without another word?~ EXTERN FHLANDJ FHLLyel2_upleave
++ ~Do you want me to come with you? Maybe I could help Xavier reconsider.~ + FHLLyel2_reconsider
++ ~Good riddance! Finally, I've got an excuse to be free of you.~ + FHLLyel2_riddance
++ ~Are you sure that you have to do this, Lyel?~ + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_cousin
~I've always said that Sebastian's role in life was to make things as interesting as possible. It's good to see them doing their jobs. Now, I'm afraid, I have to do mine.~
=
~I'm sorry that it's so soon, but it's just the way things have happened. I've...come to take these two back. Xavier's changed his mind.~
== FHLANDJ
~But, Lyel, he said that we could carry on--~
== FHLLYEL
~I know. He just woke up and said that he wanted Sebastian back. And, by default, you as well.~
END
++ ~Is that it? You're just going to up and leave without another word?~ EXTERN FHLANDJ FHLLyel2_upleave
++ ~Do you want me to come with you? Maybe I could help Xavier reconsider.~ + FHLLyel2_reconsider
++ ~Good riddance! Finally, I've got an excuse to be free of you.~ + FHLLyel2_riddance
++ ~Are you sure that you have to do this, Lyel?~ + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_blech
~<CHARNAME>, you poor thing! I wish I could stay around and try and make things better for you, but I'm afraid have a job to do.~
=
~I'm sorry that it's so soon, but it's just the way things have happened. I've...come to take these two back. Xavier's changed his mind.~
== FHLANDJ
~But, Lyel, he said that we could carry on--~
== FHLLYEL
~I know. He just woke up and said that he wanted Sebastian back. And, by default, you as well.~
END
++ ~Is that it? You're just going to up and leave without another word?~ EXTERN FHLANDJ FHLLyel2_upleave
++ ~Do you want me to come with you? Maybe I could help Xavier reconsider.~ + FHLLyel2_reconsider
++ ~Good riddance! Finally, I've got an excuse to be free of you.~ + FHLLyel2_riddance
++ ~Are you sure that you have to do this, Lyel?~ + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_nosoul
~Ouch. Well, good luck in getting it back. I know a fair number of people who are heartless, but none soulless. So far.~
=
~But I digress. I have a job to do. I'm sorry that it's so soon, but it's just the way things have happened. I've...come to take you two back. Xavier's changed his mind.~
== FHLANDJ
~But, Lyel, he said that we could carry on--~
== FHLLYEL
~I know. He just woke up and said that he wanted Sebastian back. And, by default, you as well.~
END
++ ~Is that it? You're just going to up and leave without another word?~ EXTERN FHLANDJ FHLLyel2_upleave
++ ~Do you want me to come with you? Maybe I could help Xavier reconsider.~ + FHLLyel2_reconsider
++ ~Good riddance! Finally, I've got an excuse to be free of you.~ + FHLLyel2_riddance
++ ~Are you sure that you have to do this, Lyel?~ + FHLLyel2_sure

CHAIN FHLLYEL FHLLyel2_reconsider
~You know what? That's a fine idea. <CHARNAME>, it looks like you'll be in our company for a while yet. Everyone, hold on--~
== FHLSEBJ
~Stop! Just stop it right now or I'll stop you myself!~
== FHLLYEL
~Now, don't--~
== FHLSEBJ
~Just shut up. Shut up and crawl back to your stupid master, lapdog!~
== FHLANDJ
~Sebastian!~
== FHLLYEL
~That - wasn't funny. I don't--~
== FHLSEBJ
~Good! I'm glad! I never liked you, anyway. We're never going back to that bastard. Do you hear me? I will not lick his bootheels any more! I won't stand for it!~
=
~Now go away and stay away!~
END
++ ~Sebastian, you shouldn't speak to your cousin that way!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~(Stay silent.)~ EXTERN FHLLYEL FHLLyel2_silent
++ ~What on earth was that outburst about?~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~Well, Lyel, you heard him. Go back to Xavier and don't come back.~ EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_riddance
~Well, then. Hold on, you two!~
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
++ ~Sebastian, you shouldn't speak to your cousin that way!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~(Stay silent.)~ EXTERN FHLLYEL FHLLyel2_silent
++ ~What on earth was that outburst about?~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~Well, Lyel, you heard him. Go back to Xavier and don't come back.~ EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_sure
~Oh, yes, quite sure. Xavier made it very clear who I had to bring back with me.~
== FHLSEBJ
~Well, we're not going, so you can just leave now!~
== FHLLYEL
~Now, Sebastian, please don't--~
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
++ ~Sebastian, you shouldn't speak to your cousin that way!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~(Stay silent.)~ EXTERN FHLLYEL FHLLyel2_silent
++ ~What on earth was that outburst about?~ EXTERN FHLSEBJ FHLLyel2_sebastian
++ ~Well, Lyel, you heard him. Go back to Xavier and don't come back.~ EXTERN FHLLYEL FHLLyel2_alone

CHAIN FHLLYEL FHLLyel2_silent
~That's enough, Sebastian! I don't understand why you're doing this, but--~
== FHLSEBJ
~No, it isn't, because you're still here! Don't you understand that?~
== FHLLYEL
~No! I don't!~
== FHLSEBJ
~Well, let me spell it out for you. We're never going back to that hole. You disgust me with your presence. The very thought of going back to that madman sickens me, and--~
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

CHAIN FHLLYEL FHLLyel2_alone
~That is not what I was asked to do, and it's not what I plan--~
== FHLSEBJ
~Don't you understand what I'm saying, Lyel?~
== FHLLYEL
~No! I don't!~
== FHLSEBJ
~Well, let me spell it out for you. We're never going back to that hole. You disgust me with your presence. The very thought of going back to that madman sickens me, and--~
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

//first appearance
CHAIN IF ~Global("FHLSpawnLyel","GLOBAL",1)~ THEN FHLLYEL FHLLyel
~(Out of the air steps a blond-haired man in his early thirties. Creeping up behind Sebastian, he gives Andrei a wave.)~
== FHLANDJ
~Sebastian, look! It's--~ [FHLAQ6]
DO ~SetGlobal("FHLSpawnLyel","GLOBAL",2)~
== FHLSEBJ
~Do you really think I'd fall for that?~ [FHLSQ1]
== FHLLYEL
~Sebastian! Long time no see!~ [FHLLY9]
== FHLSEBJ
~Aiee! What-- LYEL! If you do that to me one more time I swear I'll--~ [FHLSQ2]
== FHLLYEL
~You should introduce me, before your companions start thinking you've got murderous tendencies. Hello, Andrei - good to see your powers of observation are better than this kitten's!~ [FHLLY10]
== FHLSEBJ
~Fine, fine. This is my cousin - Lyel Vincent Luxley.~ [FHLSQ3]
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN
~Great, another member of this foolish family. They must breed like rabbits.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN
~What's with those long names? Some of us just have to stick with one.~
== FHLLYEL
~I'm delighted to meet you.~ [FHLLY11]
END
++ ~It's good to meet you, too - wherever you came from.~ EXTERN FHLLYEL FHLLyelArrive_charm
++ ~Where in the hells did you come from?~ EXTERN FHLLYEL FHLLyelArrive_where
++ ~Who exactly are you, and how exactly did you just come out of nowhere?~ EXTERN FHLLYEL FHLLyelArrive_where

CHAIN FHLLYEL FHLLyelArrive_charm
~Oh, I'm charmed. It's lovely to finally see who's been keeping Sebastian away from the estate for so long - not that I blame you in the slightest, <CHARNAME>, Sebastian can be so wilful--~
== FHLSEBJ
~Don't start, I know your game. I found <PRO_HIMHER> first! No offence, <CHARNAME>, of course.~
END
++ ~Excuse me? I'm not some sort of possession to be talked over like that!~ EXTERN FHLSEBJ FHLLyelArrive_poss
++ ~Why has this man turned up, anyway? If he's a relative, why should he be here?~ EXTERN FHLSEBJ FHLLyelArrive_why
++ ~Where did you come from? I blinked and the next moment you were there.~ + FHLLyelArrive_where

CHAIN FHLLYEL FHLLyelArrive_where
~From the estate, of course! Now, Sebastian, I have to ask you something. Come here a second. What have you been telling these people?~
== FHLSEBJ
~...~
== FHLLYEL
~(sigh) You have been busy, haven't you, kitten? This is what happens when I don't keep an eye on you. Well, are you ready to head off?~
== FHLSEBJ
~What? No!~
END
++ ~Are you planning on going to the estate, then? Will you be taking me, or just them?~ EXTERN FHLSEBJ FHLLyelArrive_estate
++ ~I'm in charge here, and I want to know what's happening.~ EXTERN FHLSEBJ FHLLyelArrive_charge
++ ~Did I just hear you call Sebastian 'kitten', or were my ears deceiving me?~ EXTERN FHLSEBJ FHLLyelArrive_kit

CHAIN FHLANDJ FHLLyelArrive_daze
~Don't worry, you get used to them. They like messing around.~
== FHLLYEL
~Such cruelty!~
== FHLSEBJ
~I agree wholeheartedly. Now, why are you here?~
EXTERN FHLLYEL FHLLyelArrive_exp

CHAIN FHLSEBJ FHLLyelArrive_poss
~Of course you're not--~
== FHLLYEL
~Sebastian, how could you imply such a dreadful thing? I'm heartily disappointed in you!~
== FHLSEBJ
~Oh, Lyel, how can I make it up to you? Could I ever atone? I offer you my humble self!~
END
++ ~Look, someone tell me what's going on, or I'm going to start getting angry.~ EXTERN FHLSEBJ FHLLyelArrive_why
++ ~How could you grow up with these people around, Andrei?~ EXTERN FHLANDJ FHLLyelArrive_daze
++ ~Will somebody please tell me what's going on?~ EXTERN FHLSEBJ FHLLyelArrive_why

CHAIN FHLSEBJ FHLLyelArrive_kit
~Lyel, what part of 'private nickname' do you not understand? You're embarrassing me!~
== FHLLYEL
~Ahem. I shall endeavour to answer your question. As you know, Sebastian transforms into a cat. Back in the day, when we were young and frivolous--~
== FHLANDJ
~You're *still* frivolous.~
== FHLLYEL
~--we gave each other pet names! Sebastian will always be my kitten in my heart--~
== FHLSEBJ
~--And you, Lyel, will always be my little lapdog!~
END
++ ~...right.~ EXTERN FHLANDJ FHLLyelArrive_sick
++ ~Have you forgotten about going to the estate?~ EXTERN FHLLYEL FHLLyelArrive_leave

CHAIN FHLSEBJ FHLLyelArrive_estate
~Of course we aren't, don't worry.~
== FHLANDJ
~Why not? Lyel--~
== FHLLYEL
~I've been given orders--~
== FHLSEBJ
~I don't care, we're not going!~
END
++ ~(Wait.)~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~This is my decision to make!~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~Everyone, be quiet now!~ EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLSEBJ FHLLyelArrive_charge
~Of course you are, <CHARNAME>, and that's why we're not going to the estate.~
== FHLANDJ
~Why not? Lyel--~
== FHLLYEL
~I've been given orders--~
== FHLSEBJ
~I don't care! We're not going!~
END
++ ~(Wait.)~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~This is my decision to make!~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~Everyone, be quiet now!~ EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_exp
~Why, Sebastian, isn't it obvious? Tell me, does <CHARNAME> know?~
== FHLSEBJ
~Know what?~
== FHLANDJ
~Yes, <PRO_HESHE> does. Sebastian told <PRO_HIMHER> - Xavier's not angry, is he?~
== FHLLYEL
~Ah, you typical gabbermouth kitten! Well, never mind. Are you ready?~
== FHLSEBJ
~What? No!~
END
++ ~Are you planning on going to the estate, then? Will you be taking them, or me too?~ EXTERN FHLSEBJ FHLLyelArrive_estate
++ ~I'm in charge here, and I want to know what's happening.~ EXTERN FHLSEBJ FHLLyelArrive_charge
++ ~Did you just call Sebastian 'kitten'?~ EXTERN FHLSEBJ FHLLyelArrive_kit

CHAIN FHLANDJ FHLLyelArrive_sick
~You two, stop acting up! Lyel, you mentioned going back home.~
== FHLLYEL
~Ah, Andrei, wherever would we be without you?~
== FHLANDJ
~Don't. Ruffle. My. Hair.~
== FHLSEBJ
~Stop! We are not going home! We--~
== FHLANDJ
~Why not? Lyel--~
== FHLLYEL
~I've been given orders--~
== FHLSEBJ
~I don't care! I just--~
END
++ ~(Wait.)~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~This is my decision to make!~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~Everyone, be quiet now!~ EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_leave
~Of course I haven't! Everyone, get ready--~
== FHLSEBJ
~Stop that! We are not going home!~
== FHLANDJ
~Why not? Lyel--~
== FHLLYEL
~I've been given orders--~
== FHLSEBJ
~I don't care, I just--~
END
++ ~(Wait.)~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~This is my decision to make!~ EXTERN FHLLYEL FHLLyelArrive_thatsit
++ ~Everyone, be quiet now!~ EXTERN FHLLYEL FHLLyelArrive_thatsit

CHAIN FHLLYEL FHLLyelArrive_thatsit
~Right, that's it, listen to me! I'm sorry for this awful intrusion, <CHARNAME>, but bear with me. Xavier doesn't want to keep them there, he just wants to see them. This is a formal summons.~
=
~Andrei, he wants to check up on you, he's worried that the outside isn't what you hoped.~
=
~Sebastian, Xavier misses you and he's getting impatient waiting for you both to come back. And seven months is far too long.~
== FHLSEBJ
~I've just started feeling free of that place! Why would I go back?~
== FHLLYEL
~Sebastian, don't say that! Please. Surely there are some things you miss?~
== FHLSEBJ
~I don't want to.~
== FHLANDJ
~You sound like a child! Lyel, please, take us back straightaway.~
== FHLLYEL
~<CHARNAME>, would you mind accompanying us? Xavier's heard that you're travelling with our cousins, and he wants to meet you.~
END
++ ~I'd like to come with you - it would be interesting to see the estate.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have been invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I have gone with Sebastian and Andrei to see this place for myself.~ + FHLLyelArrive_come
++ ~But Sebastian really seems to hate the idea.~ + FHLLyelArrive_seb
++ ~If we have to go I will, but I don't want to take too long.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have been invited to go to the Luxley family's estate - which, as it happens, is a shielded location only accessible by a key of some kind. I have gone with Sebastian and Andrei to see this place for myself.~ + FHLLyelArrive_time
++ ~I have my own things to do, I'm afraid. I don't have time to come with you.~ + FHLLyelArrive_own
++ ~No. I've had enough of your dysfunctional family.~ + FHLLyelArrive_dys

CHAIN FHLLYEL FHLLyelArrive_come
~Ah, it's lovely to see someone with such curiosity! You're a treasure. Now, hold on. You may find this a little strange!~
DO ~SetGlobal("FHLLyelEstate","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL06")~
EXIT

CHAIN FHLLYEL FHLLyelArrive_time
~Oh, I'm sure you can make the time in your busy schedule. It won't be long.~
== FHLANDJ
~Trust me, <CHARNAME>, you'll be glad you came!~
== FHLSEBJ
~I'm going to be sick.~
== FHLLYEL
~Don't be melodramatic, it doesn't suit you when you're grumpy. Now, everyone hold on. You may find this a little strange!~
DO ~SetGlobal("FHLLyelEstate","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL06")~
EXIT

CHAIN FHLLYEl FHLLyelArrive_later
~Of course, I wouldn't dream of imposing on you - though I'm not sure Xavier will be pleased. Come on, you two, let's go.~
DO ~SetGlobalTimer("FHLReturn1","GLOBAL",ONE_DAY)
SetGlobal("FHLSebCatch","GLOBAL",3)
SetGlobal("FHLReturn1Set","GLOBAL",1)~
== FHLSEBJ
~I'm going to be sick.~
== FHLLYEL
~Don't be melodramatic, it doesn't suit you when you're grumpy.~
== FHLANDJ
~See you soon, <CHARNAME>. We'll try not to be too long.~
EXIT

CHAIN FHLLYEL FHLLyelArrive_dys
~I don't think Xavier would appreciate you calling us that. Sebastian, Andrei, come over here. Say your goodbyes.~
== FHLANDJ
~I'm sorry you don't want to come with us. Good luck, I suppose.~
== FHLSEBJ
~With Bhaal as your father, who are you to call anyone dysfunctional? Sometimes your stupidity astounds me.~
DO
~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL05")~
EXIT

//Lyel's appearance #2//

CHAIN IF WEIGHT #-1 ~Global("FHLSpawnLyel2","GLOBAL",1)~ THEN FHLLYEL FHLLyel2
~(The now-familiar figure of Lyel Luxley steps out of the air and makes his way towards you, though Sebastian and Andrei do not seem to have noticed him.)~
== FHLSEBJ
~I'm bored.~ [FHLSQ5]
DO ~SetGlobal("FHLSpawnLyel2","GLOBAL",2)~
== FHLANDJ
~I'm sure you are. Just stop broadcasting it to everyone.~ [FHLAQ1]
== FHLLYEL
~Now, now, stop being so catty to Sebastian!~ [FHLLY1]
== FHLANDJ
~Aaah!~ [FHLAQ2]
== FHLSEBJ
~Lyel. What did I tell you about creeping up on me?~
== FHLLYEL
~What side of bed did he wake up on, Andrei?~
== FHLANDJ
~The wrong bed, I think.~
== FHLLYEL
~Ah, that must be it. Speaking of which, <CHARNAME>, hello again. How are you doing?~
END
++ ~Pretty well, thank you. And yourself?~ EXTERN FHLLYEL FHLLyel2_well
++ ~Your cousins don't exactly make things any easier.~ EXTERN FHLLYEL FHLLyel2_cousin
++ ~Things are terrible, to be perfectly honest.~ EXTERN FHLLYEL FHLLyel2_blech
IF ~GlobalGT("Chapter","GLOBAL",3)~ THEN REPLY ~I was tortured, and have no soul at the moment.~ EXTERN FHLLYEL FHLLyel2_nosoul

