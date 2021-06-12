//This file contains all the dialogues for miscellaneous Luxley relatives

BEGIN FHLMIE1

CHAIN IF ~NumTimesTalkedTo(0)~ THEN FHLMIE1 FHLMietta1
~...~
== FHLSEBJ
~Hello, there. What are you doing out at a time like this?~ [FHLSMIE1]
=
~Ouch! She bit me!~ [FHLSMIE2]
== FHLANDJ
~Mietta...?~ [FHLAMIE1]
== FHLMIE1
~...cousin Andrei?...~
== FHLANDJ
~Mietta! Don't worry, we'll take you to Lealia. That is all right, isn't it, <CHARNAME>? She's ill.~
END
++ ~Of course we can.~ + FHLMietta1b
++ ~We've got things to do. I don't want to get sidetracked.~ EXTERN FHLANDJ FHLMietta1c
++ ~How do you know it's your relative? It looks like a dangerous animal to me.~ EXTERN FHLANDJ FHLMietta1d

CHAIN FHLMIE1 FHLMietta1b
~...thank you...~
== FHLANDJ
~Thank you - I'll put her in my pack so she won't get cold.~
DO ~GiveItemCreate("FHLTIG","FHLAND",0,0,0)
ActionOverride("FHLMIE1",DestroySelf())~
EXIT

CHAIN FHLANDJ FHLMietta1c
~But we have to make sure she's safe! Look, <CHARNAME>, I'll put her in my pack. We have to take her to Lealia.~
== FHLSEBJ
~It's true. She's very weak at the moment.~
DO ~GiveItemCreate("FHLTIG","FHLAND",0,0,0)
ActionOverride("FHLMIE1",DestroySelf())~
EXIT

CHAIN FHLANDJ FHLMietta1d
~Because - because she's Mietta! I can't explain it but it's like saying how do you know Sebastian's not me because we're both humans.~
=
~She's quite weak. I don't think she'll last long out here. I'll put her in my pack and we can take her to Lealia.~
DO ~GiveItemCreate("FHLTIG","FHLAND",0,0,0)
ActionOverride("FHLMIE1",DestroySelf())~
EXIT


BEGIN FHLMW

IF ~!PartyHasItem("FHLTIG") RandomNum(4,1)~ THEN BEGIN FHLNoMiet
SAY ~Welcome to the estate, travellers.~
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") RandomNum(4,2)~ THEN BEGIN FHLNoMiet2
SAY ~I do hope Miles doesn't lead Mietta astray. She's such a good girl.~
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") RandomNum(4,3)~ THEN BEGIN FHLNoMiet3
SAY ~It's been strange without Sebastian - certainly a great deal quieter!~
IF ~~ EXIT
END

IF ~!PartyHasItem("FHLTIG") RandomNum(4,4)~ THEN BEGIN FHLNoMiet4
SAY ~Xavier's been getting a little restless lately. I hope that he isn't getting ill again - he does so much for our family.~
IF ~~ EXIT
END

CHAIN IF ~PartyHasItem("FHLTIG") See("FHLAND")~ THEN FHLMW FHLKatMiet
~Is there anything I can help you with?~
== FHLANDJ
~We found Mietta, Katya - she got lost and I think she's ill.~
== FHLMW
~Oh, heavens! My poor darling - I wonder why she wandered off? Thank you so much, Andrei - I'll get her to Lealia at once.~
DO ~SetGlobal("FHLKatMiet","GLOBAL",1)
TakePartyItem("FHLTIG")
DestroyItem("FHLTIG")
AddExperienceParty(9000)~
== FHLSEBJ
~How sweet.~
== FHLANDJ
~Sebastian! You wouldn't just leave her, would you?~
== FHLSEBJ
~No, no, but she should learn how to look after herself.~
EXIT

