@echo off 
TITLE SCAN
taskkill /im iexplore.exe
:start
cls
echo.
echo.[40;33m
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo [40;37m[ [40;35mchekport [40;37m] [40;37m[ [40;35mhelp [40;37m] [40;37m[ [40;35mclosport [40;37m]
echo.[40;33m
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
set /p user=

rem ------------------------------------------------
rem list des condition IF
if %user% == help goto help
if %user% == chekport goto chekport
if %user% == closport goto closport
if %user% == rooteur goto ouvrire-rooteur
if %user% == exit exit
if %user% == information goto information-sur-aplication
if %user% == list goto taskliste
if %user% == stop goto taskkill
if %user% == restor goto rstrui
if %user% == pro goto pro 

if %user% == closport-h (goto closport-h) else (goto start)
rem ------------------------------------------------

:help
set scan-h1= [40;37m[ [40;32mhelp [40;37m] [40;33mafiche cette page d^'aide
set scan-h2= [40;37m[ [40;32mchekport [40;37m] [40;33mvous afiche les port de la machine ouverte inci que le procesuse qui l'exploite
set scan-h3= [40;37m[ [40;32mclosport [40;37m] [40;33mvous permet de fermer un port pour plus d'aide taper [40;37m[ [40;32mclosport-h [40;37m][40;33m
set scan-h4= [40;37m[ [40;32mrooteur [40;37m] [40;33mouvre la page d'acce au rooteur "le mot de passe du rooteur peu etre changer avec le + sur la box"
set scan-h5= [40;37m[ [40;32minformation [40;37m] [40;33mvous permet de rechercher des information sur un logicielle " [40;36m.exe [40;33m" " [40;36m.dll [40;33m" etc...
set scan-h6= [40;37m[ [40;32mexit [40;37m] [40;33mpermet de fermer la page 
set scan-h7= [40;37m[ [40;32mlist [40;37m] [40;33mlist les procesuse en cour d execution
set scan-h8= [40;37m[ [40;32mstop [40;37m] [40;33mtermine l execution d un procesuse
set scan-h9= [40;37m[ [40;32mrestor [40;37m] [40;33mlance le logiciele de restoration de windows
set scan-h10= [40;37m[ [40;32mpro [40;37m] [40;33mvous donne acce au commande normal de " [40;36mCMD.exe [40;33m"

cls
echo.
echo %scan-h1% & echo. & echo %scan-h2% & echo. & echo %scan-h3% & echo. & echo %scan-h4% & echo. & echo %scan-h5% & echo. &echo %scan-h6% & echo. & echo %scan-h7% & echo. & echo %scan-h8% & echo. & echo %scan-h9% & echo. & echo %scan-h10% & echo.
echo.[46;32m
echo.
pause
goto start

rem ------------------------------------------------

:closport-h

cls 
echo.[40;36m
echo pour fermer un port il vous fau deux information 
echo.
echo il vous fau le type de port exeple " TCP " " UDP "
echo.
echo inci que le numero du port 
pause
goto start

rem ------------------------------------------------

:closport
cls
echo.[40;36m
:closport-protocol
cls
echo.
echo entre le Non du protocol [ [40;35mTCP [40;36m] [ [40;35mUDP [40;36m]
echo.
set typ-protocol=0
set /p typ-protocol=
if %typ-protocol% == 0 goto closport-protocol

cls
:closport-numero
cls
echo non du protocol selectionez [ %typ-protocol% ]
echo.
echo entre le Numero du port 
echo.
set numero-port-clos =0
set /p numero-port-clos=
if %numero-port-clos% == 0 goto closport-numero 
cls
goto verif-port-clos
:verif-port-clos
echo.[40;36m
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo [40;36mprotocol celectione [ [40;35m%typ-protocol% [40;36m]
echo [40;36mnumero du port [ [40;35m%numero-port-clos% [40;36m]
echo.[40;36m
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo taper 0 pour confirmer 1 pour anule 
set verification-closport =2
set /p verification-closport=

if %verification-closport% == 1 goto state
if %verification-closport% == 0 goto blocag-du-port
if %verification-closport% == 2 (goto verif-port-clos) else (goto verif-port-clos)

:blocag-du-port
netsh advfirewall set allprofile state on
netsh advfirewall firewall add rule dir=in action=block protocol=%typ-protocol% localport=%numero-port-clos% name=" BLOCK-%typ-protocol%-%numero-port-clos% "
cls
if %errorlevel% == 0 (echo operation reusite) else (color 4 & echo une error est survenu)
pause
goto start

rem ------------------------------------------------

:chekport
cls
echo.[40;33m
netstat -abn
if %errorlevel% == 1  & echo.[40;31m & echo il vous fau les droi addministrateur & echo. &pause & exit
pause
goto start

rem ------------------------------------------------

:ouvrire-rooteur
cls
echo.
echo selectioner la bonne adresse
echo 0 = 192.168.0.1
echo.
echo 1 = 192.168.1.1 " conseiller "

set Ouvrire-rooteur =2
set /p Ouvrire-rooteur=
cls
echo.
if %Ouvrire-rooteur% == 0 start http://192.168.0.1 & echo 192.168.0.1 & pause & goto start
if %Ouvrire-rooteur% == 1 start http://192.168.1.1 & echo 192.168.1.1 & pause & goto start
if %Ouvrire-rooteur% == 2 (goto ouvrire-rooteur) else (goto ouvrire-rooteur)
goto start

rem ------------------------------------------------

:information-sur-aplication
cls
echo.[40;33m
echo entrer le non du procesuse exemple " spoolsv.exe "
echo.
set information-sur-aplication=0
set /p information-sur-aplication=
if %information-sur-aplication% == 0 goto information-sur-aplication
if %information-sur-aplication% == exit goto start

start https://www.fichier.net/processus/%information-sur-aplication%.html
cls
echo.
echo pour utiliser cette fonction il vous fau un acce Internet 
pause
goto start

rem ------------------------------------------------

:taskliste
cls
tasklist
pause
goto start

rem ------------------------------------------------

:taskkill
cls
echo.[40;33m
echo entre le non du service a stoper exemple [ [40;35mcmd.exe [40;33m]
echo.
set taskkille=0
set /p taskkille=
if %taskkille% == 0 goto taskkill
if %taskkille% == exit goto start
cls
echo.
echo le processus [ [40;35m%taskkille% [40;33m] va etre fermer
if %errorlevel% == 1 color 4 & cls & echo erreur & pause & goto start
echo.
taskkill /F /IM %taskkille%
echo.
pause
goto start

rem ------------------------------------------------

:rstrui
cls
echo.
echo ouverture de l asistent de réstoration
echo.
start rstrui.exe
pause
goto start

rem ------------------------------------------------

:pro
cls
echo.[40;33m
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo                   mode expert
echo             [ [40;31mexit [40;33m] ferme la page
echo.
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
set /p pro=
echo.
echo resultat 
echo.
echo.
%pro%
echo.
echo.
echo fin du resulta
pause
goto pro


pause
scan.bat



