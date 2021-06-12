BEGIN FHLARCH

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandArchie1
SAY ~Isn't it beautiful right now? I wish it could be like this all the time!~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandArchie2
SAY ~I don't think Xavier would like it if I talked to you too much. But you're nice anyway!~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandArchie3
SAY ~You're so lucky to be here. No one's allowed here most of the time.~
IF ~~ EXIT
END

IF ~OR(2) GlobalLT("FHLArchieQuest","GLOBAL",1) GlobalGT("FHLArchieQuest","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandArchie4
SAY ~Uncle Lucas is mean! He says I'm no good at fighting but I'll show him one day!~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLArchieQuest","GLOBAL",1)
!PartyHasItem("FHLTIG")~ THEN FHLARCH FHLArchie
~Sebastian, Sebastian, it's terrible! You have to help us!~
DO ~SetGlobal("FHLArchieQuest","GLOBAL",2)~
== FHLMIL
~Leave it, rabbit. Can't you see he's busy doing whatever pointless thing he's doing? Why'd he want to help us anyway? Everyone knows he's hanging around with '<CHARNAME>' now and even if he wasn't, he's too dim-witted to help us with anything.~
== FHLSEBJ
~Charming as usual. What's up with Archie?~
== FHLMIL
~Why are you pretending to be interested? It's not like you've been around the rest of the time and it's not like you ever cared for us, it's not like you're our *parents* or anything, you're just one of the old guys hanging around whenever they feel like it.~
== FHLARCH
~Miles, stop it. You'll upset Sebastian!~
== FHLANDJ
~Look, Archie. What's happened?~
== FHLARCH
~It's Mietta. We were playing hide and seek and then she ran off somewhere and we can't find her!~
== FHLMIL
~You're always doing things like this, panicking about stuff and then everyone gets confused because they're too stupid not to realise what's going on. Lealia should take a look at you - what kind of normal person wears his hair like that? Whose dumb idea was it to play that game anyway?~
END
++ ~It's all right. We can have a look for Mietta.~ + FHLArchie_look
++ ~If we see her we'll tell you.~ + FHLArchie_look
++ ~Good luck looking for her, you two.~ + FHLArchie_good
++ ~Come on, we've got other things to do.~ EXTERN FHLMIL FHLArchie_other
++ ~Are we going or not? Who cares about some brat?~ EXTERN FHLMIL FHLArchie_other

CHAIN IF ~Global("FHLArchieQuest","GLOBAL",1)
PartyHasItem("FHLTIG")~ THEN FHLARCH FHLArchie2
~Sebastian, Sebastian, it's terrible! You have to help us!~
DO ~SetGlobal("FHLArchieQuest","GLOBAL",2)~
== FHLMIL
~Leave it, rabbit. Can't you see he's busy doing whatever pointless thing he's doing? Why'd he want to help us anyway? Everyone knows he's hanging around with "<CHARNAME>" now and even if he wasn't, he's too dimwitted to help us with anything.~
== FHLSEBJ
~Charming as usual. What's up with Archie?~ [FHLSMIL1]
== FHLMIL
~Why are you pretending to be interested? It's not like you've been around the rest of the time and it's not like you ever cared for us, it's not like you're our *parents* or anything, you're just one of the old guys hanging around whenever they feel like it.~
== FHLARCH
~Miles, stop it. You'll upset Sebastian!~
== FHLANDJ
~Look, Archie. What's happened?~
== FHLARCH
~It's Mietta. We were playing hide and seek and then she ran off somewhere and we can't find her!~
== FHLANDJ
~It's all right, Archie - we've got her.~
== FHLMIL
~And you didn't even bother to come and tell us about it? Some people just are just inconsiderate. Just 'cause we're kids it doesn't mean we don't have feelings, you know.~
== FHLARCH
~Take her to Lealia, please? She can heal her.~
DO ~RandomWalk()~
EXIT

CHAIN FHLARCH FHLArchie_look
~Really? Thank you! She's probably near the trees past the main house - that's where she likes to hide.~
== FHLMIL
~As if <PRO_HESHE>'ll know what to do - <PRO_HESHE>'s not even from here! What a waste of time.~
== FHLARCH
~If you find her, can you take her to Lealia? She's got a cold and she might have transformed!~
EXIT

CHAIN FHLARCH FHLArchie_good
~Thank you!~
== FHLMIL
~What a waste of time. The idiot didn't even offer to help us? We're just children after all. What happened to helping the innocent and all that?~
== FHLANDJ
~He's right. <CHARNAME>, I'd like it if we had a look for Mietta. She could be in danger.~
EXIT

CHAIN FHLMIL FHLArchie_other
~What a waste of time. The idiot didn't even offer to help us? We're just children after all. What happened to helping the innocent and all that?~
== FHLANDJ
~He's right. <CHARNAME>, I'd like it if we had a look for Mietta. She could be in danger.~
EXIT


