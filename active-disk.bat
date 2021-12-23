@echo off
color a
mode con cols=50 lines=30
title = [Active Disk]
chcp 65001
set back=%~dp0
set back=%back:~0,-5%
:start
cls
echo.
echo.[40;35m
echo   █████╗  ██████╗████████╗██╗██╗   ██╗███████╗
echo  ██╔══██╗██╔════╝╚══██╔══╝██║██║   ██║██╔════╝
echo  ███████║██║        ██║   ██║██║   ██║█████╗  
echo  ██╔══██║██║        ██║   ██║╚██╗ ██╔╝██╔══╝  
echo  ██║  ██║╚██████╗   ██║   ██║ ╚████╔╝ ███████╗
echo  ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝  ╚═══╝  ╚══════╝
echo.[40;33m


echo 	██████╗ ██╗███████╗██╗  ██╗
echo 	██╔══██╗██║██╔════╝██║ ██╔╝
echo 	██║  ██║██║███████╗█████╔╝ 
echo 	██║  ██║██║╚════██║██╔═██╗ 
echo 	██████╔╝██║███████║██║  ██╗
echo 	╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝
echo.[40;36m

echo [ exit ] pour quiter
echo entre le chifre du lecteur exemple 1 
echo 0 = c:\
echo.

set /p user=: 
echo.
if %user% == exit exit
echo quelle est la lettre ? 
set lettre=D
set /p lettre=: 
if %lettre% == D set lettre=D
del /f active-disk.txt
@echo select disk %user% >> active-disk.txt
@echo select part 1 >> active-disk.txt
@echo assign letter=%lettre% >> active-disk.txt
if %errorlevel% == 0 (echo fichier cree [OK]) else (color 4 & echo fichier cree [ERROR])

diskpart /s active-disk.txt

del /f active-disk.txt

echo [ OK ]
timeout /t 3
start D:\
goto start