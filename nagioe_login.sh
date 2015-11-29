#!/bin/bash
echo Zjišťuji sériové číslo procesoru
SERIAL="$(cat /proc/cpuinfo | grep Serial | cut -d' ' -f 2)"
echo Sériové číslo procesoru: $SERIAL

echo Zjišťuji hostname
HOST=$(hostname)
echo Hostname: $HOST

echo Napište své jméno skupiny prosím
read NAME

echo Vaše ID
read ID

#vypsání získaných informací
echo Hostname: $HOST Název: $NAME CPUID: $SERIAL Vaše ID:  $ID

#řídící proměnná
CORR=0

while [ "$CORR" != 1 ]
do
	echo Chcete odeslat vaše údaje?\(a/n def. a\)\:
	read CONFIRM

	if [ "$CONFIRM" = a ] || [ "$CONFIRM" = A ]
		then
			echo Posílám údaje . . .
			#PLACE WGET HERE
			wget "https://ioe.zcu.cz/update.php?id=${ID}&cpuid=${SERIAL}&name=${NAME}&hostname=${HOST}"
			echo Odesláno!
			CORR=1
	elif [ "$CONFIRM" = n ] || [ "$CONFIRM" = N ]
		then 
			echo Zahzuji údaje a ukončuji program.
			echo Have a lot of fun!
			CORR=1
	else
		echo Špatná volba
		CORR=0
	fi
done
