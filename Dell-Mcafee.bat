@echo off

title Explorateur de reseau
set back=%~dp0
chcp 65001

prompt --^> 

:start
cls
echo.
echo.
echo le fichier [C:\Program Files\Common Files\McAfee\]
echo va etre Suprimer
echo.
echo.
pause

rem taskkill /F /IM mfefire.exe

rem taskkill /F /IM mfemms.exe

cls

del C:\Program Files\Common Files\McAfee\



pause


