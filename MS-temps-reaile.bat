@echo off
title MS
color a
set /a ii=0
taskkill /im iexplore.exe
mode con cols=40 lines=20

:start

del p.txt & del p.txt & del pp.txt
cls
ping -n 1 www.google.ch >> p.txt
if %errorlevel% == 1 goto start

for /f "skip=2 tokens=3, 5 " %%i IN (p.txt) DO @echo %%i >> pp.txt

for /f "skip=4" %%i IN (pp.txt) DO set ms=%%i

set ms=%ms:~0,-3%
if %errorlevel% == 1 goto start

del p.txt & del pp.txt
cls

set /a ii=%ii% + 1
echo.
echo.
echo.
echo.
echo      Nombre de tesste [ %ii% ]
echo.
echo.
echo      Conexion actuelle [ %ms% ] MS
echo.
echo.
echo. 
timeout /t 1
goto start
