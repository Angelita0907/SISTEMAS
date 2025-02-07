@echo off
setlocal EnableDelayedExpansion
:TABLAS DE MULTIPLICAR
cls
set /p num1="Indica el primer numero: "
set /p num2="Indica el segundo numero: "

if not %num2% GTR %num1% (
	"Ha ocurrido un error, vuelve a introducir los numeros: "
	GOTO :TABLAS DE MULTIPLICAR
)

for /L %%i in (%num1%,1,%num2%) do (
	echo ==============
	echo Tabla del %%i
	echo ==============
	for /L %%j in (1,1,10) do (
		set /a resultado= %%i*%%j
		echo %%i x %%j= !resultado!

	)
)
pause
