@echo off


wmic diskdrive get Status
if %errorlevel% == 0 (set status=[ OK ]) else (set status=[ NO ])






title = [ DISCK CHEKER ]
chcp 65001

title Disk Cheker
set back=%~dp0
:start
del /Q %USERPROFILE%\Documents\ping
rem verification d'erreur 
set /a echeque=0
set droi-admine-demandee=0

cls

echo  [40;37mOuvert dans [40;37m[ [40;35m%back% [40;37m] Status du disque [40;32mC: [40;33m%status%[40;37m
echo.
echo.[40;33m
echo 	██████╗ ██╗███████╗ ██████╗██╗  ██╗     ██████╗██╗  ██╗███████╗██╗  ██╗███████╗██████╗ 
echo 	██╔══██╗██║██╔════╝██╔════╝██║ ██╔╝    ██╔════╝██║  ██║██╔════╝██║ ██╔╝██╔════╝██╔══██╗
echo 	██║  ██║██║███████╗██║     █████╔╝     ██║     ███████║█████╗  █████╔╝ █████╗  ██████╔╝
echo 	██║  ██║██║╚════██║██║     ██╔═██╗     ██║     ██╔══██║██╔══╝  ██╔═██╗ ██╔══╝  ██╔══██╗
echo 	██████╔╝██║███████║╚██████╗██║  ██╗    ╚██████╗██║  ██║███████╗██║  ██╗███████╗██║  ██║
echo 	╚═════╝ ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo.
echo.[40;33m
echo [ %USERNAME% ] tapez ( help ) pour plus d'info
echo.[40;36m

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
cls
echo.
echo.
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           [40;35mDisck  Cheker HELP[40;33m               ^|
echo ^|                                            ^|
echo ^|============================================^|
echo.
echo.[40;36m

echo  [40;37m[ [40;32madmin   [40;37m] [40;36mpour pouvoire entree libriment des commandes 
echo  [40;37m[ [40;32mexit    [40;37m] [40;36mpour fermer le programe
echo  [40;37m[ [40;32mpart    [40;37m] [40;36mvous indique le nombre de partition sur le disk 
echo  [40;37m[ [40;32minf     [40;37m] [40;36mvous afiche des information du disk
echo  [40;37m[ [40;32minf-d   [40;37m] [40;36mvous afiche des information du disk detailler
echo  [40;37m[ [40;32mnam     [40;37m] [40;36mvous afiche le nom du lecteur selectionee
echo  [40;37m[ [40;32mcap     [40;37m] [40;36mvous afiche la capasiter utiliser du lecteur !a verif!
echo  [40;37m[ [40;32mtdsp    [40;37m] [40;36mvous indique toutes les information d'un lecteur 
echo  [40;37m[ [40;32mcluster [40;37m] [40;36mpour pluse d'information sur les cluster "disque stoquage"
echo  [40;37m[ [40;32mrep-cl  [40;37m] [40;36mrepare les cluster du disque selectioner
echo  [40;37m[ [40;32mbte     [40;37m] [40;36mouvre iexpress pour convertire un BAT en EXE besoin des droi Administrateur
echo  [40;37m[ [40;32mping    [40;37m] [40;36mteste la conexion avec un ping sur google.ch en temps reelle
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
if not exist ping mkdir ping

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
mode con cols=50 lines=20
set /p ms= < tttt.txt
set /a tim=%tim%+1
echo.
echo.
echo.
echo.
echo.
echo        [40;32mPour fermer fermer la page 
echo.
echo.
echo     [40;37m[ [40;35m%ms% [40;37m]  [40;36mtest ping Numero [40;37m[ [40;33m%tim% [40;37m][40;36m
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if exist ping.txt del /f ping.txt 
if exist ttt.txt del /f ttt.txt 
if exist tttt.txt del /f tttt.txt
goto ping
















rem plus d'information par raport au cluster de disque dure
:cluster
cls
title Le petit curieu

echo.[40;33m
echo ^|============================================^|
echo ^|                                            ^|
echo ^|  [40;35mDisck Cheker HELP   c'est quoi un Closter [40;33m^|
echo ^|                                            ^|
echo ^|============================================^|
echo.
echo.[40;36m

echo c'est quoi un cluster dans un disque dure ^? 
echo il fau imaginer que le disque dure est composer 
echo de plusieur celules lorseque l'on cree un fichier 
echo seluis ci utilisera au minimum une de ces celules 
echo qui on une taille definit, ci le fichier et plus 
echo grand il sera sacader en plusieur celules qui ne 
echo sont pas forcement a la suite. pour se faire il 
echo existe une sorte d'historique qui les repertories 
echo nomer "File Allocation Table"
echo pour plus [40;35m" https://www.lemagit.fr/definition/Cluster "[40;36m
echo.
echo.[40;37m
pause
goto start








rem fin help



rem check disk

:Partitions
set commande-en-coure=Partitions
cls

echo.
echo.[40;33m
echo ^|===========================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]        [40;33m ^|
echo ^|===========================^|
echo.[40;36m
echo vous avez
echo.
wmic diskdrive get Partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;37m
pause
goto start







:DiskInformation
set commande-en-coure=DiskInformation
cls

echo.
echo.[40;33m
echo ^|===================================^|
echo ^|         [40;37m[ [40;35m%commande-en-coure% [40;37m]       [40;33m^|
echo ^|===================================^|
echo.
echo.[40;36m
wmic diskdrive get model,serialNumber,size,mediaType
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)
echo.
echo.
echo.[40;37m
pause
goto start





:DiskInformationDetailler
set commande-en-coure=DiskInformationDetailler
cls

echo.
echo.[40;33m
echo ^|=================================^|
echo ^|[40;37m[ [40;35m%commande-en-coure% [40;37m][40;33m^|
echo ^|=================================^|
echo.
echo.[40;36m
wmic diskdrive get model,index,firmwareRevision,status,interfaceType,totalHeads,totalTracks,totalCylinders,totalSectors,partitions
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)
echo.
echo.
echo.[40;37m
pause
goto start











:Name
set commande-en-coure=Name
cls

echo.
echo.[40;33m
echo ^|===========================^|
echo ^|         [40;37m[ [40;35m%commande-en-coure% [40;37m]       [40;33m^|
echo ^|===========================^|
echo.
echo.[40;36m
wmic diskdrive get Name
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;37m
pause
goto start


:Capabilities
set commande-en-coure=Capabilities
cls
echo.
echo.[40;33m
echo ^|===========================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]         [40;33m^|
echo ^|===========================^|
echo.[40;36m
echo.
wmic diskdrive get Capabilities
if %errorlevel% == 1 set echeque=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)

echo.
echo.
echo.
echo.
echo.
echo.[40;37m
pause
goto start



rem commande avec besoin droi admine



:iexpress
set commande-en-coure=iexpress
cls
echo.
echo.[40;33m
echo ^|==================================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]               [40;33m ^|
echo ^|==================================^|
echo.[40;36m
echo lancement de iexpress pour convertire un BAT en EXE
echo.
echo cmd /c [ nom du .BAT ]
echo.
iexpress.exe
echo.[40;37m
pause
goto start










:taille-du-secteur-physique
set commande-en-coure=taille-du-secteur-physique
cls
echo.
echo.[40;33m
echo ^|==================================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]  [40;33m^|
echo ^|==================================^|
echo.[40;36m
echo entrer le non du lecteur exeple [ C: ]
echo.
set taille-du-secteur-physique=c:
set /p taille-du-secteur-physique=:~ 

cls
echo.
echo.[40;33m
echo ^|==================================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]  [40;33m^|
echo ^|==================================^|
echo.[40;36m


fsutil fsinfo ntfsinfo %taille-du-secteur-physique%
if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)

echo.[40;37m
pause
goto start






:reparer-cluster
set commande-en-coure=reparer-cluster
cls
echo.
echo.[40;33m
echo ^|==================================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]              [40;33m^|
echo ^|==================================^|
echo.[40;36m
echo entrer le non du lecteur exeple [ [40;32mC:[40;36m ]
echo.
set reparer-cluster=c:
set /p reparer-cluster=:~ 

chkdsk %reparer-cluster% /f

if %errorlevel% == 1 set echeque=1
if %errorlevel% == 1 set droi-admine-demandee=1
if %echeque% == 0 (echo.) else (goto erreur-resultat)

cls
echo.[40;33m
echo ^|======================================================^|
echo ^|  [40;37m[ [40;35m%commande-en-coure% [40;37m]              [40;33m^|
echo ^|======================================================^|
echo.[40;36m

echo [ OK ]
echo.
echo.[40;37m
pause
goto start



rem posibiliter de rentrer des commandes libre
:admin
title Commande libre
cls
echo            [40;32mexit [40;37mou [40;32mback [40;37mpour retoure 
echo.[40;33m
echo ^|============================================^|
echo ^|                                            ^|
echo ^|   [40;35mVous ete libre de taper vos commandes    [40;33m^|
echo ^|                                            ^|
echo ^|============================================^|
echo.[40;36m
echo.
set admin=0
set /p admin=:~ 
echo. 
echo.
echo. 
echo.[40;37m
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
echo.[40;33m
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           [40;35mUne Erreure est survenu         [40;33m ^|
echo ^|                                            ^|
echo ^|============================================^|
echo.[40;36m
echo Oupse :( la commande [ [40;35m%commande-en-coure% [40;36m] c'est mal deroulee
echo.
echo.
if %droi-admine-demandee% == 1 echo il vous fau ouvrire lapplication en mode Administrateur
echo.
echo.
echo.[40;37m
pause
goto start







:erreur-commande
Rundll32 User32.dll,MessageBeep
cls
echo.[40;33m
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           [40;35mUne Erreure est survenu          [40;33m^|
echo ^|                                            ^|
echo ^|============================================^|
echo. [40;36m
echo Oupse :( la commande [ [40;35m%user% [40;36m] n'existe pas
echo.
echo.
echo.
echo.
echo.[40;37m
pause
goto start



:erreur-user-vide
if %help% == 1 goto start
Rundll32 User32.dll,MessageBeep
cls
echo.[40;33m
echo ^|============================================^|
echo ^|                                            ^|
echo ^|           [40;35mUne [40;31mErreure [40;35mest survenu          [40;33m^|
echo ^|                                            ^|
echo ^|============================================^|
echo. [40;36m
echo    Oupse :( les commande vide sont imposible !
echo.
echo.
echo.
echo.
echo.[40;37m
pause
goto start




pause