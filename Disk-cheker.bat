@echo off
color e
chcp 65001
mode con cols=80 lines=40
title Disk Cheker
taskkill /im iexplore.exe
set back=%~dp0

set back=%back:~0,-5%


wmic diskdrive get Status
if %errorlevel% == 0 (set status=[40;32m[ OK ]) else (set status=[40;31m[ NO ])







title Disk Cheker
set back=%~dp0
:start
color a
mode con cols=80 lines=40
del /Q %USERPROFILE%\Documents\ping
rem verification d'erreur 
set /a echeque=0
set droi-admine-demandee=0

cls
echo.[42;37m                                                                                [40;37m
echo.
echo  Ouvert dans [ [40;33m%back% [40;37m] Status du disque C: %status%
echo.
echo.
echo 	[40;35m╔═══════════════════════════════════════════╗ [40;35m
echo 	^║                                           [40;35m^║
echo 	^║                [40;36mDisck  [40;32mCheker              [40;35m^║
echo 	^║                                           [40;35m^║
echo 	[40;35m╚═══════════════════════════════════════════╝[40;37m
echo.
echo.
echo 	[ [40;36m%USERNAME% [40;37m] tapez ( [40;32mhelp [40;37m) pour plus d'info
echo.
echo 	[40;32m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
echo.[40;36m

set user=0
set /P user=^|► 
 

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
cls
echo.
echo.
echo 	[40;35m╔═══════════════════════════════════════════╗ [40;35m
echo 	^║                                           [40;35m^║
echo 	^║            [40;36mDisck  [40;32mCheker  HELP            [40;35m^║
echo 	^║                                           [40;35m^║
echo 	[40;35m╚═══════════════════════════════════════════╝[40;37m
echo.
echo 	[40;32m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
echo.

echo [40;37m[ [40;36madmin   [40;37m] [40;33mpour pouvoire entree libriment des commandes 
echo [40;37m[ [40;36mexit    [40;37m] [40;33mpour fermer le programe
echo [40;37m[ [40;36mpart    [40;37m] [40;33mvous indique le nombre de partition sur le disk 
echo [40;37m[ [40;36minf     [40;37m] [40;33mvous afiche des information du disk
echo [40;37m[ [40;36minf-d   [40;37m] [40;33mvous afiche des information du disk detailler
echo [40;37m[ [40;36mnam     [40;37m] [40;33mvous afiche le nom du lecteur selectionee
echo [40;37m[ [40;36mcap     [40;37m] [40;33mvous afiche la capasiter utiliser du lecteur !a verif!
echo [40;37m[ [40;36mtdsp    [40;37m] [40;33mvous indique toutes les information d'un lecteur 
echo [40;37m[ [40;36mcluster [40;37m] [40;33mpour pluse d'information sur les cluster "disque stoquage"
echo [40;37m[ [40;36mrep-cl  [40;37m] [40;33mrepare les cluster du disque selectioner
echo [40;37m[ [40;36mbte     [40;37m] [40;33mouvre iexpress pour convertire un BAT en EXE En Admin
echo [40;37m[ [40;36mping    [40;37m] [40;33mteste la conexion avec un ping sur google.ch en temps reelle
echo.
echo.
echo.
echo.
echo.
echo.[40;36m
set user=0
echo entree votre commande !
set /p user=^|►  
goto no-time




rem information conexion

:ping
mode con cols=50 lines=20
cd %USERPROFILE%\Documents\
if not exist ping mkdir ping

cd %USERPROFILE%\Documents\ping

if exist ping.txt del ping.txt
if exist ttt.txt del ttt.txt 
if exist tttt.txt del tttt.txt
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
if exist ping.txt del ping.txt
if exist ttt.txt del ttt.txt 
if exist tttt.txt del tttt.txt

echo.
echo.
echo        [40;31mPour fermer ! fermer la page 
echo.
echo.
echo     [40;37m[ [40;33m%ms% [40;37m]  [40;36mtest ping Numero [40;37m[ [40;34m%tim% [40;37m]
echo.
echo.
echo. [40;30m
timeout /t 1
goto ping
















rem plus d'information par raport au cluster de disque dure
:cluster
cls
title Le petit curieu
color 6
echo.
echo 	[40;35m╔═══════════════════════════════════════════╗ [40;35m
echo 	^║                                           [40;35m^║
echo 	^║   [40;36mDisck  [40;32mCheker  c'est quoi un Closter    [40;35m^║
echo 	^║                                           [40;35m^║
echo 	[40;35m╚═══════════════════════════════════════════╝[40;37m
echo.
echo 	[40;32m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
echo.[40;36m


echo ▐
echo ▐	c'est quoi un cluster dans un disque dure ^? 
echo ▐	il fau imaginer que le disque dure est composer 
echo ▐	de plusieur celules lorseque l'on cree un fichier 
echo ▐	seluis ci utilisera au minimum une de ces celules 
echo ▐	qui on une taille definit, ci le fichier et plus 
echo ▐	grand il sera sacader en plusieur celules qui ne 
echo ▐	sont pas forcement a la suite. pour se faire il 
echo ▐	existe une sorte d'historique qui les repertories 
echo ▐	nomer [40;33m"File Allocation Table"[40;36m
echo ▐	pour plus [40;33m" https://www.lemagit.fr/definition/Cluster "[40;36m
echo ▐
echo.
echo 	[40;32m▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
echo.[40;30m
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
echo  	[40;35m╔═════════════════════════╗
echo 	[40;35m^║  [40;37m[ [40;36m%commande-en-coure% [40;37m][40;35m         ^║
echo  	[40;35m╚═════════════════════════╝
echo.
echo 	vous avez
echo.
wmic diskdrive get Partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;30m
pause
goto start







:DiskInformation
set commande-en-coure=DiskInformation
cls
color 
echo.
echo.
echo  	[40;35m╔═════════════════════════╗
echo 	[40;35m^║  [40;37m[ [40;36m%commande-en-coure% [40;37m][40;35m         ^║
echo  	[40;35m╚═════════════════════════╝
echo.
echo.[40;36m
wmic diskdrive get model,serialNumber,size,mediaType
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)
echo.
echo.
echo.[40;30m
pause
goto start





:DiskInformationDetailler
mode con cols=90 lines=40
set commande-en-coure=DiskInformationDetailler
cls
color 
echo.
echo.
echo  		[40;35m╔══════════════════════════════╗
echo 		[40;35m^║  [40;37m[ [40;36m%commande-en-coure% [40;37m][40;35m^║
echo  		[40;35m╚══════════════════════════════╝
echo.
echo.[40;36m
wmic diskdrive get model,index,firmwareRevision,status,interfaceType,totalHeads,totalTracks,totalCylinders,totalSectors,partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)
echo.
echo.
echo.[40;30m
pause
goto start











:Name
set commande-en-coure=Name
cls
color 
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║          [40;37m[ [40;36m%commande-en-coure% [40;37m]            [40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.
echo.
wmic diskdrive get Name
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;30m
pause
goto start


:Capabilities
set commande-en-coure=Capabilities
cls
color 
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║        [40;37m[ [40;36m%commande-en-coure% [40;37m]      [40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.
echo.
wmic diskdrive get Capabilities
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (color & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;30m
pause
goto start



rem commande avec besoin droi admine



:iexpress
set commande-en-coure=iexpress
cls
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║        [40;37m[ [40;36m%commande-en-coure% [40;37m]          [40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.
echo.[40;36m
echo lancement de iexpress pour convertire un BAT en EXE
echo.
echo cmd /c [ nom du .BAT ]
echo.
iexpress.exe
echo.[40;30m
pause
goto start










:taille-du-secteur-physique
set commande-en-coure=taille-du-secteur-physique
cls
color 
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║[40;37m[ [40;36m%commande-en-coure% [40;37m][40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.
echo.[40;36m
echo entrer le non du lecteur exeple [ C: ]
echo.
set taille-du-secteur-physique=c:
set /p taille-du-secteur-physique=:~ 

cls
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║[40;37m[ [40;36m%commande-en-coure% [40;37m][40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.[40;36m


fsutil fsinfo ntfsinfo %taille-du-secteur-physique%
if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (color & echo. & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)

echo.[40;30m
pause
goto start






:reparer-cluster
set commande-en-coure=reparer-cluster
cls
color 
echo.
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║    [40;37m[ [40;36m%commande-en-coure% [40;37m]       [40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.[40;36m
echo entrer le non du lecteur exeple [ C: ]
echo.
set reparer-cluster=c:
set /p reparer-cluster=:~ 

 chkdsk %reparer-cluster% /f

if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (color & echo [40;32mTraitement terminée[40;36m) else (goto erreur-resultat)

cls
echo.
echo 	[40;35m╔══════════════════════════════╗
echo 	[40;35m^║    [40;37m[ [40;36m%commande-en-coure% [40;37m]       [40;35m^║
echo 	[40;35m╚══════════════════════════════╝
echo.[40;36m

echo 	[40;37m[ [40;32mOK [40;37m]
echo.
echo.[40;30m
pause
goto start



rem posibiliter de rentrer des commandes libre
:admin
title Commande libre
cls
echo            exit ou back pour retoure 
echo.
echo 	[40;35m╔════════════════════════════════════════════╗
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m^║   [40;36mVous ete libre de taper vos commandes    [40;35m^║
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m╚════════════════════════════════════════════╝
echo.[40;36m
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
echo.[40;30m
pause
goto admin


rem fin






rem erreur-commande
:erreur-resultat
Rundll32 User32.dll,MessageBeep
cls
color 4
echo.
echo 	[40;35m╔════════════════════════════════════════════╗
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m^║           [40;33mUne [41;37mErreure[40;33m est survenu          [40;35m^║
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m╚════════════════════════════════════════════╝
echo. [40;36m
echo Oupse :( la commande [40;37m[ [40;31m%commande-en-coure% [40;37m] [40;36mc'est mal deroulee
echo.
echo.
if %droi-admine-demandee% == 1 echo il vous fau ouvrire lapplication en mode [40;33mAdministrateur
echo.
echo.
echo.[40;30m
pause
goto start







:erreur-commande
Rundll32 User32.dll,MessageBeep
cls
echo.
echo 	[40;35m╔════════════════════════════════════════════╗
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m^║           [40;33mUne [41;37mErreure[40;33m est survenu          [40;35m^║
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m╚════════════════════════════════════════════╝
echo. [40;36m 
echo 	 Oupse :( la commande [40;37m[ [40;31m%user% [40;37m] [40;36m n'existe pas
echo.
echo.
echo.
echo.
echo.[40;30m
pause
goto start



:erreur-user-vide
if %help% == 1 goto start
Rundll32 User32.dll,MessageBeep
cls
echo.
echo 	[40;35m╔════════════════════════════════════════════╗
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m^║           [40;33mUne [41;37mErreure[40;33m est survenu          [40;35m^║
echo 	[40;35m^║                                            [40;35m^║
echo 	[40;35m╚════════════════════════════════════════════╝
echo. [40;36m  
echo    Oupse :( les commande vide sont imposible !
echo.
echo.
echo.
echo.
echo.[40;30m
pause
goto start




pause