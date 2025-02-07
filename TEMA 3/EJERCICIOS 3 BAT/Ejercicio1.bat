@ECHO OFF
cls
:MENU
echo 1.Listar Usuarios
echo 2.Listar Grupos
echo 3.Salir
set /p opcion=Elija una opcion:

if "%opcion%"=="1" (
	echo usuarios disponibles en el equipo:
	net user
	pause
	GOTO :MENU
)

if "%opcion%"=="2" (
	echo grupos disponibles en el equipo:
	net localgroup
	pause
	GOTO :MENU
)

if "%opcion%"=="3" (
	echo Saliendo del programa
	GOTO :EOF
)