@echo off
taskkill /im iexplore.exe
set back=%~dp0
del /f Mon_fichier_convert
cls

echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo          convert 
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$

mkdir Mon_fichier_convert


cd %userprofile%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets

copy *.* %back%Mon_fichier_convert

cd %back%Mon_fichier_convert

ren *.* *.jpg

start %back%Mon_fichier_convert

exit
