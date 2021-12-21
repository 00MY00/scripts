@echo off
set back=%~dp0
:start
del t.txt
del mod-find.txt
cls
title EXTRACTEUR cree par KUROAKASHIRO
cd C:\Program Files
if not exist WinRAR echo [ERREUR] il te manque WinRAR & echo. & timeout /t 10 & exit
color a

cd %USERPROFILE%\Downloads


dir mods*.rar >> mod-find.txt

for /F  "skip=4 tokens=4,5*" %%i IN (mod-find.txt) Do @echo %%i >> t.txt

set /p mods=< t.txt
del t.txt
del mod-find.txt






del tt.txt
del ttt.txt
del forg-find.txt
cls
cd %USERPROFILE%\\Documents\forge\Instances

dir *.* >> forg-find.txt

for /F  "skip=7 tokens=4,5*" %%i IN (forg-find.txt) Do @echo %%i >> tt.txt


for /F "skip=1" %%i IN (tt.txt) Do @echo %%i >> ttt.txt
set /p forg-find=< ttt.txt
del tt.txt
del ttt.txt
del forg-find.txt

echo Nom du dosier forge [ %forg-find% ]
echo Nom du dossier de mods [ %mods:~0,-1% ]

timeout /t 10


cd C:\Program Files\WinRAR


unrar x "%USERPROFILE%\Downloads\%mods:~0,-1%" "%USERPROFILE%\Documents\forge\Instances\%forg-find:~0,-1%\mods" 
echo.
pause

cd %USERPROFILE%\Downloads\
color 4
del %mods%

