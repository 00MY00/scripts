@echo off
taskkill /im iexplore.exe
color e
set b=%~dp0
mode con cols=70 lines=20
chcp 65001
title [ USB-tootl ]
:goto start
cls
echo.[40;36m
echo ██╗   ██╗███████╗██████╗    ████████╗ ██████╗  ██████╗ ██╗     
echo ██║   ██║██╔════╝██╔══██╗   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██║   ██║███████╗██████╔╝█████╗██║   ██║   ██║██║   ██║██║     
echo ██║   ██║╚════██║██╔══██╗╚════╝██║   ██║   ██║██║   ██║██║     
echo ╚██████╔╝███████║██████╔╝      ██║   ╚██████╔╝╚██████╔╝███████╗
echo  ╚═════╝ ╚══════╝╚═════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.[40;33m
echo.

set /p user= entre la lettre du [40;35mlecteur [40;33ma selectionner- 
cls

CHDIR %user%:
echo.
echo taper la lettre [ R ]


if %errorlevel% == 0 goto ok
if %errorlevel% == 1 echo une Erreur est survenu & echo. & echo type le lecteur [ %user% ] existe pas 
goto start


:ok
cd %back%
xcopy %back%USB-tool.bat /h /y %user%:


start %user%:\USB-tool.bat

exit


