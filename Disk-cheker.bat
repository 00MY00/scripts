@echo off


wmic diskdrive get Status
if %errorlevel% == 0 (set status=[ OK ]) else (set status=[ NO ])







title Disk Cheker
set back=%~dp0
:start
del /Q %USERPROFILE%\Documents\ping
rem verification d'erreur 
set /a echeque=0
set droi-admine-demandee=0

cls
color a
echo  Ouvert dans [ %back% ] Status du disque C: %status%
echo.
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|                Disck  Cheker               ^|
echo ^|                                            ^|
echo ^|============================================^|
echo.
echo.
echo [ %USERNAME% ] tapez ( help ) pour plus d'info
echo.

set user=0
set /P user=^|:- 
 

rem redirection goto pour les commande entrée
:no-time
if %user% == part goto Partitions
if %user% == inf goto DiskInformation
if %user% == inf-d goto DiskInformationDetailler
if %user% == nam goto Name
if %user% == cap goto Capabilities
if %user% == admin goto admin
if %user% == tdsp goto taille-du-secteur-physique
if %user% == cluster goto cluster
if %user% == rep-cl goto reparer-cluster
if %user% == bte goto iexpress
if %user% == ping goto ping


if %user% == exit exit
if %user% == 0 goto erreur-user-vide
if %user% == help (goto help) else (goto erreur-commande)
rem fin if

rem HELP

:help
set help=1
color 6
cls
echo.
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           Disck  Cheker HELP               ^|
echo ^|                                            ^|
echo ^|============================================^|
echo.
echo.

echo [ admin   ] pour pouvoire entree libriment des commandes 
echo [ exit    ] pour fermer le programe
echo [ part    ] vous indique le nombre de partition sur le disk 
echo [ inf     ] vous afiche des information du disk
echo [ inf-d   ] vous afiche des information du disk detailler
echo [ nam     ] vous afiche le nom du lecteur selectionee
echo [ cap     ] vous afiche la capasiter utiliser du lecteur !a verif!
echo [ tdsp    ] vous indique toutes les information d'un lecteur 
echo [ cluster ] pour pluse d'information sur les cluster "disque stoquage"
echo [ rep-cl  ] repare les cluster du disque selectioner
echo [ bte     ] ouvre iexpress pour convertire un BAT en EXE besoin des droi Administrateur
echo [ ping    ] teste la conexion avec un ping sur google.ch en temps reelle
echo.
echo.
echo.
echo.
echo.
echo.
set user=0
echo entree votre commande !
set /p user=^|:- 
goto no-time




rem information conexion

:ping

cd %USERPROFILE%\Documents\
mkdir ping

cd %USERPROFILE%\Documents\ping

if exist ping.txt del ping.txt del ttt.txt del tttt.txt
ping -n 1 www.google.ch >> ping.txt

for /f "skip=1 tokens=6" %%i IN (ping.txt) DO (
@echo %%i >> ttt.txt
)

for /f "skip=4 eol=," %%j IN (ttt.txt) DO (
@echo %%j >> tttt.txt
)
cls
set /p ms= < tttt.txt
set /a tim=%tim%+1
echo.
echo.
echo.
echo.
echo.
echo        Pour fermer fermer la page 
echo.
echo.
echo     [ %ms% ]  test ping Numero [ %tim% ]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
del ping.txt del ttt.txt del tttt.txt
goto ping
















rem plus d'information par raport au cluster de disque dure
:cluster
cls
title Le petit curieu
color 6
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|  Disck Cheker HELP   c'est quoi un Closter ^|
echo ^|                                            ^|
echo ^|============================================^|
echo.
echo.

echo c'est quoi un cluster dans un disque dure ^? 
echo il fau imaginer que le disque dure est composer 
echo de plusieur celules lorseque l'on cree un fichier 
echo seluis ci utilisera au minimum une de ces celules 
echo qui on une taille definit, ci le fichier et plus 
echo grand il sera sacader en plusieur celules qui ne 
echo sont pas forcement a la suite. pour se faire il 
echo existe une sorte d'historique qui les repertories 
echo nomer "File Allocation Table"
echo pour plus " https://www.lemagit.fr/definition/Cluster "
echo.
echo.
pause
goto start








rem fin help



rem check disk

:Partitions
set commande-en-coure=Partitions
cls
color 
echo.
echo.
echo ^|===========================^|
echo ^|  [ %commande-en-coure% ]         ^|
echo ^|===========================^|
echo.
echo vous avez
echo.
wmic diskdrive get Partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.
pause
goto start







