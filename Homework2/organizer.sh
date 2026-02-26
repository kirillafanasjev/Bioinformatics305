#!/bin/bash

#Создаем папку fastqs
mkdir -p fastqs

#Создаем 10 файлов с именами sample_i.fastq
for i in {1..10}
do
	#Записываем строку "This is sample number i" в создаваемый файл
	echo "This is sample number $i" > "fastqs/sample_$i.fastq"
done

echo "Создано 10 файлов в папке fastqs"
