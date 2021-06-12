BEGIN FHLLUC

IF ~Global("FHLRosGreet","GLOBAL",0)~ THEN BEGIN FHLLucGreet
SAY ~Andrei--~ [FHLLUC2]
IF ~~ THEN EXTERN FHLROS FHLRosGreet
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandLuc1
SAY ~What do you think you're looking at?~ [FHLLUC3]
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandLuc2
SAY ~I can't believe you're travelling with Uncle Sebastian.~ [FHLLUC4]
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandLuc3
SAY ~It's weird, you being allowed in the estate. I don't think it's ever happened.~ [FHLLUC5]
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandLuc4
SAY ~Don't listen to what they say about Andrei. He's good really.~ [FHLLUC6]
IF ~~ EXIT
END
