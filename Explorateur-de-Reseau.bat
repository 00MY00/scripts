@echo off
taskkill /im iexplore.exe
mode con cols=90 lines=89
title [ Explorateur de reseau ]
set back=%~dp0
chcp 65001

prompt --^> 
cls

echo.[40;32m
echo ██╗███╗   ██╗███████╗ ██████╗     ██████╗ ███████╗███████╗ █████╗ ██╗   ██╗
echo ██║████╗  ██║██╔════╝██╔═══██╗    ██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║
echo ██║██╔██╗ ██║█████╗  ██║   ██║    ██████╔╝███████╗█████╗  ███████║██║   ██║
echo ██║██║╚██╗██║██╔══╝  ██║   ██║    ██╔══██╗╚════██║██╔══╝  ██╔══██║██║   ██║
echo ██║██║ ╚████║██║     ╚██████╔╝    ██║  ██║███████║███████╗██║  ██║╚██████╔╝
echo ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
echo.[40;36m
echo.
pause
:start
cls

echo.[44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m
echo.[40;36m
arp -a
echo.[44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m

echo.[40;33m
pause
nbtstat -r
echo.[44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m
echo.[40;36m
pause
echo.[40;33m
nbtstat -n

echo.[44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m
echo.[40;36m
ipconfig /all
pause
echo.[44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m  [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m [44;37m

echo.echo.[40;36m
echo.
echo entre ladresse que tu veu explorer
set /p ip=: 
cls
echo.
echo.
nbtstat -a %ip%
echo.
echo.



pause



















