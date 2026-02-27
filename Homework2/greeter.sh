#!/bin/bash

#Если на входе меньше трех аргументов, то выводим ошибку:
if [ $# -lt 3 ]; then
	echo 'Error: Not enough arguments provided'
	exit 1
fi

#Если аргументов 3, то выводим приветствие:
echo "Welcome, $1 $2 from group $3!"
