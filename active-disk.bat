@echo off
color a
echo.
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo selectioner le disk probablement le 1
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.

set /p user=
del active-disk.txt
@echo select disk %user% >> active-disk.txt
@echo select part 1 >> active-disk.txt
@echo assign letter=D >> active-disk.txt
if %errorlevel% == 0 (echo fichier cree [OK]) else (color 4 & echo fichier cree [ERROR])

diskpart /s active-disk.txt

del active-disk.txt

echo [ OK ]
timeout /t 3
start D:\
exit