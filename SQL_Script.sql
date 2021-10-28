 --Вывести все поля и все строки.
SELECT * FROM qa_users;
--Вывести только Id пользователей
SELECT user_id FROM qa_users;
--Вывести только имя пользователей
SELECT username FROM qa_users;
-- Вывести только email пользователей
SELECT email FROM qa_users;
--Вывести имя и email пользователей
SELECT username, email FROM qa_users;
--Вывести id, имя, email и дату создания пользователей
SELECT user_id, username, email, created_on  FROM qa_users;
--Вывести пользователей где password 12333
SELECT username, password FROM qa_users where password = '12333';
--Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT username, created_on FROM qa_users where created_on = '2021-03-26 00:00:00';
--Вывести пользователей где в имени есть слово Анна
SELECT * FROM qa_users where username like 'Anna%';
--Вывести пользователей где в имени в конце есть 8
SELECT * FROM qa_users where username like '%8';
--Вывести пользователей где в имени в есть буква а
SELECT * FROM qa_users where username like '%a%';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT username, password, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and password = '1m313';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and  username like  '%Andrey%';
--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and  username like  '%8%';
--Вывести пользователя у которых id равен 10
SELECT * FROM qa_users where user_id = '10';
--Вывести пользователя у которых id равен 53
SELECT * FROM qa_users where user_id = 53;
-- Вывести пользователя у которых id больше 40
SELECT * FROM qa_users where user_id > 40;
--Вывести пользователя у которых id меньше 30
SELECT * FROM qa_users where user_id < 30;
--Вывести пользователя у которых id меньше 27 или больше 88
SELECT * FROM qa_users where user_id < '27' or user_id > '88';
--Вывести пользователя у которых id меньше либо равно 37
SELECT user_id, username FROM qa_users where user_id <= 37;
--Вывести пользователя у которых id больше либо равно 37
SELECT user_id, username FROM qa_users where user_id >= 37;
--Вывести пользователя у которых id больше 80 но меньше 90
SELECT user_id, username FROM qa_users where user_id > 80 and user_id < 90;
--Вывести пользователя у которых id между 80 и 90
SELECT user_id, username FROM qa_users where user_id between 80 AND 90;
--Вывести пользователей где password равен 12333, 1m313, 123313
SELECT username, password FROM qa_users where password in ('12333', '1m313', '123313');
--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT username, created_on FROM qa_users where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--Вывести минимальный id 
SELECT MIN(user_id) FROM qa_users;
--Вывести максимальный.
SELECT Max(user_id) FROM qa_users;
--Вывести количество пользователей
SELECT count (user_id) FROM qa_users
--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
SELECT user_id, username, created_on FROM qa_users order by created_on ASC;
--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
SELECT user_id, username, created_on FROM qa_users order by created_on DESC;
