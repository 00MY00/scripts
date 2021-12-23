@echo off

mode con cols=50 lines=20
title = [ 2502,3 ]
chcp 65001 
set back=%~dp0
set /a cont=0
set erreur1=ok
set erreur2=ok
:start
cls

echo.[40;33m
echo =================================================
echo.
echo             [40;33mreparation [40;31merreur [40;35m250[40;37m,[40;35m2[40;37m,[40;35m3[40;33m
echo.
echo =================================================
echo.
echo.[40;36m
echo [ [42;37mok [40;36m] pour continuer
echo.
echo.
set user = 0

set /p user=

if %user% == ok (goto next) else (goto start)






:next
set /a cont=1
cls
echo.[40;33m
echo =================================================
echo.
echo             [40;35mreparation erreur 250,2,3
echo              test de reparation N :[40;32m%cont%[40;33m
echo.
echo =================================================
echo.
echo.[40;36m

echo Scan Windows laisser scaner
echo.
"C:\program files\windows defender\mpcmdrun.exe" -scan -scantype 2
timeout /t 10

msiexec /unreg

msiexec /regserver


:netoyage
set /a cont=2
cd %USERPROFILE%\Downloads
start https://www.ccleaner.com/fr-fr/ccleaner/download/standard
start https://fr.malwarebytes.com/mwb-download/thankyou/

cls
echo.[40;33m
echo =================================================
echo.[40;35m
echo             reparation erreur 250,2,3
echo              test de reparation N :%cont%
echo   verification Erreur [%erreur1%], [%erreur2%][40;33m
echo.
echo =================================================
echo.
echo.[40;36m

if not exist MBSetup*.exe goto netoyage
if not exist ccsetup*.exe goto netoyage

dir MBSetup*.exe >> log-instal-malwarmyte.txt
dir ccsetup*.exe >> log-instal-ccleaner.txt


for /F  "skip=4 tokens=4,5*" %%i IN (log-instal-malwarmyte.txt) Do @echo %%i >> t.txt

set /p malwarebytes=< t.txt
if %errorlevel% == 1 set erreur1 = malwarebytes n'est pas trouvez 
del t.txt
del log-instal-malwarmyte.txt

for /F  "skip=4 tokens=4,5*" %%i IN (log-instal-ccleaner.txt) Do @echo %%i >> t.txt

set /p ccleaner=< t.txt
if %errorlevel% == 1 set erreur2 = ccleaner n'est pas trouvez 
del t.txt
del log-instal-ccleaner.txt

cd %back%


start %ccleaner%
start %malwarebytes%
start https://kb.foxitsoftware.com/hc/en-us/articles/360040660391-Fix-Error-2502-and-2503-while-installing-or-uninstalling


:info
mode con cols=60 lines=20
cls
echo.[40;33m
echo ====================================================
echo.[40;35m
echo             reparation erreur 250,2,3
echo              test de reparation N :%cont%
echo   verification Erreur [%erreur1%], [%erreur2%][40;33m
echo.
echo ====================================================
echo.[40;36m
echo.

echo regardez la figure 5 l'image consernent ccleaner et malwarebytes
echo verifier la configuration et lancer les netoyage
echo.
echo une fois terminee taper 0 ou redemarrer le pc
echo.

set /P user=
if %user% == 0 (echo redemarage & timeout /t 5 & cls & shutdown /r /p /f) else (echo Erreur est survenu entre 0 pour terminee et redemarree & goto info)

exit








