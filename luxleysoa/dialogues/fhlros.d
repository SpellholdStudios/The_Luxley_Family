BEGIN FHLROS

IF ~Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",0)~ THEN BEGIN FHLRos1
SAY ~Hello there! I'm Rosanna. Sorry I didn't say so before - it was so exciting to see Andrei again!~ [FHLROS1]
++ ~That's all right. I'm <CHARNAME> - it's a pleasure to meet you.~ + FHLRos1_char
++ ~He's a nice boy, isn't he? I've been enjoying his company.~ + FHLRos1_nice
++ ~So tell me about the two of you. What was it like growing up together?~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Tell me about this Xavier person I've been hearing about.~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Tell me about Xavier. I'm not really sure what to make of him.~ + FHLRos1_xav
++ ~I can't imagine why. It's not like he's a particularly interesting person, is it?~ + FHLRos1_inter
++ ~I don't have time to talk to you at the moment. Maybe I can come back later.~ + FHLRos1_later
++ ~Leave me alone, brat. I don't want anything to do with you.~ + FHLRos1_leave
END

IF ~~ FHLRos1_char
SAY ~Hmm. <CHARNAME>. No, I haven't heard about you, but then I hear everything about outside from Lyel and he isn't exactly reliable sometimes!~
++ ~Do you not go outside the estate at all, then?~ + FHLRos1_go
++ ~How would you feel about coming along with me when I leave?~ + FHLRos1_go
++ ~I doubt that anyone in this backwater would have heard of me.~ + FHLRos1_back
++ ~I should be going. Perhaps I'll see you later.~ + FHLRos1_later
END

IF ~~ FHLRos1_nice
SAY ~Isn't he just? It must be nice to hang around with him all the time. I mean, I did when he was here, but it'd be amazing to be in the outside!~
++ ~Do you not go outside the estate at all, then?~ + FHLRos1_go
++ ~So what was it like growing up together?~ + FHLRos1_grow
++ ~I can't imagine why. He's not the most interesting of people.~ + FHLRos1_inter
++ ~If you want to leave, why don't you come travelling with me?~ + FHLRos1_go
++ ~I should be going. Perhaps I'll see you later.~ + FHLRos1_later
END

IF ~~ FHLRos1_grow
SAY ~Oh, it was all right. He won't mind me telling you that he was terrible when he was little - did he tell you about how he tipped a bucket of water over me? But we became better friends in the last couple of years. He's probably on his best behaviour outside. Xavier gave him a talking-to before he left.~
++ ~Tell me about Xavier. Sebastian and Andrei have been rather secretive about him.~ + FHLRos1_xav
++ ~Would you be interested in coming and travelling with me?~ + FHLRos1_go
++ ~I should be going. Perhaps I'll see you later.~ + FHLRos1_later
END

IF ~~ FHLRos1_xav
SAY ~I don't see him that often, so I couldn't tell you much. He only really talks to Samuel and Lyel. Oh, and Alexandra. He's pretty busy most of the time.~
=
~Hmm, I'm not sure he'd like us talking about him behind his back, though.~
++ ~His manner of rule doesn't sound particularly fair.~ + FHLRos1_rule
++ ~Quite right. Any ruler needs to have obedience in his subjects.~ + FHLRos1_rule
++ ~So you don't talk, even though you're in the same family? That seems a little odd.~ + FHLRos1_speak
END

IF ~~ FHLRos1_inter
SAY ~He is! Maybe he just hasn't been talking much to you - he's a bit shy with new people - and being outside would make that worse. But trust me, he's lovely.~
++ ~Hmmm, I suppose I'll have to take your word for it.~ + FHLRos1_word
++ ~He said this is the first time he's been outside. Have you ever been out of the estate?~ + FHLRos1_go
++ ~Would you be interested in coming and travelling with me?~ + FHLRos1_go
++ ~I should be going. Perhaps I'll see you later.~ + FHLRos1_later
END

