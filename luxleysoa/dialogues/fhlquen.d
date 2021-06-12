BEGIN FHLQUEN

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,1)~ THEN BEGIN FHLQuen11
SAY ~I am here to strive for greater knowledge, to bask in the great inspiration that is the will of Oghma.~
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,2)~ THEN BEGIN FHLQuen12
SAY ~Praise be to the Lord of Knowledge!~
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,3)~ THEN BEGIN FHLQuen13
SAY ~The things that are studied in the Oghmanyte orders are far beyond most people's comprehension.  We shall teach them... in time.~
IF ~~ EXIT
END

IF ~!Global("FHLQuennellQuest","GLOBAL",1)
RandomNum(4,3)~ THEN BEGIN FHLQuen14
SAY ~We seek to spread knowledge and to curb falsehood and rumor... especially with regards to history.~
IF ~~ EXIT
END

IF ~Global("FHLQuennellQuest","GLOBAL",1)~ THEN BEGIN FHLQuen
SAY ~Oh, I say - careful with those boots, there. Adventurers can be so...careless, sometimes.~
++ ~I wanted to ask you about a book in your collection.~ + FHLQuen_normal
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY ~I'm a historian, like yourself. I'm compiling research for a book I'm writing.~ + FHLQuen_int1
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY ~There's a book you haven't returned yet, and one of the others told me to ask you about it.~ + FHLQuen_cha1
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY ~I know you're busy, Quennell, but I heard you were the best.~ + FHLQuen_sed1
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~You got books from here? They always say that I'm not prestigious enough.~ + FHLQuen_wis1
++ ~Umm...ahhh...~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_normal
SAY ~Really? What book, may I ask?~
++ ~One called Aegelfred's Chronicles.~ + FHLQuen_nor2
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY ~Aegelfred's Chronicles. I need it for a book I'm writing.~ + FHLQuen_nor2
++ ~Aegelfred's Chronicles. I knew an illustrious man like yourself would have it.~ + FHLQuen_nor2
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~Aegelfred's Chronicles. I'm sure you have it - you're in a higher league than I am!~ + FHLQuen_nor2
++ ~Er...um...~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_int1
SAY ~It's always wonderful so meet another person in the field! Tell me, where are you from? I assume you're new to Athkatla.~
++ ~Never mind that - I was more interested in a book you have.~ + FHLQuen_normal
++ ~I'm from the north, and came here to search for a book. The monks told me that you have Aegelfred's Chronicles.~ + FHLQuen_nor2
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~I hail from Candlekeep. I was a librarian there, but I wanted to write something of my own.~ + FHLQuen_int2
++ ~Er...well, you see...~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_cha1
SAY ~Really? Oh dear, oh dear, I do try to keep up with all those deadlines, but it can be so dreadfully hard!~
=
~Which book was it that you needed? I'm sure it's around here somewhere.~
++ ~Aegelfred's Chronicles. It was due last month.~ + FHLQuen_cha2
END

IF ~~ FHLQuen_sed1
SAY ~The best? Me? At what?~
++ ~At what you do, of course, sir.~ + FHLQuen_sed2
++ ~Everything...sir. You're legendary.~ + FHLQuen_sed2
++ ~Er...history, I--~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_wis1
SAY ~Are you a historian like myself, then? Those monks can be so awfully overprotective of their books!~
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~Goodness, no! I'm nothing in comparison to you.~ + FHLQuen_wis2
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY ~I was wondering if you had a book that I could use for a compendium I'm making.~ + FHLQuen_int1
++ ~I'm not of your calibre, sir, I'm just a collector. I heard you had Aegelfred's Chronicles.~ + FHLQuen_nor2
++ ~Um...yes?~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_nor2
SAY ~Why, that's one of the rarest books in my collection! What do you want to know about it?~
++ ~I was wondering if I could borrow it.~ + FHLQuen_borrow
++ ~Er...well, you see...~ EXTERN FHLSEBJ FHLQuen_seb2title
IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I don't want to impose upon you, but I'm interested in the subject matter.~ + FHLQuen_wis2
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY ~It would be vital to my research, and I was hoping to borrow it.~ + FHLQuen_int4
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~I was hoping you could educate me about its content, sir.~ + FHLQuen_sedtutor
++ ~I wish to buy it from you.~ + FHLQuen_buy
END

