# SQL HW_1

![DBeaver 21 2 3 -  qa_db_2 1  Script 2021-10-28 22-57-30](https://user-images.githubusercontent.com/90832725/139301441-e7963719-74af-4643-a9da-e92fd88a641c.png)

Подключится к:
```sh
Host: 159.69.151.133
Port: 5056
User: user_22_x
Pass: 123
Table: qa_users
```

---
Создать текстовый файл в котором на против каждой команды напишите sql запрос который выполнит команду.

Текстовый файл выгружайте на гит и скидывайте ссылки на проверку.

---
1.Вывести все поля и все строки.

`SELECT * FROM qa_users;`

2.Вывести только Id пользователей.

`SELECT user_id FROM qa_users;`

3.Вывести только имя пользователей.

`SELECT username FROM qa_users;`

4.Вывести только email пользователей.

`SELECT email FROM qa_users;`

5.Вывести имя и email пользователей.

`SELECT username, email FROM qa_users;`

6.Вывести id, имя, email и дату создания пользователей.

`SELECT user_id, username, email, created_on  FROM qa_users;`

7.Вывести пользователей где password 12333

`SELECT username, password FROM qa_users where password = '12333';`

8.Вывести пользователей которые были созданы 2021-03-26 00:00:00
`SELECT username, created_on FROM qa_users where created_on = '2021-03-26 00:00:00';`

9.Вывести пользователей где в имени есть слово Анна.

`SELECT * FROM qa_users where username like 'Anna%';`

10.Вывести пользователей где в имени в конце есть 8.

`SELECT * FROM qa_users where username like '%8';`

11.Вывести пользователей где в имени в есть буква "а".

`SELECT * FROM qa_users where username like '%a%';`

12.Вывести пользователей которые были созданы 2021-07-12 00:00:00

`SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00';`

13.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

`SELECT username, password, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and password = '1m313';`

14.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово "Andrey".

`SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and  username like  '%Andrey%';`

15.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра "8".

`SELECT username, created_on FROM qa_users where created_on = '2021-07-12 00:00:00' and  username like  '%8%';`

16.Вывести пользователя у которых id равен 10.

`SELECT * FROM qa_users where user_id = '10';`

17.Вывести пользователя у которых id равен 53.

`SELECT * FROM qa_users where user_id = 53;`

18.Вывести пользователя у которых id больше 40.

`SELECT * FROM qa_users where user_id > 40;`

19.Вывести пользователя у которых id меньше 30.

`SELECT * FROM qa_users where user_id < 30;`
20.Вывести пользователя у которых id меньше 27 или больше 88.

`SELECT * FROM qa_users where user_id < '27' or user_id > '88';`

21.Вывести пользователя у которых id меньше либо равно 37.

`SELECT user_id, username FROM qa_users where user_id <= 37;`

22.Вывести пользователя у которых id больше либо равно 37.

`SELECT user_id, username FROM qa_users where user_id >= 37;`

23.Вывести пользователя у которых id больше 80 но меньше 90.

`SELECT user_id, username FROM qa_users where user_id > 80 and user_id < 90;`

24.Вывести пользователя у которых id между 80 и 90.

`SELECT user_id, username FROM qa_users where user_id between 80 AND 90;`

25.Вывести пользователей где password равен 12333, 1m313, 123313

`SELECT username, password FROM qa_users where password in ('12333', '1m313', '123313');`

26.Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

`SELECT username, created_on FROM qa_users where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');`

27.Вывести минимальный id.

`SELECT MIN(user_id) FROM qa_users;`

28.Вывести максимальный.

`SELECT Max(user_id) FROM qa_users;`

29.Вывести количество пользователей.

`SELECT count (user_id) FROM qa_users`

30.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

`SELECT user_id, username, created_on FROM qa_users order by created_on ASC;`

31.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

`SELECT user_id, username, created_on FROM qa_users order by created_on DESC;`

