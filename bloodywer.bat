@echo off
taskkill /im iexplore.exe
mode con cols=80 lines=30
title = [Bloodywer]
chcp 65001
set back=%~dp0
set back=%back:~0,-5%
set a="entrer [40;37m[ [40;32m1 [40;37m] [40;33mdesinstale les logiciele peu utile comme | Builder 3D | Alarmes et horloge | meteo | Xbox |  store | contacte | onenote | filme et tv | cartes" 
set b="entrer [40;37m[ [40;32m2 [40;37m] [40;33mdesinstale des aplication pouvent etre utile comme | groov musique | enregisteur vocal | camera | calculatrice"
set c="entrer [40;37m[ [40;32m3 [40;37m] [40;33mpermet de desinstaler des fichier cible comme des jeu ou des .exe de skyp pro atention a utiliser en dernier ci vraiment besoin"
set back=%~dp0
:start 
cls
color a
echo.
echo.
echo.[40;31m
echo  ██████╗ ██╗      ██████╗  ██████╗ ██████╗ ██╗   ██╗██╗    ██╗███████╗██████╗ 
echo  ██╔══██╗██║     ██╔═══██╗██╔═══██╗██╔══██╗╚██╗ ██╔╝██║    ██║██╔════╝██╔══██╗
echo  ██████╔╝██║     ██║   ██║██║   ██║██║  ██║ ╚████╔╝ ██║ █╗ ██║█████╗  ██████╔╝
echo  ██╔══██╗██║     ██║   ██║██║   ██║██║  ██║  ╚██╔╝  ██║███╗██║██╔══╝  ██╔══██╗
echo  ██████╔╝███████╗╚██████╔╝╚██████╔╝██████╔╝   ██║   ╚███╔███╔╝███████╗██║  ██║
echo  ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝    ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝
echo.[40;36m
echo.




echo.
echo.
echo %USERNAME% entre help pour voir la liste des commande 
echo.
echo oubliez pas d'ouvrire en administrateur pour que tout fonctione 
echo.

set user=0
:enterr
set /p user=: 

if %user% == help goto help
if %user% == 1 goto ok
if %user% == 2 goto ok-2
if %user% == 3 goto ok-3
if %user% == rapide goto rapide
if %user% == 0 (goto start) else (goto start)

goto start

:help
color 5
cls
echo.[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m
echo.[40;35m
echo 	██╗  ██╗███████╗██╗     ██████╗ 
echo 	██║  ██║██╔════╝██║     ██╔══██╗
echo 	███████║█████╗  ██║     ██████╔╝
echo 	██╔══██║██╔══╝  ██║     ██╔═══╝ 
echo 	██║  ██║███████╗███████╗██║     
echo 	╚═╝  ╚═╝╚══════╝╚══════╝╚═╝ 
echo.[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m[45;37m
echo.[40;33m
echo %a%
echo. 
echo %b% 
echo.
echo %c% 
echo.
echo taper [40;37m[ [40;32mrapide [40;37m] [40;33mpour tout suprimer la liste entiere atention peu contenir des logiciele utile comme camera groove musique ou cortana 
echo.
goto enterr
pause 
goto start

goto start

:ok
cls
color 6 
echo.
echo.
echo netoiage en coure 
echo.
echo.
echo desinstalation de Builder 3D ^| Alarmes et horloge ^| meteo ^| Xbox ^|  store ^| contacte ^| onenote ^| filme et tv ^| cartes 
echo.
echo.
powershell -command "&{Get-AppxPackage *3dbuilder* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *windowsalarms* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *officehub* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *skypeapp* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *windowsmaps* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *zunevideo* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *onenote* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *people* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *windowsstore* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *bingsports* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *xboxapp* | Remove-AppxPackage}"

powershell -command "&{Get-AppxPackage *bingweather* | Remove-AppxPackage}"

echo. 
color a
echo [OK]
pause
goto start



:ok-2
cls
color 6
echo.
echo.
echo desinstalation groov musique ^| enregisteur vocal ^| camera ^| calculatrice
echo.
echo.
powershell -command "&{Get-AppxPackage *zunemusic* | Remove-AppxPackage}"
powershell -command "&{Get-AppxPackage *soundrecorder* | Remove-AppxPackage}"
powershell -command "&{Get-AppxPackage *windowscalculator* | Remove-AppxPackage}"
powershell -command "&{Get-AppxPackage *windowscamera* | Remove-AppxPackage}"
echo. 
color a
echo [OK]
pause
goto start 



:ok-3
cls 
color 6
echo.
echo.
désinstalation cibl^é 
echo.
echo.
start C:\Program Files (x86)\WildTangent Games\WildTangentuninstaleur.exe
del C:\ProgramData\WildTangent\WildTangent Games
del C:\ProgramData\AVAST Software
del C:\ProgramData\Avira
del C:\ProgramData\Norton
del C:\ProgramData\NortonInstaller
del C:\Program Files\Microsoft Office\root\Office16\lync.exe
del C:\Program Files\Microsoft Office\root\Office16\lync99.exe
del C:\Program Files\Microsoft Office\root\Office16\OcPubMgr.exe
del C:\Program Files\Microsoft Office\root\Office16\UcMapi.exe
del C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2016 Tools\Skype for Business Recording Manager
echo. 
echo [OK]
pause
goto start


:rapide
cls
echo.
echo list des aplication qui von etre desinstaler
echo.
powershell -command "&{DISM /Online /Get-ProvisionedAppxPackages | select-string Packagename}"
echo.
echo si rien ne c'est afficher c'est que vous n'éte pas en administrateur relance svp
echo.
echo entrer 1 pour continuer 0 pour annuler

set pp=0
set /p pp=
if %pp% == 1 goto rapide-suite
if %pp% == 0 (goto start) else (goto start)


:rapide-suite
cls
color c
echo.
echo supresion en cour
echo.

powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingWeather_4.22.3254.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.DesktopAppInstaller_1.10.16004.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GetHelp_10.1706.1981.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Getstarted_6.5.2851.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Messaging_2017.1026.259.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Microsoft3DViewer_2.1801.4012.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub_2017.715.118.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection_3.17.8162.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes_2.0.5.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MSPaint_3.1712.7027.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Office.OneNote_2015.8366.57611.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.OneConnect_3.1710.3044.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.People_2017.1214.153.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Print3D_1.0.2572.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.SkypeApp_11.18.596.0_neutral_~_kzf8qxf38zg5c}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.StorePurchaseApp_11712.1712.12034.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Wallet_1.0.16328.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.Photos_2017.39101.16720.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsAlarms_2017.1202.31.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCalculator_2017.1201.1912.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCamera_2017.921.10.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:microsoft.windowscommunicationsapps_2015.8730.21725.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub_1.1705.2121.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsMaps_2017.1003.1829.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsSoundRecorder_2017.1201.1914.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsStore_11711.1001.513.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Xbox.TCUI_1.11.29001.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxApp_31.32.16002.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGameOverlay_1.24.5001.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxIdentityProvider_2017.605.1240.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneMusic_2019.17086.24711.0_neutral_~_8wekyb3d8bbwe}"
powershell -command "&{DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneVideo_2019.17112.13411.0_neutral_~_8wekyb3d8bbwe}"

cls
echo.
echo vouler vous désinstaler cortana ?
echo.
echo [ 1 ] = oui [ 0 ] non
echo.
set cortana=0
set /p cortana=

if %cortana% == 1 goto del-cortana
if %cortana% == 0 (goto no-del-cortana)
goto no-del-cortana



:no-del-cortana
cls 
le pc va redemarer
echo.
SHUTDOWN /r /f
goto start

:del-cortana
del cortanaa.ps1
cls 

powershell -command "&{Set-ExecutionPolicy Unrestricted}"



@echo $path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" >> cortanaa.ps1    
@echo IF(!(Test-Path -Path $path)) {  >> cortanaa.ps1
@echo     New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search" >> cortanaa.ps1
@echo }  >> cortanaa.ps1
@echo Set-ItemProperty -Path $path -Name "AllowCortana" -Value 1 >> cortanaa.ps1  
@echo #Restart Explorer to change it immediately  >> cortanaa.ps1
@echo Stop-Process -name explorer   >> cortanaa.ps1


start powershell %back%cortanaa.ps1
TIMEOUT /T 3 /NOBREAK
del cortanaa.ps1
goto no-del-cortana


pause
goto start