IF ~~ FHLRos1_later
SAY ~All right! Maybe I'll see you later.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_leave
SAY ~Hmm!~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1) SetGlobal("FHLRosRude","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_go
SAY ~Oh, no. Xavier doesn't really like girls going out. I don't know why, but even Alexandra doesn't go out. I'd like to be able to go out just to see what it's like, but I suppose it's not going to happen anytime soon.~
++ ~So do the men get to go out if they want?~ + FHLRos1_men
++ ~That's absurd. No one can go outside unless Xavier says so?~ + FHLRos1_men
++ ~I suppose he's worried that people will find out about the curse.~ + FHLRos1_worry
++ ~He sounds a terrible person, restricting your movement like that.~ + FHLRos1_terrible
END

IF ~~ FHLRos1_back
SAY ~I suppose it might seem a bit little after being outside. I can't imagine what the outside's like - it must be amazing.~
++ ~Do you not go outside the estate at all, then?~ + FHLRos1_go
++ ~No, it's because it's boring here.~ + FHLRos1_terrible
++ ~If you want to see the outside, why don't you come travelling with me?~ + FHLRos1_go
++ ~I should be going. Perhaps I'll see you later.~ + FHLRos1_later
END

IF ~~ FHLRos1_rule
SAY ~He's not really a ruler. It's hard to explain if you're not a Luxley, but it wasn't his doing that made him head of the family and he does so much for us and doesn't ask for anything back.~
++ ~It's nice that you're all so helpful to him - he should appreciate it.~ + FHLRos1_help
++ ~He sounds an altruistic type.~ + FHLRos1_altru
++ ~Yes, it seems a good scheme he has going.~ + FHLRos1_terrible
++ ~I can't believe you're all so stupid that you'd go along with this.~ + FHLRos1_stupid
END

IF ~~ FHLRos1_speak
SAY ~Not really, I'm sure there are plenty of people in your family who you don't know. Besides, it wouldn't be right to just go to the main house and have a chat with him - he's busy a lot of the time, and doesn't ask for anything back.~
++ ~It's nice that you're all so helpful to him - he should appreciate it.~ + FHLRos1_help
++ ~He sounds an altruistic type.~ + FHLRos1_altru
++ ~Yes, it seems a good scheme he has going.~ + FHLRos1_terrible
++ ~I can't believe you're all so stupid that you'd go along with this.~ + FHLRos1_stupid
END

IF ~~ FHLRos1_word
SAY ~No, trust me, he is! But I doubt I can convince you about it.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_men
SAY ~No, it's only really Lyel who gets to come and go. Everyone was surprised when Sebastian was away for so long, but then he's got Xavier wrapped round his little finger.~
=
~Though I don't think anyone could manipulate Xavier and get away with it. He's so clever...and he does so much for us all, and doesn't ask for anything back.~
++ ~It's nice that you're all so helpful to him - he should appreciate it.~ + FHLRos1_help
++ ~He sounds an altruistic type.~ + FHLRos1_altru
++ ~Yes, it seems a good scheme he has going.~ + FHLRos1_terrible
++ ~I can't believe you're all so stupid that you'd go along with this.~ + FHLRos1_stupid
END

IF ~~ FHLRos1_worry
SAY ~Yes, that's why my ancestors built the shield, because it's too dangerous for us to be outside. The head of the family puts a lot of himself into it - Xavier does so much and he doesn't ask for anything back.~
++ ~It's nice that you're all so helpful to him - he should appreciate it.~ + FHLRos1_help
++ ~He sounds an altruistic type.~ + FHLRos1_altru
++ ~Yes, it seems a good scheme he has going.~ + FHLRos1_terrible
++ ~I can't believe you're all so stupid that you'd go along with this.~ + FHLRos1_stupid
END

IF ~~ FHLRos1_help
SAY ~Well, it wouldn't be fair if we weren't, would it? Anyway, you should be getting along - I'm holding you up.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~
EXIT
END

IF ~~ FHLRos1_terrible
SAY ~(sigh) Maybe it's because you're not from here. I'm sorry, I must be telling it wrongly for you to think that. I shouldn't talk any more for now - I'll end up making you hate us by accident.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_altru
SAY ~Altruistic? Yes, he is. I don't know exactly what it is he does but he puts a lot of himself into that shield so we can be protected. But you should be getting along - I'm holding you up.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLRos1_stupid
SAY ~We're not stupid! We're just grateful because of all Xavier does for us!~
=
~(sigh) I'm sorry for shouting - it must be because you're not from here. I must be telling it wrongly for you to think that.~
IF ~~ THEN DO ~SetGlobal("FHLRosTalk","GLOBAL",1)~ EXIT
END

IF ~Global("FHLRosRude","GLOBAL",0) Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",1) Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLRos2
SAY ~Hello again! Is there anything you'd like to ask me about?~ [FHLROS4]
++ ~Tell me about you and Andrei. What was it like growing up together?~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Tell me about this Xavier person I've been hearing about.~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Tell me about Xavier. I'm not really sure what to make of him.~ + FHLRos1_xav
++ ~I don't have time to talk at the moment. Maybe I can come back later.~ + FHLRos1_later
++ ~Leave me alone, brat. I don't want anything to do with you.~ + FHLRos1_leave
END

IF ~Global("FHLRosRude","GLOBAL",1) Global("FHLRosGreet","GLOBAL",1) Global("FHLRosTalk","GLOBAL",1) Global("FHLXavTalk","GLOBAL",0)~ THEN BEGIN FHLRos3
SAY ~Hello again. Are you feeling in a better mood now?~ [FHLROS6]
++ ~I am. Sorry for being abrupt with you earlier.~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos3_sorry
++ ~Tell me about you and Andrei. What was it like growing up together?~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Tell me about this Xavier person I've been hearing about.~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Tell me about Xavier. I'm not really sure what to make of him.~ + FHLRos1_xav
++ ~I don't have time to talk at the moment. Maybe later.~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_later
++ ~No, I just wanted to see what you were doing. Still hanging around, I see.~ + FHLRos1_leave
END

IF ~~ FHLRos3_sorry
SAY ~Oh, that's all right. I do things like that when I'm angry. Like there was this one time when Lucas was annoying me so I, er, ended up knocking him out!~
++ ~Tell me about you and Andrei. What was it like growing up together?~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_grow
IF ~Global("FHLXavTalk","GLOBAL",0)~ THEN REPLY ~Tell me about this Xavier person I've been hearing about.~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_xav
IF ~Global("FHLXavTalk","GLOBAL",1)~ THEN REPLY ~Tell me about Xavier. I'm not really sure what to make of him.~ + FHLRos1_xav
++ ~I don't have time to talk at the moment: I just wanted to apologise.~ DO ~SetGlobal("FHLRosRude","GLOBAL",0)~ + FHLRos1_later
END

CHAIN IF ~Global("FHLRosGreet","GLOBAL",0)
See("FHLAND")
See("FHLSEB")
~ THEN FHLROS FHLRosGreet
~ANDREI! I should hit you for staying away so long! We missed you SO MUCH!~ [FHLROS2]
DO ~SetGlobal("FHLRosGreet","GLOBAL",1)~
== FHLLUC
~Yeah, I was missing the sparring.~ [FHLLUC1]
== FHLROS
~Stupid Lucas! Don't pretend you didn't miss him. Besides, Simeon's been worrying over you all the time so he takes it out on us!~ [FHLROS3]
=
~Apart from that it's been lovely - except that you're not here, of course. Lealia's offered to show me how to make some healing potions!~
== FHLANDJ
~So she doesn't have to bother healing Lucas when you beat him up...?~
== FHLLUC
~She doesn't! It's just 'cause she's a girl so I can't fight back properly.~
== FHLSEBJ
~Charming as this is, we should get this visit over with.~
== FHLLUC
~Oh, yeah, of course. Well, have fun with Uncle Sebastian, Andrei.~
EXIT
