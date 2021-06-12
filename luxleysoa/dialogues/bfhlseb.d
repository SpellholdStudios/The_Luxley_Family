BEGIN BFHLSEB

IF ~Global("FHLSebTalk","GLOBAL",2)~ THEN BEGIN FHLST1
SAY ~My cousin can be perfectly infuriating at times! Still, he could be worse, I suppose. He could be, I don't know...a druid.~ [FHLSB1]
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY ~I'm a druid. Would you care to repeat that?~ + FHLST1_druid
++ ~What's so bad about druids? Do you have something against them?~ + FHLST1_whatswrong
++ ~I think you deserved what he said to you. You were very rude to him, after all.~ + FHLST1_notbad
++ ~Do you plan to forgive him? The things he said were pretty insulting.~ + FHLST1_forgive
IF ~Global("FHLAndTalk1","GLOBAL",1)~ THEN REPLY ~He didn't mean the things he said, I'm sure.~ + FHLST1_didntmean
IF ~!Global("FHLAndTalk1","GLOBAL",1)~ THEN REPLY ~You should talk to him. He's feeling guilty, and it might cheer him up.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_forgive
++ ~Why do you put up with him when he talks to you like that?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_whyput
++ ~Leave me alone, Sebastian, I don't want to talk to you.~ + FHLST1_whatever
END

IF ~~ FHLST1_druid
SAY ~Are you? Why, so you are! But that's not really the point. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_notbad
SAY ~I probably did. That's not really the point, though. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_forgive
SAY ~Someday, maybe, if he's nice enough... Oh, don't look at me like that, I already have forgiven him. But that's not really the point. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_didntmean
SAY ~Ah, he may not have meant them, but that doesn't mean they aren't true! Maybe deep down he thinks those things. Maybe not.~
=
~But that's not really the point. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_whyput
SAY ~Because I have nothing better to do, of course! Oh, don't look at me like that. I like him. But that's not really the point. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems
END

IF ~~ FHLST1_natural
SAY ~Good, so you can see! I'm most certainly not, I guarantee, but Andrei manages to warrant a crumb of protectiveness from me.~
=
~Perhaps I'm getting sentimental in my old age. Twenty-seven years is a long time, I'll have you know, you young whipper-snapper! He's only nineteen, and spent all his youth with the family. But still...~
++ ~Go on, Sebastian - what were you going to say?~ + FHLST1_butstill
++ ~Nineteen isn't that young. I'm only a little older than that, myself.~ + FHLST1_young
++ ~Twenty-seven isn't that old.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ ~Twenty-seven isn't that old. I think you're a fine model of a man.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ ~Well, if you've nothing to worry about, let's just get going.~ + FHLST1_going
END

IF ~~ FHLST1_okay
SAY ~Whatever you say. I'm sure my twenty-seven long years lend me enough of a modicum of sense to know when worrying is worth it.~
=
~Andrei's only nineteen, and spent his youth with the family. But still.~
++ ~Go on, Sebastian - what were you going to say?~ + FHLST1_butstill
++ ~Nineteen isn't that young. I'm only a little older than that, myself.~ + FHLST1_young
++ ~Twenty-seven isn't that old.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ ~Twenty-seven isn't that old. I think you're a fine model of a man.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST1_old
++ ~Well, if you've nothing to worry about, let's just get going.~ + FHLST1_going
END

IF ~~ FHLST1_why
SAY ~I saw him grow up. He's family, and that always counts for something. Don't you think family is important? Heritage and the like?~
++ ~Sorry - did you just wink at me?~ + FHLST1_wink
++ ~Of course I know that heritage is important. With my background, it's an important factor.~ + FHLST1_yes
++ ~I wish it wasn't so important, to be honest, but that's just the way things are, I suppose.~ + FHLST1_yes
++ ~It's not important to me in the slightest, so you don't need to make eyes at me like that.~ + FHLST1_slightest
END

IF ~~ FHLST1_whatever
SAY ~I see <CHARNAME> hasn't had enough sleep lately. Well, never mind. I'll talk to you when you're in a better mood.~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_seems
SAY ~Of course he is. But...Andrei's only nineteen, and spent his youth with the family. But still.~
++ ~Go on, Sebastian - what were you going to say?~ + FHLST1_butstill
++ ~Nineteen isn't that young. I'm only a little older than that, myself.~ + FHLST1_young
++ ~Well, if you've nothing to worry about, let's just get going.~ + FHLST1_going
END

IF ~~ FHLST1_butstill
SAY ~Never you mind, <CHARNAME>, don't be nosy!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_young
SAY ~Nineteen's old? If nineteen is old, then what's twenty-seven? Are you saying I'm decrepit? Oh, I have wrinkles!~
++ ~No, you don't--~ + FHLST1_dont
++ ~Yes, you do--~ + FHLST1_does
++ ~Be quiet--~	+ FHLST1_quiet
END

IF ~~ FHLST1_old
SAY ~<CHARNAME>, you're so charming! It won't work though, you know. I want to get to know you better before any of that kind of thing.~
++ ~What kind of thing, precisely, are you talking about?~ + FHLST1_what
++ ~That's not what I meant at all, Sebastian. Don't deliberately misunderstand me.~ + FHLST1_notmeant
++ ~That's a shame. You're not so bad, yourself.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST1_shame
END

IF ~~ FHLST1_going
SAY ~Yes, let's. What wonderful counsel you give, <CHARNAME> - I'll be sure to get it next time, too!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_wink
SAY ~No, it's just my facial tic - the pressures of everyday life are too much for one with a delicate constitution such as mine. For I am fragile! Fragile like the butterfly as it spreads its wings against the summer sky!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_yes
SAY ~Then you'll know that the bonds of blood are not ones lightly broken!~
=
~We Luxleys are all very close, believe me. It would take more than a moody outburst to cause a rift.~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_no
SAY ~Even so, the bonds of blood are not ones lightly broken!~
=
~We Luxleys are all very close, believe me. It would take more than a moody outburst to cause a rift. But, of course, you wouldn't know about that sort of thing, so I'll be quiet!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_slightest
SAY ~Ooh, I think you're lying - and after I've been so honest too. Don't worry, I'll leave you to your secrets. For now!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_dont
SAY ~Wonderful - just try to pacify me with meaningless words like I'm sort of idiot. Well, I won't have it. We'll speak later, <CHARNAME>!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_quiet
SAY ~You're the one that got me into this state! I'm fragile, <CHARNAME>, fragile, like the butterfly as it spreads its wings against the summer sky! We'll speak later about this!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_does
SAY ~Well, at least I don't look like you. You'll just get even worse!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_what
SAY ~How young and innocent you are, <CHARNAME>...the mind positively boggles!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_notmeant
SAY ~Well, that's a pity and no mistake!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLST1_shame
SAY ~Ha! I certainly look forward to getting to know you better!~
IF ~~ THEN DO ~SetGlobal("FHLAndSebTalk","GLOBAL",1)~
EXIT
END

//Talk2
IF ~Global("FHLSebTalk","GLOBAL",4)~ THEN BEGIN FHLST2
SAY ~Tell me, <CHARNAME>, do you know of any good tailors in Athkatla? Or in the whole of Amn, for that matter...~ [FHLSB2]
++ ~Tailors? What do you mean, tailors?~ + FHLST2_huh
++ ~I'm not from Amn myself, so I haven't got my bearings yet. Ask me again in a few days.~ + FHLST2_no
++ ~I was thinking that very thing myself earlier on. These old things aren't exactly the height of style.~ + FHLST2_samething
++ ~No, I don't, I'm afraid.~ + FHLST2_no
END

IF ~~ FHLST2_huh
SAY ~Yes, a person who makes clothes for a living. You're not wearing rags, so I assumed you'd know of them.~
++ ~Watch it, Sebastian. Don't make fun of me, or you'll get in trouble.~ + FHLST2_fun
++ ~Of course I know what tailors are - don't make fun of me.~ + FHLST2_know
++ ~You certainly like to hear yourself talk, don't you?~ + FHLST2_certainly
END

IF ~~ FHLST2_no
SAY ~Any self-respecting person would know where the nearest tailors are in any given place! <CHARNAME>, I'm disappointed in you.~
++ ~Well, as troubling as it might be to endure your disappointment, I can live with it.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_live
++ ~Please, Sebastian, I don't appreciate you making fun of me like that.~ + FHLST2_fun
++ ~How come you don't know where they are, then?~ + FHLST2_selfrespect
++ ~Be quiet, Sebastian, you're giving me a headache with all this chattering.~ + FHLST2_headache
END

IF ~~ FHLST2_samething
SAY ~Really? Oh, <CHARNAME>, we must remedy this awful situation. Both of us with nothing new to wear?~
++ ~Sebastian, you're ridiculous.~ + FHLST2_ridiculous
++ ~That's truly a catastrophe indeed!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_catastrophe
END

IF ~~ FHLST2_fun
SAY ~But I enjoy it! You should feel complimented: I don't make fun of just anyone, now do I?~
++ ~How exactly is it a compliment to be made fun of? That doesn't make the least sense.~ + FHLST2_how
++ ~Of course you make fun of everyone. I've seen you talking to Andrei.~ + FHLST2_youdo
++ ~Fine, then, have it your way. I'll just try to ignore it.~ + FHLST2_yourway
END

IF ~~ FHLST2_know
SAY ~Well, then. Do you know where any are?~
++ ~Why do you want to know where a tailor is, anyway?~ + FHLST2_why
++ ~I'm not from Amn myself. How would I know? Besides, I have other things on my mind.~ + FHLST2_no
++ ~No, I don't, I'm afraid.~ + FHLST2_no
END

IF ~~ FHLST2_certainly
SAY ~Why, of course I do! Life wouldn't be any fun if you didn't like the sound of your own voice, would it?~
++ ~Life may be fun for you, but it certainly isn't for me.~ + FHLST2_marvin
++ ~You may enjoy your voice, but that doesn't mean anyone else does.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST2_catty
++ ~You make a fine point! I'd have to agree with that.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_point
END

IF ~~ FHLST2_live
SAY ~Brave words, but I fear that you speak of the unknown. I would not want you to risk yourself hurt.~
++ ~I can't contain my gratitude for your concern.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST2_sarcastic
++ ~Don't worry. I'm perfectly willing to take the risk.~ + FHLST2_risk
++ ~Be quiet, Sebastian, you're giving me a headache with all this chattering.~ + FHLST2_headache
++ ~Thank you, I suppose - though that's a very roundabout way of saying whatever it is you're saying.~ + FHLST2_guess
END

IF ~~ FHLST2_selfrespect
SAY ~I don't know what you're talking about. Who said I was self-respecting?~
IF ~~ EXIT
END

IF ~~ FHLST2_headache
SAY ~This early in our relationship and you're already saying you have a headache? Egads, I'm losing my touch!~
++ ~Leave me alone, and stop being disgusting.~	+ FHLST2_disgusting
++ ~What relationship are you referring to, precisely?~ + FHLST2_relationship
++ ~I'm just playing hard to get, Sebastian. Maybe if you try a little, you'll get me.~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST2_hard
++ ~Maybe you need a little more practice, if you're losing your touch so early.~ + FHLST2_practice
END

IF ~~ FHLST2_ridiculous
SAY ~Not as ridiculous as you! Now, if you'll excuse me, I have some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_catastrophe
SAY ~It's so wonderful to finally have someone who understands - come on, we'll look for that tailors' together!~
IF ~~ EXIT
END

IF ~~ FHLST2_how
SAY ~I'll let you decide that - you seem the headstrong type. Just take it easy, for once! Now, if you'll excuse me, I have some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_youdo
SAY ~True...but then what's a little falsehood between friends, eh?~
++ ~It's important, actually. I want to be able to trust my travelling companions.~ + FHLST2_trust
++ ~It's nothing. Just be as transparent as normal and we'll have nothing to worry about.~ + FHLST2_catty
++ ~I don't care what you tell me. So long as it's only a little falsehood.~ + FHLST2_catty
++ ~Considering I lie to you all the time, I think I'll let you off this time.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST2_liar
END

IF ~~ FHLST2_yourway
SAY ~Ah, excellent. I do so love it when people say that!~
++ ~You're a strange, strange man, Sebastian.~ + FHLST2_catty
++ ~Well, I just love saying it, if you know what I mean!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST2_gudgud
++ ~Should I be worried? You've got an odd look in your eye.~ + FHLST2_marvin
END

IF ~~ FHLST2_why
SAY ~Because I like clothes, of course - what other reason would there be?~
=
~If you don't know where any are, I'll just have to keep a look out myself. Now stop bothering me, I have some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_marvin
SAY ~Poor unfortunate <CHARNAME>. You'll get over it.~
IF ~~ EXIT
END

IF ~~ FHLST2_catty
SAY ~Oh, my dear, such a way with words. Keep studying and you might even be able to annoy my little niece Mietta!~
IF ~~ EXIT
END

IF ~~ FHLST2_point
SAY ~I know I do. It's good to see that someone else finally recognises it...~
IF ~~ EXIT
END

IF ~~ FHLST2_sarcastic
SAY ~Well, someone's got to look after poor <CHARNAME>, and I don't mind that it's me!~
IF ~~ EXIT
END

IF ~~ FHLST2_risk
SAY ~Are you? *Are you*? Now, if you'll excuse me, I've got some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_guess
SAY ~You suppose? Oh, <PRO_HESHE> supposes. This is what I get for being considerate! I don't know why I bother...~
IF ~~ EXIT
END

IF ~~ FHLST2_disgusting
SAY ~And? Now excuse me, <CHARNAME>, I have some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_relationship
SAY ~Ah, innocent <CHARNAME>...you'll find out soon enough, I'm sure!~
IF ~~ EXIT
END

IF ~~ FHLST2_hard
SAY ~Mmm-hmmm. Well, if you're going to be like that, maybe I won't bother trying!~
IF ~~ EXIT
END

IF ~~ FHLST2_practice
SAY ~Why, <CHARNAME>, are you volunteering?~
++ ~No, most certainly not! What kind of question is that to ask someone you barely know?~ + FHLST2_sarcastic
++ ~Maybe. If you make it worth my while.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1) IncrementGlobal("FHLSebFlirt","GLOBAL",-1)~ + FHLST2_maybe
++ ~Ooh, yes!~ + FHLST2_gudgud
END

IF ~~ FHLST2_trust
SAY ~<CHARNAME>, you can trust me implicitly - you know you can. Now, if you'll excuse me, I have some work to do.~
IF ~~ EXIT
END

IF ~~ FHLST2_liar
SAY ~Sneaky. I knew there was a reason why I liked you!~
IF ~~ EXIT
END

IF ~~ FHLST2_gudgud
SAY ~Good, good! But we really should get to know one another before anything like that. I'm a reformed character, I'll have you know.~
IF ~~ EXIT
END

IF ~~ FHLST2_gudgud2
SAY ~Good, good!~
IF ~~ EXIT
END

IF ~~ FHLST2_maybe
SAY ~I don't think you know what you're talking about. I'm not that kind of person, and I'd thank you not to imply it.~
IF ~~ EXIT
END

//SebTalk3//
IF ~Global("FHLSebTalk","GLOBAL",6)~ THEN BEGIN FHLST3
SAY ~Tell me, <CHARNAME>, would you prefer your life to be immortalised in a musical or a drama?~ [FHLSB3]
++ ~A musical. I do love listening to singing!~	+ FHLST3_musical
++ ~Don't you think a drama-type of piece would suit me better?~ + FHLST3_drama
++ ~I beg your pardon? What new nonsense are you embarking on this time?~ + FHLST3_what
IF ~RandomNum(2,1)~ THEN REPLY ~Neither. I don't need your foolishness.~ + FHLST3_neither1
IF ~RandomNum(2,2)~ THEN REPLY ~Neither. I don't need your foolishness.~ + FHLST3_neither2
END

IF ~~ FHLST3_musical
SAY ~Oh, excellent! I know you'll love my singing voice.~
++ ~I very much doubt that you can sing to save your life.~ + FHLST3_mean
++ ~I'm sure I will too, Sebastian. I'm looking forward to it already.~ + FHLST3_sure
++ ~I'm not very good at it. Maybe you can give me private singing lessons sometime soon.~ DO ~SetGlobal("FHLSing","GLOBAL",1) IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST3_private
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~I'm sure I'd be better at it than you, wouldn't I? Would you like some help?~ + FHLST3_bard
END

IF ~~ FHLST3_drama
SAY ~Yes, you're right - dark, brooding and atmospheric, and I can play the leading role!~
++ ~I thought you were a playwright, not an actor.~ + FHLST3_playwright
++ ~Somehow, you don't really strike me as the brooding type.~ EXTERN FHLANDJ FHLST3_brooding
++ ~It sounds wonderful! I'm looking forward to it already.~ + FHLST3_wonderful
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~Maybe I should play myself, Sebastian. You don't exactly look like me.~ + FHLST3_bardplay
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~In case you hadn't noticed, I'm a woman. You'll have to make some pretty hefty changes...~ + FHLST3_woman
END

IF ~~ FHLST3_what
SAY ~I'm going to write a play about your adventures, <CHARNAME>. It's too lucrative an opportunity to miss!~
=
~I'll give you a share of the profits, of course. You needn't worry about that. All I want to know at the moment is whether you'd prefer a musical rendition, or more of a drama?~
IF ~RandomNum(2,1)~ THEN REPLY ~I'd really rather that you did neither.~ + FHLST3_neither1
IF ~RandomNum(2,2)~ THEN REPLY ~I'd really rather that you did neither.~ + FHLST3_neither2
++ ~You can write a musical, in that case.~ + FHLST3_musical
++ ~Fine, fine, I think that a drama would suit me best.~ + FHLST3_drama
IF ~Class(Player1,BARD_ALL) RandomNum(2,1)~ THEN REPLY ~If anyone going to write a play about my life, it'll be me.~ + FHLST3_neither1
IF ~Class(Player1,BARD_ALL) RandomNum(2,2)~ THEN REPLY ~If anyone's going to write a play about my life, it'll be me.~ + FHLST3_neither2
END

