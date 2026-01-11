#!/bin/bash

#Создаем переменную имени выходного файла
output_file="args.txt"

#Вывод аргументов в консоль и в файл
echo "$@" | tee "$output_file"
