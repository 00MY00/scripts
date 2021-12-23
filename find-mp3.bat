@echo off
chcp 65001
title [ Find MP3 ]
del /f t.txt
del /f mp3Find.txt
cls
echo.[40;35m
echo ███████╗██╗███╗   ██╗██████╗     ███╗   ███╗██████╗ ██████╗ 
echo ██╔════╝██║████╗  ██║██╔══██╗    ████╗ ████║██╔══██╗╚════██╗
echo █████╗  ██║██╔██╗ ██║██║  ██║    ██╔████╔██║██████╔╝ █████╔╝
echo ██╔══╝  ██║██║╚██╗██║██║  ██║    ██║╚██╔╝██║██╔═══╝  ╚═══██╗
echo ██║     ██║██║ ╚████║██████╔╝    ██║ ╚═╝ ██║██║     ██████╔╝
echo ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝     ╚═╝     ╚═╝╚═╝     ╚═════╝ 
echo.[40;36m

echo [40;37mpermet de transvaser les fichier .mp3 du dossier [40;33mDownloads[40;37m
echo.
echo.
pause

cls


if exist %USERPROFILE%\Desktop\mp3 goto next

mkdir %USERPROFILE%\Desktop\mp3


:next

cd %USERPROFILE%\Downloads



copy *.mp3 %USERPROFILE%\Desktop\mp3 /Y


pause

del *.mp3

start %USERPROFILE%\Desktop\mp3