IF ~~ FHLST3_neither1
SAY ~I'll take that as a musical, then. I just know that you'll love my singing voice.~
++ ~I very much doubt that you can sing to save your life.~ + FHLST3_mean
++ ~I said no, Sebastian, and I mean it!~ + FHLST3_nomusical
++ ~(sigh) If you say so. I'm sure I will too, Sebastian.~ + FHLST3_sure
END

IF ~~ FHLST3_neither2
SAY ~I'll take that as a drama, then. It'll be dark, brooding and atmospheric, and I can play the leading role!~
++ ~I thought you were a playwright, not an actor.~ + FHLST3_playwright
++ ~Somehow, you don't really strike me as the brooding type.~ EXTERN FHLANDJ FHLST3_brooding
++ ~It sounds wonderful! I'm looking forward to it already.~ + FHLST3_wonderful
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~Maybe I should play myself, Sebastian. You don't exactly look like me.~ + FHLST3_bardplay
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~In case you hadn't noticed, I'm a woman. You'll have to make some pretty hefty changes...~ + FHLST3_woman
END

IF ~~ FHLST3_mean
SAY ~Hmph. You haven't even heard me sing properly! I have a wonderful voice when I'm not distracted by all those nasty people trying to hit me. You just wait, <CHARNAME>. This musical will blow you away!~
=
~Now, what rhymes with Sarevok...~
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_sure
SAY ~Oh, <CHARNAME>, you're just too good to me! No, no one could ever be too good to me. I'll make you proud, I swear.~
=
~Now, what rhymes with Sarevok...~
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_private
SAY ~Unfortunately, I have to write the script first. I will await schooling you with breath held and an anticipatory heart!~
=
~Now, what rhymes with Sarevok...~
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_bard
SAY ~Hmph! Well, perhaps you can have a part. A small part. But you'll have to audition for it first!~
=
~Now, what rhymes with Sarevok...~
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_wonderful
SAY ~Of course it does. It's me, after all. Fear not, this will be something to behold!~
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_bardplay
SAY ~Oh, nonsense. You just can't work the stage like I can, you haven't had enough practice! Now leave me be. I need peace and quiet to work on this script!~
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_woman
SAY ~Artistic licence, artistic licence. Oh, don't give me that look, I need peace and quiet to work on this script!~
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_nomusical
SAY ~You won't be saying that when you see the first draft! Now, what rhymes with Sarevok...~
IF ~~ THEN DO ~SetGlobal("FHLSebMusical","GLOBAL",1)~
EXIT
END

IF ~~ FHLST3_nodrama
SAY ~You won't be saying that when you see the first draft!~
IF ~~ THEN DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT
END


//Talk4 - musical //
IF ~Global("FHLSebTalk","GLOBAL",8) Global("FHLSebMusical","GLOBAL",1)~ THEN BEGIN FHLST4
SAY ~The first draft of Act One, Scene One, of the musical is ready. Would you like to hear it?~ [FHLSB4b]
++ ~Of course I'd like to hear it. It's all I've been looking forward to for ages.~ + FHLST4_yes
IF ~Global("FHLSing","GLOBAL",1)~ THEN REPLY ~I'm still waiting for my private singing lessons, you know. I feel cheated!~ DO ~IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST4_private
++ ~Tell me, is it any good? Have you been working on it carefully?~ + FHLST4_good
++ ~We don't have the time for this right now.~ + FHLST4_no
END

IF ~~ FHLST4_fantastic
SAY ~No it wasn't! Trust me, <CHARNAME>, I know how to write well. Consider that a goodwill gesture. As if that was my real skill! Honestly...~
++ ~Why in the hells did you bother with it, then?~ + FHLST4_bother
++ ~I suppose I'll say thank you, then - though it's a strange sort of goodwill gesture.~ + FHLST4_thank
++ ~I thought it was funny, though! I enjoyed it.~ + FHLST4_funny
END

IF ~~ FHLST4_light
SAY ~Pfeh! You should have asked for a drama, then!~
++ ~Perhaps you could try one, another time?~ + FHLST4_try
++ ~Well, it wasn't very good, whatever the form.~ + FHLST4_awful
++ ~It was a good musical, though - I enjoyed it.~ + FHLST4_fun
++ ~Whatever. I didn't find it particularly funny, and neither should you.~ + FHLST4_amuse
END

IF ~~ FHLST4_weak
SAY ~Do you really want me to answer that? Don't worry, it was just a bit of fun. It's not like I tried or anything.~
++ ~What do you mean? I thought you'd been working on it for ages...~ + FHLST4_fun
++ ~But I thought it was quite good, actually. What do you mean, you didn't try?~ + FHLST4_fun
++ ~Well, I could tell you didn't try. It was terrible, truly terrible.~ + FHLST4_awful
END

IF ~~ FHLST4_confused
SAY ~Oh, I most certainly am! Don't worry about the confusion. It fades!~
IF ~~ EXIT
END

IF ~~ FHLST4_awful
SAY ~Of course, it was simply dire! But that's because I didn't try to make it any good.~
=
~Trust me, <CHARNAME>, I do know how to write well. Consider it a gesture of goodwill. As if that was my actual skill! Honestly...~
++ ~Why in the hells did you bother with it, then?~ + FHLST4_bother
++ ~I suppose I'll say thank you, then - though it's a strange sort of goodwill gesture.~ + FHLST4_thank
END

IF ~~ FHLST4_fun
SAY ~You're making fun of me, aren't you - I can tell! Still, it deserves it. Even I thought it was stupid! I do know how to write well, trust me. Consider this a goodwill gesture.~
++ ~Why in the hells did you bother with it, then?~ + FHLST4_bother
++ ~I suppose I'll say thank you, then - though it's a strange sort of goodwill gesture.~ + FHLST4_thank
END

IF ~~ FHLST4_amuse
SAY ~Someone wasn't amused. Hmph! <CHARNAME>, you must know that I respect you greatly and I would never dream of doing something like that in seriousness.~
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_bother
SAY ~It was for fun, of course!~
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_thank
SAY ~You needn't bother, but I appreciate the sentiment.~
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_half
SAY ~I'll teach you everything I know about literary techniques, never fear!~
IF ~~ THEN GOTO FHLST4_worry
END

IF ~~ FHLST4_try
SAY ~Oh, no, this is a one-time performance only. Besides, I wouldn't want to have to actually work on something. What do you take me for? This was just a goodwill gesture.~
++ ~Why in the hells did you bother with it, then?~ + FHLST4_bother
++ ~I suppose I'll say thank you, then - though it's a strange sort of goodwill gesture.~ + FHLST4_thank
END

IF ~~ FHLST4_defno
SAY ~Fine. All my work went for nothing, I see.~
IF ~~ EXIT
END

//Talk 4 - drama//
IF ~Global("FHLSebTalk","GLOBAL",8) Global("FHLSebDrama","GLOBAL",1)~ THEN BEGIN FHLST4_drama
SAY ~The first draft of Scene One of the drama is ready! Would you like to see it?~ [FHLSB4a]
++ ~Of course I'd like to hear it. It's all I've been looking forward to for ages.~ + FHLST4_course
++ ~Tell me, is it any good? Have you been working on it carefully?~ + FHLST4_course
++ ~We don't have the time for this right now, Sebastian.~ + FHLST4_no
END

IF ~~ FHLST4_time
SAY ~Of course you do. Andrei, get into position.~
++ ~I mean it, Sebastian. I don't want you to do this.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST4_defno
++ ~Fine, fine, get it over with. Go on, Andrei, do your stuff.~ EXTERN FHLANDJ FHLST4_drama2
END

IF ~~ FHLST4_course
SAY ~Patience, patience! Andrei, get into position.~
IF ~~ THEN EXTERN FHLANDJ FHLST4_drama2
END

IF ~~ FHLST4_melo
SAY ~Pfeh - you should have asked for the musical, then.~
++ ~Perhaps you could try one, another time?~ + FHLST4_try
++ ~Well, it wasn't very good, whatever the form.~ + FHLST4_awful
++ ~It was a good drama, though - I enjoyed it.~ + FHLST4_fun
++ ~Whatever. I didn't find it particularly funny, and neither should you.~ + FHLST4_amuse
END


//Talk5//
IF ~Global("FHLSebTalk","GLOBAL",10)~ THEN BEGIN FHLST5
SAY ~<CHARNAME>, what has Andrei been telling you?~ [FHLSB5]
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He said that you upset him, but he forgives you. I don't think he should have let it go, myself.~ + FHLST5_forgive
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He told me about his childhood, and how you took care of him.~ + FHLST5_child
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He said that he loves you. Perhaps you should keep an eye on him.~ + FHLST5_love
++ ~What Andrei and I talk about is our business, not yours.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_our
++ ~All sorts, but I can't quite remember. Maybe a few gold pieces would jog my memory.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_rich
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He hasn't told me anything lately. I told him to leave me alone.~ + FHLST5_leave
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~I didn't have time to talk to him and I don't have time to talk to you either.~ + FHLST5_high
END

IF ~~ FHLST5_forgive
SAY ~He doesn't have to forgive me at all if he doesn't want to - it's his choice and no one else's - but he always does. Besides, who says that I needed forgiving? I should do something really naughty, like...let's see...~
=
~Aha! Embarrassing childhood stories!~
IF ~RandomNum(3,1)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon3
++ ~No. I certainly don't want to know. Leave me alone, if you're going to be annoying.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_child
SAY ~A story to warm the heart, certainly. But you know what I'm sure he didn't tell you? Embarrassing childhood stories!~
IF ~RandomNum(3,1)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon3
++ ~No. I certainly don't want to know. Leave me alone, if you're going to be annoying.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_our
SAY ~Oh, go on, tell! It must be something interesting.~
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He said that you upset him, but he forgives you. I don't think he should have let it go, myself.~ + FHLST5_forgive
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He told me about his childhood, and how you took care of him.~ + FHLST5_child
IF ~!Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He said that he loves you. Perhaps you should keep an eye on him.~ + FHLST5_love
++ ~All sorts, but I can't quite remember. Maybe a few gold pieces would jog my memory.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_rich
IF ~Global("FHLAT5","GLOBAL",1)~ THEN REPLY ~He hasn't told me anything lately. I told him to leave me alone.~ + FHLST5_leave
++ ~I'm not going to tell you, Sebastian, and that's that.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_love
SAY ~Oh, the sweetheart! He just had to go and embarrass me like that. I bet he told you some sentimental rubbish that made me sound like a complete pushover, am I right?~
=
~Well, I'll fix this. What we need are some...embarrassing childhood stories!~
IF ~RandomNum(3,1)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon3
++ ~No. I certainly don't want to know. Leave me alone, if you're going to be annoying.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_rich
SAY ~Anyway. Well, now that you've killed the mood, what we need are some...embarrassing childhood stories!~
IF ~RandomNum(3,1)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Ooh, go on. What sort of stories do you mean?~ + FHLST5_goon3
IF ~RandomNum(3,1)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon1
IF ~RandomNum(3,2)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon2
IF ~RandomNum(3,3)~ THEN REPLY ~Sebastian, I really don't need to hear this...~ + FHLST5_goon3
++ ~No. I certainly don't want to know. Leave me alone, if you're going to be annoying.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST5_high
END

IF ~~ FHLST5_leave
SAY ~Hmm! It seems as though you're losing patience with Andrei. Well, I won't force you to talk to me, then. You go back to your musings; I'm sure they're terribly important.~
IF ~~ EXIT
END

IF ~~ FHLST5_high
SAY ~High and mighty <CHARNAME> has spoken and thus all <PRO_HISHER> subjects must obey!~
=
~I bow to you, glorious one. Just don't let your head swell too much. It might not fit through doors, and then where would we be?~
IF ~~ EXIT
END

IF ~~ FHLST5_goon1
SAY ~Now, let me see. Which one...ah, yes.~
=
~I remember it as clear as day. My dear cousin Lyel had given up on one of those damnable 'weapons training classes' - he was so eager to teach me, but of course I had no interest in that sort of thing - and had left me under the shade of a large oak tree.~
=
~It was a hot, humid summer's day and I started to drift into the embrace of sleep. But no sooner had my head dropped than I heard a piercing shriek! I saw three small figures run past nearby: little Andrei, being pursued by Rosanna - who was soaking wet - and Lucas.~
=
~I quickly ascertained that Andrei had emptied a bucket of cold, soapy water upon the head of poor Rosanna. As I watched, I saw him receive his punishment. For little Rosanna, smart girl that she is, had mixed together another bucket of water with a bag of flour and chopped beetroot, presumably from her mother's kitchen.~
=
~And with the help of Lucas, she coated - believe you me, she coated! - Andrei's whole body with it! It may not seem so bad, but picture this pink, sticky mixture and Andrei's snow-white hair...he was fuchsia for days before they could get all of it out!~
++ ~What's so bad about pink hair? I mean, I know it might not quite be Andrei's look, but...~ + FHLST5_pink
++ ~Is that all? I thought it would be more interesting than that.~ + FHLST5_it
++ ~(Laugh.)~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

IF ~~ FHLST5_goon2
SAY ~Now, let me see. Which one...ah, yes.~
=
~When I had just come of age, I left the estate for a time in the company of my dear cousin Lyel. Andrei was already the sullen, moody adolescent that he is, and on my departure he was trying and failing to pretend that he didn't care that I had was going away for a couple of weeks.~
=
~But on my return all pretence of maturity and sophistication went out of the window. He ran from the fields all the way into one of the chambers of the main house where I was talking to Xavier.~
=
~Now, this in itself would have been bad enough, but imagine this young boy, all awkwardness and bony angles, running down a muddy, half-frozen road in the middle of a wet winter. Of course he was soaked in mud from head to foot. Xavier was none too pleased and told him so - it was hilarious!~
++ ~He didn't get punished too severely, did he? That doesn't seem a very funny story.~ + FHLST5_punish
++ ~Is that all? I thought it would be more interesting than that.~ + FHLST5_it
++ ~(Laugh.)~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

IF ~~ FHLST5_goon3
SAY ~Now, let me see. Which one...ah, yes.~
=
~As you may know I picked up the slack that Andrei's parents left off, so when, at fourteen, he had advanced to some sort of high level in his hand-to-hand skills I was the one who was demonstrated to.~
=
~Andrei strove to impress me as best he could and when he and Simeon - his master - sparred, he had a little too much enthusiasm and not enough control. See, he didn't pay enough attention and ended up on his back several times. It must have aggravated him enough to get the tiniest bit of a rage going, because the next thing I knew Simeon was out cold!~
=
~Of course I was simply mortified to think that my boy would be so careless - and so was Andrei! It was hilarious!~
++ ~He still passed up a level, didn't he? I hope he didn't get punished.~ + FHLST5_level
++ ~Is that all? I thought it would be more interesting.~ + FHLST5_it
++ ~Ha! That's brilliant.~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

IF ~~ FHLST5_pink
SAY ~I don't think there's anything wrong with it, but Andrei certainly does!~
++ ~Is that all? I thought it would be more interesting than that.~ + FHLST5_it
++ ~Ha! That's brilliant.~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

IF ~~ FHLST5_it
SAY ~Some people just don't appreciate humour...~
IF ~~ EXIT
END

IF ~~ FHLST5_laugh
SAY ~That's the spirit!~
IF ~~ EXIT
END

IF ~~ FHLST5_hyst
SAY ~Now I know laughter's the best healing, but that's just disturbing!~
IF ~~ EXIT
END

IF ~~ FHLST5_punish
SAY ~Of course not. I got him out of the way and he was just fine. I, on the other hand, got a strong talking-to. As the one responsible for Andrei, blah blah.~
++ ~Is that all? I thought it would be more interesting than that.~ + FHLST5_it
++ ~Ha! That's brilliant.~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

IF ~~ FHLST5_level
SAY ~Nope! Simeon made him wait a couple of months, but it was so funny!~
++ ~Is that all? I thought it would be more interesting than that.~ + FHLST5_it
++ ~Ha! That's brilliant.~ + FHLST5_laugh
++ ~(Laugh hysterically.)~ + FHLST5_hyst
END

//Sebastian talk 6
IF ~Global("FHLSebTalk","GLOBAL",12) Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLST6
SAY ~Psst! <CHARNAME>. Come over here!~ [FHLSB6]
++ ~(whisper) What is it?~ + FHLST6_xav
++ ~Oh, Sebastian, what are you whispering about?~ + FHLST6_loud
++ ~Oh, 'psst' off, Sebastian. I'm not in the mood for games.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6_xav
SAY ~Look. It's Xavier. I trust him as far as I could throw him. Me being a weakling, couldn't throw him very far. You see? He is not to be trusted. Don't let him...pull the wool over your eyes.~
IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY ~Sebastian, I could tell that for myself. I'm not stupid!~ + FHLST6_stupidhigh
++ ~Thank you for the warning - I appreciate it.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_warning
++ ~Sebastian, you look...odd. A little more serious than usual. What's wrong?~ + FHLST6_unlike
++ ~I thought he was fine, myself. Unpleasant, but not exactly devious.~ + FHLST6_devious
IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY ~Sebastian, I could tell that for myself. I'm not stupid!~ + FHLST6_stupidlow
END

IF ~~ FHLST6_loud
SAY ~Quietly! I don't want Andrei to overhear. Now, come over here.~
++ ~All right, all right. What's bothering you?~ + FHLST6_xav
++ ~Don't bother me, Sebastian. I don't want you pestering me.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6_psst
SAY ~Suit yourself. I'm not in the mood for an irritable <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ FHLST6_stupidhigh
SAY ~Fine, yes. You're a brilliant gem. A mastermind. As long as you understand!~
++ ~Yes, I understand - of course I do, don't worry.~ + FHLST6_jeez
++ ~Sebastian, you're acting very strangely. What exactly do you have against him?~ + FHLST6_against
END

