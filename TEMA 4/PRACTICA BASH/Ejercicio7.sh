'Escribe un script que implemente una función llamada cuadrado que reciba un 
número como parámetro y devuelva su cuadrado.'

#! /bin/bash

cuadrado (){
    numero=$1
    echo $((numero*numero))
}

echo "Indica un número"
read numero

resultado=$(cuadrado "$numero")
echo $resultado