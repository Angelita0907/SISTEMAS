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


# continue_break.sh

#! /bin/bash

for ((i=0; i<10;i++))
do
  if [ $i -eq 3 ] || [ $i -eq 7 ]
  then
      continue
  fi
    echo $i
done


# argumentos

#! /bin/bash
'@ son todos los argumentos que recibe el script'

args=("$@")

echo "Resultasdo: ${args[0]} - ${args[1]} , ${args[2]}" 


# stdin
'imprime linea a linea el archivo que le pasemos'

#! /bin/bash

while read line
do
  echo $line
done < "${1:-/dev/stdin}"


#stderr y stdout

'archivo.txt es el archivo que nosotros le indiquemos'

#! /bin/bash

ls -123 >archivo.txt 2 >$1


# pipe

#! /bin/bash

MESSAGE="hola mundo"

echo $MESSAGE | wc -m


# string

#! /bin/bash

echo "Indica un nombre: "
read name

echo "Ahora un adjetivo: "
read adjective

# result="$name is $adjective"
# echo $result

echo ${name,,}
echo ${name^^}

# Este convierte las vocales a minúsculas
echo ${name,,[AEIOU]}

# Este convierte las vocales a mayúsculas
echo ${name^^[aeious]}


# numbers

'exor es para calculos matematicos'

#! /bin/bash

x=10
y=20

echo $(( x + y ))
echo $(( x - y ))
echo $(( x * y ))
echo $(( x / y ))
echo $(( x % y ))

echo $(expr $x + $y )
echo $(expr $x - $y )
echo $(expr $x \* $y )
echo $(expr $x / $y )
echo $(expr $x % $y )


# arrays

#! /bin/bash

names=( "john" "mark" "james" "mary" "jane" "sue" "marcos" )

echo "Los nombres son: ${names[*]}"
echo "Los nombres son: ${names[@]}"

echo "item 0: ${names[0]}"
echo "item 2: ${names[2]}"

echo "los índices: ${!names[@]}"

echo "el total de items: ${#names[@]}"
echo "el total de items: ${#names[*]}"

echo "El último elemento es: ${names[${#names[@]}-1]}"

for name in ${names[@]}
do
  echo "My name is : $name"
done

#delete an item
#unset names[1]
#echo "Los nombres son: ${names[*1]

#append
#names[$(#names[@]}]="bob"
#echo items: $(names[+]}"

#names+("Bob")
#names+("Maria")
#names+("Juan")
#echo "items: $(names[*]}"


# funciones

#! /bin/bash

function diHola() {
  message="Hola yo soy $1, tengo $2 años"
  echo $message
}

diHola "jose" 50
diHola "jesus" 30

function diHola2() {
  message="Hola"
  echo $message
}

diHola2

# directorios

#! /bin/bash

echo "nombre del archivo: "
read file

if [ -f $file ]
then 
  while IFS= read -r line
  do  
    echo $line
  done < $file
else
  echo "El archivo $file no existe"
fi
