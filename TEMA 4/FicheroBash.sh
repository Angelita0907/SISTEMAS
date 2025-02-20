# helloworld.sh
#! /bin/bash
# lo guardamos en un fichero
echo "Hola Mundo!" > hola.txt
cat >> hola.txt

# formas de hacer comentarios
: 'para escribir comentarios 
de 2 líneas y puede llegar a ser
mas largo'

# output.sh

#! /bin/bash

cat << myText
esto es un texto
que se mostrara
por la terminal
myText

cat << abc
esto es un texto
que se mostrara
por la terminal
abc

# read.sh
#! /bin/bash

echo "Introduce tu edad: "
read age
echo "Esta es tu edad: $age años"

# conditionals.sh

#! /bin/bash

'para comparar edades por 
una variable'

age =17

if (( &age > 18 ))
then
  echo "eres un adulto"
elif (( &age >= 17 ))
then
  echo "casi eres un adulto"
else
  echo "eres un niño"
fi


# logical_operator.sh

#! /bin/bash

'validar edad con operadores logicos
podemos poner la edad que queramos 
para ir comprobandolo'

age = 33

# 18 < age < 40

if [[ $age -gt 18 || $age -lt 40 ]]
then
  echo "edad valida"
else
  echo "edad no valida"
fi


# case.sh

#! /bin/bash

echo "Escoge entre el valor 1 o 2: "
read valor

case $valor in
  1)
    echo "Escogiste el numero 1"
  ;;
  2)
    echo "Escogiste el numero 2"
  ;;
  *)
    echo "valor incorrecto"
  ;;
esac


# loop.sh

#! /bin/bash

number=1

until [ $number -ge 10 ]
do
  echo $number
  number=$((number + 1))
done

# ahora vamos a hacer un bucle pero con for

'asi seria del 1 al 5 pero podemos hacerlo con
intervalos de donde empieza donde acaba y cada cuanto'

# for i in 1 2 3 4 5 
for {0..100..20}
do
  echo $i
done

# otra forma
for (( i=0; i < 100; i+=20 ))
do
  echo $i
done


# continue_brea.sh

#! /bin/bash

for ((i=0; i<10;i++))
do
  if [ $i -eq 3 ] || [ $i -eq 7 ]
  then
      continue
  fi
    echo $i
done


# 









