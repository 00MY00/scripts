@echo off
taskkill /im iexplore.exe
chcp 65001
mode con cols=50 lines=20
:start
cls
echo.[40;33m
echo =============================
echo.
echo          [40;31mChange [40;35mDHCP[40;33m
echo          est Winsoket
echo.
echo =============================
echo.[40;32m


pause
cls

:change
ipconfig /release
ipconfig /renew
netsh winsock reset
rem netsh
cls
echo.[40;33m
echo         ██╗     ███████╗    ███████╗██╗   ██╗███████╗████████╗███╗   ███╗███████╗               
echo         ██║     ██╔════╝    ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝████╗ ████║██╔════╝               
echo         ██║     █████╗      ███████╗ ╚████╔╝ ███████╗   ██║   ██╔████╔██║█████╗                 
echo         ██║     ██╔══╝      ╚════██║  ╚██╔╝  ╚════██║   ██║   ██║╚██╔╝██║██╔══╝                 
echo         ███████╗███████╗    ███████║   ██║   ███████║   ██║   ██║ ╚═╝ ██║███████╗               
echo         ╚══════╝╚══════╝    ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚═╝     ╚═╝╚══════╝               
echo.                                                                                                
echo ██╗   ██╗ █████╗     ██████╗ ███████╗██████╗ ███╗   ███╗ █████╗ ██████╗ ██████╗ ███████╗██████╗ 
echo ██║   ██║██╔══██╗    ██╔══██╗██╔════╝██╔══██╗████╗ ████║██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
echo ██║   ██║███████║    ██████╔╝█████╗  ██║  ██║██╔████╔██║███████║██████╔╝██████╔╝█████╗  ██████╔╝
echo ╚██╗ ██╔╝██╔══██║    ██╔══██╗██╔══╝  ██║  ██║██║╚██╔╝██║██╔══██║██╔══██╗██╔══██╗██╔══╝  ██╔══██╗
echo  ╚████╔╝ ██║  ██║    ██║  ██║███████╗██████╔╝██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██║███████╗██║  ██║
echo   ╚═══╝  ╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo.[40;32m
pause
shutdown /r

cls
echo.[40;35m
echo ███████╗██╗███╗   ██╗
echo ██╔════╝██║████╗  ██║
echo █████╗  ██║██╔██╗ ██║
echo ██╔══╝  ██║██║╚██╗██║
echo ██║     ██║██║ ╚████║
echo ╚═╝     ╚═╝╚═╝  ╚═══╝
echo.
echo.
timeout /t 3
exit
