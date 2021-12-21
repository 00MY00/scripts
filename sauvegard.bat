@echo on
color a

title backup

set back =%~dp0

cd C:\Users\alecc\OneDrive\Documents
if exist tim.txt del tim.txt
time /T >> tim.txt

for /F "delims=:" %%i IN (tim.txt) DO set t1=%%i

for /F "tokens=2,3 delims=:" %%i IN (tim.txt) DO set t2=%%i
del tim.txt


if exist dat.txt del dat.txt
date /T >> dat.txt
set /p d1= < dat.txt
del dat.txt

set tt=%d1:~0,-1%.%t1%%t2%





rem cd d:
rem mkdir "backup%tt%"











pause



