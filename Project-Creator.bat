@echo off
taskkill /im iexplore.exe
:start
chcp 65001
mode con cols=80 lines=25
set back=%~dp0
title MS-DOS Project creator
cls
echo.
echo.
echo [40;33mScript execute dans [40;35m%back%
echo.
echo [40;31m███╗   ███╗███████╗      [40;37m██████╗  ██████╗ ███████╗
echo [40;31m████╗ ████║██╔════╝      [40;37m██╔══██╗██╔═══██╗██╔════╝
echo [40;31m██╔████╔██║███████╗[40;33m█████╗[40;37m██║  ██║██║   ██║███████╗
echo [40;31m██║╚██╔╝██║╚════██║[40;33m╚════╝[40;37m██║  ██║██║   ██║╚════██║
echo [40;31m██║ ╚═╝ ██║███████║      [40;37m██████╔╝╚██████╔╝███████║
echo [40;31m╚═╝     ╚═╝╚══════╝      [40;37m╚═════╝  ╚═════╝ ╚══════╝

echo.
timeout /t 3
cls
echo [42;37m  [42;37m  [42;37m  [42;37m  [42;37m  [42;37m  [42;37m  [42;37m  [42;37m  [42;37m        [42;37m                                                      
echo.
echo [40;31m██████╗ ██████╗  [40;33m██████╗      ██╗[40;37m███████╗ ██████╗████████╗
echo [40;31m██╔══██╗██╔══██╗[40;33m██╔═══██╗     ██║[40;37m██╔════╝██╔════╝╚══██╔══╝
echo [40;31m██████╔╝██████╔╝[40;33m██║   ██║     ██║[40;37m█████╗  ██║        ██║   
echo [40;31m██╔═══╝ ██╔══██╗[40;33m██║   ██║██   ██║[40;37m██╔══╝  ██║        ██║   
echo [40;31m██║     ██║  ██║[40;33m╚██████╔╝╚█████╔╝[40;37m███████╗╚██████╗   ██║   
echo [40;31m╚═╝     ╚═╝  ╚═╝ [40;33m╚═════╝  ╚════╝ [40;37m╚══════╝ ╚═════╝   ╚═╝
echo.
echo                       [40;32mHy %USERNAME%
echo.
echo  [40;31m██████╗██████╗ ███████╗ [40;37m█████╗ [40;33m████████╗ ██████╗ ██████╗ 
echo [40;31m██╔════╝██╔══██╗██╔════╝[40;37m██╔══██╗[40;33m╚══██╔══╝██╔═══██╗██╔══██╗
echo [40;31m██║     ██████╔╝█████╗  [40;37m███████║   [40;33m██║   ██║   ██║██████╔╝
echo [40;31m██║     ██╔══██╗██╔══╝  [40;37m██╔══██║   [40;33m██║   ██║   ██║██╔══██╗
echo [40;31m╚██████╗██║  ██║███████╗[40;37m██║  ██║   [40;33m██║   ╚██████╔╝██║  ██║
echo  [40;31m╚═════╝╚═╝  ╚═╝╚══════╝[40;37m╚═╝  ╚═╝   [40;33m╚═╝    ╚═════╝ ╚═╝  ╚═╝
echo.
echo                     [40;35mCrée par [40;32mKuroakashiro
echo.
echo.[40;36m

:NomDuProject
echo Entre le nom du project

rem variable non du project
set NonProject=0
set /p NonProject=

if %NonProject% == 0 goto NomDuProject



rem choi couleur

cls
echo.
echo.[40;36m
echo          Nom Du Project
echo ================================
echo        [ [40;35m%NonProject%  [40;36m]
echo ================================
echo.
echo.
echo Entre le choix de la couleur
echo [40;33moublier pas qu'il es posible de personaliser plus avec des couleur
echo mais il fau alord retirer les color du script[40;36m
echo.
set colorr=0
set /p colorr=



cls
echo.[40;36m
echo.
echo          Nom Du Project
echo             Couleur
echo ================================
echo       [ [40;35m%NonProject%  [40;36m]
echo       [[40;33m %colorr% [40;36m]
echo ================================
echo.
echo.




rem génération du project
cls

cd %USERPROFILE%Desktop\
mkdir %NonProject%
cd %back%%NonProject%\


@echo @echo off >> %NonProject%.bat
@echo chcp 65001 >> %NonProject%.bat
@echo mode con cols=80 lines=25 >> %NonProject%.bat
@echo :start >> %NonProject%.bat
@echo cls >> %NonProject%.bat
@echo title %NonProject% >> %NonProject%.bat
@echo set back=%%~dp0 >> %NonProject%.bat
@echo color %colorr% >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo echo [42;37mtxt[40;36m >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo set user=0 >> %NonProject%.bat
@echo set /p user= >> %NonProject%.bat
@echo if %user% ==0 >> %NonProject%.bat
@echo rem >> %NonProject%.bat
@echo rem >> %NonProject%.bat
@echo rem >> %NonProject%.bat
@echo pause >> %NonProject%.bat


start %back%%NonProject%\
cls
echo.[40;35m
echo ███████╗██╗███╗   ██╗
echo ██╔════╝██║████╗  ██║
echo █████╗  ██║██╔██╗ ██║
echo ██╔══╝  ██║██║╚██╗██║
echo ██║     ██║██║ ╚████║
echo ╚═╝     ╚═╝╚═╝  ╚═══╝
echo.
echo.
timeout /t 3
exit