IF ~~ FHLST6_stupidlow
SAY ~Yes, you are. But that's not the point. Just - as long as you understand.~
++ ~Yes, I understand - of course I do.~ + FHLST6_jeez
++ ~You're acting very strangely, Sebastian. What do you have against him?~ + FHLST6_against
END

IF ~~ FHLST6_warning
SAY ~Think nothing of it. Just remember, and if you meet him again, expect him to do exactly what you don't want!~
++ ~You're acting very strangely, Sebastian. What do you have against him?~ + FHLST6_against
++ ~I will, don't you worry.~ + FHLST6_jeez
END

IF ~~ FHLST6_devious
SAY ~Well, you're wrong, and you're underestimating him. If you meet him again, Don't trust him, and expect him to do exactly what you don't want!~
++ ~Yes, I understand - of course I do.~ + FHLST6_jeez
++ ~You're acting very strangely...what exactly do you have against him?~ + FHLST6_against
END

IF ~~ FHLST6_unlike
SAY ~Nothing, nothing, besides Xavier being his usual unpleasant self.~
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_grin
SAY ~Oh, it's annoying. You know, you're not as badly done by as you might think. At least you know where your craziness comes from. There's nothing at all about how our curse originated.~
++ ~What do you know about where your curse came from? I thought it was all a mystery.~ + FHLST6_what
++ ~Sometimes I wish I didn't know where my 'craziness' was from.~ + FHLST6_craziness
++ ~You can't compare your situation to mine, and you know it.~ + FHLST6_compare
END

IF ~~ FHLST6_against
SAY ~He's just your normal unpleasant head-of-the-family type. Come on, you saw him, he's insane! He coops us up and I hated it. I really hated it.~
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_jeez
SAY ~Good. I'm - sorry, it's just that--~
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6_what
SAY ~Well. Some time ago, over a hundred years ago, the Luxleys fought against a rival family of some kind. The rivals put the curse on our bloodline and the head of the family created the estate for us to hide in.~
=
~And that's all! I swear, sometimes I want to just-- ohh, I don't know. But I can't find anything out, no matter how hard I try!~
++ ~I could help you find out more about it if you want me to, you know.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_help
++ ~Why do you want to know about it so badly? It doesn't make sense to me.~ + FHLST6_want
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~Perhaps someone doesn't want you to know the truth.~ + FHLST6_perhaps
++ ~That's rather vague, isn't it? Are you sure there's no more information?~ + FHLST6_vague
END

IF ~~ FHLST6_craziness
SAY ~Well. To wish ignorance on yourself really is ridiculous, and I'm not like that. I've been trying to find out about our curse, but I can't, no matter how hard I try!~
=
~All I know is that a hundred years ago or so the Luxley family fought against some rivals, and they put the curse on us. The leader of the Luxleys created the estate for us to hide in.~
++ ~I could help you find out more about it if you want me to, you know.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_help
++ ~Why do you want to know about it so badly? It doesn't make sense to me.~ + FHLST6_want
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~Perhaps someone doesn't want you to know the truth.~ + FHLST6_perhaps
++ ~That's rather vague, isn't it? Are you sure there's no more information?~ + FHLST6_vague
END

IF ~~ FHLST6_compare
SAY ~Yes, ours is a worse one. We can't go where we want, we can't marry who we want... Watch out, <CHARNAME>, we don't need to have a 'who's worse off' competition in this group!~
IF ~~ EXIT
END

IF ~~ FHLST6_help
SAY ~You're so sweet! But, no, I'm not doing much research at the moment, now that I've got Mr Rages with me. Maybe some other time. I...~
IF ~~ THEN + FHLST6_defeat
END

IF ~~ THEN FHLST6_want
SAY ~Why not? It's my family, my curse! Plus, I...~
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_perhaps
SAY ~Yes, I'd thought of that, too. Well, whoever they are, they can't stop me. I have to find out, I...~
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_vague
SAY ~I know that. Still, I'll find out more someday. I have to, I...~
IF ~~ THEN + FHLST6_defeat
END

IF ~~ FHLST6_defeat
SAY ~Well, let's get going, shall we? Irenicus isn't going to defeat himself.~
++ ~You're right, he's not, more's the pity. Let's go.~ EXIT
++ ~Wait, what were you about to say?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_say
END

IF ~~ FHLST6_say
SAY ~Me? Nothing of any note, for once.~
IF ~~ EXIT
END

//Sebastian talk 6 - if you don't talk to Xavier

IF ~Global("FHLSebTalk","GLOBAL",12) Global("FHLNoXavTalk","GLOBAL",1)~ THEN BEGIN FHLST6b
SAY ~Psst! <CHARNAME>. Come over here!~ [FHLSB6]
++ ~(whisper) What is it?~ + FHLST6b_xav
++ ~What are you whispering about?~ + FHLST6b_loud
++ ~What is it? Are you propositioning me?~ + FHLST6b_proposition
++ ~Oh, 'psst' off, Sebastian. I'm not in the mood for games.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6b_xav
SAY ~Look. It's Xavier. I know you didn't deign to come to the estate, so you didn't see what he's like for yourself, but...~
=
~I'm worried about our future - Andrei's and mine, I mean. Yes, I know, I'm the soul of cheer and all that, but it's true.~
IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY ~Sebastian, I could tell that for myself from what you said before. I'm not stupid!~ + FHLST6b_stupidhigh
IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY ~Sebastian, I could tell that for myself. I'm not stupid!~ + FHLST6b_stupidlow
++ ~Thank you for the warning, I appreciate it.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST6_warning
++ ~Sebastian, you look...odd. Serious. What happened?~ + FHLST6b_unlike
END

IF ~~ FHLST6b_loud
SAY ~Quietly! I don't want Andrei to hear. Now, come over here.~
++ ~All right, all right. What's wrong?~ + FHLST6b_xav
++ ~Don't bother me, Sebastian. I don't want you pestering me.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST6_psst
END

IF ~~ FHLST6b_proposition
SAY ~Oh, very funny. As a matter of fact, no. This is more important than that. Slightly.~
IF ~~ THEN + FHLST6b_xav
END

IF ~~ FHLST6b_stupidhigh
SAY ~Fine, yes. You're a brilliant gem. A mastermind. As long as you understand!~
++ ~Of course I understand: you think he's a bad lot.~ + FHLST6_jeez
++ ~What do you have against Xavier, anyway? I thought all your family liked him.~ + FHLST6b_against
END

IF ~~ FHLST6b_stupidlow
SAY ~Yes, you are. But that's not the point. Just - as long as you understand.~
++ ~Yes, I understand - of course I do.~ + FHLST6_jeez
++ ~You're acting very strangely, Sebastian. What do you have against him?~ + FHLST6b_against
END

IF ~~ FHLST6b_unlike
SAY ~Just...some things. I'm sure Andrei's mentioned what he said to him - he called Andrei a freak! For no reason! What kind of thing is that--~
IF ~~ THEN + FHLST6_grin
END

IF ~~ FHLST6b_against
SAY ~He's just...I wish you'd been there, it's hard to explain. He's just a-- He's very volatile, would be a polite way of putting it, and he called Andrei a freak! For no reason! What kind of thing is that--~
IF ~~ THEN + FHLST6_grin
END


//Sebastian talk 7
IF ~Global("FHLSebTalk","GLOBAL",14)~ THEN BEGIN FHLST7
SAY ~Are you quite all right after that dreadful display?~ [FHLSB8]
++ ~I'm all right. I can't say as much for Andrei, though - he was terribly shaken.~ + FHLST7_right
++ ~I'm half-tempted to throw him out of my group. I can't believe he spoke like that to me!~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_brat
IF ~Global("FHLAndApology","GLOBAL",0)~ THEN REPLY ~I wouldn't mind an apology from him, to be honest.~ + FHLST7_apology
++ ~I feel all the better for talking to you, as usual.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1) IncrementGlobal("FHLSebFlirt","GLOBAL",1)~ + FHLST7_flatter
IF ~Global("FHLAndApology","GLOBAL",1)~ THEN REPLY ~It's fine, now. He apologised and things are all right between us.~ + FHLST7_apology2
END

IF ~~ FHLST7_right
SAY ~He's just fine. I'm sure he's absolutely exhausted and rather mortified, but there's no reason to worry.~
++ ~What about the way he spoke to you, before?~ + FHLST7_spoke
++ ~Well, you know him better than I do, I suppose.~ + FHLST7_know
++ ~I'm still concerned about him, though.~ + FHLST7_still
END

IF ~~ FHLST7_brat
SAY ~Oh, I can. Once he's in one of his moods, he loses all semblance of self-control. You'll get used to it, I'm sure!~
++ ~One more conversation like that and he's out, no matter what you say.~ + FHLST7_out
++ ~Didn't you say he was getting better at controlling himself? I saw little evidence of that.~ + FHLST7_better
++ ~Shouldn't you be a little concerned, or something?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_right
END

IF ~~ FHLST7_apology
SAY ~Don't you worry - give him enough time to get over the crushing embarrassment, and he'll fall over himself apologising.~
++ ~You seem very sure about that. How can you tell that you're right?~ + FHLST7_sure
++ ~He'd better - or he'll be out of the group, and then he'll be sorry.~ + FHLST7_ooh
++ ~Hmph. I thought you said he was getting better at controlling himself.~ + FHLST7_better
END

IF ~~ FHLST7_flatter
SAY ~Oh, you flatterer. I'll have to give Andrei a good talking-to on your behalf, of course.~
++ ~He didn't seem to have much patience with you before.~ + FHLST7_long
++ ~He might listen to you more than he did me, so I'd appreciate it if you did.~ + FHLST7_appreciate
++ ~It's not necessary, really. You'd probably make it worse, and I don't want that.~ + FHLST7_necessary
END

IF ~~ FHLST7_apology2
SAY ~What a lovely thing to hear. But I need to give him a talking-to, nevertheless. He's still in a mood with me, no matter how he feels about you.~
++ ~He didn't seem to have much patience with you before.~ + FHLST7_long
++ ~Hmph. I thought you said he was getting better at controlling himself.~ + FHLST7_better
++ ~It's not necessary, really. You'd probably make it worse, and I don't want that.~ + FHLST7_necessary
END

IF ~~ FHLST7_out
SAY ~Don't be so melodramatic. He'll be fine once I've given him a talking-to, don't fret!~
++ ~Bhaalspawn don't fret, and I'd thank you to remember that fact.~ + FHLST7_fret
++ ~He might listen to you more than he did me, so I'd appreciate it if you did.~ + FHLST7_appreciate
++ ~Do you really think he'd listen to you? I'm not sure he'll be in the mood.~ + FHLST7_listen
++ ~It's not necessary, really. You'd probably make it worse.~ + FHLST7_necessary
END

IF ~~ FHLST7_better
SAY ~He certainly has. When he was younger, it wouldn't take a stressful situation to make him lose it; he'd just do it spontaneously.~
++ ~Thank the Gods for small blessings, I suppose.~ + FHLST7_gods
++ ~Then you should stop putting him under stress. It's always been because of you.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST7_stop
++ ~If you say so. You know him better than I do, I suppose.~ + FHLST7_know
END

IF ~~ FHLST7_spoke
SAY ~That will be just fine. He'll apologise in the end, and I'll let him feel just the right amount of guilt to make both of us feel better.~
++ ~Somehow I doubt that, but good luck.~ + FHLST7_still
++ ~If you say so. You're the Andrei expert.~ + FHLST7_know
++ ~That doesn't seem fair, really.~ + FHLST7_still
END

IF ~~ FHLST7_know
SAY ~Don't be jealous! Better that you know me well than him, trust me.~
=
~Ah-ah, don't say anything. I need to concentrate on soothing Andrei's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_still
SAY ~Shush yourself and have confidence in me! I'll look after you, just wait.~
=
~Ah-ah, don't say anything. I need to concentrate on soothing Andrei's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_fret
SAY ~Yes, yes, you're extremely fearsome. I'll leave you to your not-fretting and figure out how to soothe Andrei's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_appreciate
SAY ~And you can show me just how much you do later!~
IF ~~ EXIT
END

IF ~~ FHLST7_listen
SAY ~He'll listen, once he hears what I've got to say.~
++ ~That doesn't really make sense.~ + FHLST7_still
++ ~Somehow I doubt that, but good luck.~ + FHLST7_still
++ ~If you say so.~ + FHLST7_still
END

IF ~~ FHLST7_necessary
SAY ~Oh, but it is. No one can badmouth my favourite Bhaalspawn and get away with it!~
IF ~~ EXIT
END

IF ~~ FHLST7_sure
SAY ~Of course I'm sure. Now, let me concentrate. I must soothe poor Andrei's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_ooh
SAY ~Ooh, touche. I'll make sure he lives up to your high expectations.~
IF ~~ EXIT
END

IF ~~ FHLST7_long
SAY ~He's had a while to calm down now, of course. Let me concentrate. I must figure out how to soothe my poor cousin's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_gods
SAY ~I'd think of it as a particularly large one, actually. Now let me concentrate: I must try to soothe Andrei's savage breast!~
IF ~~ EXIT
END

IF ~~ FHLST7_stop
SAY ~I'll have you know there have been a few times recently when I wasn't involved at all. Anyway, it helped him when he was younger.~
=
~Ah-ah, don't say anything. I need to concentrate on soothing Andrei's savage breast!~
IF ~~ EXIT
END

//Sebastian talk 8
IF ~Global("FHLSebTalk","GLOBAL",16)~ THEN BEGIN FHLST8
SAY ~<CHARNAME>, tell me, what's your favourite colour?~ [FHLSB9]
IF ~GlobalGT("HarperFight","GLOBAL",0)~ THEN REPLY ~Galvarey already asked me that, remember?~ + FHLST8_galvarey
++ ~Pink.~ + FHLST8_two
++ ~Blue.~ + FHLST8_two
++ ~Black.~ + FHLST8_two
++ ~White.~ + FHLST8_two
++ ~Yellow.~ + FHLST8_two
++ ~Red.~ + FHLST8_two
++ ~Orange.~ + FHLST8_two
++ ~Green.~ + FHLST8_two
END

IF ~~ FHLST8_galvarey
SAY ~Oh, yes, of course. What about your favourite time of year?~
++ ~Winter.~ + FHLST8_three
++ ~Spring.~ + FHLST8_three
++ ~Summer.~ + FHLST8_three
++ ~Autumn.~ + FHLST8_three
++ ~Sebastian...~ + FHLST8_bear
END

IF ~~ FHLST8_two
SAY ~Hmm, that's a fascinating answer. What about your favourite time of year?~
++ ~Winter.~ + FHLST8_three
++ ~Spring.~ + FHLST8_three
++ ~Summer.~ + FHLST8_three
++ ~Autumn.~ + FHLST8_three
++ ~Sebastian...~ + FHLST8_bear
END

IF ~~ FHLST8_three
SAY ~Interesting...and who's your favourite member of the group?~
IF ~InParty("Aerie")~ THEN REPLY ~Aerie.~ + FHLST8_female
++ ~Andrei.~ + FHLST8_andrei
IF ~InParty("Anomen")~ THEN REPLY ~Anomen.~ + FHLST8_male
IF ~InParty("Cernd")~ THEN REPLY ~Cernd.~ + FHLST8_male
IF ~InParty("Edwin")~ THEN REPLY ~Edwin.~ + FHLST8_male
IF ~InParty("Haerdalis")~ THEN REPLY ~Haer'Dalis.~ + FHLST8_male
IF ~InParty("Imoen2")~ THEN REPLY ~Imoen.~ + FHLST8_female
IF ~InParty("Jaheira")~ THEN REPLY ~Jaheira.~ + FHLST8_female
IF ~InParty("Jan")~ THEN REPLY ~Jan.~ + FHLST8_male
IF ~InParty("Keldorn")~ THEN REPLY ~Keldorn.~ + FHLST8_male
IF ~InParty("Korgan")~ THEN REPLY ~Korgan.~ + FHLST8_male
IF ~InParty("Mazzy")~ THEN REPLY ~Mazzy.~ + FHLST8_female
IF ~InParty("Minsc")~ THEN REPLY ~Minsc.~ + FHLST8_male
IF ~InParty("Nalia")~ THEN REPLY ~Nalia.~ + FHLST8_female
IF ~InParty("Valygar")~ THEN REPLY ~Valygar.~ + FHLST8_male
IF ~InParty("Viconia")~ THEN REPLY ~Viconia.~ + FHLST8_female
IF ~InParty("Yoshimo")~ THEN REPLY ~Yoshimo.~ + FHLST8_male
++ ~You, of course.~ + FHLST8_seb
END

