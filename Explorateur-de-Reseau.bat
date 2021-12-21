@echo off

title Explorateur de reseau
set back=%~dp0
chcp 65001

prompt --^> 

:start
cls
color a


arp -a
nbtstat -r
nbtstat -n

echo.
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



















