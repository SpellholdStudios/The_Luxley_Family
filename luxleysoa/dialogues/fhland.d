BEGIN FHLAND

IF ~!Global("FHLJoined","GLOBAL",1) Global("FHLTalkLux","GLOBAL",1)~ THEN BEGIN FHLGreetSeenAnd
SAY ~Hello, again.~ [FHLAP1]
++ ~I've decided I'd like for you to travel with me.~ + FHLGreetSeenAnd_join
++ ~I was just dropping in. I'll see you later.~ + FHLGreetSeenAnd_leave
END

IF ~~ FHLGreetSeenAnd_join
SAY ~Really? Then we'd love to, I'm sure. Thank you, <CHARNAME>.~
IF ~~ THEN DO ~RealSetGlobalTimer("FHLAndDarkTime","GLOBAL",900)
SetGlobal("FHLJoined","GLOBAL",1)
SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",JoinParty())
JoinParty()~
EXIT
END

IF ~~ FHLGreetSeenAnd_leave
SAY ~It would be good to see you again, but don't hurry on our account - it's no problem.~
IF ~~ EXIT
END

IF ~~ FHLhello_justand
SAY ~Thank you, but I promised I wouldn't let myself be separated from Sebastian.~
++ ~You promised? To whom?~ + FHLhello_promise
++ ~What are you, a child?~ + FHLhello_child
++ ~All right then, you can both join me. Fall into line.~ EXTERN FHLSEB FHLhello_fall
++ ~I don't have room for both of you. Maybe you could join us later?~ EXTERN FHLSEB FHLhello_later
END

IF ~~ FHLhello_promise
SAY ~The head of our family. He likes to make sure we're safe when we're away.~
++ ~Whatever. You can both fall into line if you want.~ EXTERN FHLSEB FHLhello_fall
++ ~I wouldn't want you to break a promise. Both of you can join me.~ EXTERN FHLSEB FHLhello_welcome
++ ~If you can't look after yourself I don't want you travelling with me.~ + FHLhello_look
++ ~I don't have room for two, I'm afraid.~ EXTERN FHLSEB FHLhello_later
END

IF ~~ FHLhello_child
SAY ~No I am not! You have no right to pass judgement like that when you know nothing about us or our situation.~
++ ~I'm sorry. Join us and we can learn more about each other.~ EXTERN FHLSEB FHLhello_welcome
++ ~And you have no right to talk to me like that!~ + FHLhello_maybe
++ ~I don't plan to learn any more. I don't want you around if you're like this.~ + FHLhello_maybe
END

IF ~~ FHLGreeting3_leave
SAY ~Fair enough. We should be off, anyway.~
IF ~~ THEN DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
SetGlobal("FHLLuxMove","GLOBAL",1)~ EXIT
END

CHAIN FHLAND FHLGreeting3_xav
~Xavier? What an auspicious name! The head of our family's called that, too. Maybe it's a sign!~
== FHLSEB
~No. No, it isn't. Come on, Andrei, this <PRO_MANWOMAN> has a look in <PRO_HISHER> eye I don't like the look of!~
DO ~SetGlobal("FHLTalkLux","GLOBAL",1)
ActionOverride("FHLSEB",EscapeArea())
EscapeArea()~ EXIT

CHAIN IF ~NumTimesTalkedTo(0) Global("FHLMeetLux","GLOBAL",0)~ THEN FHLAND FHLGreeting
~I told you, we don't have anything to give you! Look, if I could just--~ [FHLAT1]
DO ~SetGlobal("FHLMeetLux","GLOBAL",1)~
== FHLCRIM1
~Ha, we'll see about that!~
DO ~Attack("FHLAND")~
== FHLAND
~No, this isn't-- You there! Please, help us! Can you do something?~
EXIT

CHAIN IF ~Global("FHLMeetLux","GLOBAL",1)~ THEN FHLAND FHLGreeting2
~Sebastian, are you all right? I was terrified that you were - well, never mind, you're not, so now we should head off, and...~ [FHLAT2]
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHL02")~
EXIT

CHAIN IF ~Global("FHLMeetLux","GLOBAL",2)~ THEN FHLAND FHLGreeting3
~I, um...how strange, my cat appears to have--~ [FHLAT3]
DO ~SetGlobal("FHLMeetLux","GLOBAL",3)~
== FHLSEB
~Andrei, I really doubt they're going to fall for that abysmal piece of acting. Let me deal with this.~ [FHLST2]
=
~I'll admit this looks a little odd, but believe me when I say that Andrei and I - and the whole of our family, actually - are the victims of a curse.~ [FHLST3]
== FHLAND
~Sebastian, we weren't supposed to tell anyone! Xavier said--~ [FHLAT4]
== FHLSEB
~Never mind about that. So, mysterious stranger, what is your name?~ [FHLST4]
END
++ ~What kind of curse is it, exactly?~ EXTERN FHLSEB FHLGreeting3_curse
++ ~I don't believe a word of this. What kind of curse would turn someone into an animal?~ EXTERN FHLSEB FHLGreeting3_curse2
IF ~!CharName("Xavier",Player1)~ THEN REPLY ~My name is <CHARNAME> of Candlekeep.~ EXTERN FHLSEB FHLGreeting3_name2
IF ~CharName("Xavier",Player1)~ THEN REPLY ~My name is Xavier of Candlekeep.~ + FHLGreeting3_xav
++ ~My name is none of your concern. I'll take my leave, now.~ + FHLGreeting3_leave

CHAIN FHLAND FHLhello_look
~I can look after myself fine! How dare you--~
== FHLSEB
~What my cousin means is that we'll both be worthy additions to your travels. So what do you say?~
END
++ ~You can join me if you want, as long as you're useful for the group.~ EXTERN FHLSEB FHLhello_welcome
++ ~Forget it. I have better things to do than cart around a couple of vagabonds.~ EXTERN FHLSEB FHLhello_no
++ ~I don't have enough room right now. Perhaps you can join me later?~ EXTERN FHLSEB FHLhello_later
++ ~Fall into line, then, we've got things to get on with.~ EXTERN FHLSEB FHLhello_fall

CHAIN FHLAND FHLhello_maybe
~Well, maybe if you--~
== FHLSEB
~What my dear cousin is trying to say is that we'd still love to travel with you. I'll keep him in check.~
== FHLAND
~Sebastian!~
== FHLSEB
~Ssh! I'm sorry about him, <CHARNAME>. So what do you say?~
END
++ ~You can join me if you want, as long as you're useful for the group.~ EXTERN FHLSEB FHLhello_welcome
++ ~Forget it. I have better things to do than cart around a couple of vagabonds.~ EXTERN FHLSEB FHLhello_no
++ ~I don't have enough room right now. Perhaps you can join me later?~ EXTERN FHLSEB FHLhello_later
++ ~Fall into line, then, we've got things to get on with.~ EXTERN FHLSEB FHLhello_fall
