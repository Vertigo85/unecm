@echo off
echo   __  __ ____   ___   _____ ____ ___ 
echo  / / / // __ \ / _ \ / ___// __ `__ \
echo / /_/ // / / //  __// /__ / / / / / /
echo \__,_//_/ /_/ \___/ \___//_/ /_/ /_/ 

::Cambiar esta linea
cd /d "(pon aqui el directorio de la carpeta de ecm tools)"
::Cambiar esta linea
FORFILES /P (pon aqui el directorio de tus isos de psx) /S /M "*.ecm" /C "cmd /c echo @path" >> unecm.tmp
FOR /F "tokens=*" %%A IN (unecm.tmp) do ( unecm.exe %%A 
del %%A )
del unecm.tmp
echo todos los trabajos acabados, presione una tecla para continuar...
pause > null