BEGIN FHLW
IF ~RandomNum(4,1)~ THEN BEGIN FHLW1
SAY ~Goodness! Seeing outsiders here is quite something!~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLW2
SAY ~They say that Xavier's been ill again lately. Poor man - he's running himself into the ground.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLW3
SAY ~I swear, if that Miles is rude to me one more time I'm going to his father!~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLW4
SAY ~I do feel sorry for Brid and Turi, to have to put up with that Andrei. Thank heavens Sebastian took him off their hands!~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLWValygar","GLOBAL",0)
See("Valygar")
InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN FHLW FHLWValygar
~I hope you don't mind me saying, but I've never seen hair quite like yours before, sir.~
DO ~SetGlobal("FHLWValygar","GLOBAL",1)~
== VALYGARJ
~My father's was the same. You don't seem to get people of my colouring here.~
== FHLW
~No, we keep ourselves to ourselves most of the time. I was surprised to see people from outside here, actually!~
EXIT

BEGIN FHLW2

IF ~RandomNum(4,1)~ THEN BEGIN FHLW5
SAY ~Hmmm...what shall I cook tonight?~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLW6
SAY ~Archie's been getting underfoot all the time lately. I dread to think what he's going to be like when he's older. His mother should make him behave better.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLW6
SAY ~How good to see you! We scarcely ever get visitors, here.~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLW7
SAY ~Xavier's health is such a worry to us all, especially with all he has to put up with.~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLW2Mazzy","GLOBAL",0)
See("Mazzy")
InParty("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN FHLW2 FHLW2Mazzy
~How sweet! They've got a child in armour!~
DO ~SetGlobal("FHLW2Mazzy","GLOBAL",1)~
== MAZZYJ
~I think you'll find, ma'am, that if you were to speak with me you would find that I was nothing of the sort.~
== FHLW2
~Oh!...I do apologise, miss - I've only ever seen drawings of your folk, and they weren't very accurate, either.~
EXIT


BEGIN FHLW3
IF ~RandomNum(4,1)~ THEN BEGIN FHLW8
SAY ~Keep away, you! I know what you outsiders are like.~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLW9
SAY ~I can't believe Alexandra's all grown up! I remember when she was just a slip of a thing.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLW10
SAY ~I say, have you ever seen a troll? I've read so much about them.~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLW11
SAY ~Please leave me alone. You all look so...tall.~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLW3Haer","GLOBAL",0)
See("Haerdalis")
InParty("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN FHLW3 FHLW3 FHLW3Haer
~Whatever happened to you, sir? You've got scars all over you!~
DO ~SetGlobal("FHLW3Haer","GLOBAL",1)~
== HAERDAJ
~These are not scars, dear lady, but a mark of my rank. Perhaps not the prettiest of methods, but certainly permanent.~
EXIT

BEGIN FHLM1

IF ~RandomNum(4,1)~ THEN BEGIN FHLM1
SAY ~Good <DAYNIGHT> to you. I trust you're finding the estate to your liking.~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLM2
SAY ~I suppose this is all a lot grander than what you're used to.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLM3
SAY ~Have you people decided to stop hounding magic-users, yet? I hear they're burned all the time!~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLM4
SAY ~What...interesting clothes. I can't imagine what it must be like in your cities.~
IF ~~ EXIT
END



BEGIN FHLM2
IF ~RandomNum(4,1)~ THEN BEGIN FHLM5
SAY ~So what exactly is an 'ogre'? I've read all about them, but surely they're exaggerated.~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLM6
SAY ~What a wonderful <DAYNIGHT> it is, to be sure.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLM7
SAY ~Josefyne's such an obliging girl. A great help to her parents, that one.~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLM8
SAY ~Do be careful when you're travelling with Andrei. I hear he can be rather a trial.~
IF ~~ EXIT
END

BEGIN FHLM3
IF ~RandomNum(4,1)~ THEN BEGIN FHLM9
SAY ~I swear, Rosanna gets better and better at that fighting lark. She'll be besting Simeon at this rate!~
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN FHLM10
SAY ~I do love a nice bit of beef - but it's hard to come by, here, and then of course Siri turns into a cow, so it might get a bit awkward.~
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN FHLM11
SAY ~Xavier should come out and get some fresh air - it can't be good for him, holed up all the time.~
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN FHLM12
SAY ~I hope the rain comes soon this year. The harvest wasn't too good last autumn.~
IF ~~ EXIT
END

BEGIN FHLGIRL
IF ~RandomNum(6,1)~ THEN BEGIN FHLG1
SAY ~I wanna go outside! Now, now, now!~
IF ~~ EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN FHLG2
SAY ~Pbbt!~
IF ~~ EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN FHLG3
SAY ~I turn into something really cool!~
IF ~~ EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN FHLG4
SAY ~My mummy says when I grow up, I can be just like Rosanna!~
IF ~~ EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN FHLG5
SAY ~Edward's really nice. Maybe I'll marry him when I'm grown up!~
IF ~~ EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN FHLG6
SAY ~When's it gonna snow? I want snow!~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLGirlCernd","GLOBAL",0)
See("Cernd")
InParty("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN FHLGIRL FHLGirlCernd
~Ooo, do you turn into a bird, sir? You've got all those feathers in your hair...~
DO ~SetGlobal("FHLGirlCernd","GLOBAL",1)~
== CERNDJ
~No, child, I don't. But I do sometimes turn into a big wolf.~
== FHLGIRL
~A wolf? Scary! Wait, I don't think I know you - are you Robin's uncle's cousin?~
== CERNDJ
~Not at all. I'm from far away.~
== FHLGIRL
~New people? Eeek!~
EXIT

BEGIN FHLBOY
IF ~RandomNum(6,1)~ THEN BEGIN FHLB1
SAY ~You smell funny! Is that what the outside smells like?~
IF ~~ EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN FHLB2
SAY ~Eeeek! You look really scary!~
IF ~~ EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN FHLB3
SAY ~Uncle Lyel's the best. He brought me back a teddybear last time he came back!~
IF ~~ EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN FHLB4
SAY ~One day, I'm gonna be just like Uncle Andrei!~
IF ~~ EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN FHLB5
SAY ~I hope Mummy's made me cake for dinner...~
IF ~~ EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN FHLB6
SAY ~I love thunderstorms! I can't wait till there's another one!~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLBOYVic","GLOBAL",0)
See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN FHLBOY FHLBoyVic
~What's up with that lady's skin? It's weird!~
DO ~SetGlobal("FHLBOYVic","GLOBAL",1)~
== BVICONI
~Hold your tongue, chattering one, or I shall cut it out for you. Why must all the places we go be so insipid?~
== FHLBOY
~Heehee! She's funny!~
== BVICONI
~Ugh. Insufferable creature.~
EXIT

BEGIN FHLCHICK
IF ~Global("FHLChick","GLOBAL",0)~ THEN BEGIN FHLCHICK
SAY ~I'm really good at looking after the chickens, my mother says so! I suppose it might be because I transform into one of them.~
IF ~~ THEN DO ~SetGlobal("FHLChick","GLOBAL",1)~
EXIT
END

IF ~Global("FHLChick","GLOBAL",1)
!See("CHICKE")
RandomNum(3,1)~ THEN BEGIN FHLChick_1
SAY ~You smell funny! Is that what the outside smells like?~
IF ~~ EXIT
END

IF ~Global("FHLChick","GLOBAL",1)
!See("CHICKE")
RandomNum(3,2)~ THEN BEGIN FHLChick_2
SAY ~Eeek! You look scary!~
IF ~~ EXIT
END

IF ~Global("FHLChick","GLOBAL",1)
!See("CHICKE")
RandomNum(3,3)~ THEN BEGIN FHLChick_3
SAY ~Gosh, isn't it a lovely <DAYNIGHT>?~
IF ~~ EXIT
END

CHAIN IF ~Global("FHLAerChick","GLOBAL",0)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN FHLCHICK FHLChickAerie
~Hey, lady, you look sad. Would you like one of my chickens?~
DO ~SetGlobal("FHLAerChick","GLOBAL",1)~
== AERIEJ
~Oh...haha! No, thank you. Just s-seeing you enjoy yourself lifts my heart.~
EXIT

BEGIN FHLBRID

IF ~Global("FHLMetParents","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLBridNoXavier
SAY ~You should be along to Xavier and have a word with him. I hear he's very anxious to meet you.~
IF ~~ EXIT
END

IF ~Global("FHLMetParents","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLBridXavier
SAY ~Greetings to you! Are you on your way back outside, then?~
++ ~Yes, in a while. I was just looking around.~ + FHLBrid_look
++ ~Yes, and not a moment too soon.~ + FHLBrid_rude
++ ~I'm sorry for taking your son from you, Mrs. Luxley.~ + FHLBrid_sorry
END

IF ~~ THEN BEGIN FHLBrid_look
SAY ~Then make sure to drop in on the training ground, if you haven't already. Simeon's such a dear!~
IF ~~ EXIT
END

IF ~~ THEN BEGIN FHLBrid_sorry
SAY ~Mrs. Luxley? Call me Brid. No one bothers with those old-fashioned 'Mr' and 'Mrs' here, I'm sure you understand why.~
=
~As for Andrei...well. Take good care of him, and if he's at all, um, irritable, don't judge him too harshly. He's just a boy, after all.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN FHLBrid_rude
SAY ~Well, I'm sorry you don't think very highly of our estate.~
=
~Bring Andrei back soon, or I shall worry for him a great deal.~
IF ~~ EXIT
END

BEGIN FHLTURI

IF ~Global("FHLMetParents","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",1)~ THEN BEGIN FHLTuriXavier
SAY ~Good day! Is there anything I can do for you?~
++ ~I just wanted to say hello properly before we left.~ + FHLTuri_hello
++ ~Not really. I'm sorry for taking your son from you, though.~ + FHLTuri_sorry
++ ~No, I'll stop bothering you.~ + FHLTuri_bother
END

IF ~~ THEN BEGIN FHLTuri_hello
SAY ~Hello, then. I'm sorry about all that earlier - we can get a bit overwhelming, I'm sure.~
=
~Well, I'll let you get back to...whatever it is you do outside. It probably seems a lot more interesting than hanging around out here!~
IF ~~ EXIT
END

IF ~~ THEN BEGIN FHLTuri_sorry
SAY ~Don't apologise, there's no need. Andrei looks a lot better than he did before Sebastian took him outside, despite what Brid was saying. I'm glad he's enjoying himself!~
IF ~~ EXIT
END

IF ~~ THEN BEGIN FHLTuri_bother
SAY ~It's no bother at all. Good to see you again!~
IF ~~ EXIT
END

IF ~Global("FHLMetParents","GLOBAL",1)
Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLTuriNoXavier
SAY ~Haven't you gone to see Xavier yet? We didn't raise you to be a dawdler, Andrei.~
IF ~~ EXIT
END

BEGIN FHLNGRL
IF ~Global("FHLTurtle","GLOBAL",0)~ THEN BEGIN FHLNGRL_turtle
SAY ~Hello! You're from outside, aren't you? What's a turtle?~
++ ~It's a creature that lives in the sea, with a shell and flippers.~ + FHLNGRL_sea
++ ~I've never seen one, I'm afraid.~ + FHLNGRL_never
++ ~Why do you ask?~ + FHLNGRL_why
END

IF ~~ THEN BEGIN FHLNGRL_sea
SAY ~Oh. The sea! No wonder I can't walk around very well when I've transformed!~
IF ~~ THEN DO ~SetGlobal("FHLTurtle","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHLNGRL_never
SAY ~Oh, never mind, then.~
IF ~~ THEN DO ~SetGlobal("FHLTurtle","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHLNGRL_why
SAY ~Because I turn into one when I'm ill, and no one knows where they live.~
++ ~I've never seen one, I'm afraid.~ + FHLNGRL_never
++ ~It's a creature that lives in the sea, with a shell and flippers.~ + FHLNGRL_sea
END

IF ~Global("FHLTurtle","GLOBAL",1)
RandomNum(4,1)~ THEN BEGIN FHLNGRL_1
SAY ~When's Mummy going to get back from the farm?~
IF ~~ EXIT
END

IF ~Global("FHLTurtle","GLOBAL",1)
RandomNum(4,2)~ THEN BEGIN FHLNGRL_2
SAY ~Daddy says I can't go and play with Robin till I've finished my chores. It's not fair!~
IF ~~ EXIT
END

IF ~Global("FHLTurtle","GLOBAL",1)
See("FHLSEB")
Global("FHLFHLNSGRL","GLOBAL",0)
RandomNum(4,3)~ THEN BEGIN FHLNGRL_3
SAY ~When I grow up, I'm gonna be just like Uncle Sebastian!~
IF ~~ THEN EXTERN FHLSEBJ FHLNSGRL
END

IF ~Global("FHLTurtle","GLOBAL",1)
RandomNum(4,4)~ THEN BEGIN FHLNGRL_4
SAY ~So three times five is fifteen...~
IF ~~ EXIT
END

APPEND FHLSEBJ
IF ~~ THEN BEGIN FHLNSGRL
SAY ~Ah, Nari, I always said you'd go far.~
IF ~~ THEN DO ~SetGlobal("FHLFHLNSGRL","GLOBAL",1)~
EXIT
END
END

CHAIN IF ~Global("FHLMetParents","GLOBAL",0)
Global("FHLXavTalk","GLOBAL",0)
See("FHLSEB")
See("FHLAND")~ THEN FHLBRID FHLAParents
~...so she said that Cassie's dresses were *far* too big, measurements or no, and I-- Andrei? Andrei, you're back! Let me give you a hug!~
DO ~SetGlobal("FHLMetParents","GLOBAL",1)~
== FHLANDJ
~Ah - Mother, I can't breathe!~ [FHLAMW1]
== FHLTURI
~It's so good to see you, son. You've grown, haven't you?~
== FHLBRID
~Sebastian, he looks run ragged. You said you'd take care of him out there.~
== FHLANDJ
~I'm *fine*, Mother.~ [FHLAMW2]
== FHLSEBJ
~See? Now, we can't stay, we've got things to do.~
== FHLTURI
~Please excuse my wife's manners. It's just been a while since Andrei went off exploring, and you can imagine what a shock it might be! I'm Turi, and this is Andrei's mother, Brid.~
END
++ ~I'm pleased to meet you both.~ + FHLAParents_pleased
++ ~Sebastian's right - we need to be off.~ + FHLAParents_fine

CHAIN FHLBRID FHLAParents_pleased
~I'm glad to see people from outside have good manners!~
== FHLANDJ
~Mother, please. It's wonderful to see you, but I don't want to keep Xavier waiting.~
== FHLTURI
~Of course not. Go on up to the main house, and we'll see you soon.~
EXIT

CHAIN FHLBRID FHLAParents_fine
~Andrei, I hope you don't catch this <PRO_MANWOMAN>'s rudeness!~
== FHLANDJ
~Mother, please. It's wonderful to see you, but I don't want to keep Xavier waiting.~
== FHLTURI
~Of course not. Go on up to the main house, and we'll see you soon.~
EXIT

CHAIN IF ~Global("FHLMetParents","GLOBAL",0)
Global("FHLXavTalk","GLOBAL",1)~ THEN FHLBRID FHLAParents2
~...so she said that Cassie's dresses were *far* too big, measurements or no, and I-- Andrei? Andrei, you're back! Let me give you a hug!~
DO ~SetGlobal("FHLMetParents","GLOBAL",1)~
== FHLANDJ
~Ah - Mother, I can't breathe!~ [FHLAMW1]
== FHLTURI
~It's so good to see you, son. You've grown, haven't you?~
== FHLBRID
~Sebastian, he looks run ragged. You said you'd take care of him out there.~
== FHLANDJ
~I'm *fine*, Mother.~ [FHLAMW2]
== FHLBRID
~Come on, Andrei, I'll put the kettle on and we can have a chat about what you've been up to.~
== FHLSEBJ
~We'd love to, really, but there are pressing matters we must attend to outside.~
== FHLBRID
~Really? But we haven't seen either of you in so long, and Andrei's robes are looking a bit tatty--~
== FHLSEBJ
~I'm very sorry, my dear, but we should be getting on.~
== FHLBRID
~Oh. Well. You'll be coming back soon, of course?~
== FHLANDJ
~I hope so. I'll bring back something, I promise.~
== FHLTURI
~Don't mind your mother. You do whatever it is you want to do, and I'm sure you'll make all the right choices.~
== FHLANDJ
~I'll do my very best. See you soon!~
EXIT