:DiskInformation
set commande-en-coure=DiskInformation
cls
color 
echo.
echo.
echo ^|===========================^|
echo ^|         [ %commande-en-coure% ]       ^|
echo ^|===========================^|
echo.
echo.
wmic diskdrive get model,serialNumber,size,mediaType
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)
echo.
echo.
echo.
pause
goto start





:DiskInformationDetailler
set commande-en-coure=DiskInformationDetailler
cls
color 
echo.
echo.
echo ^|=================================^|
echo ^|[ %commande-en-coure% ]^|
echo ^|=================================^|
echo.
echo.
wmic diskdrive get model,index,firmwareRevision,status,interfaceType,totalHeads,totalTracks,totalCylinders,totalSectors,partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)
echo.
echo.
echo.
pause
goto start











:Name
set commande-en-coure=Name
cls
color 
echo.
echo.
echo ^|===========================^|
echo ^|         [ %commande-en-coure% ]       ^|
echo ^|===========================^|
echo.
echo.
wmic diskdrive get Name
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.
pause
goto start


:Capabilities
set commande-en-coure=Capabilities
cls
color 
echo.
echo.
echo ^|===========================^|
echo ^|  [ %commande-en-coure% ]         ^|
echo ^|===========================^|
echo.
echo.
wmic diskdrive get Capabilities
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.
pause
goto start



rem commande avec besoin droi admine



:iexpress
set commande-en-coure=iexpress
cls
color 
echo.
echo.
echo ^|==================================^|
echo ^|  [ %commande-en-coure% ]                ^|
echo ^|==================================^|
echo.
echo lancement de iexpress pour convertire un BAT en EXE
echo.
echo cmd /c [ nom du .BAT ]
echo.
iexpress.exe
echo.
pause
goto start










:taille-du-secteur-physique
set commande-en-coure=taille-du-secteur-physique
cls
color 
echo.
echo.
echo ^|==================================^|
echo ^|  [ %commande-en-coure% ]  ^|
echo ^|==================================^|
echo.
echo entrer le non du lecteur exeple [ C: ]
echo.
set taille-du-secteur-physique=c:
set /p taille-du-secteur-physique=:~ 

cls
echo.
echo.
echo ^|==================================^|
echo ^|  [ %commande-en-coure% ]  ^|
echo ^|==================================^|
echo.


fsutil fsinfo ntfsinfo %taille-du-secteur-physique%
if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)

echo.
pause
goto start






:reparer-cluster
set commande-en-coure=reparer-cluster
cls
color 
echo.
echo.
echo ^|==================================^|
echo ^|  [ %commande-en-coure% ]              ^|
echo ^|==================================^|
echo.
echo entrer le non du lecteur exeple [ C: ]
echo.
set reparer-cluster=c:
set /p reparer-cluster=:~ 

 chkdsk %reparer-cluster% /f

if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (color & color a) else (goto erreur-resultat)

cls
echo.
echo ^|==================================^|
echo ^|  [ %commande-en-coure% ]              ^|
echo ^|==================================^|
echo.

echo [ OK ]
echo.
echo.
pause
goto start



rem posibiliter de rentrer des commandes libre
:admin
color b4
title Commande libre
cls
echo            exit ou back pour retoure 
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|   Vous ete libre de taper vos commandes    ^|
echo ^|                                            ^|
echo ^|============================================^|
echo. 
echo.
set admin=0
set /p admin=:~ 
echo. 
echo.
echo. 
echo.
if %admin% == 0 goto admin
if %admin% == exit title Disk Cheker & goto start
if %admin% == back title Disk Cheker & goto start
%admin%
pause
goto admin


rem fin






rem erreur-commande
:erreur-resultat
Rundll32 User32.dll,MessageBeep
cls
color 4
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           Une Erreure est survenu          ^|
echo ^|                                            ^|
echo ^|============================================^|
echo. 
echo Oupse :( la commande [ %commande-en-coure% ] c'est mal deroulee
echo.
echo.
if %droi-admine-demandee% == 1 echo il vous fau ouvrire lapplication en mode Administrateur
echo.
echo.
echo.
pause
goto start







:erreur-commande
Rundll32 User32.dll,MessageBeep
cls
color 4
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           Une Erreure est survenu          ^|
echo ^|                                            ^|
echo ^|============================================^|
echo. 
echo Oupse :( la commande [ %user% ] n'existe pas
echo.
echo.
echo.
echo.
echo.
pause
goto start



:erreur-user-vide
if %help% == 1 goto start
Rundll32 User32.dll,MessageBeep
cls
color 4
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           Une Erreure est survenu          ^|
echo ^|                                            ^|
echo ^|============================================^|
echo. 
echo    Oupse :( les commande vide sont imposible !
echo.
echo.
echo.
echo.
echo.
pause
goto start




pause