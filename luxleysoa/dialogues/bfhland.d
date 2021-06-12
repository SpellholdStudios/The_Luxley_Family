BEGIN BFHLAND

//Talk1//
IF ~Global("FHLAndTalk","GLOBAL",2)~ THEN BEGIN FHLAT1
SAY ~I was wondering about something. May I ask what exactly I said when I was...dark?~ [FHLAB1]
++ ~Do you not remember what you said, then? You seemed pretty aware of what you were doing.~ + FHLAT1_remember
++ ~To be honest, I didn't care about it then, and I don't care now. Please don't talk to me about this.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ ~You said things about Sebastian being irresponsible, and making him sorry.~ + FHLAT1_sebastian
++ ~Why don't you ask Sebastian yourself? You're his cousin, after all.~ + FHLAT1_ask
END

IF ~~ FHLAT1_remember
SAY ~No, I don't. Not entirely, anyway. It feels like trying to remember a really vague dream, and that's why I'm asking you about it.~
++ ~To be honest, I didn't care about it then, and I don't care now.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ ~You said things about Sebastian being irresponsible, and making him sorry.~ + FHLAT1_sebastian
++ ~Why don't you ask Sebastian yourself? You're his cousin, after all.~ + FHLAT1_ask
END

IF ~~ FHLAT1_sebastian
SAY ~I was afraid of that. It really annoys me that this happens, and I *still* lose control of myself after years of training!~
++ ~Everyone loses control sometimes. It's just something you need to work at.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT1_lose
++ ~Well, it's over and done with now. You shouldn't wallow about it - it'll just make it worse.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT1_lose
++ ~Pull yourself together, Andrei. I don't need you making a fuss about nothing.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_lose2
++ ~I think that Sebastian deserved what you said. He was very rude to you.~ + FHLAT1_rude
END

IF ~~ FHLAT1_care
SAY ~Fair enough, I suppose. This is my problem, and I'll sort it out myself.~
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT1_ask
SAY ~The last time I shouted at Sebastian when I was in a rage, I tried to apologise to him, but I didn't really know what I had done.~
=
~He called me out on it, and when I asked him to tell me, he said that he didn't care about being sorry, especially if you're not sure what you're sorry for. He made fun of me for so long afterwards that I don't want to repeat the experience. So I thought I'd ask you.~
++ ~You insulted Sebastian a little, but I do think he deserved it - he was so rude to you.~ + FHLAT1_rude
++ ~To be honest, I didn't care about this then, and I don't care now.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT1_care
++ ~You said things about Sebastian being irresponsible, and making him sorry.~ + FHLAT1_sebastian
END

IF ~~ FHLAT1_lose
SAY ~Yes, but it--~
IF ~~ THEN + FHLAT1_lose2
END

IF ~~ FHLAT1_lose2
SAY ~Sorry. We don't - really fight that often. But I shouldn't be bothering you about this.~
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT1_rude
SAY ~Maybe he did. And that's what's--~
=
~Sorry. We don't - really fight that often. But I shouldn't be bothering you about this.~
IF ~~ THEN DO ~SetGlobal("FHLAndTalk1","GLOBAL",1)~
EXIT
END

//Talk2
IF ~Global("FHLAndTalk","GLOBAL",4)~ THEN BEGIN FHLAT2
SAY ~<CHARNAME>, you know so much about our family, but I don't know anything about yours. Could you tell me about them?~ [FHLAB2]
++ ~No, you may not ask, and I don't need strangers poking around in my business.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_touchy
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Well, there's my friend, Imoen, who I grew up with. Sometimes she feels like family.~ + FHLAT2_imoen
++ ~I don't have any family, and my foster father was killed some time ago.~ + FHLAT2_foster
++ ~I don't know anything about my mother, but my father was Bhaal, believe it or not.~ + FHLAT2_bhaal
++ ~I don't really know where I come from - it's all rather mysterious.~ + FHLAT2_really
END

IF ~~ FHLAT2_touchy
SAY ~I didn't realise it was a sensitive subject. I'm sorry I asked.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT2_imoen
SAY ~She must be very important to you. I'm glad I can help you look for her! But what about your real family? Blood relatives, I mean.~
++ ~I only know of two. My father is Bhaal, and I had to kill my half-brother, another Bhaalchild, a while back.~ + FHLAT2_bhaal
++ ~I'd really prefer not to talk about it at the moment, thank you.~ + FHLAT2_touchy
++ ~Stop fishing for information, Andrei - it's none of your business.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_touchy
++ ~As for blood, the less said the better. My father was Bhaal, believe it or not.~ + FHLAT2_bhaal
END

IF ~~ FHLAT2_foster
SAY ~That must have been awful. It's strange imagining not having my family all beside me. But surely you know about your origins?~
++ ~I'd really prefer not to talk about it, actually.~ + FHLAT2_touchy
++ ~As for origins, the less said the better. My father was Bhaal, believe it or not.~ + FHLAT2_bhaal
END

IF ~~ FHLAT2_bhaal
SAY ~Bhaal! Goodness, that's something! Are you - I can't imagine what it's like...but how do you feel about it?~
++ ~It's a constant struggle. My blood is tainted, and as such I can't call my life my own.~ + FHLAT2_awful
++ ~I don't know anything different to this life. How can I say what it's like?~ + FHLAT2_different
++ ~I love the power it gives me, and with the blood of a god you gain a lot of that.~ + FHLAT2_power
++ ~I hope one day to live up to my father's great reputation.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_reputation
END

IF ~~ FHLAT2_really
SAY ~Not at all? That must be...I'd feel terrible if I didn't have my family around. I'm so sorry.~
++ ~Of course I mean 'not at all'! Why else would I have said it, Andrei?~ + FHLAT2_touchy
++ ~Actually, I do know who my father is, but it's not good, and you might not believe me.~ + FHLAT2_notgood
END

IF ~~ FHLAT2_awful
SAY ~I'm sorry that you have to put up with it. It must be...difficult...to fight that kind of corruption.~
++ ~Who says I fight it? I like the powers I have, I just don't like the attention it brings me.~  + FHLAT2_attention
++ ~I'd really rather not be having this conversation. Things are far too complicated right now.~ + FHLAT2_rathernot
++ ~Sometimes, it feels as though I can barely live with it.~ + FHLAT2_best
END

IF ~~ FHLAT2_different
SAY ~That's a good point. Sorry about all my questions - don't worry about it.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~ EXIT
END

IF ~~ FHLAT2_power
SAY ~'Power is only ever a good thing if you're mastering yourself'. That's what my master Simeon taught me. Perhaps you should be wary of needing it so much.~
++ ~And perhaps you should just mind your own business! It's my life, and I know what I want from it.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_business
++ ~Thank you for the advice, I'll be sure to bear it in mind for the future.~ + FHLAT2_thanks
++ ~With the foes I have to face every day, I'll need all the power I can get.~ + FHLAT2_foes
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~I need to be as strong as possible to rescue Imoen.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_rescue
END

IF ~~ FHLAT2_reputation
SAY ~That seems very strange, <CHARNAME>...I hope that you don't. Just forget I asked.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_notgood
SAY ~I won't judge you, <CHARNAME> - it's not like my circumstances are particularly ordinary! You can tell me.~
++ ~I know that, but I'd rather not talk about it, if it's all the same to you.~ + FHLAT2_touchy
++ ~My father was Bhaal, Andrei. Now do you understand why I didn't want to tell you?~ + FHLAT2_bhaal
END

IF ~~ FHLAT2_attention
SAY ~I see. That's one way to look at it.~
=
~I hope it doesn't have too strong a hold on you, <CHARNAME>. Losing control of yourself is an ugly thing, without bringing godliness into it.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_rathernot
SAY ~Of course. Forget I asked, then.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_best
SAY ~Your strength is admirable, no matter what you might think about yourself. If I can help you, I'd like to.~
++ ~I don't need help from anyone - and particularly not from someone like you.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT2_likeyou
++ ~Thank you, Andrei, but this is my battle to fight, not anyone else's.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_myfight
++ ~Thank you, it's good of you to offer - though I don't know what you could do.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT2_thanks
END

IF ~~ FHLAT2_thanks
SAY ~Well, we'll see how things go. You're welcome.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_business
SAY ~There's no need to be rude, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_foes
SAY ~Of course. As long as you're the one in control of yourself, I can't see any need to worry.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_rescue
SAY ~Of course. And if I can help you rescue her, I'll do what I can.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_likeyou
SAY ~Someone like me? And what, exactly, am I like? I was trying to be helpful.~
=
~I, unlike some people, watch my tongue. So I'll stop before I say something I regret.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

IF ~~ FHLAT2_myfight
SAY ~You're right. It's similar to me - my rages are my responsibility, and I'm the only one that can fight them.~
=
~But still, <CHARNAME>, I'll wish you the best of luck.~
IF ~~ THEN DO ~SetGlobal("FHLAndBhaal","GLOBAL",2)~
EXIT
END

//Talk3//

IF ~Global("FHLAndTalk","GLOBAL",6)~ THEN BEGIN FHLAT3
SAY ~This life you lead...I can't help thinking that it's rather strange. Do you ever get bored, travelling around so much?~
++ ~Sometimes. I know I'd want to settle down if I had the chance.~ + FHLAT3_yes
++ ~Why would I get bored? I'm getting more money and power as I travel.~ + FHLAT3_power
++ ~Why do you ask? It's your life too, now. Are you getting bored, or something?~ + FHLAT3_life
++ ~I can't see myself ever settling down in one place - I've got the travelling bug, now.~ + FHLAT3_bug
END

IF ~~ FHLAT3_yes
SAY ~Yes, you sometimes seem a bit downcast when you're tired.~
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_power
SAY ~I don't know, it all seems a bit empty, sometimes. Well, I don't mean *you* seem empty, but...~
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_life
SAY ~Oh, no, I'm definitely not getting bored. It's amazing seeing so many things I never did before - I mean, look at Athkatla! Before Sebastian took me there, I'd never seen anything like it.~
=
~But I don't think it is my life. I mean, Sebastian's been showing me around outside-- away from the Luxley estate, that is. But once we're done we'll head back, and I'll see my parents and everyone again.~
++ ~So, for you, travelling is just a temporary thing?~ + FHLAT3_temp
++ ~When will you decide to go back, then? Will I have to be waiting around for you to make up your mind?~ + FHLAT3_decide
++ ~You know, I rather envy you. I wouldn't mind having somewhere to go back to.~ + FHLAT3_back
++ ~Why exactly did you choose to travel with Sebastian? He wouldn't have been my first choice.~ + FHLAT3_seb
END

IF ~~ FHLAT3_bug
SAY ~Ha, I can see that. I've noticed you always looking towards the horizon.~
IF ~~ THEN + FHLAT3_imagine
END

IF ~~ FHLAT3_imagine
SAY ~I can't really imagine living like this for a long period. I mean, Sebastian's been showing me around outside-- away from the Luxley estate, that is.~
=
~But once we're done, we'll head back, and I'll see my parents and everyone again.~
++ ~So, for you, travelling is just a temporary thing?~ + FHLAT3_temp
++ ~When will you decide to go back, then? Will I have to be waiting around for you to make up your mind?~ + FHLAT3_decide
++ ~You know, I rather envy you. I wouldn't mind having somewhere to go back to.~ + FHLAT3_back
++ ~Why exactly did you choose to travel with Sebastian? He wouldn't have been my first choice.~ + FHLAT3_seb
END

IF ~~ FHLAT3_temp
SAY ~Not temporary, as such - I wouldn't want to leave you in the lurch if you needed our help, unless something very important came up with the family.~
=
~I just have something other than travelling, and it seems a bit sad that you don't.~
++ ~Don't patronise me, Andrei. I know what I do and don't have.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_pat
++ ~I do have other things in my life - my companions are important to me.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_comp
++ ~I've got my money and a great deal of power - what more would I need?~ + FHLAT3_more
++ ~I'm happy knowing that other people feel safer for me being around.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_safe
END

