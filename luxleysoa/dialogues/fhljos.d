BEGIN FHLJOS

IF ~Global("FHLMDP","GLOBAL",1)
Dead("FHLXAV")~ THEN BEGIN FHLJosESTM
SAY ~I heard all the noise - get out, get out now, before you get yourselves killed!~ [FHLJOS9]
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL01")~
EXIT
END

IF ~Global("FHLMDP","GLOBAL",0)
Global("FHLJosSeb","GLOBAL",1)~ THEN BEGIN FHLJostalk
SAY ~So. Tell me about travelling with Sebastian and Andrei. Is Sebastian as badly-behaved as he is here?~ [FHLJOS3]
++ ~If he causes as much havoc here as with me, I pity you.~ + FHLJostalk_pity
++ ~I'd rather hear about what you do here. You're the gatekeeper?~ + FHLJostalk_gate
++ ~So you enjoy yourself, here? It seems rather cooped-up.~ + FHLJostalk_coop
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Can you transport me back to where I came from?~ + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Can you transport me back to where I came from?~ + FHLJostalk_sendyes
END

IF ~~ FHLJostalk_pity
SAY ~Ha! That doesn't surprise me in the slightest. We go way back, so I know all his tricks...second cousins, I think we are, or third. Everyone always went on about what a delightful child he was, but I knew differently.~ [FHLJOS4]
=
~It's interesting, I didn't picture people from the outside like you. Lyel told me about them, obviously, and Sebastian.~
++ ~How did you picture them?~ + FHLJostalk_pic
IF ~Gender(Player1,MALE)~ THEN REPLY ~Am I better or worse than you were expecting?~ + FHLJostalk_expectm
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Am I better or worse than you were expecting?~ + FHLJostalk_expectf
++ ~I suppose you don't get much variety in playmates in such a small place.~ + FHLJostalk_coop
++ ~It was good to talk to you. See you later.~ + FHLJostalk_talk
END

IF ~~ FHLJostalk_gate
SAY ~Oh, yes. My father did it before me, so it was pretty much decided that I would, too. It's a good job - well, someone has to do it.~ [FHLJOS1]
=
~People just come to me and I use my magic to transport them to wherever they came from, or where they want to go. Lyel, mostly, because he's Xavier's lieutenant. But other people, too.~
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Can you send me back to where I came from?~ + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1) !PartyHasItem("FHLTIG")~ THEN REPLY ~Can you send me back to where I came from?~ + FHLJostalk_sendyes
IF ~Global("FHLXavTalk","GLOBAL",1) PartyHasItem("FHLTIG")~ THEN REPLY ~Can you send me back to where I came from?~ + FHLJostalk_sendmietta
++ ~Which other people go in and out of the estate?~ + FHLJostalk_which
++ ~It was good to talk to you. See you later.~ + FHLJostalk_talk
END

IF ~~ FHLJostalk_coop
SAY ~Maybe it's small to you, but I don't know anything else, really, so I couldn't say. I enjoy myself, and I've got everyone nearby.~ [FHLJOS6]
=
~Plus, Lyel tells me about what he sees outside, and that's almost as good as seeing it properly.~
IF ~~ EXIT
END

IF ~~ FHLJostalk_pic
SAY ~Oh, you know. Lyel talks so about what he sees outside, but sometimes you don't know what to believe. Not that he's unreliable - it'd be more like Sebastian to tell tall tales.~
++ ~He didn't strike me as particularly reliable.~ + FHLJostalk_reliable
IF ~Gender(Player1,MALE)~ THEN REPLY ~Am I better or worse than you were expecting?~ + FHLJostalk_expectm
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Am I better or worse than you were expecting?~ + FHLJostalk_expectf
++ ~It seems a little cooped-up here, certainly.~ + FHLJostalk_coop
++ ~Well, it was good to talk to you. See you later.~ + FHLJostalk_talk
END

IF ~~ FHLJostalk_expectm
SAY ~Oh, better, certainly. From what Sebastian tells me, everyone has horns and blue skin! Imagine!~
=
~Heh, you don't really think we're *that* primitive, do you?~
IF ~~ EXIT
END

IF ~~ FHLJostalk_expectf
SAY ~Oh - better, certainly. I don't know what I was expecting, really.~
IF ~~ EXIT
END

IF ~~ FHLJostalk_sendno
SAY ~Sorry, but Lyel said he'd be along and tell me once you'd talked to Xavier. It would be a little odd to leave without doing that, wouldn't it?~ [FHLJOS7]
IF ~~ EXIT
END

IF ~~ FHLJostalk_which
SAY ~It's mostly just Lyel and Sebastian, and sometimes a couple of the others. It's quite a big thing for Andrei to be allowed out so young, actually.~
IF ~~ EXIT
END

IF ~~ FHLJostalk_talk
SAY ~Nice to meet you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLJostalk_reliable
SAY ~Really? Oh. That's odd. Oh, well. Maybe he acts differently with other people.~
=
~Anyway, it was nice to meet you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ FHLJostalk_sendyes
SAY ~Yes, of course. I hope I see you again - though I doubt Sebastian will enjoy being back, so...~ [FHLJOS8]
=
~Hold on tight!~
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL01")~
EXIT
END

CHAIN IF ~See("FHLSEB")
Global("FHLMDP","GLOBAL",0)
See("FHLAND")
Global("FHLJosSeb","GLOBAL",0)~ THEN FHLJOS FHLJosGreet
~Sebastian! Wonderful to see you, of course, but I thought you weren't due to come back for a while.~ [FHLJOS5]
DO ~SetGlobal("FHLJosSeb","GLOBAL",1)~
== FHLSEBJ
~I wasn't.~ [FHLSJO1]
== FHLJOS
~You look awful. Isn't life treating you well outside?~ [FHLJOS2]
== FHLSEBJ
~Thank you for restoring my shining confidence in myself, Josefyne. I know I can always rely on you.~ [FHLSJO2]
== FHLJOS
~Ha! You're welcome.~
=
~But aren't you going to introduce me?~
== FHLANDJ
~Sorry, Josefyne - I'm forgetting. This is <CHARNAME>, who we're travelling with at the moment.~
== FHLJOS
~A pleasure, I'm sure.~
== FHLANDJ
~<CHARNAME>, Josefyne's the gatekeeper for the estate - she enables us to leave whenever we want to. It's very important.~
== FHLJOS
~Don't flatter me, Andrei, it's a dull job a lot of the time.~
=
~So. Tell me about travelling with Sebastian and Andrei. Is Sebastian as badly-behaved as he is here?~
END
++ ~If he causes as much havoc here as with me, I pity you.~ + FHLJostalk_pity
++ ~I'd rather hear about what you do here. You're the gatekeeper?~ + FHLJostalk_gate
++ ~So you enjoy yourself, here? It seems rather cooped-up.~ + FHLJostalk_coop
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Can you transport me back to where I came from?~ + FHLJostalk_sendno
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Can you transport me back to where I came from?~ + FHLJostalk_sendyes

CHAIN IF ~Global("FHLMDP","GLOBAL",1)
!Dead("FHLXAV")~ THEN FHLJOS FHLJosESTM2
~I heard all the noise - get out, get out *now*, before you get yourselves killed!~ [FHLJOS8]
== FHLSEBJ
~Not with that bastard still alive! Come on, <CHARNAME>!~
EXIT

CHAIN FHLJOS FHLJostalk_sendmietta
~Yes, of course. I hope I see you again - though I doubt Sebastian will enjoy being back, so...~
== FHLANDJ
~Wait - we've still got Mietta. We need to get her to Lealia and make sure she's all right!~
EXIT
