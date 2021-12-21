@echo off


:start
cls
echo =============================
echo.
echo          Change DHCP
echo.
echo =============================
echo ok pour continuer


set /p user=
if user == ok (goto change) else (goto start)


:change
ipconfig /release
ipconfig /renew
rem netsh


pause