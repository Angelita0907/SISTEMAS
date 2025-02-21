'Escribe un script que implemente un menú interactivo 
utilizando case con dos opciones: una para saludar y otra 
para despedirse.'

#! /bin/bash

echo "1. Saludar"
echo "2. Despedir"
echo "3. Salir"
echo "Escoge un número: "
read valor

case $valor in
  1)
    echo "Holii!!"
    ;;
  2)
    echo "Adios"
    ;;
  3)
    echo exit
    ;;
  *)
    echo "valor incorrecto"
    ;;
esac
