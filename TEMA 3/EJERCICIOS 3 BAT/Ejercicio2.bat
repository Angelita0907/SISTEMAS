@echo off
cls
:CAMBIO CONTRASEÑA
set /p usuario="¿De que usuario deseas cambiar la contraseña? "
net user %usuario%
set /p deseado="¿Es este el usuario que quieres?(S/N) %usuario% "
if %deseado%=="N" (
	GOTO :CAMBIO CONTRASEÑA
)

set /p contraseña="Nueva contraseña: "
set /p confirmar="Confirmar contraseña: "

if %contraseña%==%confirmar% (
	net user %usuario% %contraseña%	
	echo Contraseña actualizada
)

if not %contraseña%==%confirmar% (
	echo Las contraseñas no son iguales
)

pause
exit