IF ~~ FHLAT3_decide
SAY ~Oh, don't worry, I'm not going to let Sebastian leave you in the lurch if you need our help! Unless something very important came up with the family, that is.~
=
~Anyway, it shouldn't be for a while. Xavier - the head of the family - gave us permission to be away for a few weeks, and Sebastian likes to stay outside for as long as possible.~
++ ~Why does Xavier have so much power over you, anyway?~ + FHLAT3_xav
++ ~That's good to know - I wouldn't want to think you were uncommitted.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_commit
++ ~Sebastian does seem a bit unreliable at times. It's good that you're around to keep him in check.~ + FHLAT3_seb
++ ~You'd better not leave anytime soon. I need as much help as I can get.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_help
END

IF ~~ FHLAT3_back
SAY ~Thank you. I mean, I'm not glad that you feel that way, but I am proud of my family.~
=
~Anyway, we shouldn't be leaving for a while. Xavier - the head of the family - gave us permisson to be away for a few weeks, and Sebastian likes to stay outside as long as he can.~
++ ~Why does Xavier have so much power over you, anyway?~ + FHLAT3_xav
++ ~That's good to know - I wouldn't want to think you were uncommitted.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT3_commit
++ ~Sebastian does seem a bit unreliable at times. It's good that you're around to keep him in check.~ + FHLAT3_seb
++ ~You'd better not leave anytime soon. I need as much help as I can get.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT3_help
END

IF ~~ FHLAT3_seb
SAY ~Ha, he's not so bad. I'm mainly with him because he's one of Xavier's friends, so he's allowed away a lot more than other people.~
=
~But you know, he's actually a lot more reliable than he makes out - remind me to tell you about the time when he convinced my parents to let him look after me.~
IF ~~ EXIT
END

IF ~~ FHLAT3_pat
SAY ~Sorry, I wasn't trying to patronise you. It's just that things are so different between my family and the rest of--~
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_comp
SAY ~That's very nice to know! I'm glad we can help you feel a bit more rooted. It's strange, things are so different between my family and the rest of--~
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_more
SAY ~Well, fair enough, I suppose. Sorry, it just feels a bit strange - things are so different between my family and the rest of--~
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_safe
SAY ~You know, that's a really nice thing to say. It's strange, things are so different between my family and the rest of--~
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_xav
SAY ~Oh, it's just the way things work. He has to deal with a lot, and he's the one who bears the brunt of the curse...~
IF ~~ THEN + FHLAT3_excuse
END

IF ~~ FHLAT3_commit
SAY ~Don't worry, I'll make sure I do as much as I can.~
IF ~~ EXIT
END

IF ~~ FHLAT3_help
SAY ~Well, I can't promise anything. If Xavier wants to see us, then we'll have to go. It's just the way things work, and--~
IF ~~ + FHLAT3_excuse
END

IF ~~ FHLAT3_excuse
SAY ~Ah, excuse me. I'm not sure how much of this I should be saying. Since you know about the curse, I'm sure it can't hurt, but I don't know. I'm sorry, I need to think about this. I'll talk to you later.~
IF ~~ EXIT
END

//Talk4
IF ~Global("FHLAndTalk","GLOBAL",8)~ THEN BEGIN FHLAT4
SAY ~Amn is quite nice, but you know, the Luxley estate is just beautiful at this time of year.~ [FHLAB4]
++ ~What's this, more boasting? Stow it, Andrei.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT4_boast
++ ~What's your estate like? I'd be interested to know about that.~ + FHLAT4_what
++ ~I don't think I've heard of your estate, and you haven't mentioned where it is.~ + FHLAT4_where
++ ~We don't really have the time for this right now.~ + FHLAT4_visit
END

IF ~~ FHLAT4_boast
SAY ~Boasting? Sebastian's the one who would do that. I'm proud of where I come from, that's all.~
++ ~Fair enough. What's it like? I'd be interested to know how it looks.~ + FHLAT4_what
++ ~Where is your estate, anyway? I don't think you've mentioned that.~ + FHLAT4_where
++ ~We don't really have the time for this right now.~ + FHLAT4_visit
END

IF ~~ FHLAT4_what
SAY ~It's very green. There are lots of trees, they surround the estate. There are a few crop fields, but we buy in most of our food.~
=
~There's a lane that leads straight up to the main house, and all along it are smaller houses, where a lot of the less close Luxleys live.~
=
~I've always thought of it as very beautiful. I love being there.~
++ ~What exactly do you mean by 'less close Luxleys'? Ones who don't like the others as much?~ + FHLAT4_close
++ ~It sounds a lovely place, Andrei. I'm not surprised that you liked it so much growing up.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT4_visit
++ ~Where is this place, anyway? I don't remember you mentioning its location.~ + FHLAT4_where
++ ~This is all interesting, but can we get going now?~ + FHLAT4_less
END

IF ~~ FHLAT4_close
SAY ~Sebastian and I are close family in that we're first cousins of Xavier. We - and others who are more closely related to him - are called that. He often has us in the positions of responsibility, like Lyel and Alexandra and Lealia - and his brother Samuel, of course.~
++ ~I think I understand how it works. Does this change when a new head of the family is born?~ + FHLAT4_complicated
++ ~That sounds snobbish, if you ask me. Closeness of birth should not affect the amount of power you have.~ + FHLAT4_snobbish
++ ~It seems odd that you were allowed out, then. Did you or Sebastian have a position of responsibility?~ + FHLAT4_responsibility
++ ~Very interesting, yes. Now let's get on, shall we?~ + FHLAT4_less
END

IF ~~ FHLAT4_responsibility
SAY ~Not exactly. I think that Xavier let me have more time to myself because of the rages so I could try to help myself. Him and Sebastian are quite good friends, so I'm sure Xavier gives him a bit of special treatment.~
=
~Things can be quite complicated with our family. Perhaps we can visit sometime and you can see for yourself!~
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_visit
SAY ~Well, maybe we can visit sometime, and you can see for yourself!~
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_less
SAY ~I'm sure you'd like it if you saw it for yourself. Perhaps we can visit it--~
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_complicated
SAY ~Things can be quite complicated with my family. Perhaps we can visit sometime and you can see everything for yourself!~
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_snobbish
SAY ~Oh, no, it's not at all! If anything, we have the worse deal, because Xavier expects us to pull our weight, and contribute more.~
=
~Our family can be very complicated. Perhaps we can visit sometime and you can see everything for yourself!~
IF ~~ THEN EXTERN FHLSEBJ FHLAT4_thinknot
END

IF ~~ FHLAT4_shaken
SAY ~What? Sorry, um, I need to think for a bit.~
IF ~~ EXIT
END

IF ~~ FHLAT4_fault
SAY ~I need to think for a bit. Thanks, though - telling you these things does help keep my mind off missing everyone.~
IF ~~ EXIT
END

//Talk5//
IF ~Global("FHLAndTalk","GLOBAL",10)~ THEN BEGIN FHLAT5
SAY ~Did you hear the conversation Sebastian and I had earlier?~ [FHLAB5]
++ ~Yes, I did, and I'm sorry for eavesdropping. I couldn't help overhearing what was going on.~ + FHLAT5_eaves
++ ~Which conversation was that? I don't remember hearing anything.~ + FHLAT5_what
++ ~I could hardly avoid hearing - you were right there, and Sebastian hardly kept his voice down.~ + FHLAT5_point
END

IF ~~ FHLAT5_eaves
SAY ~It's all right. We didn't exactly do anything to keep it private.~
IF ~~ THEN + FHLAT5_sorry
END

IF ~~ FHLAT5_what
SAY ~I know you did, <CHARNAME>. We didn't exactly do anything to keep it private.~
IF ~~ THEN + FHLAT5_sorry
END

IF ~~ FHLAT5_point
SAY ~You do have a point. I'm sorry to bring it up if it makes you uncomfortable, but I was feeling a bit, well, thoughtful, and I thought I could have a talk with you about it.~
++ ~Of course you can talk to me. What's bothering you?~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT5_bother
++ ~I can't talk to you at the moment, there are other things to do. I'm sorry.~ + FHLAT5_notalk
++ ~Me, your shoulder to cry on? No, thanks, I can do without that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_notalk2
END

IF ~~ FHLAT5_sorry
SAY ~I'm sorry to bring it up if it makes you uncomfortable, but I was feeling a bit, well, thoughtful, and I thought I could have a talk with you about it.~
++ ~Of course you can talk to me. What's bothering you?~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT5_bother
++ ~I can't talk to you at the moment, there are other things to do. I'm sorry.~ + FHLAT5_notalk
++ ~Me, your shoulder to cry on? No, thanks, I can do without that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_notalk2
END

IF ~~ FHLAT5_bother
SAY ~Thank you. Look, I know you probably think Sebastian's just unpredictable, but I can tell when he's just joking around. When I asked him about visiting the estate he certainly wasn't.~
=
~He's one of the closest people I know - and the closest outside the estate. Having him yell like that was a little unnerving.~
++ ~How come the two of you so close, anyway? You're not particularly alike.~ + FHLAT5_close
++ ~What do you want me to say to make you feel better? I'm not sure what I can do.~ + FHLAT5_want
++ ~What I heard seemed quite upsetting. I don't blame you for being 'unnerved'.~ + FHLAT5_upset
++ ~I'm sure he didn't mean to hurt you. He was probably just in a bad mood at the time.~ + FHLAT5_hurt
END

