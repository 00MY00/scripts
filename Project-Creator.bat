@echo off
:start
set back=%~dp0
title MS-DOS Project creator
cls
echo.
echo.
echo Script execute dans %back%
echo.

color 4
echo  _______  _______         ______   _______  _______   
echo (       )(  ____ \       (  __  \ (  ___  )(  ____ \  
echo ^| () () ^|^| (    \/       ^| (  \  )^| (   ) ^|^| (    \/  
echo ^| ^|^| ^|^| ^|^| (_____  _____ ^| ^|   ) ^|^| ^|   ^| ^|^| (_____   
echo ^| ^|(_)^| ^|(_____  )(_____)^| ^|   ^| ^|^| ^|   ^| ^|(_____  )  
echo ^| ^|   ^| ^|      ) ^|       ^| ^|   ) ^|^| ^|   ^| ^|      ) ^|  
echo ^| )   ( ^|/\____) ^|       ^| (__/  )^| (___) ^|/\____) ^|  
echo ^|/     \^|\_______)       (______/ (_______)\_______)  
echo.
echo.

timeout /t 2
color b
cls
echo  _______  _______  _______ _________ _______  _______ _________
echo (  ____ )(  ____ )(  ___  )\__    _/(  ____ \(  ____ \\__   __/
echo ^| (    )^|^| (    )^|^| (   ) ^|   )  (  ^| (    \/^| (    \/   ) (   
echo ^| (____)^|^| (____)^|^| ^|   ^| ^|   ^|  ^|  ^| (__    ^| ^|         ^| ^|   
echo ^|  _____)^|     __)^| ^|   ^| ^|   ^|  ^|  ^|  __)   ^| ^|         ^| ^|   
echo ^| (      ^| (\ (   ^| ^|   ^| ^|   ^|  ^|  ^| (      ^| ^|         ^| ^|   
echo ^| )      ^| ) \ \__^| (___) ^|^|\_)  )  ^| (____/\^| (____/\   ^| ^|   
echo ^|/       ^|/   \__/(_______)(____/   (_______/(_______/   )_(   
echo.
echo.

echo  _______ 	 _______  _______  _______ _________ _______  _______ 
echo (  ____ \	(  ____ )(  ____ \(  ___  )\__   __/(  ___  )(  ____ )
echo ^| (    \/	^| (    )^|^| (    \/^| (   ) ^|   ) (   ^| (   ) ^|^| (    )^|
echo ^| ^|	        ^| (____)^|^| (__    ^| (___) ^|   ^| ^|   ^| ^|   ^| ^|^| (____)^|
echo ^| ^|	        ^|     __)^|  __)   ^|  ___  ^|   ^| ^|   ^| ^|   ^| ^|^|     __)
echo ^| ^|	        ^| (\ (   ^| (      ^| (   ) ^|   ^| ^|   ^| ^|   ^| ^|^| (\ (   
echo ^| (____/\	^| ) \ \__^| (____/\^| )   ( ^|   ^| ^|   ^| (___) ^|^| ) \ \__
echo (_______/	^|/   \__/(_______/^|/     \^|   )_(   (_______)^|/   \__/
echo.
echo.

:NomDuProject
echo Entre le nom du project

rem variable non du project
set NonProject=0
set /p NonProject=

if %NonProject% == 0 goto NomDuProject



rem choi couleur

cls
echo.
echo.
color a
echo          Nom Du Project
echo ================================
echo       [ %NonProject%  ]
echo ================================
echo.
echo.
echo Entre le choix de la couleur
echo.
set colorr=0
set /p colorr=



cls
echo.
echo.
color a
echo          Nom Du Project
echo             Couleur
echo ================================
echo       [ %NonProject%  ]
echo       [ %colorr% ]
echo ================================
echo.
echo.




rem génération du project
cls

cd %back%
mkdir %NonProject%
cd %back%%NonProject%\


@echo @echo off >> %NonProject%.bat
@echo :start >> %NonProject%.bat
@echo cls >> %NonProject%.bat
@echo title %NonProject% >> %NonProject%.bat
@echo set back=%%~dp0 >> %NonProject%.bat
@echo color %colorr% >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo echo. >> %NonProject%.bat
@echo echo txt >> %NonProject%.bat
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


exit





