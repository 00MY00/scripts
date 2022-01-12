@echo off
taskkill /im iexplore.exe
chcp 65001
mode con cols=60 lines=30
title Verification integraliter
taskkill /im iexplore.exe
set back=%~dp0
title WiFi MDP Finder crée par Kuroakashiro
set back=%back:~0,-5%

:start
cls
echo  		    [40;33mcrée par [40;35mKuroakashiro
echo.[45;37m                                                            
echo.
echo			[40;35m=============================
echo 		^|         [40;33mWI_FI INF[40;35m         ^|
echo 		[40;35m=============================
echo.
echo.

echo 		     [40;32mBonjour [42;37m:[40;33m %USERNAME%[40;36m

echo 	list wifit ^| entrée le nom du reseau
echo 		     pour quiter entre [40;37m[ [40;31mexit [40;37m][40;32m
netsh wlan show profiles
echo.[40;33m

set SSID=0
set /p SSID=: 

if "%SSID%" == exit exit
if "%SSID%" == 0 (goto start) else (goto result)



:result
if exist temp-wi-fi.txt del temp-wi-fi.txt
if exist temp.txt del temp.txt
cls
netsh wlan show profiles "%SSID%" key=clear >> temp-wi-fi.txt

for /F  "skip=31 tokens=6,7*" %%i IN (temp-wi-fi.txt) Do @echo %%i >> temp.txt 

set /p MDP=< temp.txt
if %errorlevel% == 1 set MDP= le nom de reseau est inconue
if exist temp-wi-fi.txt del temp-wi-fi.txt
if exist temp.txt del temp.txt

cls
echo.[42;37m                                                            
echo.
echo			[40;35m=============================
echo 		^|         [40;33mWI_FI INF[40;35m         ^|
echo 		[40;35m=============================
echo.
echo.
echo		[40;32mNom reseau : [40;36m"%SSID%"[43;37m
echo 	le MDP et[43;37m [42;37m:[40;36m "%MDP%"
echo.
echo.[40;33m
pause
goto start


