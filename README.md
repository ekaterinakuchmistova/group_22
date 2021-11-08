# FIDDLER
## Fiddler HomeWork

`| Ex_0 |:` Отфильтровать выдачу запросов по нужному ip.

`Protocol: http
IP: 162.55.220.72
Port: 5005`

==================


`|Ex_1 |:` 
Method: GET;

EndPoint: /get_method; request url params: name: str, age: int.  
![Fiddler Everywhere HW1](https://user-images.githubusercontent.com/90832725/140714909-0580b437-5031-4dc3-94ef-66a3755b01ed.png)

 `response: 
[
    “Str”,
    “Int”
]
`


`Task:Сделать правила:`

 - Подменить в url, чтобы в запросе поменялся name, которые вы вписали в Postman.
 - Подменить в url, чтобы в запросе поменялся age, которые вы вписали в Postman. 


==================

`| Ex_2 |:`
Method: POST; EndPoint: /user_info_3; request form data: name: str, age: int, salary: int.

`response:` 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}

`Task: Сделать правила:`

 - Подменить тело запроса чтобы поменялся name которые вы вписали в Postman.
 - Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
 - Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
 
![Postman 2021 HW1 2](https://user-images.githubusercontent.com/90832725/140717852-6a8a3ada-b097-458d-9d22-d0eeae519a91.png)
 
 - Подменить тело запроса чтобы удалился age которые вы вписали в Postman.  (Получить 500 код)
 - В ответе поменять children на neighbors.
  
![Fiddler Everywhere HW2 2](https://user-images.githubusercontent.com/90832725/140718782-41e4253d-4b80-43e9-b3f5-d045d662fc22.png)
 
 - В ответе поменять значение зарплаты u_salary_1_5_year на другую цифру. 

![Fiddler Everywhere HW2 3](https://user-images.githubusercontent.com/90832725/140719055-85a6350a-4ebc-41b5-a6c3-a15f16c2ff59.png)
 - В ответе удалить параметр salary. 

==================

`| Ex_3|:`
Method: GET; EndPoint: /object_info_1; request url params - name: str, age: int, weight: int.

`response:` 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}

`Task: Сделать правила:`

 - Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе поменялся salary которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился weight которые вы вписали в Postman.

![Fiddler Everywhere HW3 1](https://user-images.githubusercontent.com/90832725/140719838-25592d33-490b-41a0-ae39-806ca77ebbf0.png)

 - В ответе удалить параметр  daily_food.
 ![Fiddler Everywhere HW3 2](https://user-images.githubusercontent.com/90832725/140720137-b1b9379a-ea84-4921-b3d9-29b62f47d2c2.png)
 - В ответе поменять значение параметра daily_food на другую цифру. 
 - В ответе переименовать daily_sleep на sleep
 - В ответе поменять значение параметра daily_sleep на другую цифру. 

==================

`| Ex_4 |:`
Method: GET
EndPoint: /object_info_3
request url params: 
 name: str
 age: int
 salary: int

`response:`
 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'pets': {'cat':{'name':'Sunny',
                                     'age': 3},
                              'dog':{'name':'Luky',
                                     'age': 4}},
                     'u_salary_1_5_year': salary * 4}
          }

`Task: Сделать правила:`

 - Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился name которые вы вписали в Postman.
 - В ответе удалить параметр  salary.
 - В ответе поменять значение параметра cat на другой json.
 - Получить 405 код 

![Fiddler Everywhere cat](https://user-images.githubusercontent.com/90832725/140722490-9020880f-f69b-44df-947f-58407e038973.png)


==================

`| Ex_5 |:`
Method: GET
EndPoint: /object_info_4
request url params: 
 name: str
 age: int
 salary: int

`response: `
{'name': name,
          'age': int(age),
          'salary': [salary, str(salary * 2), str(salary * 3)]}


`Task:`

 - Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился salary которые вы вписали в Postman.
 - В ответе удалить параметр  salary.
 - В ответе поменять значение параметра salary на значение текстового типа. 
 - Получить 405 код

==================

`| Ex_6 |:`
Method: POST
EndPoint: /user_info_2
request form data: 
 name: str
 age: int
 salary: int

`response: `
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }


`Task: Сделать правила:`

 - Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
 - Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
 - Подменить тело запроса чтобы удалился salary которые вы вписали в Postman.
 - В ответе поменять qa_salary_after_6_months на qa_salary_after_10_months. 
 - В ответе поменять значение зарплаты qa_salary_after_1.5_year на другую цифру. 
 - В ответе удалить параметр person. 
 - В ответе поменять значение параметр person с json на xml. 


![Fiddler Everywhere 2021-11-08 14-35-51](https://user-images.githubusercontent.com/90832725/140722777-726c4029-b55f-46f3-8788-79a428fe07a0.png)