IF ~~ FHLST8_bear
SAY ~Bear with me! Come on, now, who's your favourite member of the group?~
IF ~InParty("Aerie")~ THEN REPLY ~Aerie.~ + FHLST8_female
++ ~Andrei.~ + FHLST8_andrei
IF ~InParty("Anomen")~ THEN REPLY ~Anomen.~ + FHLST8_male
IF ~InParty("Cernd")~ THEN REPLY ~Cernd.~ + FHLST8_male
IF ~InParty("Edwin")~ THEN REPLY ~Edwin.~ + FHLST8_male
IF ~InParty("Haerdalis")~ THEN REPLY ~Haer'Dalis.~ + FHLST8_male
IF ~InParty("Imoen2")~ THEN REPLY ~Imoen.~ + FHLST8_female
IF ~InParty("Jaheira")~ THEN REPLY ~Jaheira.~ + FHLST8_female
IF ~InParty("Jan")~ THEN REPLY ~Jan.~ + FHLST8_male
IF ~InParty("Keldorn")~ THEN REPLY ~Keldorn.~ + FHLST8_male
IF ~InParty("Korgan")~ THEN REPLY ~Korgan.~ + FHLST8_male
IF ~InParty("Mazzy")~ THEN REPLY ~Mazzy.~ + FHLST8_female
IF ~InParty("Minsc")~ THEN REPLY ~Minsc.~ + FHLST8_male
IF ~InParty("Nalia")~ THEN REPLY ~Nalia.~ + FHLST8_female
IF ~InParty("Valygar")~ THEN REPLY ~Valygar.~ + FHLST8_male
IF ~InParty("Viconia")~ THEN REPLY ~Viconia.~ + FHLST8_female
IF ~InParty("Yoshimo")~ THEN REPLY ~Yoshimo.~ + FHLST8_male
++ ~You, of course.~ + FHLST8_seb
END

IF ~~ FHLST8_female
SAY ~I'll be sure to tell her that later. Now, how about...~
++ ~Sebastian, stop this, now. This is ridiculous.~ + FHLST8_stop
++ ~Look, I know you're just trying to make yourself feel better.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ ~Sebastian, what is wrong with you to<DAYNIGHT>?~ + FHLST8_wrong
++ ~How about you be quiet and leave me alone, for once?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_male
SAY ~I'll be sure to tell him that later. Now, how about...~
++ ~Sebastian, stop this, now. This is ridiculous.~ + FHLST8_stop
++ ~Look, I know you're just trying to make yourself feel better.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ ~Sebastian, what is wrong with you to<DAYNIGHT>?~ + FHLST8_wrong
++ ~How about you be quiet and leave me alone, for once?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_andrei
SAY ~Hmm - dubious taste, I think. How about...~
++ ~Sebastian, stop this, now. This is ridiculous.~ + FHLST8_stop
++ ~Look, I know you're just trying to make yourself feel better.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ ~Sebastian, what is wrong with you to<DAYNIGHT>?~ + FHLST8_wrong
++ ~How about you be quiet and leave me alone, for once?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_seb
SAY ~Oh, I'm flattered, believe me. Now, how about...~
++ ~Sebastian, stop this, now. This is ridiculous.~ + FHLST8_stop
++ ~Look, I know you're just trying to make yourself feel better.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_wis
++ ~Sebastian, what is wrong with you to<DAYNIGHT>?~ + FHLST8_wrong
++ ~How about you be quiet and leave me alone, for once?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_quiet
END

IF ~~ FHLST8_stop
SAY ~No, you stop. I've heard that misery loves company and I want to prove the saying right.~
=
~What was the most embarrassing moment of your childhood?~
++ ~I'm hardly going to tell you that. What was yours?~ + FHLST8_yours
++ ~Can't you be more conventional about cheering yourself up?~ + FHLST8_convent
++ ~I'm not going to answer any of these stupid questions.~ + FHLST8_silly
++ ~Sebastian, let's talk about things. It might help a little.~ + FHLST8_help
END

IF ~~ FHLST8_wis
SAY ~Really? You don't know me, <CHARNAME>. You know what I want you to know.~
++ ~Don't underestimate me, Sebastian. I know more than you think I do.~ + FHLST8_estimate
++ ~If you're just going to spout that garbage at me, you can forget it.~ + FHLST8_forget
++ ~Be that as it may, I'm still right.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_right
END

IF ~~ FHLST8_wrong
SAY ~What's wrong with me? What's wrong with *you* would be a more pertinent question, I think.~
++ ~Oh, forget it. I'll leave you in peace if you're going to be in this mood.~ + FHLST8_forget
++ ~Do you want me to help you feel better or not?~ + FHLST8_feel
++ ~You're what's wrong with me, Sebastian.~ + FHLST8_face
IF ~CharName("Antonio",Player1)~ THEN REPLY ~What about the radio?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_ee1
END

IF ~~ FHLST8_quiet
SAY ~I think not. I've heard it said that misery loves company, and I want to prove the saying right. Something tells me that keeping myself to myself won't exactly engender feelings of despair in you.~
=
~Or am I wrong? Tell me if I'm wrong, of course.~
++ ~Oh, forget it. I'll leave you in peace if you're going to be in this mood.~ + FHLST8_forget
++ ~You're annoying, that's what you are.~ + FHLST8_annoying
++ ~It *would* make me miserable if you said nothing for the whole <DAYNIGHT>.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_quiet2
END

IF ~~ FHLST8_yours
SAY ~What a stupid question, ha! I never get embarrassed, <CHARNAME>. Except when I'm caught wearing unfashionable robes, of course!~
++ ~Please, Sebastian - just be quiet, and leave me alone.~ + FHLST8_quiet2
++ ~Can't you be more conventional about cheering yourself up?~ + FHLST8_convent
++ ~You didn't answer my question, did you?~ + FHLST8_question
++ ~Stop laughing like that, it's rather unnerving.~ + FHLST8_disconcert
END

IF ~~ FHLST8_convent
SAY ~Since when did convention get anyone anywhere? If tradition meant anything, I'd still be stuck in the dreary estate, instead of enjoying the sliver of freedom I've so painstakingly carved out for myself.~
++ ~Stop talking so quickly, it's rather unnerving.~ + FHLST8_disconcert
++ ~Things will get better in time, just wait and see.~ + FHLST8_better
++ ~You don't particularly seem to be enjoying your freedom at the moment.~ + FHLST8_enjoy
++ ~Oh, forget it. I'll leave you in peace if you're going to be in this mood.~ + FHLST8_forget
END

IF ~~ FHLST8_silly
SAY ~Am I stupid, now? How delightful! I'll have to tell all my friends.~
=
~Good heavens, I forgot: they're not speaking to me anymore. What a dreadful shame.~
++ ~And whose fault is that, pray?~ + FHLST8_fault
++ ~I'm sure they weren't real friends, anyway. You've got good company here.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-2)~ + FHLST8_werent
++ ~Sebastian, your problem is that you only make things harder for yourself.~ + FHLST8_harder
END

IF ~~ FHLST8_help
SAY ~Things? Well, then - what kind of things would you like to talk about? The latest in dwarven beard fashions? Issues with your parentage? How about that really irritating thing when you open your mouth and sounds come out?~
++ ~I was trying to be nice to you!~ + FHLST8_feel
++ ~Fine, forget it, if you're going to be like this.~ + FHLST8_forget
IF ~GlobalGT("FHLSebLike","GLOBAL",2)~ THEN REPLY ~...or how you push away anyone who cares about you?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST8_insult
IF ~GlobalLT("FHLSebLike","GLOBAL",3)~ THEN REPLY ~...or how you push away anyone who cares about you?~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST8_insult
END

IF ~~ FHLST8_estimate
SAY ~I can barely estimate you at all, because you're so amusingly stupid. Ugh. Must all the places you take us be so ugly?~
IF ~~ EXIT
END

IF ~~ FHLST8_forget
SAY ~Of course, of course! Forget everything about me: old Sebastian isn't worth the time of day. I'm well-practised at forgetting myself.~
=
~Don't you worry your little head. I'll undoubtedly recover from this malaise and return to my usual charming self. But not to<DAYNIGHT>.~
IF ~~ EXIT
END

IF ~~ FHLST8_feel
SAY ~Maybe another day, <CHARNAME>, I have a headache.~
IF ~~ EXIT
END

IF ~~ FHLST8_face
SAY ~Your face is what's wrong with me.~
IF ~~ EXIT
END

IF ~~ FHLST8_ee1
SAY ~What about the radio?~
++ ~Can it be made to work?~ + FHLST8_ee2
END

IF ~~ FHLST8_ee2
SAY ~Not without batteries!~
++ ~Where are the batteries?~ + FHLST8_ee3
END

IF ~~ FHLST8_ee3
SAY ~Well...the batteries are in the tail...aaaand the tail's gone! Aaaaagggh!~
++ ~Oh, forget it. I'll leave you in peace if you're going to be in this mood.~ + FHLST8_forget
++ ~Do you want me to help you feel better or not?~ + FHLST8_feel
END

IF ~~ FHLST8_annoying
SAY ~And thus I lean back, my mission complete. Now I can die, satisfied that my life's work was a success.~
=
~Gods, <CHARNAME>, does the phrase 'pot calling the kettle black' ring any bells for you?~
IF ~~ EXIT
END

IF ~~ FHLST8_right
SAY ~Awfully sure of yourself, aren't you?~
=
~Never mind that, I like young, powerfully misled people. Most of the time.~
IF ~~ EXIT
END

IF ~~ FHLST8_quiet2
SAY ~(He mimes sewing his lips shut, giving you a particularly nasty smile.)~
IF ~~ EXIT
END

IF ~~ FHLST8_question
SAY ~And you didn't answer mine.~
IF ~~ EXIT
END

IF ~~ FHLST8_disconcert
SAY ~Well, as the people in my life seem to so love telling me, I'm nothing if not unnerving, aggravating and offensive.~
IF ~~ EXIT
END

IF ~~ FHLST8_better
SAY ~They'll get better? Heavens be praised, for <CHARNAME> has spoken thus!~
=
~You know how 'things', as you so eloquently put it, get better? It's not from improvements, it's because you acclimatise. You get used to the 'things' and then you think your life is better because you don't feel so dreadful.~
IF ~~ EXIT
END

IF ~~ FHLST8_enjoy
SAY ~Don't I? I must catch a play and find myself a wench, then, for gods forbid that I seem a bore.~
IF ~~ EXIT
END

IF ~~ FHLST8_fault
SAY ~Yours, of course, for not reining me in. I'll be damned if I take responsibility for a situation. Then I'd know I really was at rock bottom.~
IF ~~ EXIT
END

IF ~~ FHLST8_werent
SAY ~How wonderfully relieved that makes me feel: it's all right that I cut all those people from my life, because they weren't worth my time anyway.~
=
~Say that about-- about my friends again, and I'll make your life as miserable as possible.~
IF ~~ EXIT
END

IF ~~ FHLST8_harder
SAY ~The only thing I find hard is trying to cope with your boundless stupidity.~
IF ~~ EXIT
END

IF ~~ FHLST8_insult
SAY ~Is that some roundabout way of saying that you care about me? Well, it's a bit late now, don't you think? As if I even wanted it!~
IF ~~ EXIT
END

//Sebastian talk 9
IF ~Global("FHLSebTalk","GLOBAL",18)~ THEN BEGIN FHLST9
SAY ~I'm not going to apologise. Just so you know.~ [FHLSB10]
++ ~(sigh) You don't need to apologise, Sebastian. Just don't snap so much next time.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_sigh
++ ~That's fine, I don't mind. There are more important things to think about right now.~ + FHLST9_fine
++ ~And why not, exactly? Why shouldn't you be bound by common courtesy?~ + FHLST9_whynot
++ ~Don't bother me about it, then. I don't care about what you do or don't do.~ + FHLST9_bother
END

IF ~~ FHLST9_sigh
SAY ~Oh. Well, in that case...I'll do my best - though I can't promise anything! Things haven't exactly been sunshine and roses with Andrei and me lately, as you probably noticed.~
++ ~That's an understatement if ever I heard one.~ + FHLST9_under
++ ~Well, we'll say no more about the whole thing, then.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_nomore
++ ~You're still family, and that's what matters, isn't it?~ + FHLST9_family
END

IF ~~ FHLST9_fine
SAY ~Oh. Well, if you don't mind, I don't mind, and we'll say no more about it. I must say, <CHARNAME>, you're far more civilised about these things than *some* people I could mention.~
++ ~You're just going about it wrong with Andrei, I think.~ + FHLST9_wrong
++ ~Well, it's nice to see you've grown as a person while I've known you, Sebastian.~ + FHLST9_grown
++ ~You're still family, aren't you, and surely that's what matters.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST9_family
END

IF ~~ FHLST9_whynot
SAY ~If you have to ask, you're not ready for the answer.~
++ ~Well, we'll say no more about it, then.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST9_nomore
++ ~If I hear any more nonsense like that, I'll do something you'll regret.~ + FHLST9_regret
++ ~Seriously, Sebastian, I don't know how your parents had the patience to put up with you.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST9_patience
++ ~Same old nonsense, same old Sebastian. I don't know when I'll get used to it.~ + FHLST9_nonsense
END

IF ~~ FHLST9_bother
SAY ~Good. My business is ultimately mine alone, and you'll remember that.~
IF ~~ EXIT
END

IF ~~ FHLST9_under
SAY ~Understatement is my art, unless you haven't noticed! Clearly you haven't been paying attention...~
=
~I know, I know, you're not used to seeing me so taciturn - it's cheer and laughter all the way. But this whole thing with Andrei is starting to get very annoying.~
++ ~Well, it has little to do with me. Now leave it be.~ + FHLST9_bother
++ ~Don't worry, I'm sure things will sort themselves out in time.~ + FHLST9_time
++ ~You're still family, aren't you? That's what matters to you lot.~ + FHLST9_family
END

IF ~~ FHLST9_nomore
SAY ~How charming you are. I know I can seem a little...frivolous at times, but it warms the cockles of my heart to hear that you love me anyway!~
=
~Oh, don't look at me like that. I appreciate the sentiment, don't you worry. It's just that this whole thing with Andrei is starting to get very annoying.~
++ ~Well, it has little to do with me. Now leave it be.~ + FHLST9_bother
++ ~Don't worry, I'm sure things will sort themselves out in time.~ + FHLST9_time
++ ~You're still family, aren't you? That's what matters to you lot.~ + FHLST9_family
END

IF ~~ FHLST9_family
SAY ~Oh, don't say you've fallen for that rubbish too! Listen, I'll tell you something - the only people in my family worth anything are Lyel and Josefyne and-- well, Andrei, before he got all uppity.~
=
~Well, and my parents, of course, but they died when I was nine, so they hardly count.~
++ ~What's this? You're actually being serious for a change?~ + FHLST9_serious
IF ~GlobalGT("FHLSebLike","GLOBAL",5)~ THEN REPLY ~What happened to your parents? You've never mentioned them.~ + FHLST9_happenedlike
IF ~GlobalLT("FHLSebLike","GLOBAL",6)~ THEN REPLY ~What happened to your parents? You've never mentioned them.~ + FHLST9_happeneddislike
++ ~Um...this all feels a bit too personal for me.~ + FHLST9_personal
++ ~So why did you insult Lyel so much when he came to take you back?~ + FHLST9_lyel
END

IF ~~ FHLST9_wrong
SAY ~Probably, probably. I don't really need your advice in patching things up, though. I remember him when he was five years old and throwing tantrums at Rosanna.~
=
~Still, this whole thing is annoying me more than it should.~
++ ~Well, it has little to do with me. Now leave it be.~ + FHLST9_bother
++ ~Don't worry, I'm sure things will sort themselves out in time.~ + FHLST9_time
++ ~You're still family, aren't you? That's what matters to you lot.~ + FHLST9_family
END

IF ~~ FHLST9_grown
SAY ~Ha! And it's nice to see that you're growing a backbone for a change.~
IF ~~ EXIT
END

IF ~~ FHLST9_regret
SAY ~Ooh, I'm so terrified for my life. If I hear anything like that, <CHARNAME>, then I'll have to do something mildly annoying, like casting silence on you.~
=
~Honestly, what is it with Bhaalspawn and trying to be threatening?~
IF ~~ EXIT
END

IF ~~ FHLST9_patience
SAY ~That's where you're wrong. Because my parents *couldn't* put up with me. When I was five years old, they cast me out. I was adopted by a mountain lioness who'd recently lost her litter, and barely managed to survive.~
=
~When I was thirteen, I returned to the estate to find that my parents had died in a freak accident just two days before. So you see, my parents didn't need the patience to raise me, after all.~
IF ~~ EXIT
END

IF ~~ FHLST9_nonsense
SAY ~Same old <CHARNAME>, same monotonous boredom. Oh, don't take offence. You can't help being what you are.~
IF ~~ EXIT
END

IF ~~ FHLST9_time
SAY ~I hope so. It'll be fine just as soon as I find out about that damn curse. Then he'll see that I was right all along! They all will.~
=
~Listen, I'll tell you something. The only people in my family worth anything are Lyel and Josefyne and-- well, Andrei, before he got all uppity.~
=
~Well, and my parents, of course, but they died when I was nine, so they hardly count.~
++ ~What's this? You're actually being serious for a change?~ + FHLST9_serious
IF ~GlobalGT("FHLSebLike","GLOBAL",5)~ THEN REPLY ~What happened to your parents? You've never mentioned them.~ + FHLST9_happenedlike
IF ~GlobalLT("FHLSebLike","GLOBAL",6)~ THEN REPLY ~What happened to your parents? You've never mentioned them.~ + FHLST9_happeneddislike
++ ~Um...this all feels a bit too personal for me.~ + FHLST9_personal
++ ~So why did you insult Lyel so much when he came to take you back?~ + FHLST9_lyel
END

IF ~~ FHLST9_amaze
SAY ~And I care about what you think of me. No, really, I do.~
IF ~~ EXIT
END

IF ~~ FHLST9_serious
SAY ~Hmmm? Oh, don't mind me, I was just off in a world of my own. Ignore me, dear <CHARNAME>, ignore me.~
IF ~~ EXIT
END

IF ~~ FHLST9_happenedlike
SAY ~Oh, nothing interesting. There were some fruits that a relative brought from the outside, and they'd been washed in bad water, and my parents decided to have them for dessert. They died in a couple of days.~
=
~But...let's not dwell on the past, it's not important.~
IF ~~ EXIT
END

IF ~~ FHLST9_happeneddislike
SAY ~None of your business. I don't have to tell you every detail of my life, do I?~
IF ~~ EXIT
END

