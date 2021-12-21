@echo off
echo.
echo.
echo Reset le winsock
echo [ 1 ] pour continer
echo.
echo.
set /p user= 1 ou autre:  

if %user% == 1 (goto ok) else (exit)


:ok
netsh winsock reset

pause

shutdown /r