@echo off 
TITLE SCAN
:start
cls
color e

echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo [ chekport ] [ help ] [ closport ]
echo.
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
set scan-h1= [ help ] afiche cette page d^'aide
set scan-h2= [ chekport ] vous afiche les port de la machine ouverte inci que le procesuse qui l'exploite
set scan-h3= [ closport ] vous permet de fermer un port pour plus d'aide taper [ closport-h ]
set scan-h4= [ rooteur ] ouvre la page d'acce au rooteur "le mot de passe du rooteur peu etre changer avec le + sur la box"
set scan-h5= [ information ] vous permet de rechercher des information sur un logicielle " .exe " " .dll " etc...
set scan-h6= [ exit ] permet de fermer la page 
set scan-h7= [ list ] list les procesuse en cour d execution
set scan-h8= [ stop ] termine l execution d un procesuse
set scan-h9= [ restor ] lance le logiciele de restoration de windows
set scan-h10= [ pro ] vous donne acce au commande normal de " CMD.exe "

cls
echo %scan-h1% & echo. & echo %scan-h2% & echo. & echo %scan-h3% & echo. & echo %scan-h4% & echo. & echo %scan-h5% & echo. &echo %scan-h6% & echo. & echo %scan-h7% & echo. & echo %scan-h8% & echo. & echo %scan-h9% & echo. & echo %scan-h10% & echo.

pause
goto start

rem ------------------------------------------------

:closport-h
color e
cls 
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
color a


:closport-protocol
cls
echo.
echo entre le Non du protocol [ TCP ] [ UDP ]
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
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo protocol celectione [ %typ-protocol% ]
echo numero du port [ %numero-port-clos% ]
echo.
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
color e
netstat -abn
if %errorlevel% == 1 color 4 & echo. & echo il vous fau les droi addministrateur & echo. &pause & exit
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
echo.
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
echo.
echo entre le non du service a stoper exemple [ cmd.exe ]
echo.
set taskkille=0
set /p taskkille=
if %taskkille% == 0 goto taskkill
if %taskkille% == exit goto start
cls
echo.
echo le processus [ %taskkille% ] va etre fermer
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
color 1
cls
echo.
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo                   mode expert
echo             [ exit ] ferme la page
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



