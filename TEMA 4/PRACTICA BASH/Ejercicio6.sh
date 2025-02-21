'Usa el comando cat y tubería (pipe) para contar líneas 
en un archivo de texto (el usuario debe introducir el nombre 
como parámetro)'

#! /bin/bash

echo "indica un archivo: "
read archivo
cat "$archivo" | wc -l