IF ~~ FHLQuen_int2
SAY ~Of course, of course.~
=
~Tell me about Candlekeep. I've heard so many wonderful stories about the collections they have there!~
++ ~I'm sorry, but I don't have the time. I'm interested in Aegelfred's Chronicles.~ + FHLQuen_nor2
++ ~I would love to, but first I need to ask about Aegelfred's Chronicles.~ + FHLQuen_int3
++ ~Perhaps later, over dinner?~ + FHLQuen_sedcandle
++ ~Ahh...they had...~ EXTERN FHLSEBJ FHLQuen_seb1
END

IF ~~ FHLQuen_cha2
SAY ~But that's part of my private collection!~
++ ~Records show that you withdrew it for a long-term loan.~ + FHLQuen_loan
++ ~I'm afraid you're mistaken, sir.~ + FHLQuen_senile
++ ~Then...uh...~ EXTERN FHLSEBJ FHLQuen_sebcha
END

IF ~~ FHLQuen_sed2
SAY ~Please, please, no need for formalities. Call me Quennell.~
IF ~Gender(Player1,MALE)~ THEN REPLY ~With pleasure...Quennell.~ + FHLQuen_sed3male
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~With pleasure...Quennell.~ + FHLQuen_sed3female
++ ~So, Quennell, I was looking for Aegelfred's Chronicles.~ + FHLQuen_nor2
END

IF ~~ FHLQuen_wis2
SAY ~Now, don't be silly. No need to grovel like that! I'm just a tired old man, who didn't even start collecting until I was much older than you are.~
=
~But what was it you wanted? Is there a book you'd like to look at?~
++ ~I had heard you found Aegelfred's Chronicles.~ + FHLQuen_wis4
++ ~Thank you, that does make me feel a little better. I was wondering if you had Aegelfred's Chronicles?~ + FHLQuen_wis3
++ ~Old? Sir, you're not old - you're venerable and stately.~ + FHLQuen_sed2
END

IF ~~ FHLQuen_int3
SAY ~Of course! What would you like to know about it?~
++ ~Could I borrow it? I'll see if I can order some books from Candlekeep for you in return.~ + FHLQuen_intsuccess1
END

IF ~~ FHLQuen_int4
SAY ~Hmm. You see, I try to make it a policy not to lend books out.~
=
~Tell me, what exactly is your field? I might have something a bit less rare that you could look at, ah...what's your name?~
++ ~My name's not important, but that book is. None other will do.~ + FHLQuen_int5
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY ~My name is <CHARNAME>, and I'm a genealogist. I'm looking up the Luxley family.~ + FHLQuen_genealogy
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~I'm <CHARNAME> Luxley, and I became a genealogist to find out more about my family.~ + FHLQuen_family
++ ~Well, I'm sure...um...~ EXTERN FHLSEBJ FHLQuen_intseb
END

IF ~~ FHLQuen_borrow
SAY ~Borrow it? Oh, I'm afraid that won't be possible at all.~
++ ~Why not?~ + FHLQuen_refuse
++ ~Come on, I really need it!~ + FHLQuen_refuse
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY ~Please, Quennell, from one historian to another!~ + FHLQuen_int4
++ ~Then can I buy it from you? It would be a handsome price.~ + FHLQuen_buy
END

IF ~~ FHLQuen_buy
SAY ~I'm afraid it's not for sale.~
IF ~PartyGoldGT(101)~ THEN REPLY ~Come on, I'll give you 100 gold.~ + FHLQuen_low
IF ~PartyGoldGT(251)~ THEN REPLY ~What about if I offered 250 gold?~ + FHLQuen_low
IF ~PartyGoldGT(501)~ THEN REPLY ~I'll give you 500 gold for it.~ + FHLQuen_low
IF ~PartyGoldGT(1001)~ THEN REPLY ~I bet it's for sale for 1000 gold, though.~ + FHLQuen_high
++ ~Just give me the damn book.~ + FHLQuen_rude
END

