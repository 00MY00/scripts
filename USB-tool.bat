@echo off
del ok.ok
cls
color a
title personalisation USB
set b=back=%~dp0



set okk=ok
set back=%~dp0
del t.txt
del ttime.bat
cls


@echo set %b% >> ttime.bat
@echo if %%back:~0,1%% == C @echo ok ^>^> %okk%.%okk% >> ttime.bat
@echo exit >> ttime.bat

timeout /t 1
start %back%ttime.bat
timeout /t 1
del ttime.bat

cls
if exist "%back%ok.ok" (del "%back%ok.ok" & cls & echo. & echo une foi que je suis dans le peripherique lancer moi & echo. & pause & exit) else (goto start)


:start
del ttime.bat
cls
echo.
echo.
echo lecteur celectioner [ %back:~0,1% ]
echo.
echo.
echo [ 1 ] pour commancer 

set /p user=-
if %user% == 1 (goto next) else (goto start)

:next
cls
echo.
echo nous alon commancer 
echo.
echo 1- il te fau une image de tip (.ico)
echo ajoute la dans la cle USB
echo.
pause


:chercheICO
del ico.txt
del for1.txt
cls
echo.
echo.
echo recherche en coure

dir *.ico /s >> ico.txt


FOR /F "skip=4 tokens=4,5" %%i IN (ico.txt) DO @echo %%i >> for1.txt 
del ico.txt

set /p ico=<for1.txt
del for1.txt
set ico=%ico%
if %errorlevel% == 1 echo erreur & pause & goto chercheICO
cls
echo.
echo.
echo terminer fichier trouver
echo.
echo [ %ico% ]
echo.
echo.
echo continuer ?
echo [ 1 = oui ] [ 2 = non ]
echo.
set /p user=- 
if %user% == 1 (goto creation)
if %user% == 2 (exit) else (echo erreur & pause & exit)



:creation
cls
set /p non-de-la-clee= entre le non de cle USB 
set a=%ico% 
cls
echo le non de l'image "ci c'est just entre rien"

set /p ico=%ico%
cls
echo.
if %ico% == a (echo c'est parti) else (echo a tu a changer le non de l'image)

del Autorun.inf

@echo [Autorun] >> Autorun.inf
@echo icon = %ico% >> Autorun.inf
@echo label = %non-de-la-clee% >> Autorun.inf

attrib +h %ico%
attrib +h Autorun.inf

del USB-tool.bat
cls
echo.
echo.
echo Terminer rebrancher la clee USB pour voire
echo.
echo cree par LAST HELP

pause
