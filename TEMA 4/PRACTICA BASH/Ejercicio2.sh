'Escribe un script que cuente del 1 al 10 usando un 
bucle while e imprima cada número en pantalla'

#! /bin/bash 

num=1

while [ $num -le 10 ];
do
    echo $num
    ((num++))
done
