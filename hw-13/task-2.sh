#!/bin/bash

# Создание переменной для ввода имени файла
file="$1"

# Перебираем слова по тексту 
for word in $(cat "$file"); do
    if [ "$word" != "$prev" ]; then
        echo -n "$word "
    fi
    prev="$word"
done

# Переход на новую строку в конце
echo


