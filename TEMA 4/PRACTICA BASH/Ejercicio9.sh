'Escribe un script que use un bucle for para contar del 1 al 5, 
pero que omita el número 3 usando continue.'

#! /bin/bash

for ((i=0; i<=5;i++))
do
  if (($i == 3))
  then
      continue
  fi
    echo $i
done