#!/bin/bash

# Поиск файла super_secret_key.txt в текущей папке
if [ -f "super_secret_key.txt" ] 2> /dev/null; then
    # Если найден - записываем в found.log
    echo "Found it!" > found.log
else
    # Если не найден - выводим сообщение в терминал
    echo "I did my best"
fi
