BEGIN FHLSEB

IF ~!Global("FHLJoined","GLOBAL",1) Global("FHLTalkLux","GLOBAL",1)~ THEN BEGIN FHLGreetSeen
SAY ~Ah, it's you again. Care for our presence at your side?~
++ ~Yes, I'd like to have you join me.~ + FHLGreetSeen_join
++ ~No, it would be best for me to travel without you, for now.~ + FHLGreetSeen_no
END

IF ~~ FHLGreetSeen_join
SAY ~Excellent, excellent! I hope we have a lot of fun together!~
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreetSeen_no
SAY ~Fair enough, fair enough. I know when I'm not wanted!~
IF ~~ EXIT
END

IF ~~ FHLGreeting3_curse
SAY ~When we're hurt, we turn into an animal for a little while, and then we end up human again - as you just saw. Clearly Andrei hadn't been taking good enough care of me!~
=
~And don't think I didn't notice you avoiding the question!~
IF ~!CharName("Xavier",Player1)~ THEN REPLY ~My name is <CHARNAME> of Candlekeep.~ + FHLGreeting3_name
IF ~CharName("Xavier",Player1)~ THEN REPLY ~My name is Xavier of Candlekeep.~ EXTERN FHLAND FHLGreeting3_xav
++ ~My name is none of your concern. I'll take my leave, now.~ EXTERN FHLAND FHLGreeting3_leave
END

IF ~~ FHLGreeting3_curse2
SAY ~Well, that's your choice, but you *did* just see it happen. And don't think I didn't notice you avoiding my question!~
IF ~!CharName("Xavier",Player1)~ THEN REPLY ~My name is <CHARNAME> of Candlekeep.~ + FHLGreeting3_name
IF ~CharName("Xavier",Player1)~ THEN REPLY ~My name is Xavier of Candlekeep.~ EXTERN FHLAND FHLGreeting3_xav
++ ~My name is none of your concern. I'll take my leave, now.~ EXTERN FHLAND FHLGreeting3_leave
END

IF ~~ FHLhello_writer
SAY ~Well, if the thought of being near an esteemed playwright isn't enough to tempt you, I'm a dab hand at magic. And Andrei here is an expert at fist fighting. (The little brute hasn't learnt to use weapons yet!)~
++ ~Very well, fall into line, both of you.~ + FHLhello_fall
++ ~Welcome to the group!~ + FHLhello_welcome
++ ~Can I just have you, Sebastian?~ + FHLhello_justseb
++ ~Andrei, would you care to join me by yourself?~ EXTERN FHLAND FHLhello_justand
++ ~Forget it, I don't need either of you.~ + FHLhello_no
END

IF ~~ FHLhello_whatdo
SAY ~Andrei's an expert at fist fighting. (The little brute hasn't learnt to use his weapons yet!) And if the thought of being near an esteemed playwright isn't enough to tempt you, I'm a dab hand at magic too!~
++ ~Very well, fall into line, both of you.~ + FHLhello_fall
++ ~Welcome to the group!~ + FHLhello_welcome
++ ~Can I just have you, Sebastian?~ + FHLhello_justseb
++ ~Andrei, would you care to join me by yourself?~ EXTERN FHLAND FHLhello_justand
++ ~Forget it, I don't need either of you.~ + FHLhello_no
END

IF ~~ FHLhello_justseb
SAY ~Goodness me, no. I promised the head of our family that I would look out for Andrei. He'd be lost without me.~
=
~You see, Andrei? I can be responsible when I want to be.~
++ ~Well, I can't argue with that. Come along, both of you.~ + FHLhello_welcome
++ ~I don't have room for the both of you. Maybe you can join us later?~ + FHLhello_later
++ ~If Andrei can't take care of himself, I don't want him around.~ EXTERN FHLAND FHLhello_look
END

