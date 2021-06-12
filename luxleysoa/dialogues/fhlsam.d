BEGIN FHLSAM

IF ~Global("FHLXavTalk","GLOBAL",1) Global("FHLSamTalk","GLOBAL",0)~ THEN BEGIN FHLSAM1
SAY ~Hello. You're the one Xavier's been talking about so much.~ [FHLSAM1]
IF ~Global("FHLSebCatch","GLOBAL",2)~ THEN REPLY ~You could have said something back then. I didn't mean for Sebastian to have to go and talk to him.~ + FHLSAM1_sebcatch
++ ~What is it that you do, here? Just laze around?~ + FHLSAM1_laze
++ ~What does Xavier need two guards for, if you've only got your family here?~ + FHLSAM1_guards
++ ~Tell me what it's like being the brother of the head of the family.~ + FHLSAM1_brother
++ ~He's got a good thing going here, with you waiting on him hand and foot.~ + FHLSAM1_thing
++ ~I must compliment you on your coat, by the way.~ + FHLSAM1_coat
++ ~I didn't need anything, thank you.~ + FHLSAM1_leave
END

IF ~Global("FHLSamTalk","GLOBAL",1)~ THEN BEGIN FHLSAM2
SAY ~Hello again.~ [FHLSAM2]
IF ~Global("FHLSebCatch","GLOBAL",2)~ THEN REPLY ~You could have said something back then. I didn't mean for Sebastian to have to go and talk to him.~ + FHLSAM1_sebcatch
++ ~What is it you do, here? Just laze around?~ + FHLSAM1_laze
++ ~Why does Xavier need two guards, if you've only got family here?~ + FHLSAM1_guards
++ ~Tell me what it's like being the brother of the head of the family.~ + FHLSAM1_brother
++ ~He's got a good thing going here, with you waiting on him hand and foot.~ + FHLSAM1_thing
++ ~I didn't need anything, thank you.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_sebcatch
SAY ~You were very rude to Xavier. You should have expected that he would want to speak to Sebastian, anyway: they're very good friends.~ [FHLSAM3]
++ ~Even so, there was no need for him to get so angry.~ + FHLSAM1_angry
++ ~So what's it like being Xavier's brother? Do you get perks too?~ + FHLSAM1_brother2
++ ~How dare you speak to me like that? I don't have to kowtow to Xavier.~ + FHLSAM1_dare
END

IF ~~ FHLSAM1_laze
SAY ~I do everything for Xavier. He needs Alexandra and me.~ [FHLSAM4]
++ ~What do you mean, everything? I thought Lyel did errands outside.~ + FHLSAM1_lyel
++ ~I don't see why he's so great if he needs you to do everything for him.~ + FHLSAM1_great
++ ~He's very lucky to have such devoted relatives to care for him.~ + FHLSAM1_devoted
END

IF ~~ FHLSAM1_guards
SAY ~Alexandra and I do everything for him.~ [FHLSAM5]
++ ~What do you mean, everything? I thought Lyel did errands outside.~ + FHLSAM1_lyel
++ ~I don't see why Xavier's so great if he needs you to do everything for him.~ + FHLSAM1_great
++ ~Xavier's very lucky to have such devoted relatives.~ + FHLSAM1_devoted
END

IF ~~ FHLSAM1_brother
SAY ~I'm very lucky to be in this position. It's an honour to be so closely related to the head of the family.~ [FHLSAM6]
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~It doesn't seem very fair on all the others, though.~ + FHLSAM1_fairothers
++ ~Well, I have other things to do. I should leave you in peace.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_coat
SAY ~Thank you. Lyel bought it for me from outside.~ [FHLSAM7]
++ ~So what is it you do, here? Just laze around?~ + FHLSAM1_laze
++ ~What does Xavier need two guards for, if you've only got family here?~ + FHLSAM1_guards
++ ~Tell me what it's like being the brother of the head of the family.~ + FHLSAM1_brother
++ ~He's got a good thing going here, with you waiting on him hand and foot.~ + FHLSAM1_thing
++ ~Well, I should be off. I have things to do.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_thing
SAY ~I don't understand what you mean. This is the way it's always been.~ [FHLSAM8]
++ ~Never mind, I doubt you'd understand if I tried to explain.~ + FHLSAM1_leave
++ ~Don't you get it? You can have a life outside of Xavier.~ + FHLSAM1_outside
++ ~What does he need two guards for, anyway? No one's going to attack you.~ + FHLSAM1_guards
++ ~Never mind. I'll leave you in peace.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_leave
SAY ~All right.~
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_angry
SAY ~It isn't a matter of 'need'. You shouldn't have spoken to him that way. Excuse me.~
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_brother2
SAY ~I don't know what you mean about perks, but it's a great honour to be in this position.~ [FHLSAM9]
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~It doesn't seem very fair on all the others, though.~ + FHLSAM1_fairothers
++ ~Well, I have other things to do. I should leave you in peace.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_dare
SAY ~Don't raise your voice like that in here. Xavier will be upset.~ [FHLSAM10]
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_lyel
SAY ~Lyel does a great deal, yes. But Alexandra and I are here all the time.~ [FHLSAM11]
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~It doesn't seem very fair for you to be waiting on him all the time.~ + FHLSAM1_fair
++ ~Well, I have other things to do. I should leave you in peace.~ + FHLSAM1_leave
END

IF ~~ FHLSAM1_great
SAY ~You're not from here, so you probably wouldn't. That's to be expected.~
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~Well, I have things to do. I should leave you in peace.~ + FHLSAM1_leave
++ ~It doesn't seem fair for all of you to be waiting on him, though.~ + FHLSAM1_fair
END

IF ~~ FHLSAM1_devoted
SAY ~It's me who is lucky.~
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~Well, I have things to do. I should leave you in peace.~ + FHLSAM1_leave
++ ~It doesn't seem fair for all of you to be waiting on him, though.~ + FHLSAM1_fair
END

IF ~~ FHLSAM1_outside
SAY ~No, that's not-- I'm sorry, that's not something I-- Excuse me.~ [FHLSAM12]
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END

IF ~~ FHLSAM1_fairothers
SAY ~I understand how lucky I am to be Xavier's brother. You don't have to tell me.~
++ ~He's really got you under his thumb, hasn't he?~ + FHLSAM1_outside
++ ~Well, I have things to do. I should leave you in peace.~ + FHLSAM1_leave
++ ~It doesn't seem right that all of you should be waiting on him, though.~ + FHLSAM1_fair
END

IF ~~ FHLSAM1_fair
SAY ~It's not fair that Xavier should bear the curse, but he does. It's the least we can do.~
IF ~~ THEN DO ~SetGlobal("FHLSamTalk","GLOBAL",1)~ EXIT
END