IF ~~ FHLST9_personal
SAY ~Never mind, then. I was just off in a world of my own.~
IF ~~ EXIT
END

IF ~~ FHLST9_lyel
SAY ~Because otherwise he wouldn't have gone away! I had to say those things, don't you understand?~
=
~But...let's not dwell on it, it's not important. Once I find out how to cure the curse, I can explain things to everyone.~
IF ~~ EXIT
END

//Sebastian Talk 10 - mdp
IF ~AreaType(OUTDOOR) Global("FHLLuxTalk","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebTalk","GLOBAL",20)~ THEN BEGIN FHLST10MDP
SAY ~(As you are setting up sleeping arrangements, Sebastian sits down by the fire and takes out his notebook. He opens it, staring at the pages with a blank look on his face.)~
++ ~(Do nothing.)~ + FHLST10MDP_nothing
++ ~(Put your hand on his shoulder.)~ + FHLST10MDP_shoulder
++ ~Aren't you going to help the rest of us set things up?~ + FHLST10MDP_help
++ ~What is it you're thinking about, Sebastian?~ + FHLST10MDP_thinking
++ ~Have you heard the one about the orc, the pirate and the Priest of Sune?~ + FHLST10MDP_joke
END

IF ~~ FHLST10MDP_nothing
SAY ~(Several long moments pass, then Sebastian breaks out of his reverie and throws the book on the fire. His eyes narrow, and he turns to you.)~
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_shoulder
SAY ~(Briefly he leans towards you, then abruptly shrugs you off. Several moments pass, then Sebastian breaks out of his reverie and throws the book on the fire. His eyes narrow, and he turns to you.)~
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_help
SAY ~No. I've got better things to do. But don't let that stop you.~ [FHLSBM2]
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_sudden
SAY ~(All of a sudden, he throws the book on the fire. His eyes narrow as he watches the cover curl and burn.)~
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_thinking
SAY ~Hmm? Oh. I was just meditating on the sheer sublimity of life, the wonders we've seen and how happy--~ [FHLSBM3]
++ ~Are you getting tired of pretending, for a change?~ + FHLST10MDP_pretending
++ ~Sebastian, you don't have to lie to me - I'm your friend.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",1)~ + FHLST10MDP_friend
++ ~Calm down. It'll be all right, in the end.~ + FHLST10MDP_end
END

IF ~~ FHLST10MDP_joke
SAY ~Yes, and it's an awful joke. Don't, please.~ [FHLSBM4]
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_good
SAY ~That felt good, didn't it - to be finally, completely free!~ [FHLSBM1]
++ ~I can't believe you just did that.~ + FHLST10MDP_believe
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY ~No one is ever really free, from the world or from themselves.~ + FHLST10MDP_wis2
++ ~Listen, I - I'm so sorry about this.~ + FHLST10MDP_sorry
++ ~I've had enough of your maudlin ramblings.~ + FHLST10MDP_stupid
END

IF ~~ FHLST10MDP_believe
SAY ~But why, <CHARNAME>? I'm capable of anything. Name a price, and--~
=
~Stop staring at me. I'm going to bed.~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2
SAY ~And? Why should either of us care?~
++ ~Because no matter what happened, they were still your family.~ + FHLST10MDP_wis2family
++ ~Because you owe them that much, don't you?~ + FHLST10MDP_wis2owe
++ ~Because it's the right thing to do.~ + FHLST10MDP_wis2right
++ ~Well, what about all your writing?~ + FHLST10MDP_wis2writing
END

IF ~~ FHLST10MDP_sorry
SAY ~Really? You're sorry? Then that makes everything all right, doesn't it! Things can go back to the way they were before!~
=
~I don't give a damn about how sorry you feel! It doesn't matter.~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_stupid
SAY ~And I've had enough of you, but at least I don't rub it in your face!~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_pretending
SAY ~No, I'm just tired of this conversation.~
=
~(Sebastian throws the notebook on the fire and watches as it starts to burn. His eyes narrow.)~
IF ~~ THEN + FHLST10MDP_good
END

IF ~~ FHLST10MDP_friend
SAY ~What kind of 'friend' helps someone--~
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_end
SAY ~No, it won't, you stupid <PRO_MANWOMAN>!~
IF ~~ THEN + FHLST10MDP_sudden
END

IF ~~ FHLST10MDP_wis2family
SAY ~I don't-- they mean nothing, now. How can they mean anything when they're dead?~
=
~Don't you see? I don't care anymore!~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2owe
SAY ~I never owed any of them a damn thing when they were alive, so what difference does it make? Don't you see? I don't care anymore!~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2right
SAY ~Where was your damn moral compass when we needed it, <CHARNAME>? Be sanctimonious at someone else.~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

IF ~~ FHLST10MDP_wis2writing
SAY ~What, that drivel? I can spew more anytime I want. It's not important.~
IF ~~ THEN DO ~DestroyItem("FHLBOOK") RestParty()~
EXIT
END

//Sebastian talk 10 MDP - indoors

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
AreaCheck("AR1602") Global("FHLLuxTalk","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebTalk","GLOBAL",20)~ THEN BEGIN FHLST10MDPinn
SAY ~(As the rest of the group retires to their rooms, Sebastian seems reluctant to go to bed. He sits by the fire, fidgeting, and eventually gets out his notebook.)~
++ ~(Do nothing.)~ + FHLST10MDP_nothing
++ ~(Put your hand on his shoulder.)~ + FHLST10MDP_shoulder
++ ~Aren't you going to go and get some sleep?~ + FHLST10MDP_help
++ ~What is it you're thinking about, Sebastian?~ + FHLST10MDP_thinking
++ ~Have you heard the one about the orc, the pirate and the Priest of Sune?~ + FHLST10MDP_joke
END


//Banter chains
CHAIN BFHLSEB FHLST1_whatswrong
~Oh, come on. What's right with druids?~
== BJAHEIR IF ~InParty("Jaheira")~ THEN
~You should not say such things, even in jest.~
== BCERND IF ~InParty("Cernd")~ THEN
~Someday, Sebastian, you will appreciate all walks of life.~
== BFHLSEB
~But that's not really the point. Andrei's tough enough at a stretch, but he insists on going and making me worry about him like this. His audacity astounds me!~
END
++ ~You don't seem like a natural worrier to me - quite the reverse, in fact.~ + FHLST1_natural
++ ~And you should be worried. He seems rather upset about the whole thing.~ + FHLST1_okay
++ ~Why does he mean so much to you, anyway?~ + FHLST1_why
++ ~Why are you telling me this, Sebastian? I'm not interested in your argument.~ + FHLST1_whatever
++ ~Don't bother worrying about him. He seems fine.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST1_seems

CHAIN BFHLSEB FHLST3_playwright
~It's true that my talents lie first and foremost in the area of the scribe. But I'm flexible - I'm a wonderful actor too!~
== BFHLAND IF ~InParty("FHLAND")~ THEN
~It's because he's such a good liar.~
== BFHLSEB IF ~InParty("FHLAND")~ THEN
~Such a scandalous accusation, Andrei - I am hurt, truly hurt!~
=
~You see? I'm a wonderful actor. Fear not, <CHARNAME>, this will be something to behold.~
DO ~SetGlobal("FHLSebDrama","GLOBAL",1)~
EXIT

CHAIN BFHLSEB FHLST4_yes
~Good, good! Andrei, get into position. I'll be <CHARNAME>, and you can be Gorion.~
== FHLANDJ
~Absolutely not. You know I can't sing. Or act!~
== BFHLSEB
~Come on, I can't stand here arguing with you all day.~
END
++ ~(Wait.)~ + FHLST4_wait
++ ~I can't wait either - get on with it, you two.~ + FHLST4_neither

CHAIN BFHLSEB FHLST4_private
~Patience, patience! Script first, always. Now, Andrei, get into position. I'll be <CHARNAME>, and you can be Gorion.~
== FHLANDJ
~Absolutely not. You know I can't sing. Or act!~
== BFHLSEB
~Come on, I can't stand here arguing with you all day.~
END
++ ~(Wait.)~ + FHLST4_wait
++ ~I can't wait either - get on with it, you two.~ + FHLST4_neither

CHAIN BFHLSEB FHLST4_good
~You'll have to wait and see. Now, Andrei, get into position.~
== FHLANDJ
~What?~
== BFHLSEB
~I can't act all by myself. You need to help me! I'll be <CHARNAME>, and you can be Gorion.~
== FHLANDJ
~Absolutely not.~
== BFHLSEB
~Don't be embarrassed!~
== FHLANDJ
~You know I can't sing. Or act!~
== BFHLSEB
~Come on, I can't stand here arguing with you all day.~
END
++ ~(Wait.)~ + FHLST4_wait
++ ~I can't wait either - get on with it, you two.~ + FHLST4_neither

CHAIN BFHLSEB FHLST4_no
~Nonsense. Now, Andrei, get into position.~
== FHLANDJ
~What?~
== BFHLSEB
~I can't act all by myself. You need to help me! I'll be <CHARNAME>, and you can be Gorion.~
== FHLANDJ
~Absolutely not.~
== BFHLSEB
~Don't be embarrassed!~
== FHLANDJ
~You know I can't sing. Or act!~
== BFHLSEB
~Come on, I can't stand here arguing with you all day.~
END
++ ~Fine, fine, get on and do it.~ + FHLST4_wait
++ ~I mean it, Sebastian. I don't want this.~ DO ~IncrementGlobal("FHLSebLike","GLOBAL",-1)~ + FHLST4_defno

CHAIN BFHLSEB FHLST4_wait
~Andrei...?~
== FHLANDJ
~I refuse.~
== BFHLSEB
~I'll be both parts then. Spoilsport.~
END
IF ~~ THEN GOTO FHLST4_musical

CHAIN BFHLSEB FHLST4_neither
~See? Come on, Andrei.~
== FHLANDJ
~I refuse.~
== BFHLSEB
~I'll be both parts then. Spoilsport.~
END
IF ~~ THEN GOTO FHLST4_musical

