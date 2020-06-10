#!/bin/bash

if [ $# -eq 0 ]
then
	echo "No se ha introducido ningún parámetro, saliendo"
	exit 1
fi

#Array with the id of the process to kill
targets=($(ps -e | egrep -w $1 | cut -d " " -f3))

#Array with the data of the process to kill
data_targets=($(ps -e | egrep -w $1))

#Size of the array to iterate
length=${#targets[@]}

#Loop for every process founded
for((i = 0 ; i < length ; i++)); do

	#Convert the process String to int
	int=$(printf '%d' ${targets[i]})

	#Loop for the data of the process
	echo "Process to kill: '${data_targets[i]}'"
	for((j = 0 ; j < 4 ; j++)); do
		printf "'${data_targets[j]}' "
	done
	echo #Newline

	#Kill the process
	kill -9 $int
	echo "Target finalized"
done

