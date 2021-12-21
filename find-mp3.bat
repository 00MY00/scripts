@echo off
color a
title Find MP3
del t.txt
del mp3Find.txt
cls
if exist %USERPROFILE%\Desktop\mp3 goto next

mkdir %USERPROFILE%\Desktop\mp3


:next

cd %USERPROFILE%\Downloads


copy *.mp3 %USERPROFILE%\Desktop\mp3 /Y


pause

del *.mp3

start %USERPROFILE%\Desktop\mp3



