@echo off
color e
set b=%~dp0
title USB-tootl
:goto start
cls
echo.
echo.

set /p user= entre la lettre du lecteur selectionner- 
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


