#!/bin/bash

#Проверка наличия файла:
FILE="report.txt"

if [ -f "$FILE" ]; then
	#Вывод надписи и удаление файла:
	echo 'File exists, removing...'
	rm "$FILE"
else
	#Вывод надписи и создание пустого файла:
	echo 'File not found, creating...'
	touch "$FILE"
fi