IF ~~ FHLQuen_sedtutor
SAY ~Oh, I'm afraid I've never been much of a teacher. I will have to decline.~
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I'm sure you could do absolutely anything once you set your mind to it, my dear.~ + FHLQuen_candlew
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~But that's such a shame...such an impressive man as yourself shouldn't be alone.~ + FHLQuen_candlew
IF ~Gender(Player1,MALE)~ THEN REPLY ~I'm sure you could do absolutely anything once you set your mind to it, my dear.~ + FHLQuen_sed3male
IF ~Gender(Player1,MALE)~ THEN REPLY ~But that's such a shame...such an impressive man as yourself shouldn't be alone.~ + FHLQuen_sed3male
END

IF ~~ FHLQuen_sedcandle
SAY ~Dinner? Are you implying that you-- well, are you?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~Are you surprised? You're amazing.~ + FHLQuen_candlem
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Are you surprised? You're amazing.~ + FHLQuen_candlew
++ ~Um...well, I just--~ EXTERN FHLSEBJ FHLQuen_sebsed
END

IF ~~ FHLQuen_sed3male
SAY ~Now, see here, young man, I don't like the tone of your voice, *or* what you're implying. I think I would prefer it if you left.~
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_candlem
SAY ~Excuse me? Get away, you filthy pervert!~
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sed3female
SAY ~I don't even know your name, my dear! Do me the honour of telling me.~
++ ~My name is <CHARNAME>, and it is a great pleasure to meet a man like yourself.~ + FHLQuen_sed4
++ ~My name is unimportant. I just need your help and I don't know what I'll do without it.~ + FHLQuen_sedhelp
END

IF ~~ FHLQuen_candlew
SAY ~Well, dear me, you are not so terrible yourself...that is to say, it's been so long since I've met a woman like yourself...~
=
~Excuse me, my dear, pardon my rudeness - I have not even asked your name!~
++ ~My name is <CHARNAME>, and it is a great pleasure to meet a man like yourself.~ + FHLQuen_sed4
++ ~My name is unimportant. I just need your help and I don't know what I'll do without it.~ + FHLQuen_sedhelp
END

IF ~~ FHLQuen_loan
SAY ~I'm sure it was my copy...I bought it at a bazaar!~
++ ~Please, sir. The records can't be wrong.~ + FHLQuen_chasuccess
++ ~The book, please?~ + FHLQuen_chasuccess
++ ~Perhaps you're a little confused, sir.~ + FHLQuen_senile
END

IF ~~ FHLQuen_senile
SAY ~Are you saying that I don't know what's in my own collection?~
++ ~That's exactly what I'm saying.~ + FHLQuen_rude
++ ~Of course not. I just meant that with such a large collection mistakes are to be expected.~ + FHLQuen_chaalmost
++ ~Umm...ah, well, no...~ EXTERN FHLSEBJ FHLQuen_sebcha
END

IF ~~ FHLQuen_chasuccess
SAY ~I suppose you must be right. Here - I hope there isn't a late fee for me to pay.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_chaalmost
SAY ~No, I must take it up with your superiors. I hope there hasn't been a misunderstanding.~
++ ~Just give me the damn book!~ + FHLQuen_rude
++ ~Perhaps my friend Sebastian, a priest of Oghma, could talk to you.~ EXTERN FHLSEBJ FHLQuen_sebhelpcha
END

IF ~~ FHLQuen_rude
SAY ~I won't stand for that kind of talk. Get out!~
IF ~~ THEN DO ~SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestFail","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_wis3
SAY ~Good, I'm glad. Now, young <PRO_MANWOMAN>, what was it you wanted?~
=
~Ah, of course. Aegelfred's Chronicles. Did you want to have a look at it?~
++ ~That would be wonderful!~ + FHLQuen_wislook
++ ~Actually, I was hoping to borrow it for a short time.~ + FHLQuen_wisborrow
END

IF ~~ FHLQuen_wis4
SAY ~It's wonderful to see a young person so passionate about history!~
=
~What did you want with the book? Would you like a look at it?~
++ ~That would be wonderful!~ + FHLQuen_wislook
++ ~Actually, I was hoping to borrow it for a short time.~ + FHLQuen_wisborrow
END

IF ~~ FHLQuen_intsuccess1
SAY ~Really? That would be wonderful! Here, let me write this down - there's a trilogy by a Matzican scholar that I *know* Candlekeep has...~
=
~There. Take the book for as long as you need, and if you need any gold for sending the books over don't hesitate to ask!~
++ ~Actually, that's not a bad idea.~ + FHLQuen_intextort
++ ~That won't be necessary, Quennell.~ + FHLQuen_nice
++ ~Not at all. In fact, have 100 gold as a token of my appreciation.~ + FHLQuen_vnice
END

