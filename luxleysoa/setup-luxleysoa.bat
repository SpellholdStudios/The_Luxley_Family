@echo off
echo The setup program is updating itself. Please wait...
Setup-LuxleySoA.exe --update-all > nul
cls
echo "Version 1" | pause > nul
Setup-LuxleySoA.exe
