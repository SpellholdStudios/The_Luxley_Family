BEGIN FHLAL

IF ~!Global("FHLMDP","GLOBAL",1)
OR(3)
Global("FHLAlSeb","GLOBAL",1)
!See("FHLAND")
!See("FHLSEB")~ THEN BEGIN FHLALTALK1
SAY ~Greetings. What do you want?~ [FHLAL8]
++ ~Tell me, what was that whole thing with Sebastian about?~ + FHLALTALK1_2
++ ~So what is it that you do here? Do you live in this house?~ + FHLALTALK1_3
++ ~I thought it was meant to be all sweetness and light here. What's up with you?~ + FHLALTALK1_4
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~May I ask how you get your hair like that? It's lovely.~ + FHLALTALK1_5
IF ~CheckStatGT(Player1,10,WIS)~ THEN REPLY ~You don't seem as though you enjoy it here very much. Why is that?~ + FHLALTALK1_6
END

IF ~~ FHLALTALK1_2
SAY ~Sebastian being his usual self. Why do you need to ask?~
++ ~I've just never seen him quite so venomous.~ + FHLALTALK1_7
++ ~I don't think I'll ever understand this family, I really don't.~ + FHLALTALK1_8
++ ~Andrei's led me to believe that it's all sweetness and light here.~ + FHLALTALK1_4
END

IF ~~ FHLALTALK1_3
SAY ~I'm one of Xavier's guards. That includes keeping out undesirables.~
++ ~What do you need guards for in a place like this?~ + FHLALTALK1_10
++ ~I'll take that as a hint. Goodbye.~ + FHLALTALK1_9
END

IF ~~ FHLALTALK1_4
SAY ~Sweetness and light?~
=
~You obviously haven't been visiting long. Now please leave me alone. Xavier prefers us not to talk to those who aren't...worth our time.~
IF ~~ EXIT
END

IF ~~ FHLALTALK1_5
SAY ~Oh - thank you. It's been like this since I was young.~
++ ~So what is it that you do here? Do you live in this house?~ + FHLALTALK1_3
++ ~What was up with you and Sebastian earlier? I assume you don't get on.~ + FHLALTALK1_2
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~You don't seem as though you enjoy it here very much. Why is that?~ + FHLALTALK1_6
END

IF ~~ FHLALTALK1_6
SAY ~I don't see that how I seem is any of your business.~
IF ~~ EXIT
END

IF ~~ FHLALTALK1_7
SAY ~You must not have been around him long, then. Either that or he's polished himself up for you, which is more than likely.~
=
~But I'd rather not discuss my feelings with you.~
IF ~~ EXIT
END

IF ~~ FHLALTALK1_8
SAY ~What is there to understand?~
IF ~~ EXIT
END

IF ~~ FHLALTALK1_9
SAY ~Very well.~
IF ~~ EXIT
END

IF ~~ FHLALTALK1_10
SAY ~It's a tradition. We help Xavier with whatever he wants, which for now is not talking to visiting strangers.~
IF ~~ EXIT
END

CHAIN IF ~See("FHLSEB")
See("FHLAND")
Global("FHLAlSeb","GLOBAL",0)~ THEN FHLAL FHLAlGreet
~Hmmm?~ [FHLAL1]
DO ~SetGlobal("FHLAlSeb","GLOBAL",1)~
== FHLANDJ
~<CHARNAME>, this is Alexandra. She's Lyel's sister. Alexandra, how have you been?~ [FHLAAL1]
== FHLAL
~How have you found the outside?~ [FHLAL2]
== FHLANDJ
~Oh, it's been interesting. I never thought I'd see so many people!~ [FHLAAL2]
== FHLAL
~Well, I'm glad you're enjoying yourself.~ [FHLAL3]
=
~You. What are you doing here?~ [FHLAL4]
== FHLSEBJ
~Me? Oh, I'm having a peach of a time now that I'm back here. But you'd know all about that, wouldn't you? Isn't that what you want?~
== FHLAL
~You know what I want, Sebastian.~
== FHLSEBJ
~Really? Then let's head to the guestroom and get it over with.~
== FHLAL
~Don't joke about things like that, you deranged little yowler.~
== FHLSEBJ
~But, my lovely scaled one, I wasn't joking in the slightest.~
== FHLAL
~Leave me alone. Xavier probably has something he wants you to do.~
EXIT
