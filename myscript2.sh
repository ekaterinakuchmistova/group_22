#!/bin/bash
echo 1) Посмотреть где я
pwd
echo 2) Создать папку 
mkdir cource.22
echo 3) Зайти в папку  
cd cource.22
echo 4) Создать 3 папки
mkdir lesson1
mkdir lesson2
mkdir lesson3
echo 5) Зайти в папку lesson1
cd lesson1
echo 6) Создать 5 файлов (3 txt, 2 json)
echo Создаём 3 файла txt: task1.txt task2.txt task3.txt
touch task1.txt
touch task2.txt
touch task3.txt
echo Создаём 2 файла json: task4.json task5.json
touch task4.json
touch task5.json
echo 7) Создать 3 папки : answers1, answers2, answers3
mkdir answers1
mkdir answers2
mkdir answers3
echo 8. Вывести список содержимого папки
ls -la 
echo 12) Выйти из папки на уровень выше
cd ../
echo 13) переместить любые 2 файла, которые вы создали, в любую другую папку.
mv task4.json task5.json ../lesson2
echo 14) скопировать любые 2 файла, которые вы создали, в любую другую папку.
cp task1.txt task2.txt task3.txt ../lesson2
echo 15) Найти файл (task1.txt) по имени
find ./ -name "task1.txt"
echo 20) вывести дату и время
date







