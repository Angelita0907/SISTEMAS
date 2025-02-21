'Escribe un script que cuente del 1 al 10 usando un bucle until 
e imprima cada número en pantalla.'

#! /bin/bash

number=1

until [ $number -eq 11 ]
do
  echo $number
  number=$((number + 1))
done
