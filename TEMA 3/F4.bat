@echo off
echo Dame un numero:
set /p n1=
echo Dame otro numero:
set /p n2=
if %n1% LSS %n2% (
echo el primer numero es menor que el segundo
) else (
echo el segundo numero es menor que el primero
)