IF ~~ FHLQuen_int5
SAY ~Of course your name is important, don't be ridiculous. Who are you?~
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY ~I'm <CHARNAME>, a genealogist. I'm researching an old family: the Luxleys.~ + FHLQuen_genealogy
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~My name is <CHARNAME> Luxley. I wanted to discover my roots.~ + FHLQuen_family
++ ~You see, I...er...~ EXTERN FHLSEBJ FHLQuen_intseb
END

IF ~~ FHLQuen_genealogy
SAY ~Really? What an interesting field - quite outside my realm of expertise. I prefer to focus on the wider events.~
IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY ~But those factors are intrinsic to genealogy!~ + FHLQuen_outsmart
++ ~Each to their own, of course. Now, about the book...~ + FHLQuen_intbook
END

IF ~~ FHLQuen_family
SAY ~Is that so? My, I thought you had all disappeared!~
=
~Far be it from me to stand in your way. Here, take the book and I hope you discover something of use.~
++ ~Thank you so much - here, have 100 gold pieces in return.~ + FHLQuen_vnice
++ ~Excellent. See you later, Quennell.~ + FHLQuen_bye
END

IF ~~ FHLQuen_refuse
SAY ~No, I can't give strangers such precious things simply because they ask for them!~
++ ~Then can I buy it from you?~ + FHLQuen_buy
++ ~Just give me the damn book!~ + FHLQuen_rude
END

IF ~~ FHLQuen_low
SAY ~My goodness, no. I said it wasn't for sale.~
IF ~PartyGoldGT(1001)~ THEN REPLY ~How about 1000 gold, then?~ + FHLQuen_high
++ ~Just give it to me, damn it!~ + FHLQuen_rude
END

IF ~~ FHLQuen_high
SAY ~It's a deal! I haven't seen that kind of money since my days in Icewind Dale! Here, take it, with my compliments.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~TakePartyGold(1000)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sed4
SAY ~<CHARNAME>...what a delightful woman you are! Is there anything I can get you?~
++ ~Aegelfred's Chronicles. It's so important that I get it, Quennell.~ + FHLQuen_sedsuccess
END

IF ~~ FHLQuen_sedhelp
SAY ~Of course, anything, my dear! What does your heart desire?~
++ ~Aegelfred's Chronicles. It's so important that I get it, Quennell.~ + FHLQuen_sedsuccess
END

IF ~~ FHLQuen_wislook
SAY ~Here we are. Look at that beautiful calligraphy - and it's barely faded!~
++ ~It's lovely. Please, Quennell, may I borrow it?~ + FHLQuen_wisborrow
END

IF ~~ FHLQuen_wisborrow
SAY ~I suppose so. You seem like a conscientious sort of person.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_intextort
SAY ~Two hundred gold should be sufficient. If it isn't, do tell me.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GivePartyGold(200)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_nice
SAY ~If you are sure. Thank you!~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_vnice
SAY ~That's very kind of you! Take care, and enjoy my book.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~TakePartyGold(100)
GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_outsmart
SAY ~My, how right you are. I must find a copy of Sable's guide to genealogy...and in the meantime, take Aegelfred's Chronicles. You deserve it more than I!~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_intbook
SAY ~Oh, yes. Go on, borrow it - I daresay you'd have more use of it than I would.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_bye
SAY ~Take care, and enjoy my book!~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END

IF ~~ FHLQuen_sedsuccess
SAY ~My dear, if I can help, then there is no way I could refuse.~
=
~Here, take it with my best wishes.~
IF ~~ THEN UNSOLVED_JOURNAL ~Genevieve d'Arcy and the cure for the Luxleys' curse

I have obtained Aegelfred's Chronicles from the historian Quennell. I now need to take it to Genevieve so it can be used for her research.~
DO ~GiveItem("FHLCHR",Player1)
SetGlobal("FHLQuennellQuest","GLOBAL",2)
SetGlobal("FHLQuennellQuestSucceed","GLOBAL",1)~
EXIT
END



