# Bash Scripting

## Requisitos:
* Consola de cualquier distribución de Linux `Ctrl + Alt + T`
* Creamos el fichero `touch script1.sh`
* Otorgamos los permisos necesarios para la ejecución `chmod +x script1.sh`
* Accedemos al fichero para desarrollar el script `vim script1.sh`
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
echo $suma
~~~~


4. Bucle For
~~~~
#!/bin/bash
#Contar de 1 a 5

for (( i=1; i<=5; i++ ))
do
echo -n "$i "
printf "\n"
done
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

echo -n "Hola, introduzca su nombre:"
read nombre

echo "Su nombre es: $nombre"
~~~~


7. Condicional If  [ -gt | -lt | -le | -ge ] 
~~~~
#!/bin/bash

echo -n "Digame su edad: "
read numero

if [[ $numero -gt 18 ]]
then
echo "Eres mayor de edad"
else
echo "Eres menor de edad"
fi
~~~~


8. Envío de parámetros en consola  `./script8.sh X=2 Y=8`
~~~~
#!/bin/bash

for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $index in
X) x=$val;;
Y) y=$val;;
*)
esac
done
((resultado=x+y))
echo "X+Y=$resultado"
~~~~


9. Salida con Sleeps
~~~~
#!/bin/bash

echo "Hola Mundo"

if [1 -eq 1 ]
then
  echo "Adios Mundo"
fi
sleep 5
while true
do
  echo "Me Voy"
done
~~~~

10. SwitchCase
~~~~
#!/bin/bash

echo -n "Pon un País "
read COUNTRY

echo -n "El idioma oficial de $COUNTRY es "

case $COUNTRY in

  Lituania)
    echo -n "Lituano"
    ;;

  Rumania)
    echo -n "Rumano"
    ;;

  Italia)
    echo -n "Italiano"
    ;;

  *)
    echo -n "unknown"
    ;;
esac
~~~~

x. ExtraBall
~~~~
#!/bin/bash

sudo apt update
echo "script ejecutado - $(date)" >> /home/test/Documentos/log-script.txt

exit
~~~~
Crear un servicio  
nano /etc/systemd/system/mi-primer-servicio.service
~~~~
[Unit]
Description=Script service
After=network.target network-online.target
Wants=network-online.target

[Service]
ExecStart=/home/test/Documentos/mi-primer-script.sh

[Install]
WantedBy=multi-user.target
~~~~
sudo chmod 777 /etc/systemd/system/mi-primer-servicio.service   
sudo systemctl start mi-primer-servicio   
sudo systemctl enable mi-primer-servicio   
sudo systemctl status mi-primer-servicio   
