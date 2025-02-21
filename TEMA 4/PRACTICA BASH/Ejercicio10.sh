'Escribe un script que solicite al usuario el nombre de un archivo 
y verifique si existe usando una estructura if.'

#! /bin/bash

echo "Introduce un archivo: "
read archivo

if [ -e "$archivo" ];
then
    echo "El archivo existe"
else
    echo "No existe el archivo"
fi