#!/bin/bash

# Создание переменных
out_file=$1;
dir=$2;
extension=$3;

# Проверка количества аргументов
if [ "$#" -ne 3 ]; then
	echo "Неверный формат ввода"
	exit 1
fi

# Проверка существования каталога
if [ ! -d "$dir" ]; then
	echo "Ошибка, каталог не найден"
	exit 2
fi

# Создание выходного файла
: > "$out_file"

# Поиск файлови и запись в выходной файл
find "$dir" -maxdepth 1 -type f -name "*.$extension" -exec basename {} \; > "$out_file"
