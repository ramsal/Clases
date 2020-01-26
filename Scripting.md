# Bash Scripting

## Requisitos:
* Consola de cualquier distribución de Linux `Ctrl + Alt + T`
* Creamos el fichero `touch script1.sh`
* Otorgamos los permisos necesarios para la ejecución `chmod +x script1.sh`
* Accesdemos al fichero para desarrollar el script `vim script1.sh`
* Ejecutamos el script `./script1.sh`

## Prácticas
1. Hola Mundo
~~~~
#!/bin/bash
echo "Hello World"
~~~~

2. Escribir en pantalla
~~~~
#!/bin/bash
echo "Escribimos un Texto"
echo -n "Escribir sin salto de linea"
~~~~

3. Comentarios y Variables
~~~~
#!/bin/bash
#Variable suma
((suma=2+4))
#Imprimir el resultado
echo $sums
~~~~


4. Bucle For
~~~~
#!/bin/bash
#Contar de 1 a 5

for (( i=1; i<=5; i++ ))
do
echo -n "$i "
done

printf "\n"
~~~~


5. Bucle While
~~~~
#!/bin/bash
i=0

while [ $i -le 5 ]
do
echo Número: $i
((i++))
done
~~~~


6. Recibir entrada de teclado
~~~~
#!/bin/bash

echo -n "Introduzca su nombre:"
read nombre

echo "Su nombre es: $nombre"
~~~~


7. Condicional If [ -gt | -lt | -le | -ge ] 
~~~~
#!/bin/bash

echo -n "Dime tu edad: "
read numero

if [[ $numero -gt 18 ]]
then
echo "Eres mayor de edad"
else
echo "Eres menor de edad"
fi
~~~~
