#!/bin/bash
#Script almacenar un histórico de velocidades de red
#Dependencia: Speedtest-cli

#echo "IP,Date,Day,Time,Hour,Download,Upload" > speeds.csv

#IP address 
dig +short myip.opendns.com @resolver1.opendns.com  | tr '\n' ',' >>speeds.csv

#date string
date +%Y-%m-%d  | tr '\n' ',' >>speeds.csv
date +%u  | tr '\n' ',' >>speeds.csv

#time
date +"%T" | tr '\n' ',' >>speeds.csv
#then add hour, so can look at averages per hour of the day
date +"%H" | tr '\n' ',' >>speeds.csv

#speedtest-cli --simple | tr '\n' ';' >>speeds.csv

results=$(speedtest-cli --simple)
concat=$(speedtest-cli --simple | tr '\n' ',')

#download speed and add to file
echo $concat | awk '{printf $4}'>>speeds.csv

#add comma 
printf "," >>speeds.csv

#Upload speed
echo $concat | awk '{printf $6}'>>speeds.csv
#next print
printf '\n' >>speeds.csv