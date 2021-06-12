@echo off
md music\fhlmu
copy LuxleySoA\song\*.ogg music\fhlmu
copy LuxleySoA\song\snd2acm.exe music\fhlmu
copy LuxleySoA\audio\oggdec.exe music\fhlmu
cd music\fhlmu
oggdec fhl*.ogg
del fhl*.ogg
del oggdec.exe
snd2acm.exe -wav fhlmu1.wav fhlmu1.acm
snd2acm.exe -wav fhlmu2.wav fhlmu2.acm
del fhl*.wav
del snd2acm.exe
cd..
cd..
cd override
oggdec.exe FHL*.ogg
del FHL*.ogg
del oggdec.exe
tisunpack FH4800.tiz
tisunpack FHL*.tiz
del FH4800.tiz
del FHL*.tiz
del tisunpack.exe
