@echo off
setlocal EnableDelayedExpansion

set /p num1= "Indica el primer número: "
set /p num2= "Indica el segundo numero: "
cls
:CALCULADORA
echo 1.Sumar
echo 2.Restar
echo 3.Multiplicar
echo 4.Dividir

set /p operacion= "Que operacion desea realizar: "

if "%operacion%"=="1" (
	echo Has elegido sumar
	set /a resultado= %num1%+%num2%
	echo %num1%+%num2% = !resultado!
	goto :CALCULADORA
)

if "%operacion%"=="2" (
	echo Has elegido restar
	set /a resultado= %num1%-%num2%
	echo %num1%-%num2% = !resultado!
	goto :CALCULADORA
)
if "%operacion%"=="3" (
	echo Has elegido multiplicar
	set /a resultado= %num1%*%num2%
	echo %num1%*%num2% = !resultado!
	goto :CALCULADORA
)
if "%operacion%"=="4" (
	echo Has elegido dividir
	set /a resultado= %num1%/%num2%
	echo %num1%/%num2% = !resultado!
	goto :CALCULADORA
)
if "%operacion%"=="5" (
	echo Has elegido salir
	goto :eof
)