IF ~~ FHLAT5_notalk
SAY ~All right, I'll sort it out myself. It's probably good for me.~
IF ~~ THEN DO ~SetGlobal("FHLAT5","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT5_notalk2
SAY ~If that's how you feel, I won't mention it again. I apologise in advance if I bother your magnificent presence again!~
IF ~~ THEN DO ~SetGlobal("FHLAT5","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT5_close
SAY ~Sebastian helped raise me. Seeing what he's like it probably seems unlikely, I know. But my parents couldn't cope with me when I was younger. My rages were much worse.~
=
~By the time I was about eight they'd had enough and had me live with Simeon, who's my combat instructor. Sebastian was seventeen when he started looking after me.~
=
~I doubt he realised how harried my parents were, otherwise he'd never have tried to help me. But he suddenly decided that he was going to look after me. He'd aggravate me so I'd lose control to the point where I started trying harder not to, just to spite him. And after all that I really admire him.~
++ ~That's a very sweet story. I hadn't thought he'd be so caring, really.~ + FHLAT5_sweet
++ ~Why anyone would benefit from his care, I dread to think.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_paternal
++ ~I'm glad someone took care of you. It really sounds as though your parents let you down.~ + FHLAT5_parent
++ ~So if you have such a history, for him to shout at you like that must be quite painful.~ + FHLAT5_pain
END

IF ~~ FHLAT5_want
SAY ~It's just - Sebastian helped raise me. When I was young my rages were much worse, and by the time I was eight they sent me to Simeon, my combat instructor, to live with.~
=
~Sebastian was seventeen, I think, when he suddenly decided to be my guardian. I don't know why, maybe he just thought it was fun. But he'd aggravate me so I'd lose control to the point where I started trying harder not to, just to spite him.~
=
~After all that I came to really admire him.~
++ ~That's a very sweet story. I hadn't thought he'd be so caring, really.~ + FHLAT5_sweet
++ ~Why anyone would benefit from his care, I dread to think.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT5_paternal
++ ~I'm glad someone took care of you. It really sounds as though your parents let you down.~ + FHLAT5_parent
++ ~So if you have such a history, for him to shout at you like that must be quite painful.~ + FHLAT5_pain
END

IF ~~ FHLAT5_upset
SAY ~That's true. Especially if what you've seen of him is so different. Because, well...~
IF ~~ THEN + FHLAT5_close
END

IF ~~ FHLAT5_hurt
SAY ~Oh, so am I. He wouldn't hurt me if he could help it, I'm sure. I hope he was just in a mood.~
IF ~~ THEN + FHLAT5_want
END

IF ~~ FHLAT5_admire
SAY ~Well. Love him, really. But don't you dare tell him that I said that, he'd make fun of me forever!~
IF ~~ EXIT
END

IF ~~ FHLAT5_sweet
SAY ~Ha, I suppose it is. No matter what he does I can't help but, well, love him.~
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_dare
SAY ~But don't you dare tell him that I said that, he'd make fun of me forever!~
IF ~~ EXIT
END

IF ~~ FHLAT5_paternal
SAY ~He's actually quite fatherly. Well. He used to act like a cross between an older brother and an over-affectionate aunt. And I, well, I love him for it.~
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_parent
SAY ~Heh, I was an absolute terror when I was younger, and I don't think any of my family except Sebastian was stubborn enough to deal with me. I wouldn't change what happened - I love Sebastian.~
IF ~~ THEN + FHLAT5_dare
END

IF ~~ FHLAT5_pain
SAY ~I think talking to you about it's made me feel a bit better. Ah, it wasn't that bad anyway - it may have been unsettling, but, well, I love him.~
IF ~~ THEN + FHLAT5_dare
END

//Andrei Talk 6a - if talked to Xavier//
IF ~Global("FHLAndTalk","GLOBAL",12) Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLAT6
SAY ~Do you think my rages are too out of control?~ [FHLAB6a]
++ ~Well, you're completely normal when you are in control of yourself, so I'd have to say I don't.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_normal
++ ~To me, the fact that you experience them at all shows that you're not in control.~ + FHLAT6_no
++ ~The question is, do I care about this? Why are you bothering me again?~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_doicare
++ ~What's brought this on, Andrei? You look a bit unsettled to<DAYNIGHT>.~ + FHLAT6_why
IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY ~Is this about what Xavier said to you when we saw him?~ + FHLAT6_xavier
END

IF ~~ FHLAT6_normal
SAY ~I know I am, and thank you. But what Xavier said made me reconsider.~
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_freak
SAY ~I know it's not a normal thing to happen, but it really so bad? Do you think I'm a freak like he said I was?~
++ ~Andrei, you're talking to a child of Bhaal, remember? Freakishness is relative.~ + FHLAT6_relative
++ ~When you're in a rage, you're insulting and violent, so it's definitely not a good thing.~ + FHLAT6_isthatbad
++ ~It's not so bad that Xavier needed to insult you like that - he shouldn't have done that.~ + FHLAT6_worthy
++ ~You're not a freak, Andrei. Don't let what he said get you down.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_relax
END

IF ~~ FHLAT6_no
SAY ~Yes, that's what I've thought, recently. Before, I thought I was better than that, but what Xavier said made me reconsider.~
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_doicare
SAY ~I thought you would. But if you don't, then I'll keep to myself about it.~
++ ~Good. I have my own problems to attend to at the moment.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_attend
++ ~I'm sorry, Andrei. Please continue with what you were saying.~ + FHLAT6_continue
END

IF ~~ FHLAT6_why
SAY ~It's because of what Xavier said when we saw him. Before, I thought I was doing better, but he made me reconsider.~
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_xavier
SAY ~Yes, it is. Before we saw him, I thought I'd been doing better, but what he said made me reconsider.~
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_attend
SAY ~Then I won't bother you with this again.~
IF ~~ EXIT
END

IF ~~ FHLAT6_continue
SAY ~Well, before we saw Xavier, I thought I was doing better. But what he said made me reconsider.~
IF ~~ THEN + FHLAT6_freak
END

IF ~~ FHLAT6_relative
SAY ~Ha, I hadn't thought of that. I suppose I should keep things in perspective. But still, I don't know why Xavier would say things like that.~
++ ~It's because he's an unpleasant person and has it in for you. I don't know why you don't realise that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ ~It's just that he differs in opinion. But you and I know what's right in this situation.~ + FHLAT6_differ
++ ~(Stay silent.)~ + FHLAT6_silent
++ ~Maybe he was trying to motivate you, to help you try harder to stop your rages.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_isthatbad
SAY ~You're right. I do try to make up for my behaviour, but I know it's not entirely possible.~
=
~But still, I wish Xavier hadn't said that. I'm trying not to focus on it, but it's hard sometimes. I don't know why he would say something like that.~
++ ~It's because he's an unpleasant person and has it in for you. I don't know why you don't realise that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ ~It's just that he differs in opinion. But you and I know what's right in this situation.~ + FHLAT6_differ
++ ~(Stay silent.)~ + FHLAT6_silent
++ ~Maybe he was trying to motivate you, to help you try harder to stop your rages.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_worthy
SAY ~Oh, he didn't mean it as an insult. I know that much.~
=
~Still, I do wish he hadn't said it.~
++ ~It's because he's an unpleasant person and has it in for you. I don't know why you don't realise that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ ~It's just that he differs in opinion. But you and I know what's right in this situation.~ + FHLAT6_differ
++ ~(Stay silent.)~ + FHLAT6_silent
++ ~Maybe he was trying to motivate you, to help you try harder to stop your rages.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_relax
SAY ~Thank you, <CHARNAME>, I appreciate that. I have been trying not to focus on it too much, but I still wish he hadn't said it.~
++ ~It's because he's an unpleasant person and has it in for you. I don't know why you don't realise that.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6_horrible
++ ~It's just that he differs in opinion. But you and I know what's right in this situation.~ + FHLAT6_differ
++ ~(Stay silent.)~ + FHLAT6_silent
++ ~Maybe he was trying to motivate you, to help you try harder to stop your rages.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6_motivate
END

IF ~~ FHLAT6_horrible
SAY ~No, that's not true, and I know it. He has a lot to put up with, looking after the estate, and it's hard for him to stay patient.~
=
~It's because you're not part of the family, I'm afraid. I shouldn't expect you to understand.~
IF ~~ EXIT
END

IF ~~ FHLAT6_differ
SAY ~Yes, that's probably it. I can imagine with all the work he has to do it's hard to stay patient all the time.~
IF ~~ EXIT
END

IF ~~ FHLAT6_silent
SAY ~What's up? Look, I know that Xavier can be a bit forbidding sometimes - he has so much to put up with, looking after the estate.~
=
~I suppose it's because you're not part of the family. I shouldn't expect you to understand.~
IF ~~ EXIT
END

IF ~~ FHLAT6_motivate
SAY ~You're right - I'm surprised I didn't think of that before. He certainly knows that sometimes you have to be cruel to be kind.~ [FHLAM1]
=
~Though of course that's just an expression - he would never be actually cruel.~ [FHLAM2]
IF ~~ EXIT
END

//Andrei Talk 6b - if you don't talk to Xavier//
IF ~Global("FHLAndTalk","GLOBAL",12) Global("FHLNoXavTalk","GLOBAL",1)~ THEN BEGIN FHLAT6
SAY ~Do *you* think my rages are too out of control?~ [FHLAB6b]
++ ~Well, you're completely normal when you are in control of yourself, so I'd have to say that I don't think that.~ + FHLAT6b_normal
++ ~It seems to me that the fact that you experience them at all shows a lack of control in yourself.~ + FHLAT6_no
++ ~The question is, do I care? There was a reason why I didn't go to the estate with you.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLAT6b_doicare
++ ~What's brought this on, Andrei? Did something happen that I don't know about?~ + FHLAT6b_why
END

IF ~~ FHLAT6b_normal
SAY ~I know I am, and I do appreciate you saying that. But...well, when we were in the estate Xavier said some things that made me reconsider.~
IF ~~ THEN + FHLAT6b_freak
END

IF ~~ FHLAT6b_no
SAY ~Yes, that's what I've been thinking lately, too. Before, I thought I was better than that, but - well, when we were in the estate Xavier said I wasn't doing as well as I thought I was.~
IF ~~ THEN + FHLAT6b_freak
END


IF ~~ FHLAT6b_doicare
SAY ~Yes, and I thought it was rude of you not to come with us! I won't bother you about this any more in that case!~
IF ~~ EXIT
END

IF ~~ FHLAT6b_freak
SAY ~I know it's not a normal thing to happen, but it really so bad? Do you think I'm a - freak like he said I was?~
++ ~Andrei, you're talking to a child of Bhaal, remember? Freakishness is relative.~ + FHLAT6b_relative
++ ~Xavier called you a freak?! What kind of way is that to speak to a relative?~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6b_worthy
++ ~You're not a freak, Andrei, and that's just the way it is. Don't let it get you down.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_still
END

IF ~~ FHLAT6b_why
SAY ~Oh...I don't know, really. It's just been preying on my mind a bit lately, and I thought it would help to talk about it with somebody.~
=
~It's just what Xavier said when we went to visit, I suppose. He was a bit annoyed about us being away for so long, and he said I wasn't doing as well as I'd thought I was.~
++ ~That's ridiculous, Andrei - you've been doing a lot better, I'm sure. Don't listen to him.~ + FHLAT6b_better
++ ~Why would he take out his annoyance by telling you you're not good enough? That's hardly responsible behaviour.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-2)~ + FHLAT6b_worthy
++ ~Perhaps he's right. It's been difficult for you outside the estate, but you could always try harder to control yourself.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_try
++ ~Surely the very fact that you experience them at all shows that you're not in control.~ + FHLAT6b_no
END

IF ~~ FHLAT6b_relative
SAY ~Ha, I hadn't thought of it like that. I suppose it puts things in perspective, doesn't it?~
IF ~~ THEN + FHLAT6b_still
END

IF ~~ FHLAT6b_worthy
SAY ~Oh, he didn't mean it as an insult, I know that much. Don't look so outraged, <CHARNAME>, it's just that he wasn't in a good mood.~
IF ~~ THEN + FHLAT6b_still
END

IF ~~ FHLAT6b_better
SAY ~Thank you - I suppose - but I have to listen to him, he's the head of the family. And if he thinks that I'm a - freak, then there has to be something in it.~
=
~(sigh) Never mind. If you'd been there, maybe you'd understand a bit better.~
IF ~~ EXIT
END

IF ~~ FHLAT6b_try
SAY ~Yes, I think you're right. He's just trying to make sure that I conduct myself properly when I'm outside - after all, I'm representing the whole family being out here.~
IF ~~ EXIT
END

IF ~~ FHLAT6b_still
SAY ~I do still wish he hadn't said it, though. I've been trying not to focus on it too much, but it keeps going through my mind.~
++ ~He sounds a terrible person to say such things. He has a responsibility to the family as well as power.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT6b_responsible
++ ~(Stay silent.)~ + FHLAT6b_silent
++ ~He's got a different opinion to you, but I you know and I know that he's wrong.~ + FHLAT6_differ
++ ~He's probably trying to motivate you, to make you try harder. It's important to stay controlled, isn't it?~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT6b_try
END

IF ~~ FHLAT6b_responsible
SAY ~Responsibility? I don't think you understand just how much Xavier has to deal with as head of our family - and I shouldn't expect you to, since you didn't even come with us!~
IF ~~ THEN DO ~SetGlobal("FHLAndreiStrop","GLOBAL",1)~ EXIT
END

IF ~~ FHLAT6b_silent
SAY ~(sigh) I don't think you really understand. I wish you'd been there; then we might be able to talk about it more.~
IF ~~ EXIT
END

//Andrei Talk 7
IF ~Global("FHLAndTalk","GLOBAL",14)~ THEN BEGIN FHLAT7
SAY ~You think he's being unreasonable, don't you?~ [FHLAB7]
++ ~If this is about Sebastian, then I certainly don't want to hear it. I've had enough of your spats.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT7_hear
++ ~Personally, I think Sebastian's acting within his own rights. Who wouldn't want to be free?~ + FHLAT7_happy
++ ~Don't take that tone with me: I'll think what I like, not what you want me to think.~ + FHLAT7_tone
++ ~Yes, I do. It's unfair of him to be putting you through this, and without consulting you either.~ + FHLAT7_yes
++ ~Sorry? I don't think I understand what you mean.~ + FHLAT7_mean
END

IF ~~ FHLAT7_hear
SAY ~That's well and good for you, but I can't say that. He's my damn cousin!~
=
~Actually, forget him. He's a self-absorbed, irresponsible fool, and I can't stand him!~
++ ~If you want to forget him, why don't you stop going on about him like this?~ + FHLAT7_stop
++ ~Andrei, perhaps you should calm down a little...~ + FHLAT7_calm
++ ~Praise the gods! Finally, you're seeing the truth about him: he's an idiot.~ + FHLAT7_idiot
END

IF ~~ FHLAT7_happy
SAY ~Within his rights? He has no right! He doesn't make decisions for the family, Xavier does! Who does he think he is, prancing around like that?~
++ ~Sebastian doesn't trust Xavier as far as he could throw him, and neither do I.~+ FHLAT7_trust
++ ~He has his own choices to make, and he'll be accountable if things go wrong.~ + FHLAT7_account
++ ~You have no right to tell Sebastian what he can or can't do - only Xavier does, surely.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT7_forget
++ ~Listen to me, Andrei. You should try to calm down, right now.~ + FHLAT7_calm
END

IF ~~ FHLAT7_tone
SAY ~That tone? 'That tone'? I'll take whatever tone I damn well like, and I won't answer to you for it!~
++ ~Then leave me alone.~ + FHLAT7_alone
++ ~Be quiet, Andrei. I don't want to get into a screaming match with you.~ + FHLAT7_shut
++ ~You'll answer to me, Andrei, or you can leave!~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT7_leave
++ ~Listen to me, Andrei. You should try to calm down, right now.~ + FHLAT7_calm
END

IF ~~ FHLAT7_shut
SAY ~Don't tell me to be quiet, you arrogant--~
=
~Just - leave me alone, damn you!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_yes
SAY ~Then why didn't you say something? Why didn't you help me? If we'd both said no, he might have *listened*!~
=
~Bastard won't even listen to Xavier, what am I talking about - the only thing that matters is his own damn self!~
++ ~Listen to me. I think you should try to calm down, Andrei.~ + FHLAT7_calm
++ ~What do you want me to say? That you're right and Sebastian's an idiot?~ + FHLAT7_idiot
END

IF ~~ FHLAT7_mean
SAY ~I mean, Sebastian's gallivanting around doing what he bloody well likes without a care about what's right, and you're not doing a thing to help me stop him!~
++ ~Listen to me, Andrei. I think you need to calm down, right now.~ + FHLAT7_calm
++ ~Be quiet, Andrei. I won't put up with that sort of talk in my group.~ + FHLAT7_talk
++ ~Sebastian's not under my control, any more than he's under yours. What could I do to stop him?~ + FHLAT7_forget
END

IF ~~ FHLAT7_calm
SAY ~Calm down? I can't calm down when Sebastian's going off and you're not helping me at all!~
=
~Just get away, damn you!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_forget
SAY ~I - you - shut up! I don't care what you have to say - just leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_trust
SAY ~I've told you not to insult Xavier! Shut your mouth or I'll shut it for you!~
++ ~Listen to me, Andrei. You do not threaten me, unless you want a beating. Understand?~ + FHLAT7_forget
++ ~Please, Andrei, just stop shouting for a second and listen to me.~ + FHLAT7_stop
++ ~Fine, I'll be quiet. Xavier's not worth the breath.~ + FHLAT7_forget
END

IF ~~ FHLAT7_leave
SAY ~You don't scare me with your petty threats, <CHARNAME>! I don't care what you have to say! Just leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_alone
SAY ~Fine! Fine, I will, damn it!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_talk
SAY ~I don't care what you will and won't put up with, do you hear? It's nothing to do with me! Just-- Leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_idiot
SAY ~Don't you dare say that about Sebastian! He's still my cousin, dammit, and that won't change! So you shut your mouth and just-- Leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_stop
SAY ~I'll do what I want. Sebastian seems intent on doing that so why should I do any different? Now leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApologyTime","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

IF ~~ FHLAT7_account
SAY ~That's ridiculous. You're saying we should just let him run amok and do whatever the hell is inside that tiny head of his?~
++ ~No, that's not what I meant at all, Andrei. Listen to me--~ + FHLAT7_noexact
++ ~Don't take that tone with me: I'll think what I like, not what you want me to think.~ + FHLAT7_tone
++ ~He can do whatever he wants; I really don't care.~ + FHLAT7_hear
END

IF ~~ FHLAT7_noexact
SAY ~Then what *did* you mean? Forget it, just-- oh, leave me alone!~
IF ~~ THEN DO ~SetGlobalTimer("FHLAndApology","GLOBAL",TWO_HOURS) SetGlobal("FHLAndShout","GLOBAL",1)~
EXIT
END

//Andrei talk 8
IF ~Global("FHLAndTalk","GLOBAL",16)~ THEN BEGIN FHLAT8
SAY ~Can you tell me about the Sword Coast? It feels like we spend all our time in the south - what's it like further north?~ [FHLAB8]
IF ~RandomNum(4,1)~ THEN REPLY ~What is it you'd like to hear about? There are plenty of things I could tell you.~ + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY ~What is it you'd like to hear about? There are plenty of things I could tell you.~ + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY ~What is it you'd like to hear about? There are plenty of things I could tell you.~ + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY ~What is it you'd like to hear about? There are plenty of things I could tell you.~ + FHLAT8_what4
++ ~I don't really want to discuss this at the moment, Andrei.~ + FHLAT8_no
++ ~Why are you interested, Andrei?~ + FHLAT8_why
END

IF ~~ FHLAT8_what1
SAY ~Are there mountains, up there? I heard there was snow...I've never seen it, myself, but it sounds very strange!~
++ ~There are some mountains, yes. They're rather dangerous, though, and there are wolves.~ + FHLAT8_danger
++ ~Have you really never seen snow? I find that hard to believe.~ + FHLAT8_snow
++ ~There is snow, yes, and it's damned annoying on the millionth day of travelling!~ + FHLAT8_annoy
++ ~Perhaps one day we could visit, so you could see them for yourself.~ + FHLAT8_perhaps
END

IF ~~ FHLAT8_what2
SAY ~Is Baldur's Gate like Athkatla at all? I find Athkatla so...crowded, and messy.~
++ ~It's a more spread-out city, and so feels rather less cramped than Athkatla.~ + FHLAT8_cramp
++ ~I prefer the way Baldur's Gate is run. There's so much corruption here in Amn.~ + FHLAT8_corrupt
++ ~They're two very different cities. You need to have more experience before judging.~ + FHLAT8_see
++ ~Perhaps one day we could visit, so you could see it for yourself.~ + FHLAT8_perhaps
END

IF ~~ FHLAT8_what3
SAY ~What was your home like? I know it was a - monastery, wasn't it? Or a library.~
++ ~Candlekeep was so boring that I was delighted to be away from it!~ + FHLAT8_boring
++ ~It was very beautiful. I can still remember the way the sun shone on the walls.~ + FHLAT8_beautiful
++ ~There weren't many other people there my age - except Imoen, of course. It felt a bit stuffy.~ + FHLAT8_stuffy
++ ~Perhaps one day we could visit, so you could see it for yourself.~ + FHLAT8_perhaps
END

IF ~~ FHLAT8_what4
SAY ~I've heard people talking about the Cloakwood. Is it very dangerous?~
++ ~Yes, it's full of wild beasts. I remember a time when there were these spiders...~ + FHLAT8_spider
++ ~These wildernesses are only dangerous when you don't understand them. It's good to remember that.~ + FHLAT8_under
++ ~It's dangerous, but it has a very living feel about it. It's so different from these tiny woods we see in Amn.~ + FHLAT8_living
++ ~Perhaps one day we could visit, so you could see it for yourself.~ + FHLAT8_perhaps
END

IF ~~ FHLAT8_no
SAY ~If you're sure. I was just trying to make conversation.~
IF ~~ EXIT
END

IF ~~ FHLAT8_why
SAY ~Oh, it's just that I haven't seen much of things outside the estate except for Amn. I wouldn't mind seeing more.~
IF ~RandomNum(4,1)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what4
++ ~I don't really want to discuss this at the moment, Andrei.~ + FHLAT8_no
IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY ~Is this because of what Sebastian's been saying to you?~ + FHLAT8_seb
END

IF ~~ FHLAT8_danger
SAY ~Strange, I never thought wolves were particularly dangerous before I left. I mean, there were books and things about them in the estate, but we don't have animals that attack us.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_snow
SAY ~Oh, no, it's true! I think the place the estate was originally must have been quite temperate, because we only get rain, and the summer's usually warm.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_annoy
SAY ~Really? I would have thought it would be rather fun. But I suppose I've never experienced it - like so much else, I suppose.~
=
~It's strange to think how much I missed out on, being brought up in the estate.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_perhaps
SAY ~You know, <CHARNAME>, I think that would be a good idea. Once all these Irenicus problems are over, you'll have your freedom, and things will be back to normal.~
IF ~~ EXIT
END

IF ~~ FHLAT8_cramp
SAY ~Ah, that sounds nice. I suppose I was spoiled on the estate - because of there not being many of us, the houses are quite spread out.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_corrupt
SAY ~I don't know about corruption, but I could tell that quite a few people we saw weren't very happy. I don't know, at home people's lives are a lot simpler.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_see
SAY ~I suppose I missed out on quite a few things, being brought up where I did.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_boring
SAY ~Really? It sounded rather nice to me. But I suppose you're a <PRO_MANWOMAN> of action! And I'd like to have been near the sea, I think. It's odd to think what I missed out on.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_beautiful
SAY ~That sounds nice, <CHARNAME>. You must miss it sometimes - but I know that I often miss home more if I talk about it, so I'll leave you be.~
IF ~~ EXIT
END

IF ~~ FHLAT8_stuffy
SAY ~Yes, I can see why that would be a problem! One of the things I like about home is that everyone's right there to talk to.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_spider
SAY ~Ugh, don't go on, <CHARNAME>! I can see where this is going - all your stories generally involve teeth at some point!~
=
~It's odd, we don't have any animals like that at home. But...maybe it's best not to dwell on home right now.~
IF ~~ EXIT
END

IF ~~ FHLAT8_under
SAY ~Maybe I will understand it, one day. It's odd to think how much of that kind of thing I missed out on, growing up where I did.~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_living
SAY ~That sounds really interesting. I suppose I missed out on places like that, growing up where I did...~
IF ~~ THEN + FHLAT8_dwell
END

IF ~~ FHLAT8_seb
SAY ~Well...maybe a little. I want him to know that I can find out about things for myself without him always looking over my damn shoulder the whole time.~
IF ~RandomNum(4,1)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what1
IF ~RandomNum(4,2)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what2
IF ~RandomNum(4,3)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what3
IF ~RandomNum(4,4)~ THEN REPLY ~What is it you'd like to hear about, then? There are plenty of things I could tell you.~ + FHLAT8_what4
++ ~I don't really want to discuss this at the moment, Andrei.~ + FHLAT8_no
END

IF ~~ FHLAT8_dwell
SAY ~But it's probably best not to, well, dwell on the estate right now.~
IF ~~ EXIT
END


//Andrei Talk 9
IF ~Global("FHLAndTalk","GLOBAL",18)~ THEN BEGIN FHLAT9
SAY ~Do you ever - this is going to sound ridiculous - do you ever feel lonely?~ [FHLAB9]
++ ~I hope you're not propositioning me. Because if you are...~ + FHLAT9_proposition1
++ ~Am I interpreting this wrong, Andrei, or did that sound like a proposition?~ DO ~IncrementGlobal("FHLAndFlirt","GLOBAL",1)~ + FHLAT9_proposition2
++ ~I think that loneliness is a given in my mode of life, and that's the way things are.~ + FHLAT9_given
++ ~Sometimes, but I know that I have friends in my group of companions.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",1)~ + FHLAT9_friends
IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY ~It's hard to feel that way with a girl like Aerie by my side.~ + FHLAT9_jaheira
IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY ~Jaheira and I have something too special for me to feel that way.~ + FHLAT9_jaheira
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Life's too interesting with Viconia for me to feel lonely.~ + FHLAT9_viconia
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~How can I feel lonely with Anomen by my side?~ + FHLAT9_anomen
IF ~Global("NathRomanceActive","GLOBAL",2)~ THEN REPLY ~How can I feel lonely with what Nathaniel and I have?~ + FHLAT9_anomen
END

IF ~~ FHLAT9_jaheira
SAY ~Of course. And the two of you are good companions to me, too. It's just that...I wish I were home.~
++ ~You're bothering me because of homesickness, Andrei? You really should grow a backbone!~ + FHLAT9_backbone
++ ~After we left Candlekeep, I felt a little like that. It'll pass - or at least I found that it did.~ + FHLAT9_gorion
++ ~Try to think of home as the people you're with - being with companions can be like home.~ + FHLAT9_home
++ ~Maybe we can visit there, soon. I wouldn't mind going again.~ + FHLAT9_gorion
END

IF ~~ FHLAT9_viconia
SAY ~Yes. Well. I don't want to offend you, but I just wish I were home.~
++ ~You're bothering me because of homesickness, Andrei? You really should grow a backbone!~ + FHLAT9_backbone
++ ~After we left Candlekeep, I felt a little like that. It'll pass - or at least I found that it did.~ + FHLAT9_gorion
++ ~Try to think of home as the people you're with - being with companions can be like home.~ + FHLAT9_home
++ ~Maybe we can visit there, soon. I wouldn't mind going again.~ + FHLAT9_gorion
END

IF ~~ FHLAT9_anomen
SAY ~That's true. I don't want someone to be with, though. I just wish I were home.~
++ ~You're bothering me because of homesickness, Andrei? You really should grow a backbone!~ + FHLAT9_backbone
++ ~After we left Candlekeep, I felt a little like that. It'll pass - or at least I found that it did.~ + FHLAT9_gorion
++ ~Try to think of home as the people you're with - being with companions can be like home.~ + FHLAT9_home
++ ~Maybe we can visit there, soon. I wouldn't mind going again.~ + FHLAT9_gorion
END

IF ~~ FHLAT9_friends
SAY ~Maybe that's how I'm feeling now, because it's not normally like this. I just can't-- I just wish I were home.~
++ ~You're bothering me because of homesickness, Andrei? You really should grow a backbone!~ + FHLAT9_backbone
++ ~After we left Candlekeep, I felt a little like that. It'll pass - or at least I found that it did.~ + FHLAT9_gorion
++ ~Try to think of home as the people you're with - being with companions can be like home.~ + FHLAT9_home
++ ~Maybe we can visit there, soon. I wouldn't mind going again.~ + FHLAT9_gorion
END

IF ~~ FHLAT9_given
SAY ~I don't know whether to feel relieved or worried. I don't want to feel like this, just...wishing I were home.~
++ ~You're bothering me because of homesickness, Andrei? You really should grow a backbone!~ + FHLAT9_backbone
++ ~After we left Candlekeep, I felt a little like that. It'll pass - or at least I found that it did.~ + FHLAT9_gorion
++ ~Try to think of home as the people you're with - being with companions can be like home.~ + FHLAT9_home
++ ~Maybe we can visit there, soon. I wouldn't mind going again.~ + FHLAT9_gorion
END

IF ~~ FHLAT9_proposition1
SAY ~What? Of course not - I would never!~
++ ~Good. I was worried there, for a second.~ + FHLAT9_worried
++ ~Oh, that's fine.~ + FHLAT9_scare
++ ~Hmph. That's not exactly a flattering thing to hear, even if I didn't want you to.~ + FHLAT9_sarcastic
END

IF ~~ FHLAT9_proposition2
SAY ~What? Of course not - I would never!~
++ ~Hmph. That's not exactly a flattering thing to hear.~ + FHLAT9_sarcastic
++ ~Good, I was worried there, for a second.~ + FHLAT9_worried
++ ~That's a shame. You're a really nice person.~ DO ~IncrementGlobal("FHLAndLike","GLOBAL",-1)~ + FHLAT9_lovely
++ ~Oh, all right. Sorry to scare you.~ + FHLAT9_scare
END

IF ~~ FHLAT9_backbone
SAY ~How-- <CHARNAME>, if you don't want to talk, then that's perfectly fine.~
=
~As it is, I won't say anything that I might regret. I'll talk to you later.~
END

IF ~~ FHLAT9_gorion
SAY ~Thank you. Maybe things will get better, and by then Sebastian will have spontaneously developed some common sense and we'll be able to go home.~
++ ~How are the two of you getting on, anyway? I heard raised voices earlier.~ + FHLAT9_raised
++ ~That seems rather implausible, to be honest. He's so stubborn.~ + FHLAT9_implausible
END

IF ~~ FHLAT9_home
SAY ~I hadn't thought of that. It seems - like it might help.~
=
~Of course, it doesn't help that Sebastian's lost what little common sense he had.~
++ ~How are the two of you getting on, anyway? I heard raised voices earlier.~ + FHLAT9_raised
++ ~I'm sure it'll be fine. You should be able to patch things up soon enough.~ + FHLAT9_sure
++ ~It does seem like he's being even more stubborn than usual, it's true.~ + FHLAT9_implausible
END

IF ~~ FHLAT9_sarcastic
SAY ~You know I didn't mean it like that, <CHARNAME>. I was just taken aback.~
=
~Ah, I've lost my train of thought, now. Never mind.~
IF ~~ EXIT
END

IF ~~ FHLAT9_worried
SAY ~Well, I'm glad I could alleviate your concerns. Ah, I've lost my train of thought, now. Never mind.~
IF ~~ EXIT
END

IF ~~ FHLAT9_scare
SAY ~Don't apologise - it's fine. I just hope Sebastian didn't hear - with the mood he's in, I bet he wouldn't shut up about it for weeks.~
IF ~~ EXIT
END

IF ~~ FHLAT9_lovely
SAY ~Um...thank you, but I can't. Xavier wouldn't approve. You're nice, and I've enjoyed travelling with you, but I'm just not. Interested, I mean.~
=
~Ah, I've lost my train of thought, now. Never mind.~
IF ~~ EXIT
END

IF ~~ FHLAT9_raised
SAY ~Well, yes. Sebastian wasn't in a very good mood, and I chose the wrong way to say something. Getting along with him can be so tiresome.~
=
~But I won't burden you with that. You've had enough distractions already with the two of us.~
IF ~~ EXIT
END

IF ~~ FHLAT9_implausible
SAY ~Yes, it does, doesn't it? Oh, well, I can still hope.~
IF ~~ EXIT
END

IF ~~ FHLAT9_sure
SAY ~I hope so. Thank you, <CHARNAME>, it's good to have another perspective on the situation.~
IF ~~ EXIT
END

//Sebastian's interjections
CHAIN BFHLAND FHLAT4_where
~It's--~
== FHLSEBJ
~It's very far away from here. We won't be able to visit, will we? No, we won't.~
== BFHLAND
~Just wait a minute. Why not?~
== FHLSEBJ
~Listen to me! We are not going home and that's final! Do you understand?~
== BFHLAND
~Sebastian, what...?~
== FHLSEBJ
~Good. Now carry on.~
== BFHLAND
~That's...odd. Sorry about that.~
END
++ ~What was all that about? Is he normally like that?~ EXTERN BFHLAND FHLAT4_shaken
++ ~Don't apologise, Andrei. He's the one in the wrong, not you.~ EXTERN BFHLAND FHLAT4_fault
++ ~Are you all right? You look a little shaken up.~ EXTERN BFHLAND FHLAT4_shaken
++ ~That's quite all right - family disputes are none of my business.~ EXTERN BFHLAND FHLAT4_shaken

CHAIN FHLSEBJ FHLAT4_thinknot
~Are you completely stupid? <CHARNAME>, our estate is very far away. Andrei seems to have forgotten that. It would take far too long to go there.~
== BFHLAND
~Just wait a minute. Why not?~
== FHLSEBJ
~Listen to me! We are not going home and that's final! Do you understand? Good. Now carry on.~
== BFHLAND
~That's...odd. Sorry about that.~
END
++ ~What was all that about? Is he normally like that?~ EXTERN BFHLAND FHLAT4_shaken
++ ~Don't apologise, Andrei. He's the one in the wrong, not you.~ EXTERN BFHLAND FHLAT4_fault
++ ~Are you all right? You look a little shaken up.~ EXTERN BFHLAND FHLAT4_shaken
++ ~That's quite all right - family disputes are none of my business.~ EXTERN BFHLAND FHLAT4_shaken


//Interparty Banters

CHAIN IF ~Global("FHLUnorderAndAerieTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BAERIE FHLAndAerie1
~Are the places w-we've seen anything like your home, Andrei?~
DO ~SetGlobal("FHLUnorderAndAerieTalk1","GLOBAL",1)~
== BFHLAND
~Not really. The towns and cities are too big, and we didn't have any large forests either. Everything feels too different. What about you?~ [FHLAAE1]
== BAERIE
~Oh, my home was so b-beautiful. Nothing could ever compare to it. I don't mean to say that y-your home is not beautiful, only that--~
== BFHLAND
~I understand. As amazing as your home would be to me, it wouldn't be mine.~
== BAERIE
~I'm glad you understand. I c-certainly wouldn't want to offend you!~
== BFHLAND
~Don't worry, Aerie. You didn't.~
EXIT

CHAIN IF ~Global("FHLUnorderAndAerieTalk2","GLOBAL",0)
InParty("AERIE")
!StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndAerie2
~Are you all right? You seem a bit distracted.~ [FHLAAE2]
DO ~SetGlobal("FHLUnorderAndAerieTalk2","GLOBAL",1)~
== BAERIE
~N-no, I'm fine! I was just-- no, don't worry about it, really.~
== BFHLAND
~What is it, Aerie?~
== BAERIE
~It's s-silly, I know, but I was just admiring your hair.~
== BFHLAND
~Really? I don't dislike it especially, but I don't see that it's anything so...admirable.~
== BAERIE
~It reminds me of h-home, a little. The clouds would shine in the sunlight so brightly, and your hair does the same.~
== BFHLAND
~Thank you. I'll remember you said that when Sebastian next teases me about it!~
EXIT

CHAIN IF ~Global("FHLUnorderAndAerieTalk3","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BAERIE FHLAndAerie3
~D-do you think we'll be going for much longer before we rest, Andrei?~
DO ~SetGlobal("FHLUnorderAndAerieTalk3","GLOBAL",1)~
== BFHLAND
~I don't know. If you're tired, I could see if we could stop early.~ [FHLAAE3]
== BAERIE
~Oh, no, I wouldn't want <CHARNAME> to be p-put out. Could you...walk with me a while, though? I've felt so unbearably lonely since losing my wings.~
== BFHLAND
~I honestly can't imagine you with wings. It just seems so unreal!~
== BAERIE
~Well, it w-was certainly real for me. A-and without them I'm not me, I'm just some girl that got k-kidnapped by slavers. It's so unfair!~
== BFHLAND
~It must have been horrible for you, being cut off from your family so suddenly. But you'll be all right, if you stay strong.~
== BAERIE
~Stay strong? That m-might be the solution for someone like you, Andrei, b-but right now I don't feel strong at all.~
EXIT

CHAIN IF ~Global("FHLUnorderAndAnoTalk1","GLOBAL",0)
InParty("FHLAND")
InParty("FHLSEB")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BANOMEN FHLAndAno1
~I cannot fathom how you put up with that cousin of yours. If he were my relative I would be ashamed.~
DO ~SetGlobal("FHLUnorderAndAnoTalk1","GLOBAL",1)~
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
~Excuse me? What was that for? What did he ever do to you?~ [FHLAAN1]
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
~(sigh) Neither can I, when he's being like this. I can't stand him being so frustrating!~ [FHLAAN2]
== BANOMEN IF ~Global("FHLRow","GLOBAL",0)~ THEN
~He has been nothing but a nuisance since I have known him and he lives a life of utter idleness and dissipation. There is nothing of value to him, and yet you continue to put up with his company.~
== BANOMEN IF ~Global("FHLRow","GLOBAL",1)~ THEN
~Listen, Andrei, the best thing to do in this circumstance is to get away. If you are not in his company, he cannot cause you pain.~
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
~He might be frivolous sometimes, but you don't know him at all! How dare you say things like that when you know nothing about him?~
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
~Maybe that's how you deal with things, but even if I wanted to I couldn't. If I'm not with him I can't get home.~
== BANOMEN IF ~Global("FHLRow","GLOBAL",0)~ THEN
~Perhaps if you opened your eyes to his true nature, you might be able to gain a better purpose in life, Andrei.~
== BANOMEN IF ~Global("FHLRow","GLOBAL",1)~ THEN
~A sorry situation indeed. Perhaps you should do something to change it, before it is too far gone.~
== BFHLAND IF ~Global("FHLRow","GLOBAL",0)~ THEN
~I *have* a purpose in life, thank you, and it doesn't involve listening to you!~
EXIT

CHAIN IF ~Global("FHLUnorderAndCerndTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BCERND FHLAndCernd1
~It is curious, this changing of shape. The caterpillar becomes the butterfly and the tadpole becomes the frog. And a man may transform into a bear or a wolf.~
DO ~SetGlobal("FHLUnorderAndCerndTalk1","GLOBAL",1)~
== BFHLAND
~Yes, I was meaning to ask about that. How does it feel when you change?~ [FHLACE1]
== BCERND
~Painful, but only for a moment. I imagine your transformation is somewhat different.~
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~
~When it happens to me, it sort of feels like I'm melting.~
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~
~When it used to happen with me, it sort of felt like I was melting.~
== BCERND
~For me there is also a sense of stretching, as though I am being pulled in all directions.~
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~
~Really? I don't get that, it's more like someone's moulding me into something else. Odd.~
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~
~Really? I didn't get that, it was more like someone was moulding me into something else. Odd.~
== BCERND
~There is a great deal of variety in these things, as with all of nature's creatures.~
EXIT

CHAIN IF ~Global("FHLUnorderAndCerndTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BCERND FHLAndCernd2
~I wonder, is your hair that colour because of the bear that you transform into, or the other way around?~
DO ~SetGlobal("FHLUnorderAndCerndTalk","GLOBAL",1)~
== BFHLAND
~I've thought about that myself, actually. It's been that way ever since I was born, and the curse affects us from birth, so it could be either.~ [FHLACE2]
== BCERND
~And yet the fur of the snow-hare changes in the summertime to a brown hue. It is interesting that this does not occur in your case.~
== BFHLAND
~I suppose it varies. I mean, Sebastian doesn't have red hair, and he turns into a ginger cat.~
== BCERND
~Your family is a curious thing.~
== BFHLAND
~Heh, I suppose it is, when you look at it like that.~
EXIT

CHAIN IF ~Global("FHLAndCerndTalkFamily","GLOBAL",0)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("TalkedToCerndNanny","GLOBAL",1)~ THEN BFHLAND FHLAndCernd3
~I'm sorry, Cernd, but I have to say this. I can't believe that you left your wife alone all those years!~ [FHLACE3]
DO ~SetGlobal("FHLAndCerndTalkFamily","GLOBAL",1)~
== BCERND
~And what has brought on this railing?~
== BFHLAND
~I just - it's just that it's so important to look after your own, and it's not fair to go back on your word like that!~
== BCERND
~You may not understand this now, but it was an agreement that we made together, and an amicable one at that.~
== BFHLAND
~That's not the point!~
== BCERND
~For me, Andrei, it was.~
EXIT

CHAIN IF ~Global("FHLUnorderAndEdTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BEDWIN FHLAndEd1
~Why do you travel with your half-witted cousin when you have so much more potential?~
DO ~SetGlobal("FHLUnorderAndEdTalk1","GLOBAL",1)~
== BFHLAND IF ~Global("FHLRow","GLOBAL",1)~ THEN
~He's got the only way of getting home. I just have to put up with him until he lets me.~ [FHLAED1]
== BFHLAND IF ~!Global("FHLRow","GLOBAL",1)~ THEN
~Don't talk about him that way. I grew up with him, and I'm not just going to abandon him.~ [FHLAED2]
== BEDWIN
~But do you not think that you could do so much more than this? Assisting with magical endeavours, for instance?~
== BFHLAND
~What sort of endeavours?~
== BEDWIN
~Oh, a little of this and a little of that. There is a great deal that one of your...heritage could do. (Yes, reel him in with honeyed words, that is the way forward.)~
== BFHLAND
~I'm...not sure. I'd have to think about it a bit.~
EXIT

CHAIN IF ~Global("FHLUnorderAndEdTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLLDP","GLOBAL",0)~ THEN BEDWIN FHLAndEd2
~Tell me about the head of your family. Surely he is a powerful wizard, to hold all of you in check-- er, that is, to protect you so well.~
DO ~SetGlobal("FHLUnorderAndEdTalk2","GLOBAL",1)~
== BFHLAND
~Oh yes, he's very good at magic. I've never seen him cast any spells, but Sebastian once told me that he was a wizard.~ [FHLAED3]
== BEDWIN
~But the heads are not always of a wizardly sort.~
== BFHLAND
~Oh, no. The one before Xavier was some sort of druid, I think. But they generally read books and study a lot, because the curse makes them so ill.~
=
~Why do you ask, anyway?~
== BEDWIN
~Your family is an intricate web which would be most fascinating to unravel. I very much doubt that one such as you would understand a scholarly interest. (The tyranny of the weak, an interesting scheme. Surely the one who did this was a great wizard indeed...)~
== BFHLAND
~My family isn't just something to study! They're people!~
== BEDWIN
~Yes, yes, I have heard that claim before.~
EXIT

CHAIN IF ~Global("FHLAndEdTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BEDWIN FHLAndEd3
~So you know what it was that caused your affliction now, boy. What do you make of it?~
DO ~SetGlobal("FHLAndEdTalkLDP","GLOBAL",1)~
== BFHLAND
~I'd rather not talk about it, Edwin.~ [FHLAED4]
== BEDWIN
~There is another way, you know.~
== BFHLAND
~What do you mean?~
== BEDWIN
~Allow me to use a sample of your blood for study, and perhaps I will be able to find a way to break this curse you live under. (And doubtless I shall find some secrets of my own.)~
== BFHLAND
~Look, I said I didn't want to talk about it! We're not specimens to pin on a board, and I'm not getting involved in any of your schemes. Now leave me alone!~
EXIT

CHAIN IF ~Global("FHLUnorderAndHaerTalk1","GLOBAL",0)
InParty("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndHaer1
~Do you ever get tired of travelling after you've done it for so long?~ [FHLAHD1]
DO ~SetGlobal("FHLUnorderAndHaerTalk1","GLOBAL",1)~
== BHAERDA
~Ah, clearly my age is showing. No, my cub, I suspect that I shall never grow weary of this dance.~
== BFHLAND
~Why, because of the demon-blood?~
== BHAERDA
~There is simply too much in these realms to become dull.~
== BFHLAND
~I think I know what you mean. There's so much just here, and to see all those other things...!~
== BHAERDA
~Perhaps you shall see them yourself, one day.~
EXIT

CHAIN IF ~Global("FHLUnorderAndHaerTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BHAERDA FHLAndHaer2
~Your family works in strange cycles, and I cannot help but wonder how it will end.~
DO ~SetGlobal("FHLAndHaerTalk2","GLOBAL",1)~
== BFHLAND
~I don't see why it would end. There's always a head of the family, and it goes on and on.~ [FHLAHD2]
== BHAERDA
~How young you are, my cub.~
== BFHLAND
~What do you mean?~
== BHAERDA
~Meaning is such a mutable thing, is it not? We can never know what it actually is, or if there even is an 'actual'.~
== BFHLAND
~...I'm sorry, I don't understand.~
== BHAERDA
~And that is well, I think.~
EXIT

CHAIN IF ~Global("FHLAndHaerTalkRow","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLRow","GLOBAL",1)~ THEN BHAERDA FHLAndHaer3
~Your cousin is miserable, my cub. He is barely writing anything at all of late.~
DO ~SetGlobal("FHLAndHaerTalkRow","GLOBAL",1)~
== BFHLAND
~Good. I hope he drops his stupid book in the fire.~ [FHLAHD3]
=
~Why do you care, anyway?~ [FHLAHD4]
== BHAERDA
~How do you plan to rectify this poor state of affairs?~
== BFHLAND
~That's not my problem. He's the one being insufferable about this whole thing.~
EXIT

CHAIN IF ~Global("FHLAndImTalk","GLOBAL",0)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndIm1
~Imoen, wait--~ [FHLAIM1]
=
~Is there anything I can take from your pack? You look a little weighed down.~
DO ~SetGlobal("FHLAndImTalk","GLOBAL",1)~
== BIMOEN2
~I can manage, thanks.~
== BFHLAND
~Are you sure? I don't mind--~
== BIMOEN2
~But I do. Thanks, Andrei, but you'll have to find a damsel that's actually in distress.~
=
~Don't look so disappointed! If you really want to help, tell me a funny story or something.~
== BFHLAND
~If that'll help, I'll do what I can. There was this time when Lucas...~
EXIT

CHAIN IF ~Global("FHLAndImTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLAndIm2
~Okay, you've been staring at me long enough. What's on your mind?~
DO ~SetGlobal("FHLAndImTalk","GLOBAL",2)~
== BFHLAND
~It's a bit embarrassing. I didn't want to say anything, but...~ [FHLAIM2]
== BIMOEN2
~What, is there something between my teeth? There's not mud all up my tunic, is there?~
== BFHLAND
~No, you look lovely-- I mean, it's not anything like that. I was just thinking about how well you're coping with all that's happened to you.~
=
~I know it's a bit silly.~
== BIMOEN2
~We're a long way from the end, so don't get your hopes up. But thanks.~
=
~And I noticed that 'lovely' thing. Just so you know.~
EXIT

CHAIN IF ~Global("FHLAndImTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",0)~ THEN BIMOEN2 FHLAndIm3
~Come on, stop moping. You're making me feel old.~
DO ~SetGlobal("FHLAndImTalkLDP","GLOBAL",1)~
== BFHLAND
~I'm not moping.~ [FHLAIM3]
== BIMOEN2
~You kinda are. It'll be all right, just--~
== BFHLAND
~Just what, Imoen? Stick my head in the sand and pretend I feel happy? Or maybe I should just say that I don't sometimes wish I didn't know, because at least then I'd be happy?~
== BIMOEN2
~Stop it, Andrei, that isn't funny.~
== BFHLAND
~Of course it isn't! You of all people should--~
=
~Oh, Imoen. I'm so sorry. I didn't mean to take it out on you.~
== BIMOEN2
~Forget about it. Buy me lunch or something. At least then I'll get a free meal out of the yelling.~
== BFHLAND
~Yes. All right.~
== BIMOEN2
~Try not to get overenthusiastic, you might strain something.~
== BFHLAND
~No, I'd love to.~
EXIT

CHAIN IF ~Global("FHLUnorderAndJahTalk1","GLOBAL",0)
InParty("FHLAND")
InParty("FHLSEB")
!AreaCheck("FH4800")
!AreaCheck("FHLMH1")
!AreaCheck("FHLMH2")
!AreaCheck("FHLUX1")
!AreaCheck("FHLUX2")
!AreaCheck("FHLUX3")
!AreaCheck("FHLUX4")
!AreaCheck("FHLUX5")
!AreaCheck("FHLUX6")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAHEIR FHLAndJah1
~Be watchful, Andrei. You are not as used to these places as others, and I would not have you wander off and be hurt.~
DO ~SetGlobal("FHLUnorderAndJahTalk1","GLOBAL",1)~
== BFHLAND
~Thank you, Jaheira. I'll be careful to stay near the rest of the group. I suppose I don't have much experience with places like this!~ [FHLAJH1]
== BJAHEIR
~Hmmm. Your cousin ought to have given you more competent instruction. Lack of experience is no excuse when danger is at every corner.~
EXIT

CHAIN IF ~Global("FHLAndJah2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAHEIR FHLAndJah2
~Surely you cannot expect to keep your belongings in order like that.~
DO ~SetGlobal("FHLAndJah2","GLOBAL",1)~
== BFHLAND
~Pardon me?~ [FHLAJH3]
== BJAHEIR
~If you squash everything in so haphazardly, your food will be crushed and your clothes will more than likely get mildewed. Did Sebastian never teach you the proper-- no, of course he didn't.~
== BFHLAND
~I didn't know it was so important - he never mentioned it.~
== BJAHEIR
~Well. Come here and I will show you the correct way.~
EXIT

CHAIN IF ~Global("FHLAndJahTalkLate","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
OR(2)
Global("FHLRow","GLOBAL",1)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BFHLAND FHLAndJah3
~Jaheira, may I ask you something?~ [FHLAJH2]
DO ~SetGlobal("FHLAndJahTalkLate","GLOBAL",1)~
== BJAHEIR
~Yes, you may. What is on your mind, child?~
== BFHLAND
~I want to know what you think of Sebastian's actions.~
== BJAHEIR
~I thought you would be asking this of me. I will answer, but I will not sit back if you let fly with your anger as you have with others. Is that understood?~
== BFHLAND
~Yes, of course. I won't-- I'll simply listen.~
== BJAHEIR
~Good. And as for Sebastian - he is your cousin, like it or not, and all the family you have in the outside world. The only criticisms he might listen to would be from you, not from any of us.~
=
~So the question is this, Andrei: do you truly think that he has done wrong? Or are you not yet thinking for yourself?~
== BFHLAND
~You've...certainly given me some things to think about.~
== BJAHEIR
~Then be sure to do that.~
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan1
~Your cousin's quite the charmer, isn't he?~
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",1)~
== BFHLAND
~What? Look, Jan, whatever it is you're going on about I'm not in the mood.~ [FHLAJN1]
== BJAN
~Indeed, Sebastian does remind me of a dear cousin of my very own - my mother's insane nephew's uncle's wife's son. That young gnome is the best of all the Jansens, I do declare, upon the life of my very successful tailor. A good suit is, after all, the basis of a prominent businessman like myself.~
== BFHLAND
~Wait a minute--~
== BJAN
~Speaking of outfits, I think we need to get you to a stylist and quick. If my degree in Beauticiary Studies is worth one rotten onion - and that's exactly what it's worth, but that's another story - then I can make you positively radishing! And ravishing, too. All it would take is a better cut on those robes, maybe heels to add some height, a bit of rouge and some hair colour, and voila.~
=
~Well, what do you say?~
== BFHLAND
~Isn't your mother's nephew's uncle's wife's son you?~
== BJAN
~*Insane* nephew, don't forget!~
== BFHLAND
~I doubt I could...~
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan2
~Tell me, Andrei, has there been any history of madness in your family? Beyond your cousin and yourself, that is.~
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",2)~
== BFHLAND
~Why would you want to know that?~ [FHLAJN2]
== BJAN
~Come now, that would ruin all the fun!~
== BFHLAND
~I don't think - wait, I'm not going to tell you anything. Stop speculating about my family like that, I don't appreciate it!~
== BJAN
~Harmless curiosity, Andrei! My own family has such skeletons in the closet that you wouldn't believe - and they've kept so well through the years. Why, the choice specimen, a well-desiccated baalor that tried to swindle the Jansens out of a choice box of lavender soap and ended up on the wrong end of a turnip masher, survived even the Exploding Carrot Incident of '97. Marvellous workmanship. Are any of your relatives taxidermists, by any chance? I could--~
== BFHLAND
~I tried to ask you politely, Jan, but--~
== BJAN
~If that's what you call polite then I'd hate to see your rendition of a troll with gastrointestinal problems on its honeymoon night! The youth of today! Now, where was I...~
== BFHLAND
~I'm not going to listen. I won't be goaded into anything by you!~
== BJAN
~Gritting your teeth like that is awfully bad for them, you know.~
EXIT

CHAIN IF ~Global("FHLAndJanTalk","GLOBAL",2)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLAndJan3
~You're looking peaky today. Is it perchance something that a kindly old gnome can help you with?~
DO ~SetGlobal("FHLAndJanTalk","GLOBAL",3)~
== BFHLAND
~Why, can you see one anywhere?~ [FHLAJN3]
== BJAN
~Such sarcasm from one so young! I haven't had that kind of cheek since I gave up teaching all those half-orcish children how to play the Illithid Mouth Organ.~
== BFHLAND
~Look, I'm really not in the mood. Just leave me alone.~
== BJAN
~They were disciplined enough to start up the Demihuman Children's Orchestra, but halfway through the first rehearsal--~
== BFHLAND
~Jan, please. Just be quiet!~
== BJAN
~You're rather ruining my line of thought, Andrei. Where was I? Oh, yes, the cabbages--~
== BFHLAND
~JAN! If I have to listen to one more word of your pathetic, inane drivel I'll take your stupid goggles and shove them--~
== BFHLSEB
~Does anyone have a bucket of cold water? No? Then duck!~
=
~(He throws a small stone at the back of Andrei's head.)~
== BFHLAND
~How dare you - I--~
== BFHLSEB
~Back with us, cousin?~
== BFHLAND
~Just make him stop. I can't take it anymore!~
== BFHLSEB
~All right. Jan, come with me, and you can tell me all about those organs of yours.~
== BJAN
~How many times have I heard that phrase before!~
EXIT

CHAIN IF ~Global("FHLUnorderAndKelTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKELDOR FHLAndKel1
~Andrei, there is something I would like to talk about with you.~
DO ~SetGlobal("FHLUnorderAndKelTalk1","GLOBAL",1)~
== BFHLAND
~What is it you'd like to talk about?~ [FHLAKE1]
== BKELDOR
~You, Andrei. We both know those rages are not a reflection of your true nature.~
== BFHLAND
~I know that. They're something I have to fight, and I do. My instructor was very helpful, and of course Sebastian did a lot for me, too.~
== BKELDOR
~Perhaps your instructor and Sebastian did not know the right way to help - you do still give into them.~
== BFHLAND
~I don't give into them. I just-- I'm not strong enough. Look, I'm sorry, but I don't see how it's any business of yours. I'd rather not talk about it, if it's all the same to you.~
EXIT

CHAIN IF ~Global("FHLAndKelTalkDevout","GLOBAL",0)
InParty("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndKel2
~Keldorn, I have to say I find the devoutness of your beliefs rather...disturbing.~ [FHLAKE2]
DO ~SetGlobal("FHLAndKelTalkDevout","GLOBAL",1)~
== BKELDOR
~What brought this on?~
== BFHLAND
~Nothing. I mean, this runs your life. Your duty to Torm. And I don't see how you could let it be that important to you.~
== BKELDOR
~Andrei.~
== BFHLAND
~What?~
== BFHLSEB
~He's counting to ten!~
== BFHLAND
~I didn't mean to make you angry, Keldorn. I was just wondering. Sorry, I'll leave you be.~
EXIT

CHAIN IF ~Global("FHLAndKelTalkDevout","GLOBAL",1)
Global("FHLTellCurse","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKELDOR FHLAndKel3
~Andrei, I have been thinking on the matter you mentioned before.~
=
~You were not brought up with the gods, so it is not surprising that you do not understand. Think of it this way: you are devoted to the head of your family as I am devoted to Torm.~
DO ~SetGlobal("FHLAndKelTalkDevout","GLOBAL",2)~
== BFHLAND
~Xavier's not the same at all!~ [FHLAKE3]
== BKELDOR
~Torm represents to me all that Xavier does to you: protector, guardian and an example to aspire towards.~
== BFHLAND
~But Torm's not even here!~
== BKELDOR
~If you cannot hear what I am trying to say, then I shall wait until you are ready to listen.~
EXIT

CHAIN IF ~Global("FHLAndUnorderKorgTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BKORGAN FHLAndKorg1
~Ye know, if ye put yer mind to it ye could be a decent brawler.~
DO ~SetGlobal("FHLAndUnorderKorgTalk1","GLOBAL",1)~
== BFHLAND
~Thank you, I suppose. Do you have any pointers?~ [FHLAKO1]
== BKORGAN
~If ye let fly wi' that rage o' yours, ye're a fast mover. Get flyin' wi' those fists o' yours and the enemies'll run wi' their tails 'twixt their legs.~
== BFHLAND
~Hmm. The thing is, I don't really like having the rages.~
== BKORGAN
~Then there's no hope fer ye. An' here I was thinkin' ye'd amount to somethin'.~
EXIT

CHAIN IF ~Global("FHLAndUnorderKorgTalk2","GLOBAL",0)
InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndKorg2
~Korgan, I've been wondering about something...?~ [FHLAKO2]
DO ~SetGlobal("FHLAndUnorderKorgTalk","GLOBAL",1)~
== BKORGAN
~Aye? What is it now? Be quick, mind, or I may lose patience with yer yammerin'.~
== BFHLAND
~I heard you mentioning you, er, killed the last adventuring party you were travelling with.~
== BKORGAN
~Haha! Aye, I did, an' laughed as I did so!~
== BFHLAND
~But if you were to find people who you liked a lot, then you wouldn't kill them...right?~
== BKORGAN
~I'll be honest with ye, lad. Ye mean no more to me than the dog on the street.~
== BFHLAND
~...ah. I see.~
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMAZZY FHLAndMazzy1
~(yawn)~
DO ~SetGlobal("FHLAndUnorderMazzyTalk1","GLOBAL",1)~
== BFHLAND
~Are you all right, Mazzy? You look a bit tired.~ [FHLMA1]
== BMAZZY
~Oh no, I am quite well. I do not let a few late nights get the better of me.~
== BFHLAND
~Sebastian gave me some coffee when we were in Athkatla together - maybe it'd help you? I never realised how good it was for keeping you awake!~
== BMAZZY
~I believe that it is vigilance that keeps us alert rather than foodstuffs, Andrei, and it would do you well to remember it.~
=
~Besides, you will bounce off the walls if you have too much of that drink. I recall a time when I tried to stay awake for two days at a time...~
=
~But perhaps that is not quite the...worthiest of tales to tell.~
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk2","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMazzy2
~I hope you don't mind me asking, but I don't know much about your people. Do many of them fight like you do?~ [FHLAMA2]
DO ~SetGlobal("FHLAndUnorderMazzyTalk2","GLOBAL",1)~
== BMAZZY
~If I am to tell the truth, Andrei, sometimes I do not feel altogether...comfortable with my people's reputation.~
== BFHLAND
~Why's that? I'm sorry if I offended you, but I don't know, and--~
== BMAZZY
~That's quite all right, and you need not worry. I know that you are not the sort to mock another for what they cannot change.~
=
~I will say only that sometimes it feels difficult to reconcile certain ideas my people have about how to live their lives.~
== BFHLAND
~But surely not all of them think that, right? I mean, you fight and you travel around, and you're a halfling yourself.~
== BMAZZY
~Sometimes it is not quite that simple, Andrei, but I appreciate your thoughts.~
EXIT

CHAIN IF ~Global("FHLAndUnorderMazzyTalk3","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMazzy3
~Mazzy, did it scare you when you left home for the first time?~ [FHLAMA3]
DO ~SetGlobal("FHLAndUnorderMazzyTalk3","GLOBAL",1)~
== BMAZZY
~I do not quite follow you, Andrei. With Arvoreen behind me, there is no fear.~
== BFHLAND
~Yes, but when you first left - wasn't there a bit of it? I just find it a little strange that you left everything you know behind to go and fight...for what?~
== BMAZZY
~For justice, Andrei. Some things are too important to let slide. But I do not believe that we are so very different. You have left your family, after all, to see the world.~
== BFHLAND
~I suppose so. I'm not sure I could ever give up being ordinary forever, though.~
== BMAZZY
~No one is asking you to, Andrei, and though I value your companionship I would never try to prevent your having an ordinary life.~
EXIT

//Minsc talks go here; sound clips are FHLAMI*

CHAIN IF ~Global("FHLAndMinscTalk1","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMINSC FHLAndMinsc1
~Where does that other person live when you are the nice Andrei?~
DO ~SetGlobal("FHLAndMinscTalk1","GLOBAL",1)~
== BFHLAND
~What other person? Where?~
== BMINSC
~The other Andrei is very different to the you-Andrei. Does he speak to you in your head? It must be very crowded!~
== BFHLAND
~Oh, I see. No, it's not like there's a completely different person there, thank goodness! My teacher and I talked about it a lot.~
=
~I think the other bit of me just - well, it's me, but it's a different bit. It's a bit simpler than having someone else in your head.~
== BMINSC
~Simple, you say! Minsc does not think that is simple at all, but perhaps Boo will be able to explain in easier words.~
EXIT

CHAIN IF ~Global("FHLAndMinscTalk2","GLOBAL",0)
InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndMinsc2
~Minsc, I was wondering about something. Is 'miniature giant space hamster' a rare breed?~
DO ~SetGlobal("FHLAndMinscTalk2","GLOBAL",1)~
== BMINSC
~What do you mean, a breed? Boo is a breed of his own!~
== BFHLAND
~No, I mean - don't wizards breed domesticated animals out here?~
== BMINSC
~Domesticated?! Andrei, what are you saying? Boo is not domesticated - he is a mighty, fierce creature!~
=
~Don't worry, Boo, we will set this young man's mind straight when he sees your ferocity in battle!~
EXIT

CHAIN IF ~Global("FHLAndMinscTalk3","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BMINSC FHLAndMinsc3
~That collar is practically hanging off your coat, friend Andrei. Watch out, you do not want it to catch on something.~
DO ~SetGlobal("FHLAndMinscTalk3","GLOBAL",1)~
== BFHLAND
~What? Oh, yes. I was thinking I should just throw it away, the state it's in.~
== BMINSC
~Now that is a waste, and nobody likes waste! When we stop to rest, Minsc shall mend it for you.~
== BFHLAND
~...you don't exactly seem the sewing type, Minsc. Are you sure...?~
== BMINSC
~Never fear, never fear. Minsc's witch Dynaheir could never be darning socks, could she? She was far too fine a lady.~
=
~So Minsc and Boo have had much practice. The only problem is threading the needle, and Boo has sharp eyes to help with that! Friend Andrei should not be distracted by a flapping collar or a sleeve, or evil might run around and spear him while he isn't looking!~
== BFHLAND
~Minsc, I really appreciate that. I'll be sure to take you up on that offer.~
EXIT


CHAIN IF ~Global("FHLAndNaliaTalk1","GLOBAL",0)
InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndNal1
~I know you're concerned with helping people who are less fortunate, but I can't understand you stealing from your family, and lying to them.~ [FHLANA1]
DO ~SetGlobal("FHLAndNaliaTalk1","GLOBAL",1)~
== BNALIA
~I should have expected this. Look, my family had enough, and they could spare a couple of things here and there.~
== BFHLAND
~But what about how you deceived them?~
== BNALIA
~I don't see how anyone could worry about Aunty. She's such a--~
== BFHLAND
~But she was your--~
== BNALIA
~Family, yes. But that isn't as important as some things in the real world. You should try to understand that.~
EXIT

CHAIN IF ~Global("FHLAndNaliaTalk2","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BNALIA FHLAndNal2
~This Lealia you've mentioned, she's the healer for your whole family, isn't she?~
DO ~SetGlobal("FHLAndNaliaTalk2","GLOBAL",1)~
== BFHLAND
~Yes, she learnt it from her mother, if I'm remembering it right.~ [FHLANA2]
== BNALIA IF ~Global("FHLLyelEstate","GLOBAL",0)~ THEN
~Are there any other women in your family that actually do anything? Every time you mention anyone it's Xavier, or Lyel, or your teacher.~
== BFHLAND IF ~Global("FHLLyelEstate","GLOBAL",0)~ THEN
~Of course there are. Alexandra, Lyel's sister, is one of Xavier's guards, and Josefyne's in charge of - of making sure people are safe inside the estate.~
== BNALIA
~It seems to me, Andrei, that the women of your family get the worst deal. They're either forced into traditional roles, or doing a job that's already covered by a man.~
== BFHLAND
~That doesn't show anything. You're an outsider, so you wouldn't understand!~
== BNALIA
~Shouting at me won't change anything, and it certainly doesn't make you - or Xavier - right.~
EXIT

CHAIN IF ~GLOBAL("FHLAndNaliaTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BNALIA FHLAndNal3
~Andrei--~
DO ~SetGlobal("FHLAndNaliaTalkLDP","GLOBAL",1)~
== BFHLAND
~What, are you going to say that you told me so? I know, I was wrong for ever trusting him and I should have known from the start!~ [FHLANA3]
== BNALIA
~Sebastian seemed to know from the start, so you were probably just deluding yourself. That's not what I wanted to say, though.~
== BFHLAND
~I'm sorry. I'm just...wound tightly at the moment.~
== BNALIA
~I can hardly blame you for that. But you should remember that at least now there are no more surprises. Xavier doesn't have any power over you anymore, because you know his secrets.~
== BFHLAND
~I don't know how true that is, but thank you all the same.~
EXIT

CHAIN IF ~Global("FHLAndSebYoshTalk","GLOBAL",0)
!StateCheck("FHSEB",CD_STATE_NOTVALID)
InParty("FHLSEB")
PartyHasItem("MISCBU")~ THEN BFHLAND FHLAndSebYosh
~Sebastian?~ [FHLAYO3]
DO ~SetGlobal("FHLAndSebYoshTalk","GLOBAL",1)~
== BFHLSEB
~What is it now?~
== BFHLAND
~Look, I know that things aren't exactly-- Well, anyway, I just wanted to say that I'm sorry about Yoshimo.~
== BFHLSEB
~Why? You didn't make him betray us.~
== BFHLAND
~I know you were friends, and--~
== BFHLSEB
~What are you talking about? I saw right through him from the first. Now leave me alone, I need time to brood.~
EXIT

CHAIN IF ~Global("FHLAndValForestTalk","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
AreaType(FOREST)~ THEN BFHLAND FHLAndValForest
~There are so many strange animals here - I doubt I'll ever properly get used to it. I mean, look at that thing!~ [FHLAVA1]
DO ~SetGlobal("FHLAndValForestTalk","GLOBAL",1)~
== BVALYGA
~Do you not have squirrels in your home?~
== BFHLAND
~That's a squirrel? I never realised their tails were like that.~
== BVALYGA
~I guess you still have a lot to learn about animals.~
== BFHLAND
~Oh, I know that. I suppose you can never stop learning.~
EXIT

CHAIN IF ~Global("FHLAndValTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
GlobalLT("FHLTellCurse","GLOBAL",4)
Global("FHLLDP","GLOBAL",0)~ THEN BVALYGA FHLAndVal1
~I know it's a burden to live with a magical affliction. You have to have a lot of strength to live normally.~
DO ~SetGlobal("FHLAndValTalk","GLOBAL",1)~
== BFHLAND
~Oh, it's not that hard. It's all I've known, after all.~ [FHLAVA2]
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
~Had you ever thought about curing the curse before now?~
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
~I don't know what to think about the whole thing. Sebastian's been so...~
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",2)~ THEN
~Sebastian's a fool and you know it. Beware, he might do something both of you'll regret.~
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
~Have you ever thought about curing the curse somehow?~
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
~Curing it? No, of course not. The heads of the family know it's too dangerous - if someone tried it could kill us all.~
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
~Hmm.~
== BFHLAND IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
~What?~
== BVALYGA IF ~Global("FHLSebPostLyel","GLOBAL",0)~ THEN
~I'll keep my own counsel. We obviously think differently about these things.~
EXIT

CHAIN IF ~Global("FHLAndValTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLXavTalk","GLOBAL",1)
GlobalLT("FHLTellCurse","GLOBAL",4)~ THEN BVALYGA FHLAndVal2
~I can't believe that you follow your leader so blindly.~
DO ~SetGlobal("FHLAndValTalk","GLOBAL",2)~
== BFHLAND
~What do you mean? I don't think I...~ [FHLAVA3]
== BVALYGA
~I mean the head of your family.~
== BFHLAND
~Oh. I suppose it's hard for someone outside to understand it. It's not like you've grown up with us.~
== BVALYGA
~I can understand manipulation all too well, and that's what's going on.~
== BFHLAND
~No, you don't understand. It's not how it was in your family - we're happy...~
== BVALYGA
~Magic corrupts, and your family's no exception.~
== BFHLAND
~...~
=
~Valygar, I don't want to say something I'll regret, so I'll talk to you another time, all right?~
EXIT

CHAIN IF ~Global("FHLAndValTalkLDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",0)~ THEN BFHLAND FHLAndVal3
~I suppose you would have helped kill Xavier if you'd had the chance.~ [FHLAVA4]
DO ~SetGlobal("FHLAndValTalkLDP","GLOBAL",1)~
== BVALYGA
~If I'm honest, yes. I don't know whether he was always that way, or whether it was the magic that got to him, but either way he deserved what was coming to him.~
== BFHLSEB
~Oh, trust me, he was always like that.~
== BFHLAND
~Thank you for...for not going off and doing it anyway.~
== BVALYGA
~Who, me or your cousin?~
== BFHLAND
~Both of you.~
EXIT

CHAIN IF ~Global("FHLAndVicTalk","GLOBAL",0)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BVICONI FHLAndVic1
~You have a warrior's physique, Andrei. Were there a couple more years of experience on you I might consider you worthy for the delights of the flesh.~
DO ~SetGlobal("FHLAndVicTalk","GLOBAL",1)~
== BFHLAND
~Um...thank you. My family have to approve of the match before people make arrangements like that, though.~ [FHLAVI1]
== BVICONI
~It was not an 'arrangement' of which I was speaking. I was wrong: you are as callow as I first thought.~
=
~In any case, I would have thought your family would jump at the chance for new blood. Tell me, do you have webbed feet under those boots of yours?~
== BFHLAND
~No, I don't! And I'd rather you didn't make comments like that.~
== BVICONI
~As you wish. Stay your anger, monk.~
EXIT

CHAIN IF ~Global("FHLAndVicTalk","GLOBAL",1)
InParty("FHLAND")
InParty("FHLSEB")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BVICONI FHLAndVic2
~I believe I understand why your Xavier wishes so dearly for you to be near him.~
DO ~SetGlobal("FHLAndVicTalk","GLOBAL",2)~
== BFHLAND
~Oh?~ [FHLAVI2]
== BVICONI
~He lusts after your charms. For you to be free would break his heart.~
== BFHLAND
~Viconia, I can't believe you'd even--~
== BVICONI
~You do not deny it, puny one.~
== BFHLAND IF ~Global("FHLLDP","GLOBAL",0)~ THEN
~Shut up! Just shut up! Xavier's not like that, and you'll never know him because he's too good to associate with a bitch like you!~
== BFHLAND IF ~GlobalGT("FHLLDP","GLOBAL",1)~ THEN
~Shut up! Just shut up! Whatever else Xavier's done, he's not like that!~
== BVICONI
~A raw nerve, I see. Perhaps I have touched on a sensitive subject?~
== BFHLAND
~Come here and I'll show you just how 'sensitive' I am. I'll--~
== BFHLSEB
~All right, all right, that's enough! Andrei, go and have a cold bath and calm down.~
=
~Viconia, I can categorically state that Xavier and Andrei are not an item, so kindly stop your meddling. Now.~
EXIT

CHAIN IF ~Global("FHLAndYoshTalk","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLAND FHLAndYosh1
~It must be an awfully long way from home for you. Don't you ever miss it?~ [FHLAYO1]
DO ~SetGlobal("FHLAndYoshTalk","GLOBAL",1)~
== BYOSHIM
~Ah, sometimes Kara-Tur does seem a great distance. But we must live in the present, must we not?~
== BFHLAND
~Oh, of course, I understand that. It must be hard when you miss people, though.~
== BYOSHIM
~There are those who I miss, yes, but not all of them reside in my homeland.~
== BFHLAND
~I'm sorry, I didn't mean to pry.~
== BYOSHIM
~It is of no great importance. We all must have our secrets, Andrei, as I am sure you know well.~
EXIT

CHAIN IF ~Global("FHLAndYoshTalk","GLOBAL",1)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLRow","GLOBAL",1)~ THEN BYOSHIM FHLAndYosh2
~Things have seemed a little frosty between you and your cousin of late, friend Andrei.~
DO ~SetGlobal("FHLAndYoshTalk","GLOBAL",2)~
== BFHLAND
~Hmph, what do you care? You're always talking to him. Wait, did he put you up to this?~ [FHLAYO2]
== BYOSHIM
~Not at all. I just do not like to see friends fighting.~
== BFHLAND
~Is he...upset, at all?~
== BYOSHIM
~He has been rather morose, yes.~
== BFHLAND
~On the other hand, he might just be thinking of other ways to annoy me-- Oh, he's so frustrating!~
== BYOSHIM
~I certainly believe that there an element of the upset in him at the moment.~
== BFHLAND
~Good. Then maybe he'll say sorry.~
EXIT
