'Escribe un script que solicite un número al usuario 
y determine si es par o impar usando una estructura if.'

#! /bin/bash

echo "Indica un numero: "
read num 

if (( $num%2 == 0))
then 
    echo "Numero par"
else
    echo "Es impar"
fi