CHAIN BFHLSEB FHLST4_musical
~A-hem! May I, Sebastian Ambrose Xavier Luxley, present to you, my humble audience, the first showing of Act One, Scene One, of '<CHARNAME>: the Musical'!~
=
~(Now, my friends, our beloved hero is summoned to <PRO_HISHER> foster father's study. It is dark, dusty and cluttered. The sounds of birdsong and soft chanting can be heard through the open windows.)~
=
~(Gorion:)
Oh <CHARNAME>, my fostered child
Of parentage 'unknown' and wild,
Quickly pack your bags and tents
Your staves and shields for defence
For I go on a dangerous trek,
And you are coming, at my beck!~
=
~(<CHARNAME>:)
But father, father, listen please
Travel makes me ill at ease!
Where are we going, and why so fast?
Is Candlekeep's safety not to last?
And can Winthrop's Imoen come?
For she's my cheerful, chirpy chum!~
=
~(Imoen:)
Hello!~
=
~(Sarevok:)
Bwa-ha-ha, I lie in wait
To deal Gorion his grisly fate.
As for his skinny little whelp --
To deal with <PRO_HIMHER> I'll need no help.
Soon lots of people will be dead,
And amongst their number will be my dad!~
=
~Well, what do you think?~
== BAERIE IF ~InParty("Aerie")~ THEN
~Do you think it would be very popular? It's so strange...~
== BANOMEN IF ~InParty("Anomen")~ THEN
~It is a ridiculous, frivolous tale.~
== BCERND IF ~InParty("Cernd")~ THEN
~Now I recall why I prefer to stay away from human company.~
== BEDWIN IF ~InParty("Edwin")~ THEN
~Is this the best he can do? This man's buffoonery is surpassed only by his incompetence.~
== BHAERDA IF ~InParty("Haerdalis")~ THEN
~Such a play needs a true actor for it to shine, and I suggest that you look no further than to I.~
== BJAN IF ~InParty("Jan")~ THEN
~My, my, what a tale! The last song and dance I hard that was this good was when Poppy chivvied the Jansen ladies together for a rousing rendition of 'Turnip Days From Western Chult'. Now that was a hair-raising experience. We should get together and use some of their ideas, Sebby!~
== BJAHEIR IF ~InParty("Jaheira")~ THEN
~When you asked me about my travels with <CHARNAME>, I did not know it was for this purpose. Now I wish I had not given you such information.~
== BKELDOR IF ~InParty("Keldorn")~ THEN
~Hmm. Perhaps in time you will learn the gravity of <CHARNAME>'s situation.~
== BKORGAN IF ~InParty("Korgan")~ THEN
~Aye, a rousing tale! Pity it were about that bloody <CHARNAME>.~
== BMAZZY IF ~InParty("Mazzy")~ THEN
~I don't think that <CHARNAME> appreciates being ridiculed, Sebastian. Perhaps you should be more sensitive.~
== BMINSC IF ~InParty("Minsc")~ THEN
~Boo is not so sure about this song, though Minsc cannot wait for us to appear!~
== BNALIA IF ~InParty("Nalia")~ THEN
~Oh, please, don't we have anything better to do? This is such a waste of our time.~
== BVALYGA IF ~InParty("Valygar")~ THEN
~I can barely believe what I just heard.~
== BVICONI IF ~InParty("Viconia")~ THEN
~Making up pathetic little ditties hardly strikes me as a pastime for a male of note.~
== BYOSHIM IF ~InParty("Yoshimo")~ THEN
~Ah, a composition of wit and style! Fortunately <CHARNAME> does not have to take it too seriously, no?~
== IMOEN2J IF ~InParty("Imoen2")~ THEN
~Hey, my part is tiny! I did more than just say hello, you know.~
== BFHLAND
~This is...so embarrassing.~
== BFHLSEB
~Tough crowd! So, <CHARNAME>? What do you think?~
END
++ ~I thought it was fantastic!~ + FHLST4_fantastic
++ ~'Dead' and 'Dad' don't rhyme.~ + FHLST4_rhyme
++ ~It was a little light-hearted for my tastes.~ + FHLST4_light
++ ~Why did you make me so weak in it? It's hardly flattering.~ + FHLST4_weak
++ ~Well, that left me very confused. I hope you're happy, Sebastian.~ + FHLST4_confused
++ ~It was awful. I was certainly hoping for better.~ + FHLST4_awful
++ ~Umm, it was lovely?~ + FHLST4_fun
++ ~How dare you! How could you make a mockery of what I've done like that?~ + FHLST4_amuse

CHAIN BFHLSEB FHLST4_rhyme
~It's a half-rhyme. Like 'Bhaal' and 'bill', 'play' and 'ploy', 'Andrei' and 'Andrew'...~
== BFHLAND
~Don't bring me into this.~
== BFHLSEB
~And don't you be moody, Andrei.~
END
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY ~A half-rhyme, eh? Like 'weird' and 'word'?~ + FHLST4_fun
++ ~I...see.~ + FHLST4_half
++ ~It was still an awful piece, and that's the end of it.~ + FHLST4_awful
++ ~I quite liked it - it was fun, if nothing else.~ + FHLST4_fun

CHAIN BFHLSEB FHLST4_worry
~But don't worry, I'll write you something better when I have...er...less work of my own to do.~
== BFHLAND
~When did you ever do any work anyway?~
== BFHLSEB
~Don't hurry my muse, that's the rule, don't hurry my muse.~
EXIT

CHAIN BFHLSEB FHLST4_funny
~Don't worry, <CHARNAME>, I know you're still an innocent. I'll teach you in the ways of the world myself.~
== BFHLAND
~You should worry for your sanity, <CHARNAME>.~
== BFHLSEB
~Now, now, don't be mean. We'll have fun!~
EXIT

CHAIN FHLANDJ FHLST4_drama2
~What?~
== BFHLSEB
~I can't act all by myself. Come on, I'll be <CHARNAME> and you can be Gorion.~
== BFHLAND
~No.~
== BFHLSEB
~Don't be embarrassed!~
== BFHLAND
~I'm not embarrassed - I'm just not as eager as you are to make a fool of myself.~
== BFHLSEB
~Fine, fine, I can't stand here arguing with you all day.~
=
~I present the first scene of 'The Terrifically Terrifying Tale of <CHARNAME>'.~
== BFHLAND
~That's ridiculous.~
== BFHLSEB
~Sssh.~
=
~(Gorion stands in the shadows of his library, his forehead furrowed in concentration. Darkness falls over his face and he looks up; but it is only his foster child standing before him. Pale-faced and biting <PRO_HISHER> lip with worry, <PRO_HISHER> expression is filled with dismay.)~
=
~(Gorion:)
My child. I am glad you are here. We must leave immediately on a journey. A journey from which I fear I will never return.~
=
~(A cloud moves over the sun, casting a deep shadow over Gorion's face, making him look suddenly older.)~
=
~(<CHARNAME>:)
B-but - what will we do? I'm scared, Gorion!~
=
~(Imoen:)
Don't worry, <CHARNAME>! I'm here to help you!~
=
~(The scene moves to Sarevok, who sits on a black throne decorated with silver rivets and spikes. He is dressed in armour the colour of night, reminiscent of the pits of the Abyss.)~
=
~(Sarevok:)
Not for long! Victory will soon be mine!~
=
~What do you think?~
== BAERIE IF ~InParty("Aerie")~ THEN
~Do you think it would be very popular? It's so strange...~
== BANOMEN IF ~InParty("Anomen")~ THEN
~It is an absurd tale.~
== BCERND IF ~InParty("Cernd")~ THEN
~Now I recall why I prefer to stay away from human company.~
== BEDWIN IF ~InParty("Edwin")~ THEN
~Is this the best he can do? This man's buffoonery is surpassed only by his incompetence.~
== BHAERDA IF ~InParty("Haerdalis")~ THEN
~Such a play needs a true actor for it to shine, and I suggest that you look no further than to I.~
== BJAN IF ~InParty("Jan")~ THEN
~Wonderful! A truly masterful tale, Sebby, if a little lacking in the vegetable department. Maybe I could be of assistance and give you some tips...for a reduced fee between friends, of course.~
== BJAHEIR IF ~InParty("Jaheira")~ THEN
~When you asked me about my travels with <CHARNAME>, I did not know it was for this purpose. Now I wish I had stayed silent.~
== BKELDOR IF ~InParty("Keldorn")~ THEN
~Perhaps in time you will learn the gravity of <CHARNAME>'s situation.~
== BKORGAN IF ~InParty("Korgan")~ THEN
~Aye, a rousing tale! Pity it were about that bloody <CHARNAME>.~
== BMAZZY IF ~InParty("Mazzy")~ THEN
~I don't think that <CHARNAME> appreciates being ridiculed, Sebastian. Perhaps you should be more sensitive.~
== BMINSC IF ~InParty("Minsc")~ THEN
~Boo is not so sure about this story, though Minsc cannot wait for us to appear!~
== BNALIA IF ~InParty("Nalia")~ THEN
~Oh, please, don't we have anything better to do? This is such a waste of our time.~
== BVALYGA IF ~InParty("Valygar")~ THEN
~I can barely believe what I just heard.~
== BVICONI IF ~InParty("Viconia")~ THEN
~Hmm. And I was hoping that the poet's foolishness could sink no lower.~
== BYOSHIM IF ~InParty("Yoshimo")~ THEN
~Ah, a composition of wit and style! Fortunately <CHARNAME> does not have to take it seriously, no?~
== IMOEN2J IF ~InParty("Imoen2")~ THEN
~Hey, don't I get more of a look in than that?~
== BFHLAND
~I can't believe this.~
== BFHLSEB
~Tough crowd! So, <CHARNAME>?~
END
++ ~I enjoyed it. So dark and brooding - it was great.~ EXTERN BFHLSEB FHLST4_fantastic
++ ~It was a little too melodramatic for my tastes.~ EXTERN BFHLSEB FHLST4_melo
++ ~Why did you make me so weak?~ EXTERN BFHLSEB FHLST4_weak
++ ~I'm very confused. I hope you're happy.~ EXTERN BFHLSEB FHLST4_confused
++ ~It was awful. Really awful.~ EXTERN BFHLSEB FHLST4_awful
++ ~Er...very good?~ EXTERN BFHLSEB FHLST4_fun





//Interparty Banters//

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebAerieTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebAerie1
~Aerie, sweetheart, how are you feeling?~ [FHLSAE1]
DO ~SetGlobal("FHLSebAerieTalk","GLOBAL",1)~
== BAERIE
~Oh, I'm as w-well as can be expected, thank you. How are you?~
== BFHLSEB
~I'm feeling...solicitous! Which is why I asked. I'd like to help you feel better, if I can. In any way possible. My body is always here as a sounding board and for other things too.~
== BAERIE
~Sebastian! I did not think-- how could you be l-like that?~
== BFHLSEB
~Like what? Considerate?~
== BAERIE
~No, it is not considerate to make c-comments like that! Leave me alone!~
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebAerieTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebAerie2
~Aerie, I feel that I should show you a token of my remorse for talking to you like that. I have acquired this gift for you. Please, take it with my regards.~ [FHLSAE2]
DO ~SetGlobal("FHLSebAerieTalk","GLOBAL",2)~
== BAERIE
~Acquired? Hmm... Oh, it's beautiful! Wherever did you get a dress like this from?~
== BFHLSEB
~And it's your size. I made sure!~
== BAERIE
~H-how?~
== BFHLSEB
~Never mind that. Do you forgive me?~
== BAERIE
~I - I suppose so. It really is lovely-- oh, but it's ripped...~
== BFHLSEB
~What? A refund, I need a-- where?~
== BAERIE
~Just th-there. Up the side of the skirt.~
== BFHLSEB
~Ohh, it's not ripped. It's fashion!~
== BAERIE
~If you're sure...so should I wear it as it is?~
== BFHLSEB
~Hmmm, it'd look stunning, but you'll catch a deathly cold if you go out in it. I don't want you getting hurt.~
== BAERIE
~Well, in that c-case, I will try it on when we're next in an inn for the night.~
== BFHLSEB
~Make sure I see you in it!~
EXIT

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebUnorderAerieTalk1","GLOBAL",0)~ THEN BAERIE FHLSebAerie3
~(sigh)~
DO ~SetGlobal("FHLSebUnorderAerieTalk1","GLOBAL",1)~
== BFHLSEB
~What's wrong, Aerie?~ [FHLSAE4]
== BAERIE
~It's n-nothing important. I don't want to--~
== BFHLSEB
~Oh, be quiet and listen - if it makes you feel bad, it's important.~
== BAERIE
~That's--~
== BFHLSEB
~Imagine you're in a temple full of sick people. You're the only cleric around who can help them. There are so many people ill and dying that you can barely walk among them. Are you with me?~
== BAERIE
~Y-yes, but--~
== BFHLSEB
~We both know how you'd react. You'd stand among all the sick people and panic. You'd worry about helping them all and what would happen if you couldn't and what if you didn't have enough time to do it all!~
=
~The more you'd think about it, the more anxious you'd get. But time keeps passing and the people are getting more and more ill. So what can you do?~
== BAERIE
~I--~
== BFHLSEB
~It'd be a good idea to start healing those who are closest to you. Of course, every last one is as important as the rest, but if you think about all the others you won't be able to help those who are right by your feet.~
=
~You see, if you take things just one step at a time, you'll be done before you know it, because you're perfectly capable and Baervan is looking after you.~
== BAERIE
~Th-thank you, Sebastian. That's very kind - and I do feel a little better.~
== BFHLSEB
~What a wonderful analogy, if I say so myself!~
=
~You can start with my arm. I have a bit of a bruise.~
== BAERIE
~Oh, you should have said earlier!~
EXIT

CHAIN IF ~InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebUnorderAerieTalk2","GLOBAL",0)~ THEN BFHLSEB FHLSebAerie4
~I must say, I'm thoroughly disappointed. I expected better of you! You didn't see that beggar in the street that you knocked over?~ [FHLSAE3]
DO ~SetGlobal("FHLSebAerieTalk","GLOBAL",1)~
== BAERIE
~N-no, I didn't!~
== BFHLSEB
~Pfeh! I would have thought a nice girl like you would have been more attentive. Still, at least his pain was short-lived.~
== BAERIE
~Short - short-lived?~
== BFHLSEB
~Ah, yes, that cart ran him over. It was heavy; I'm sure he died immediately. Don't you think, Andrei?~
== BFHLAND
~It didn't hit his head, so we can't be sure.~
== BAERIE
~Oh, my goodness! What can we do?~
== BFHLSEB
~Well, if he didn't die straightaway, I'm positive he's dead now. That pack of feral dogs--~
== BFHLAND
~Don't upset Aerie, she wasn't to know this would happen.~
== BAERIE
~I need to go back! I have to try and help him! <CHARNAME>--~
== BFHLSEB
~Calm down, Aerie, calm down. I was just joking.~
== BAERIE
~*Joking*?~
== BFHLSEB
~All right, lying. But I just couldn't resist!~
== BAERIE
~You're unbelievable, Sebastian - and you too, Andrei! That was horrible!~
== BFHLAND
~I'm sorry.~
== BAERIE
~You're smiling! You're not sorry at all!~
== BFHLSEB
~Don't you feel better, though, knowing that you haven't accidentally killed a poor old man?~
== BAERIE
~I - I suppose so, but that's not the point!~
== BFHLSEB
~Ah, but it is.~
EXIT

CHAIN IF ~InParty("Anomen")
Global("FHLSebAnoTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebAno1
~Care for a drink?~ [FHLSAN1]
DO ~SetGlobal("FHLSebAnoTalk","GLOBAL",1)~
== BANOMEN
~No! That is, no.~
== BFHLSEB
~It might help you loosen up, you never know.~
== BANOMEN
~I have no desire to be *loose*. The Vigilant One requires his servants to be always alert.~
== BFHLSEB
~Oh, come on, the Vigilant One doesn't need you all the time, does he?~
== BANOMEN
~Leave it, playwright.~
== BFHLSEB
~I don't have anything to drink, anyway. It's not my thing.~
EXIT

CHAIN IF ~InParty("Anomen")
Global("FHLSebAnoTalkLDP","GLOBAL",0)
InParty("FHLAND")
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebAnoLDP1
~Andrei can be such a pest sometimes. It's what comes of his being an only child.~ [FHLSAN2]
DO ~SetGlobal("FHLSebAnoTalkLDP","GLOBAL",1)~
== BANOMEN
~It can be a trial without a brother or sister.~
== BFHLSEB
~Oh, I was thinking more from my point of view.~
== BANOMEN
~And I suppose you are the expert on caring for the young.~
== BFHLSEB
~I've had more experience than you, if that's what you're saying.~
== BANOMEN
~Hmph! I suspect that your ward feels more than he says.~
EXIT

CHAIN IF ~InParty("FHLSEB")
Global("FHLSebAnoTalk2","GLOBAL",0)
Alignment("Anomen",LAWFUL_GOOD)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BANOMEN FHLSebAno2
~I cannot see that you will ever make something of your life if you continue as you are.~
DO ~SetGlobal("FHLSebAnoTalk2","GLOBAL",1)~
== BFHLSEB
~I beg your pardon? What's brought this on?~ [FHLSAN3]
== BANOMEN
~You have no direction; you are heading for a fall - that is where your life will lead you.~
== BFHLSEB
~Excuse me? That's none of your business. I'm happy with the way things are - much happier than you seem to be!~
== BANOMEN IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
~I do not see what that has to do with what I was speaking of. I have my knighthood and my lady's love, which is all I have ever wished for.~
== BFHLSEB IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN
~Well - good for you!~
EXIT

CHAIN IF ~InParty("FHLSEB")
Global("FHLSebAnoTalk3","GLOBAL",0)
Alignment("Anomen",CHAOTIC_NEUTRAL)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BANOMEN FHLSebAno3
~You know, I think I may have misjudged you.~
=
~Your life is enviably free. I did not understand while I was shackled by the Order, but now it is clear to me.~
DO ~SetGlobal("FHLSebAnoTalk3","GLOBAL",1)~
== BFHLSEB
~Oh, yes, I live free as a bird on the wing as it flaps its way through the shrubbery of chance and the sky of excitement.~ [FHLSAN4]
=
~Find another definition of freedom, and I might agree with you.~ [FHLSAN5]
EXIT

CHAIN IF ~InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHLSebCerndTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebCernd1
~Do you ever find you have trouble picking your teeth?~ [FHLSC1]
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",1)~
== BCERND
~I do not quite follow you, I fear.~
== BFHLSEB
~When you turn back into a human and you've been gnashing those big teeth of yours. I mean, sometimes I've had problems, and you know how little I enjoy clawing things.~
== BCERND
~Lycanthropy does not quite work in that way, Sebastian.~
== BFHLSEB
~Oh.~
=
~So what happens when...~
EXIT

CHAIN IF ~Global("FHLSebCerndTalk","GLOBAL",1)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebCernd2
~How do you fix those feathers into your hair? It's a look I think I might go for.~ [FHLSC2]
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",2)~
== BCERND
~Perhaps your alternate form should instead be a mockingbird, Sebastian. It would suit you well.~
== BFHLSEB
~No, I wouldn't be able to cope with the flying. I can't stand heights.~
EXIT

CHAIN IF ~Global("FHLSebCerndTalk","GLOBAL",2)
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
AreaType(CITY)~ THEN BFHLSEB FHLSebCernd3
~I don't know how you can stay away from all this, I really don't.~ [FHLSC3]
DO ~SetGlobal("FHLSebCerndTalk","GLOBAL",2)~
== BCERND
~Just as the lark unfailingly greets the sun, so you ask another question. (sigh)~
== BFHLSEB
~Was that mild irritation, Cernd? Try a bit harder and you might even master annoyance!~
== BCERND
~You must understand, Sebastian, that the city is not my home. Only when I am within nature can I be truly content.~
== BFHLSEB
~Yes. I think I understand.~
EXIT

CHAIN IF ~InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebEdTalk","GLOBAL",0)~ THEN BEDWIN FHLSebEd1
~So, Sebastian. Let us be away from these fools and speak of what is truly important.~
DO ~SetGlobal("FHLSebEdTalk","GLOBAL",1)~
== BFHLSEB
~I've told you a thousand times, Edwin, pink is *not* a good colour for beard accessories!~ [FHLSED1]
== BEDWIN
~Silence, you noisome fool. (This had better not be what I must put up with to reach my true power...)~
=
~Now, tell me. If I - I mean, you and I - can harness the power of your family's curse, then there will be no limit on what we can do.~
== BFHLSEB
~You want to turn people into animals? That's petty, even for you - and there are already spells that do that, aren't there?~
== BEDWIN
~Must I explain every last detail to you? The power to curse an entire bloodline, yes, that is power indeed.~
== BFHLSEB
~You've misjudged me greatly, Edwin, for I am a Good Person and would not stoop to such magic trickery!~
=
~Now away from me, foul magician, and tempt me from the path of righteousness no more!~
== BEDWIN
~Conniving, foolish man. (They say there are numerous ways to skin a cat. Yes, yes...I shall find them all!)~
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHLSebEdTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebEd2
~Edwin, it's time to prove your superiority once and for all. No more muttering and skulking in dark corners for you.~ [FHLSED2]
DO ~SetGlobal("FHLSebEdTalk","GLOBAL",2)~
== BEDWIN
~Get off me!~
== BFHLSEB
~I'm better than you because I can fight - albeit not very well - as well as cast spells.~
== BEDWIN
~I shall not lower myself to this conversation, bard.~
== BFHLSEB
~All-roundedness is better than focus, everyone knows that!~
== BEDWIN
~It is not, and everybody trembles at my magic. I am clearly superior, now let the matter lie!~
== BFHLSEB
~Hardly. I have a lovely singing voice, whereas you are nothing but tone-deaf.~
== BEDWIN
~Can you make mountains tremble, ignorant monkey? Can you make the sky heave with bolts of lightning? I think not.~
== BFHLSEB
~No, but *I* have a charming smile. I could get every tavern patron into my bed if I so desired.~
== BEDWIN
~So could I, worm! (The sexual prowess of Edwin Odesseiron is unrivalled by any being, least of all this annoying little man.)~
== BFHLSEB
~Yes, but at least I wouldn't have to pay!~
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHLSebEdwinaTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebEdwina
~You poor thing, Edwin. You must feel so ridiculed and alone, looking the way you do.~ [FHLSED3]
DO ~SetGlobal("FHLSebEdwinaTalk","GLOBAL",1)~
== BEDWIN
~Leave me alone. I know what you are trying to do.~
== BFHLSEB
~Me? I am as guiltless as the bird as it soars gracefully o'er the rooftops. I merely wanted to check up on you, because I can't imagine how horribly lonely you must be feeling right now.~
== BEDWIN
~I have never needed anyone, and I never will. So leave me be!~
== BFHLSEB
~But all I am looking for is companionship...someone to warm the long nights...~
== BEDWIN
~Never in a thousand years, not in this state!~
== BFHLSEB
~Ooh, so when you're back to your manly self you'd be up for a roll in the hay?~
== BEDWIN
~Get away from me, before I sew that jabbering mouth of yours shut!~
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebHaerTalk","GLOBAL",0)~ THEN BFHLSEB FHLSebHaer1
~I do wish you'd smile more, Haer'Dalis. You have such lovely eyes.~ [FHLSH1]
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",1)~
== BHAERDA
~Ha! And what would you have me smile at? Your japery?~
== BFHLSEB
~There, you're smiling already. Look, at least you're not imprisoned anymore. The air is fresh, the stars are plentiful!~
== BHAERDA
~They are indeed, my wildcat, but there are those who can see through your mewing. Keep that in mind, hmmm?~
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHLSebHaerTalk","GLOBAL",1)~ THEN BFHLSEB FHLSebHaer2
~Why didn't I think of this before? You an actor and I a playwright - why, it's like divine providence!~ [FHLSH2]
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",2)~
== BHAERDA
~What is it that you speak of, my wildcat? Are you perhaps tired, or under some affliction?~
== BFHLSEB
~Oh, hush. Listen. You being the charming young...tiefling that you are, surely you can't have forsaken the stage altogether?~
== BHAERDA
~Yes. Yes, the time with the troupe was a delight indeed.~
== BFHLSEB
~Don't frown like that. Listen, I've got a proposal that'll give both of us what we want.~
=
~All this travelling's all very well, but we're people of creation and art! I'll write you a play and you can be the leading role. Don't say anything. I need to get to work!~
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",2)~ THEN BFHLSEB FHLSebHaer3
~Is anyone awake? I'm starving.~ [FHLSH3]
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",3)~
== BHAERDA
~Here, my wildcat - a peach for you.~
== BFHLSEB
~Oh, I should have known that your kindness would know no bounds. My heart is overflowing! I am overcome. I can't even find the--~
== BFHLAND
~Don't you ever stop? Eat the peach and go to sleep.~
DO ~RestParty()~
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",3)
InParty("FHLAND")
See("FHLAND")
InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("FHLAND",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebHaer3
~Really, this is too much. Here I am, writing a work of art for you, and you have nothing to do but rattle on about doom and gloom.~ [FHLSH4]
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",4)~
== BHAERDA
~And what would you propose instead? A roll in the hay? That appears to be your usual method of cheer.~
== BFHLSEB
~I resent that remark, I resent it deeply. The finest sheets for me.~
=
~Of course, if there *were* any convenient haystacks...~
== BHAERDA
~No, my wildcat, my heart is not for you.~
== BFHLSEB
~Alas! Cruel, cruel <DAYNIGHT>! Providence has forsaken me!~
== BFHLAND
~What's all the racket?~
== BFHLSEB
~Oh, I was just declaring my undying love for Haer'Dalis, and he was rejecting me.~
== BFHLAND
~Can't you be a bit quieter about it?~
== BHAERDA
~Far be it from me to add to your discomfort, Andrei. Come, my wildcat, you can play out this drama of yours some other <DAYNIGHT>.~
EXIT

CHAIN IF ~Global("FHLSebHaerTalk","GLOBAL",4)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
PartyRested()
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BHAERDA FHLSebHaer4
~I do apologise if I am tired to<DAYNIGHT>, <CHARNAME>, but the fault is all Sebastian's.~
DO ~SetGlobal("FHLSebHaerTalk","GLOBAL",5)~
== BFHLSEB
~Haer'Dalis, not in front of the others!~ [FHLSH5]
== BHAERDA
~Hush, my wildcat. Do not distress yourself, <CHARNAME>, we were looking through some manuscripts and lost track of time.~
EXIT

CHAIN IF ~Global("FHLSebHaerTalkMDP","GLOBAL",0)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
TimeGT(5)
TimeLT(8)
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BHAERDA FHLSebHaerMDP
~Ah, the sun rises and the cycle begins once more. Invigorating, isn't it?~
DO ~SetGlobal("FHLSebHaerTalkMDP","GLOBAL",1)~
== BFHLSEB
~If you say so. I can't see that it's any different from any other day.~ [FHLSH6]
== BHAERDA
~It is not, but the ordinariness is the beauty of it. On a day just as this the world could collapse.~
== BFHLSEB
~Shut up.~
== BHAERDA
~Hmm?~
== BFHLSEB
~I'm sick of your doomsaying. It's not like *you've* ever had to--~
=
~Just go and spout your stupid philosophy somewhere else!~
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebIm1
~Imoen, sweetheart--~ [FHLSI1]
DO ~SetGlobal("FHLSebImTalk","GLOBAL",1)~
== BIMOEN2
~Uh, if you're about to try a line on me, I've got other things on my mind.~
== BFHLSEB
~Would I do such a thing? Innocent, kind Sebastian? I'm hurt. The world has darkened. The sun--~
== BIMOEN2
~I swear, you talk about as much as <CHARNAME> does on a bad day.~
== BFHLSEB
~I'm that bad?~
== BIMOEN2
~So what was it you wanted?~
== BFHLSEB
~I had a spare apple in my pack, and you look like it would do you good.~
== BIMOEN2
~Really? Oh. Thanks!~
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLSebIm2
~It's - kind of interesting, you know? Do you have nightmares?~
DO ~SetGlobal("FHLSebImTalk","GLOBAL",2)~
== BFHLSEB
~No, my dreams are suffused with--~ [FHLSI2]
== BIMOEN2
~I'm not. In. The mood.~
== BFHLSEB
~Why do you want to know about my nightmares?~
== BIMOEN2
~Just interested, is all.~
== BFHLSEB
~One particular one I had just the other day involved a cupboard. Well, not a cupboard as such, more of a cage - it had bars on the front, anyway.~
== BIMOEN2
~Go on?~
== BFHLSEB
~There was a fire behind me and some sort of poison gas ahead, so all I could do was sit and wait for it to wash over me.~
== BIMOEN2
~And then what happened?~
== BFHLSEB
~A pink-haired girl turned up and started asking me all about my private thoughts. It was dreadful, simply dreadful!~
== BIMOEN2
~Hey! Sebastian, that's not fair!~
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",2)
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebIm3
~You people are so odd.~ [FHLSI3]
DO ~SetGlobal("FHLSebImTalk","GLOBAL",3)~
== BIMOEN2
~Like you can talk.~
== BFHLSEB
~Hush, you. Look, Imoen, do you ever think about just...giving up? Just buying a house somewhere and living quietly?~
== BIMOEN2
~I...don't know. After all the stuff that's happened, I can't say anything about the future.~
== BFHLSEB
~That's what I mean. You types never *stop*, do you, it all just goes on and on and you're never going to find peace anywhere.~
== BIMOEN2
~Sebastian? I say again: like you can talk.~
== BFHLSEB
~Hmph! Here was I trying to be serious at you, and you cast it back in my face. Typical!~
== BIMOEN2
~I *was* being serious.~
EXIT

CHAIN IF ~Global("FHLSebImTalk","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BIMOEN2 FHLSebIm4MDP
~I got you some raspberries, Sebastian. I thought you might like them.~
DO ~SetGlobal("FHLSebImTalk","GLOBAL",4)~
== BFHLSEB
~Keep them, I'm not hungry.~ [FHLSI4]
== BIMOEN2
~But they're really nice, look. Just ripe enough.~
== BFHLSEB
~My parents died from eating raspberries. Marcus, the lieutenant before Lyel, brought some from outside as a present. They'd been washed in bad water.~
== BIMOEN2
~How old were you?~
== BFHLSEB
~Nine. I didn't eat any, because I got too excitable and my father said I could have some the next morning. By that time, they were ill.~
=
~So, no, I don't want them.~
== BIMOEN2 IF ~InParty("Nath")~ THEN
~Well...maybe Nathaniel would like some instead. I'll go talk to him.~
== BIMOEN2 IF ~!InParty("Nath")~ THEN
~I'll, er, I'll keep them to myself, then.~
== BFHLSEB
~You do that.~
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah1
~Jaheira, I have an awful dilemma concerning the balance, and I need you to help me.~ [FHLSJH1]
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",1)~
== BJAHEIR
~What is it, Sebastian?~
== BFHLSEB
~Well, it's simply unbearable. I know that I can't go on without your counsel.~
=
~It's about a...a sensitive matter, though.~
== BJAHEIR
~I hate to think what you would consider a sensitive matter. Now stop stalling, and tell me.~
== BFHLSEB
~You see, my inner ear is acting up. I keep on feeling all dizzy, and I stumble! I have these pains in the side of my head...~
== BJAHEIR
~I do not take well to mockery.~
== BFHLSEB
~Hear my plight, Jaheira! My balance has gone completely - I fall over all the time! What can you do for me?~
== BJAHEIR
~I can ignore you. If you have a real problem, then ask me.~
== BFHLSEB
~No one takes me seriously!~
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah2
~Let's do a trade - it's long overdue.~ [FHLSJH2]
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",2)~
== BJAHEIR
~Excuse me?~
== BFHLSEB
~I'll tell you all sorts of embarrassing things about Andrei if you tell me <CHARNAME> stories!~
=
~Really juicy ones, mind you. None of that 'sheltered, innocent Bhaalchild' rubbish I've been told before!~
== BJAHEIR
~Those are <CHARNAME>'s stories to tell. Besides, I do not wish to hear of any compromising positions your cousin has been in.~
== BFHLSEB
~If it's compromising positions you want, then stray no further, for I--~
== BJAHEIR
~Not everyone is as obsessed with sordid matters as you think, Sebastian.~
== BFHLSEB
~Huh. Live in your delusions, Jaheira, I don't care!~
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",2)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah3
~You know, Jaheira, I don't think we would have ever got this far were it not for you.~ [FHLSJH3]
=
~I'm being serious, you needn't give me that look. I know <CHARNAME> would have fallen apart without you chivvying <PRO_HIMHER> along. And I be wouldn't nearly as comfortable about poor Andrei's prospects.~
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",3)~
== BJAHEIR
~I cannot help but think this is some tomfoolery, but in case it is not: thank you.~
== BFHLSEB
~It's amazing what I put up with, I swear. All I'm trying to do is put someone's finely-honed bossiness in a complimentary light, and what does she do? She rejects me!~
EXIT

CHAIN IF ~Global("FHLSebJahTalk","GLOBAL",3)
GlobalGT("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJah4
~Oh, what are you staring at?~ [FHLSJH4]
DO ~SetGlobal("FHLSebJahTalk","GLOBAL",4)~
== BJAHEIR
~Keep that hostility to yourself, thank you. I was merely looking.~
== BFHLSEB
~Well, don't. The last thing I need is some tired old nag poring over me like she matters at all.~
== BJAHEIR
~If you wish to get anything out of the life you have made for yourself, then--~
== BFHLSEB
~Jaheira. Look at me so I don't have to repeat myself. I don't care about anything you have to say.~
== BJAHEIR
~One day, when what meagre happiness you have found falls through once more, you *will* care, and there will not be anyone around to help you then.~
EXIT

CHAIN IF ~Global("FHLSebJahRomTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN BFHLSEB FHLSebJahRom
~Ahh, this is too sweet for words.~ [FHLSJH5]
DO ~SetGlobal("FHLSebJahRomTalk","GLOBAL",1)~
== BJAHEIR
~What is it now, Sebastian?~
== BFHLSEB
~He was cast adrift so young, a naive and troubled boy; she had found love fair and good but had it wrenched away from her most cruelly.~
== BJAHEIR
~You are hardly one to cast aspersions on these matters.~
== BFHLSEB
~Cast aspersions? Me? All I wanted to say was: ain't love grand!~
== BJAHEIR
~Yes, fine, but that is enough.~
== BFHLSEB
~(You sly old cradle-snatcher!)~
== BJAHEIR
~What was that?~
== BFHLSEB
~Hmm? I said nothing, nothing at all!~
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLSebJan1
~Sebastian, this is deplorable.~
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",1)~
== BFHLSEB
~Yes, it is. Shocking!~ [FHLSJN1]
=
~What is?~
== BJAN
~Me with my life's experiences, and you with the power of poetry. We should collaborate!~
=
~Just imagine it, our names inscribed on gigantic posters. The Life and Travels of Jan Jansen, Master Merchant Extraordinaire!~
== BFHLSEB
~Hang on, I'm sure my life's been more interesting than yours. Besides, you're short.~
== BJAN
~Have you ever baked a turnip casserole so large that your evil stepmother fell in and drowned in its sauce - perfectly seasoned, I might add?~
== BFHLSEB
~No, and I doubt you have either!~
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BJAN FHLSebJan2
~So, you turn into a cat, eh?~
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",2)~
== BFHLSEB
~Last time I checked.~ [FHLSJN3]
== BJAN
~Well, that's nothing. I knew someone once who could turn into a slime mould!~
== BFHLSEB
~Forgive me - or don't, I really don't care one way or another - but that doesn't seem a particularly useful thing to turn into.~
== BJAN
~Oh, and I suppose a flea-ridden moggy will win all the animal Talent-and-Beauty contests?~
== BFHLSEB
~Flea-ridden? I'll have you know I'm vermin free - except for my dear cousin, of course, and I hardly think he counts.~
== BJAN
~Actually, one did win the regional contest in our village. The only other contender was a three-legged hamster named Gerald, a war hero from the Turnip Campaigns. But even then it wasn't a fair win. The cat ate poor Gerald and won by default. A sad, sad story. At least the cat lost the national finals!~
== BFHLSEB
~To a lemming missing part of its face that made a mean turnip soup?~
== BJAN
~Why, how on my pappy's fertiliser recipe did you know?~
== BFHLSEB
~Call it a wild guess!~
EXIT

CHAIN IF ~Global("FHLSebJanTalk","GLOBAL",2)
GlobalLT("FHLMDP","GLOBAL",1)
InParty("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebJan3
~I feel I must ask you something.~ [FHLSJN4]
DO ~SetGlobal("FHLSebJanTalk","GLOBAL",3)~
== BJAN
~Must you? Let me not stand in the way of anyone feeling particularly musty. Ask away!~
== BFHLSEB
~Have you ever ran out of stories? Opened your mouth and have nothing come out?~
== BJAN
~It's funny you should ask that - I'd been reminiscing on that very ordeal I had to face, four years ago. I was on my third tour of Thay when a local Sultan captured me, mistaking me for a travelling minstrel!~
== BFHLSEB
~Do you mean a musical tour or a battle campaign?~
== BJAN
~Why, a turnip-selling tour, of course! I could hardly blame the man for his gaffe but he enslaved me and forced me to tell him a different story every night for one thousand and three nights.~
== BFHLSEB
~And on the last night, your mind went blank. Classic!~
== BJAN
~I didn't last a week! On the sixth night, I was musing over the rising bear prices back west when he summoned me, and my mind drew a blank! Not unlike dear Great-Aunt Janie when she was testifying in court and someone threw that enchanted turnip juice at her.~
== BFHLSEB
~Go on, finish the Sultan story. It was just getting good.~
== BJAN
~What Sultan? Have you been at my home brew again?~
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",0)
InParty("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebKel1
~What would you do if we were wandering around and saw a young lady being mugged?~ [FHLSKE1]
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",1)~
== BKELDOR
~I would stop the ruffians, of course, and make sure the girl was all right.~
== BFHLSEB
~But what if they were merely starving beggars trying to feed their families?~
== BKELDOR
~There is no excuse for an evil act, Sebastian, though I would give them every chance to redeem themselves.~
== BFHLSEB
~All right, then, what would you do if--~
== BKELDOR
~Is there not something more productive than--~
== BFHLSEB
~Don't you know it's rude to interrupt people? Where was I? Oh, yes. What would you do if there was a kitten stuck up that tree?~
== BKELDOR
~Sebastian.~
== BFHLSEB
~It's a really cute kitten, crying in abject terror, and it desperately needs your help. What would you do?~
== BKELDOR
~I would rescue it, I suppose, if there was no one else willing or able.~
== BFHLSEB
~I knew it! You have nothing better to do!~
== BKELDOR
~You would do the same, Sebastian.~
== BFHLSEB
~Of course, they're my brethren! But if it were, say, Chompy the Pit-Bull Terrier, then I wouldn't. But I bet you would!~
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHLLDP","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)~ THEN BKELDOR FHLSebKel2
~Sebastian, has anyone ever looked for deeper meanings in your family's transformations?~
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",2)~
== BFHLSEB
~I probably have, given what a philosophical and thoughtful person you know me to be.~ [FHLSKE2]
== BKELDOR
~It is obvious that there is a relationship between the animal and personality of members of your family, at least for Andrei and yourself. But is it true for all of you, and if there is a relationship then which affects the other?~
== BFHLSEB
~(sigh) Fine. Many of us seem to relate to the animals. Alexandra is a cold-blooded reptile most of the time, not just when she transforms, and Simeon is very much the rugged pack-animal type. Lucas turns into a mouse, and Rosanna into a mountain lion, though, and I know it's not lunch that's on *her* mind. So your guess is as good as mine.~
== BKELDOR
~Surely a better understanding of the curse would be beneficial to you, Sebastian?~
== BFHLSEB
~Why? Because standing here, talking about it, will help me so much.~
EXIT

CHAIN IF ~Global("FHLSebKelTalk","GLOBAL",2)
InParty("KELDORN")
!StateCheck("KELDORN",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BFHLSEB FHLSebKel3
~Now that the dust has settled, I've decided that I want a change of pace.~ [FHLSKE3]
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",3)~
== BKELDOR
~That is a fair enough decision, considering all that has happened. I wonder how this relates to me, though.~
== BFHLSEB
~Tell me, Keldorn: what does Torm think of down-and-out bards trying to make a fresh start in life?~
== BKELDOR
~Perhaps you would be more suited to life in the service of another god - Shaundakul, perhaps? Maybe Oghma?~
== BFHLSEB
~Finder Wyvernspur, if any other, but it wasn't just faith I was looking for.~
== BKELDOR
~It is not?~
== BFHLSEB
~I want to join the Order!~
== BANOMEN IF ~InParty("Anomen")~ THEN
~Such comments should not be made, even in poor jest.~
== BJAN IF ~InParty("Jan")~ THEN
~They wouldn't take you. They certainly didn't want me when I applied, even after I rescued all of those damsels from their untimely deaths. Ah, the short-lived career of Sir Jan, Master Knight! You'll have to be more like Uncle Walter to join the Order, my friend.~
== BKELDOR
~Sebastian. If you truly intend to change your ways then I shall assist you. Otherwise, I suggest you spend your time baiting someone who does not have the support of the gods.~
== BFHLSEB IF ~InParty("Anomen")~ THEN
~Anomen, can I have a word?~
EXIT

CHAIN IF ~GlobalGT("FHLMDP","GLOBAL",0) Global("FHLSebKelTalk","GLOBAL",2)
InParty("FHLSEB") See("FHLSEB") !StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BKELDOR FHLSebKel3MDP
~Sebastian, it is imperative that you think upon what you have done, and the consequences of your actions.~
DO ~SetGlobal("FHLSebKelTalk","GLOBAL",3)~
== BFHLSEB
~Imperative? Then let me snap to, O Great Leader, and do impart your dubious wisdom.~ [FHLSKE4]
== BKELDOR
~If you do not wish to make the same mistakes again then you will consider these things!~
== BFHLSEB
~Don't worry, Keldorn. I'm fairly sure I won't make the same mistake again, on account of the fact that I have no more family to kill.~
=
~Oh, except for Lyel, I think he got away, and probably there are some of them straggling around - though it's doubtful they'll survive their first winter outside the estate, isn't it?~
== BKELDOR
~Innocents died in that place, and--~
== BFHLSEB
~You don't have to tell me that! I was there!~
== BKELDOR
~It was an evil act, whatever Xavier's actions or your intentions. You need to repent--~
== BFHLSEB
~Look, I didn't see you *not* killing any of my relatives. So go and repent for the both of us before you die of sheer boorishness.~
== BKELDOR
~Sebastian--~
== BFHLSEB
~Leave. Me. Alone.~
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",0)
InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebKorg1
~Korgan, you're so violent and threatening.~ [FHLSKO1]
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",1)~
== BKORGAN
~Aye, that I be. Is there a purpose to yer ramblings, or shall I beat silence into yer brains?~
== BFHLSEB
~Relax, relax. I was just thinking - if you were a member of my family, you'd turn into a fearsome animal befitting your threatening stature.~
=
~Yes, I know. You'd turn into a bloodthirsty, horrifying--~
== BKORGAN
~Out wi' it, longlimb!~
== BFHLSEB
~--gerbil. That would suit you well.~
== BKORGAN
~I've half a mind to get the yowling cat out o' yer and let ye see how bloodthirsty I am, ye great pansy.~
== BFHLSEB
~Ah, I'll just go and stand over here, I think.~
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BKORGAN FHLSebKorg2
~Oi, ye moggy. When we were in that last tavern ye just had some kiddies' drink.~
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",2)~
== BFHLSEB
~I'm not a moggy. If anything, I'm a highly refined - if a little inbred - pedigree.~ [FHLSKO2]
== BKORGAN
~Don' interrupt yer betters! I don't trust a man who won't drink. What are ye afraid of?~
== BFHLSEB
~Dear Korgan, I'm afraid of nothing but the prospect of a night's drinking giving me breath like yours. Do you gargle rancid ale or is it some trick I don't know about?~
== BKORGAN
~Ach, I'll cut yer bleedin' head off before I listen to anythin' ye have to say.~
== BFHLSEB
~If you can reach!~
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
GlobalGT("FHLLDP","GLOBAL",1)~ THEN BKORGAN FHLSebKorg3
~Haha, did ye see that Lyel runnin' off when ye gave him the rough side o' yer tongue?~
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",3)~
== BFHLSEB
~Another time, I'll question your peculiar turn of phrase. Right now, I shall say that I have a headache and am terribly uninterested.~ [FHLSKO3]
== BKORGAN
~Yer whole family's a bunch o' cowards, and ye and yer cousin are nay different. Still, wi' me around who can blame 'em?~
== BFHLSEB
~Yes, I do find myself holding back daily from fleeing you. Oh, save me, <CHARNAME>.~
== BKORGAN
~Not a soul cares about yer wit, ye yowlin' weakling. Whisper it to yer precious cousin's pillows at yer climax if ye want, maybe he'd find some amusement in yer.~
EXIT

CHAIN IF ~Global("FHLSebKorgTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BKORGAN FHLSebKorg3a
~I saw that look in yer eyes when ye were killin' yer family, longlimb.~
DO ~SetGlobal("FHLSebKorgTalk","GLOBAL",3)~
== BFHLSEB
~...~
== BKORGAN
~Ach, ye dinna have any wit now, do ye? Then be silent as ye should, and let me tell ye this:~
=
~Yer a killer now, as good as the rest o' us, and once ye've got the blood of the innocent on ye, it ne'er comes off.~
== BFHLSEB
~I - I'll--~
== BKORGAN
~Ahahaha! Bloody brilliant, that look on yer face. Ye'll never have the guts to be like me. Ye'll hide behind the real evil and ne'er amount ter anything. 'Sides killin' all the folk wi' the patience to put up wi' ye, of course.~
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",0)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMazSeb1
~Hey, Mazzy, eaten any roast duck lately?~ [FHLSMA1]
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",1)~
== BMAZZY
~Pardon me?~
== BFHLSEB
~Or ale? Maybe a warm loaf of crusty bread, dipped in lamb broth. All hearty food!~
== BMAZZY
~Are you hungry, Sebastian? I think there may be some dried beef in my pack if you wish it...~
== BFHLSEB
~Some fruit, perhaps?~
== BMAZZY
~What is wrong with you this day?~
== BFHLSEB
~I heard you're all obsessed with food. It's a wonder - I mean, I'd have thought you would eat less, but--~
== BMAZZY
~I knew it! I will take no jests about my being a halfling, Sebastian, and it would be better for the both of us if such comments did not come up again.~
== BFHLSEB
~Someone's feeling touchy today!~
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",1)
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMazSeb2
~Mazzy, your stature gives you a tremendous advantage in battle. You shouldn't be so hard on yourself about it!~ [FHLSMA2]
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",2)~
== BMAZZY
~I am not entirely sure what you mean, Sebastian, and I suspect that I would prefer it to remain that way.~
== BFHLSEB
~Well, being the height you are, you can go for the goods. All those men will drop like flies.~
== BMAZZY
~Sebastian! I know you have a preoccupation with crude affairs, but please. I take these matters seriously.~
== BFHLSEB
~Crude? Me? I was talking about their *knees*.~
=
~What were you thinking of?~
== BMAZZY
~The knees as well, of course. Very...crude.~
EXIT

CHAIN IF ~Global("FHLSebMazTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMAZZY FHLMazSeb3
~You know, Sebastian, when I first met you I thought you incapable of a single serious thought.~
DO ~SetGlobal("FHLSebMazTalk","GLOBAL",3)~
== BFHLSEB
~Thanks. Flattery is such an annoying trapping of civilised society, isn't it?~ [FHLSMA3]
== BMAZZY
~And then I realised that is only what you want others to think.~
== BFHLSEB
~You've got me pegged, Mazzy. Now we can sit down and analyse my dreams. Or maybe my handwriting. Or--~
== BMAZZY
~Make fun of me if you will, but I understand you much better than I did before.~
== BFHLSEB
~And the upshot of all this is...?~
== BMAZZY
~That it is no wonder you can never get what you want when you hide behind so many masks.~
== BFHLSEB IF ~GlobalGT("FHLMDP","GLOBAL",1)~ THEN
~(yawn) What did you say? I nodded off for a moment on account of you being so unbearably boring. Do be quiet now, little one.~
== BFHLSEB IF ~Global("FHLMDP","GLOBAL",0)~ THEN
~What are you talking about? I'm a pampered child at heart, used to having my every whim satisfied. Now, I am needed elsewhere!~
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",0)
InParty("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLMinscSeb1
~It's easy to get hungry when we're on the road, don't you find? You're a big man, you must get through a lot of food.~ [FHLSMI1]
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",1)~
== BMINSC
~Minsc must ensure that he is strong enough to stomp evil mightily. If Minsc and Boo must eat a lot, so much the better.~
== BFHLSEB
~Ah, yes, Boo. He would be a most succulent morsel. Where is he at the moment...?~
== BMINSC
~Boo is safe in my pack, and will not be emerging out to see you! Do not worry, Boo, the nasty cat-man will not attack you while I am alive and kicking!~
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMINSC FHLMinscSeb2
~Your eyes look very narrow to<DAYNIGHT>, Sebastian. Boo thinks you are not to be trusted, and Minsc...well, Minsc listens to what Boo thinks.~
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",2)~
== BFHLSEB
~Me? I can't imagine what you're talking about.~ [FHLSMI2]
== BMINSC
~Ah, maybe you are a friend after all. Righteousness does not always have to make a lot of noise.~
== BFHLSEB
~Well, that's certainly the first time I've been called righteous. I'll have to write it down.~
== BMINSC
~Boo has noticed Sebastian scribbling on his paper. One day Minsc would like to read it!~
EXIT

CHAIN IF ~Global("FHLSebMinscTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BMINSC FHLMinscSeb3
~Is your family from space, maybe?~
DO ~SetGlobal("FHLSebMinscTalk","GLOBAL",3)~
== BFHLSEB
~Not that I know of. Why?~ [FHLSMI3]
== BMINSC
~Boo is from space, and he is much, much more than he appears. And you are large, but you turn cat-shaped.~
== BFHLSEB
~And we're much more than we appear, too. Fair enough, but--~
== BMINSC
~Yes! For to look at you, we would think you were just a funny man who writes things down.~
== BFHLSEB
~Lots of people have thought that, yes.~
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",0)
InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLNalSeb1
~It's good that you're travelling with me, you know.~ [FHLSNL1]
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",1)~
== BNALIA
~And why is that?~
== BFHLSEB
~Well, you'll be able to see what a hard life is really like! It's not easy, you know, being cursed. Away from my home and my family. I do try, but...~
=
~I don't suppose you have any spare change? It would b-be nice to have a hot meal tonight!~
== BNALIA
~Ugh. You don't fool me, Sebastian. Leave me alone, so I can find some people who actually deserve my help.~
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BNALIA FHLNalSeb2
~I wish you'd stop looking at me like that.~
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",2)~
== BFHLSEB
~Like what, dear Nalia? I don't know what you mean.~ [FHLSNL2]
== BNALIA
~(sigh) Stop trying that innocent act with me. I know what you are.~
== BFHLSEB
~If I was feeling vindictive, I might say that you should stop pretending to be so worldly. But I wouldn't be so petty as that, would I?~
== BNALIA
~Oh, forget it.~
EXIT

CHAIN IF ~Global("FHLSebNalTalk","GLOBAL",2)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)~ THEN BNALIA FHLNalSeb3
~I don't know how anyone puts up with you, Sebastian.~
DO ~SetGlobal("FHLSebNalTalk","GLOBAL",3)~
== BFHLSEB
~It does take a certain strength of character, I'll admit, and I'm sure you'll get there someday.~ [FHLSNL3]
=
~But I'm sure you'd simply love me if we got to know each other better.~ [FHLSNL4]
== BNALIA
~Not even if you were the last man alive!~
== BFHLSEB
~Oh, Nalia, my heart is broken! My poor, wounded heart!~
EXIT

CHAIN IF ~Global("FHLValSebTalkMDP","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
GlobalGT("FHLMDP","GLOBAL",1)~ THEN BFHLSEB FHLValSebMDP
~Well, I suppose we do have something in common, after all.~ [FHLSVA1]
DO ~SetGlobal("FHLValSebTalkMDP","GLOBAL",1)~
== BVALYGA
~I suppose you refer to the...incident with your family.~
== BFHLSEB
~What else is there? Yes, of course I was talking about that. Ha, though I suppose in your case it was all brave and noble and whatnot!~
== BVALYGA
~Sebastian--~
== BFHLSEB
~No, no, don't *say* anything, damn it!~
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",0)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb1
~Valygar, you look tense.~ [FHLSVA2]
DO ~SetGlobal("FHLValSebTalk","GLOBAL",1)~
== BVALYGA
~And why is that of any concern of yours?~
== BFHLSEB
~Well, it can hardly escape my notice. You really should do something about it.~
== BVALYGA
~Hmm. And what would you suggest?~
== BFHLSEB
~You need a lady of the night - and I'm not talking about vampires!~
=
~Of course, there is a problem. You don't want to risk an heir-- ah!~
=
~Use me! Use me as you will - I will acquiesce to anything, for I want to help you to the best of my abilities!~
== BVALYGA
~Sebastian. Remove your hand.~
== BFHLSEB
~Aiee! Valygar's scary!~
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",1)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb2
~Will you ever forgive me?~ [FHLSVA2]
DO ~SetGlobal("FHLValSebTalk","GLOBAL",2)~
== BVALYGA
~What foolishness is this?~
== BFHLSEB
~Well, I'm sorry for teasing you. And I was wondering if you could find it in your bruised heart to forgive me.~
== BVALYGA
~I would find silence much easier to forgive than this endless chatter.~
== BFHLSEB
~Excellent!~
EXIT

CHAIN IF ~Global("FHLValSebTalk","GLOBAL",2)
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLValSeb3
~Valygar, since we're such good friends now, why don't you spurn me for my actual faults rather than for the fact that I use magic?~ [FHLSVA4]
DO ~SetGlobal("FHLValSebTalk","GLOBAL",3)~
== BVALYGA
~There are so many things wrong with that sentence that I don't know where to begin.~
== BFHLSEB
~But whatever can you mean?~
== BVALYGA
~For one thing, I have never called you a friend, let alone a good one.~
=
~For another, what I find disagreeable about you *are* your faults.~
== BFHLSEB
~Oh, you are the sweetest! And some people call you forbidding - pfeh!~
=
~Don't worry, I'll defend you from anyone who's mean to you. And I know you'd do the same for me!~
EXIT

CHAIN IF ~Global("FHLSebVicTalk","GLOBAL",0)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)~ THEN BFHLSEB FHLSebVic1
~You know, Viconia, you do confuse me sometimes.~ [FHLSVI1]
DO ~SetGlobal("FHLSebVicTalk","GLOBAL",1)~
== BVICONI
~Clearly I am one of the many to do so. Leave me alone, or you will find yourself dosed with rat poison the next time we sleep.~
== BFHLSEB
~Charming as always, eh? Why do you stay around, then? Do you just have fun looking down your nose at everyone? I know I do, but you don't seem to enjoy it nearly as much.~
== BVICONI
~My motives are not for you to question.~
== BFHLSEB
~Aha! I know. You don't have anywhere else to go.~
== BVICONI
~Silence! I will be troubled by you no more.~
== BFHLSEB
~Hit a nerve, did I?~
== BVICONI
~You understand nothing of the life I lead, bardling, and perhaps you should look to your own motivation. You hardly hold <CHARNAME> in high regard.~
=
~And outside your home, who is there to care if you were to disappear one day? Where do you have to go?~
== BFHLSEB
~I...had not...~
=
~Oh, Viconia, you're a scream, really you are. You know how much I love and respect our dear <CHARNAME>! Don't tell lies like that, it's bad!~
EXIT

CHAIN IF ~Global("FHLSebVicTalk","GLOBAL",1)
InParty("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
InParty("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
OR(2)
PartyHasItem("FHLBOOK")
PartyHasItem("FHLBK2")~ THEN BVICONI FHLSebVic2
~I had not thought that your art was such drivel, Sebastian. Perhaps I should have expected it, since one can hardly think when one is chattering as much as you do.~
DO ~SetGlobal("FHLSebVicTalk","GLOBAL",2)~
== BFHLSEB
~Oh, my dear, delightful as ever. If I ever - heavens forbid - have the urge to show you my writing, I promise I'll pay the utmost attention to your comments. As it is--~ [FHLSVI2]
== BVICONI
~You misunderstand. I have seen your writings, and those were my thoughts.~
== BFHLSEB
~Eh? What, did you go to the theatre? Doesn't the hood make it a bit hard to see?~
== BVICONI
~You should not leave your notebook out unguarded, lest prying eyes learn your secrets.~
== BFHLSEB
~WHAT?~
== BVICONI
~And very interesting secrets they were, too.~
== BFHLSEB
~You - you little bitch - <CHARNAME> should have left you tied to that pyre! You--~
== BFHLAND
~Sebastian, stop it!~
== BFHLSEB
~Let - me - go, Andrei, she's--~
== BVICONI
~And I'm sure Andrei will be very interested to learn about certain things, won't he?~
== BFHLSEB
~You--~
== BFHLAND
~I don't need to know any of these 'secrets', thank you, Viconia - if they even exist! Come on, Sebastian, stop this now.~
EXIT

CHAIN IF ~Global("FHLSebVicLDPTalk","GLOBAL",0)
GlobalGT("FHLLDP","GLOBAL",1)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebVicLDP
~You know what, Viconia? I think I've been misjudging you. We've got something in common after all.~ [FHLSVI3]
DO ~SetGlobal("FHLSebVicLDPTalk","GLOBAL",1)~
== BVICONI
~Enough of your foolishness, bardling.~
== BFHLSEB
~Yes, we've both been banished from our families - though my exit was rather more heroic than yours, I imagine, and of course I have a friend with me.~
=
~So I suppose it's only a small thing in common. Never mind.~
EXIT

CHAIN IF ~Global("FHLSebVicMDPTalk","GLOBAL",0)
GlobalGT("FHLMDP","GLOBAL",1)
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLSebVicMDP
~You don't have to look all snooty at me, Viconia. I'm strong now, remember?~ [FHLSVI4]
DO ~SetGlobal("FHLSebVicMDPTalk","GLOBAL",1)~
== BVICONI
~I could never regard you as strong, you foolish little man.~
== BFHLSEB
~Oh, but now I've killed people. Isn't that how you people measure achievements? I freed myself from my jailer!~
== BVICONI
~You did nothing of the sort, lowly one. It was <CHARNAME> who freed you and <CHARNAME> alone; you hid and played your tunes like usual.~
=
~Although I doubt that made any difference to the others. Being killed by one person is much the same as being killed by another. I am sure that - what were their names? - Simeon, Lealia--~
=
~You may walk away, Sebastian, but we both know that it was your own doing, and yet you could barely deal a blow!~
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",0)
Global("FHLMDP","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb1
~Kara-Tur sounds an interesting place. Perhaps we could inveigle some way of getting a visit.~ [FHLSY1]
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",1)~
== BYOSHIM
~I doubt that <PRO_HESHE> is particularly suggestible, I am afraid.~
== BFHLSEB
~Oh, Yoshimo, I can be very persuasive.~
== BYOSHIM
~Heh, now that I do not doubt.~
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",1)
Global("FHLMDP","GLOBAL",0)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb2
~So, say I wanted someone taken care of, I'd ask you and you'd do it?~ [FHLSY2]
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",2)~
== BYOSHIM
~For a fee, naturally.~
== BFHLSEB
~Oh, naturally. Reduced for friendship's sake, though?~
== BYOSHIM
~Ah, I think I could afford a small discount. Do not let it get about, though: I would not wish to damage my reputation. Do you have anyone in mind?~
== BFHLSEB
~Me? Oh, no, not at all. Just contingency plans, Yoshimo, just contingency plans.~
EXIT

CHAIN IF ~Global("FHLSebYoshTalk","GLOBAL",1)
InParty("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN BFHLSEB FHLYoshSeb3
~Your line of works seems rather fun. I daresay you've met all sorts of influential people.~ [FHLSY3]
DO ~SetGlobal("FHLSebYoshTalk","GLOBAL",2)~
== BYOSHIM
~Oh, yes. Occasionally they're more odd than influential, but it is interesting nonetheless.~
== BFHLSEB
~You mean the people you bring in, I suppose.~
== BYOSHIM
~Heh, sometimes those who employ me are odder still. Why, are you considering branching out?~
== BFHLSEB
~Ha! I think not. Too much work for me.~
EXIT
