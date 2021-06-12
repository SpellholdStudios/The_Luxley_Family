BEGIN FHLLUC

IF ~Global("FHLRosGreet","GLOBAL",0)~ THEN BEGIN FHLLucGreet
SAY @0
IF ~~ THEN EXTERN FHLROS FHLRosGreet
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,1)~ THEN BEGIN FHLRandLuc1
SAY @1
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,2)~ THEN BEGIN FHLRandLuc2
SAY @2
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,3)~ THEN BEGIN FHLRandLuc3
SAY @3
IF ~~ EXIT
END

IF ~Global("FHLRosGreet","GLOBAL",1) RandomNum(4,4)~ THEN BEGIN FHLRandLuc4
SAY @4
IF ~~ EXIT
END
