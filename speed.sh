#!/bin/bash
#Script almacenar un histórico de velocidades de red
#Dependencia: Speedtest-cli
#Posibilidad de implementar Gnuplot para generación de gráficos

#echo "IP,Date,Day,Time,Hour,Download,Upload" > speeds.csv

#Dirección IP 
dig +short myip.opendns.com @resolver1.opendns.com  | tr '\n' ',' >>speeds.csv

#Fecha
date +%Y-%m-%d  | tr '\n' ',' >>speeds.csv
date +%u  | tr '\n' ',' >>speeds.csv

#Hora
date +"%T" | tr '\n' ',' >>speeds.csv
date +"%H" | tr '\n' ',' >>speeds.csv

#speedtest-cli --simple | tr '\n' ';' >>speeds.csv

results=$(speedtest-cli --simple)
concat=$(speedtest-cli --simple | tr '\n' ',')

#Velocidad de Descarga
echo $concat | awk '{printf $4}'>>speeds.csv

#Separador
printf "," >>speeds.csv

#Velocidad de Carga
echo $concat | awk '{printf $6}'>>speeds.csv

#Next
printf '\n' >>speeds.csv