IF ~~ FHLhello_no
SAY ~Ah, the <PRO_MANWOMAN> has no love of prose, I see. Well, we bid you farewell. May our paths cross again! We're headed to the Promenade, if you feel like catching up.~
IF ~~ THEN DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
SetGlobal("FHLLuxMove","GLOBAL",1)~ EXIT
END

IF ~~ FHLhello_head
SAY ~Ah, it'll be nice to stretch my legs.~
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLAND",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreeting3_name
SAY ~Hmm, that name sounds vaguely familiar. Oh, well, it must be my imagination! You need a good imagination when you're in a trade like mine - I'm a playwright, and not a bad one at that.~
=
~Would you have need of our services in your journey? As you see, we're not in the best of states, and it would be just wonderful for Andrei to see a bit more of the world.~
++ ~What use would I have for a writer?~ + FHLhello_writer
++ ~What does Andrei do, then?~ + FHLhello_whatdo
++ ~You seem a little too odd for me. I'll pass.~ + FHLhello_pass
END

IF ~~ FHLGreeting3_name2
SAY ~Hmm, that name sounds vaguely familiar. Oh, well, it must be my imagination! You need a good imagination when you're in a trade like mine - I'm a playwright, and not a bad one at that. Anyway, about this curse...~
=
~When we're hurt, we turn into an animal for a little while, and then we end up human again - as you just saw. Clearly Andrei hadn't been taking good enough care of me!~
=
~Which reminds me. Would you have need of our services in your journey? As you see, we're not in the best of states, and it would be just wonderful for Andrei to see a bit more of the world.~
++ ~What use would I have for a writer?~ + FHLhello_writer
++ ~What does Andrei do, then?~ + FHLhello_whatdo
++ ~You seem a little too odd for me. I'll pass.~ + FHLhello_pass
END

CHAIN FHLSEB FHLhello_pass
~Well, if you're going to be like that...come on, Andrei. There's a pair of yellow gloves with your name on over in Waukeen's Promenade!~
== FHLAND
~Sometimes I wish I was back home when you're like this.~
== FHLSEB
~Nonsense. Let's go!~
DO ~SetGlobal("FHLLuxMove","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)~
EXIT

CHAIN FHLSEB FHLhello_fall
~Fantastic! - but I hope we're not in formation. It's so restrictive!~
== FHLAND
~Sometimes you *need* restriction. Thank you for letting us travel with you, <CHARNAME>. It's very kind of you.~
END
++ ~All right, let's head out.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_head
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~I should tell you that I'm searching for my childhood friend, Imoen.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_imoen
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Before we go, I should say that I'm hunting an evil mage.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_evil

CHAIN FHLSEB FHLhello_welcome
~Ah, such a warm welcome! I can tell this is going to be fun!~
== FHLAND
~Thank you, <CHARNAME>. I hope you don't regret having this buffoon travelling with you.~
== FHLSEB
~You wound me, Andrei, you wound me deeply. Now let's go!~
END
++ ~All right, let's head out.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_head
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~I should tell you that I'm searching for my childhood friend, Imoen.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_imoen
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Before we go, I should say that I'm hunting an evil mage.~ UNSOLVED_JOURNAL ~The Luxley Family's Curse

I have come into contact with an odd pair of cousins in my travels through Athkatla. They claim to suffer a curse placed on their entire family, which causes them to transform into various animals when they are badly injured.~ + FHLhello_evil

CHAIN FHLSEB FHLhello_later
~Don't worry, we'll find you. Come on, Andrei, there's a pair of yellow boots with your name on!~
== FHLAND
~Oh, dear. Safe travels, <CHARNAME>.~
DO ~SetGlobal("FHLTalkLux","GLOBAL",1)~
EXIT

CHAIN FHLSEB FHLhello_imoen
~Oooh, a rescue mission!~
== FHLAND
~Don't worry, <CHARNAME>, we'll help you find her.~
DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT

CHAIN FHLSEB FHLhello_evil
~Oooh! I hope it's no one I know!~
== FHLAND
~Given some of your acquaintances, I almost do.~
DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",1500)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
