'Escribe un script que use un bucle for para contar del 1 al 10, 
pero que se detenga al llegar a 5 usando break.'

#! /bin/bash

for (( i=1; i <= 10; i++ ))
do
  echo $i
  if (($i == 5))
  then
    break
    fi
done