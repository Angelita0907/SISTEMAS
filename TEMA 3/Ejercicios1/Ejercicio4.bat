@echo off
mkdir Ejemplo
echo Directorio "Ejemplo" creado.
cd Ejemplo
type nul > archivo.txt
echo Archivo "archivo.txt" creado .
cd ..
echo ¿Deseas eliminar el directorio "Ejemplo" y su contenido? (S/N):
set /p respuesta=
if /i "%respuesta%"=="S" (
    rmdir /s /q Ejemplo
    echo Directorio eliminado
) else (
    echo No se ha eliminado el directorio
)
