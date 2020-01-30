#!/bin/bash
#Ejercicio de Clase

clear
echo "Equipos Conectados"

cont=1
total=0

while [ $cont -lt 250 ]; do
        ping 192.168.1.$cont -c2>/dev/null
        if [ $? -eq 0 ]; then
                echo
                echo "Equipo 192.168.1.$cont CONECTADO"
                total=$[$total+1]
        fi
        cont=$[$cont+1]
done

echo "*******************************************"
echo "           $total Equipos Conectados"
echo "*******************************************"
