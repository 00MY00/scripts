@echo off
chcp 65001
set back=%~dp0
set donlowd=%USERPROFILE%\Downloads
title Installation Python
color a


:start
cls

echo.
echo.
echo.
echo ===========================
echo ^|                         ^|
echo ^|  Installation Python    ^|
echo ^|                         ^|
echo ===========================
echo.
echo.

echo [ 1 ] Pour continuer [ exit ] pour terminer
echo.
echo.
set user=0
set /p user=

if %user% == 1 goto installe
if %user% == exit (exit)
if %user% == 0 (goto start) else (goto start)




:installe
cd %donlowd%
cls
title Installation en coure
echo.
echo.
echo.
echo ===========================
echo ^|                         ^|
echo ^|  Installation Python    ^|
echo ^|                         ^|
echo ===========================
echo.
echo.


if exist "%USERPROFILE%\AppData\Local\Programs\Python\Python39" Rundll32 User32.dll,MessageBeep & color 4 & echo Python est déja installer & timeout /T 5 & exit

goto find-my-py

:nxt


start https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe

:boucle
cls
echo en atente 
timeout /T 2
dir python*.* >> my-py.txt
if %errorlevel% == 1 goto boucle
goto find-my-py


:extraction

echo.
echo un fichier à été trouvé
echo [ %Mfichier% ]


start %Mfichier%

timeout /T 10
exit









:find-my-py
if exist my-py.txt del my-py.txt & del my-py2.txt

dir python*.* >> my-py.txt
if %errorlevel% == 1 goto nxt

for /F "skip=4 tokens=4,6" %%i IN (my-py.txt) DO echo %%i >> my-py2.txt

set /p Mfichier=<my-py2.txt
del my-py.txt & del my-py2.txt

goto extraction





