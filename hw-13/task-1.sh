#!/bin/bash

# Выполненине цикла по всем файлам с разрешением .log
for file in *.log; do 
	mv "$file" "${file%.log}_$(date +%Y-%m-%d_%H:%M:%S).log"; 
done


# Выполнение цикла по всем файлам с разрешением .py
for file in *.py; do
	mv "$file" "${file%.py}_$(git rev-parse --short HEAD).py";
done

