# Postman


![image](https://user-images.githubusercontent.com/117518577/211895356-ca5560c0-d0e8-406d-a486-79c243072004.png)


Тестирование GET-запросов
Повторимся, GET-запросы используются для получения данных с сервера. GET-запросы не меняют состояние данных на сервере (не добавляют, не удаляют и не изменяют данные).

Для обучения мы будем использовать простой открытый API: http://dummy.restapiexample.com/api/v1/employees

Давайте отправим GET-запрос с помощью Postman:

Открываем Postman

Мы рекомендуем завести аккаунт и использовать его для входа (чтобы сохранять запросы, коллекции и окружения для использования в будущем).

Шаг 1: Открываем новую вкладку, чтобы создать запрос (нажимаем на «+»):

![image](https://user-images.githubusercontent.com/117518577/211895678-62c4cbdf-fc7c-4298-b9ef-45e4b97fd59b.png)

Шаг 2: Создаем GET-запрос:

Задаем тип запроса — GET
Задаем request URL — https://jsonplaceholder.typicode.com/users
Нажимаем на кнопку SEND, чтобы выполнить запрос.
Вы увидите 200 OK в результате, если запрос выполнится успешно. Бывают случаи, когда GET-запросы выполняются с ошибками (например, при неправильном URL, некорректными авторизационными данными или из-за ошибок на стороне сервера)
После выполнения запроса вы должны будете увидеть данные от сервера во вкладке Body.

На скриншоте ниже вы видите код ответа сервера (Status: 200 OK), время выполнения запроса (Time: 1700ms) и размер ответа (Size: 1.62 KB)

По наведению на Time и Size появляется всплывающее окно с подробной информацией.

Время ответа сервера (Response Time)

![image](https://user-images.githubusercontent.com/117518577/211895782-a4780f9a-c303-4c57-8eed-c9716df5c145.png)

Размер ответа (Response Size)

![image](https://user-images.githubusercontent.com/117518577/211895824-7acbfaa3-ea0e-4c34-ac6d-6db273b12740.png)

Куки (Cookies): Здесь можно увидеть информацию о куках, возвращаемых сервером

![image](https://user-images.githubusercontent.com/117518577/211895867-d67bfbbf-8518-4b49-b50a-92228a11aaa5.png)

Хедеры ответа от сервера (Response headers)

![image](https://user-images.githubusercontent.com/117518577/211895916-44ebb1bb-04f7-4d42-b55d-cb227a5d4ec1.png)

Тестирование POST-запросов
POST-запросы используются для отправки новых данных на сервер. Давайте попробуем с помощью POST-запроса добавить нового пользователя. Для этого мы отправим информацию о новом пользователе в теле POST-запроса.

Задаем тип запроса — POST
Задаем request URL — https://jsonplaceholder.typicode.com/users
Нажимаем на вкладку Body, выбираем «Raw» — JSON. Вставляем данные о пользователе из сниппета ниже:

{
    "id": 11,
    "name": "Rajkumar SM",
    "username": "stm",
    "email": "user@testengineer.ru",
    "address": {
      "street": "Gagarina",
      "suite": "31",
      "city": "Moscow",
      "zipcode": "600007",
      "geo": {
        "lat": "10.0000",
        "lng": "80.0000"
      }
    },
    "phone": "1-2345-6-7890",
    "website": "testengineer.ru",
    "company": {
      "name": "testengineer.ru",
      "catchPhrase": "website for QA engineers",
      "bs": "real-time tutorials"
    }
}

После этого наживаем кнопку SEND и отправляем POST-запрос.

Примечание: для проверки корректности вашего json можно использовать Jsonformatter

![image](https://user-images.githubusercontent.com/117518577/211896181-fb7b233e-5405-4cdc-8c40-62807f3a01db.png)

Вы увидите 201 Created message (как на скриншоте ниже), если запрос выполнился успешно.
Данные, отправленные с помощью POST-запроса будут показаны во вкладке Body

![image](https://user-images.githubusercontent.com/117518577/211896219-8f6b6593-25c4-47f4-9358-0ad971d380da.png)

Точно так же, как и POST, отправляются PUT, PATCH и DELETE запросы.

Примечание: во время тестирования, для каждого запроса проверяйте возвращаемый результат, код ответа сервера и время ответа сервера. И не забывайте про негативные тесты!

Параметризация запросов
Параметризация — одна из самых полезных особенностей Postman.

Часто необходимо выполнить один и тот же запрос на разных наборах данных. С помощью параметризации, можно использовать переменные при выполнении запросов.

В Postman, параметры создаются с помощью двойных скобок: {{test}}.

Например, наш base URL — https://testengineer.ru и мы сохраняем это значение в переменной с именем base_url. В этом случае, мы можем обратиться к этой переменной из запроса, написав {{base_url}}. Для того, чтобы отправить запрос на этот URL, мы подставим эту переменную в запрос. Выглядеть это будет так: {{base_url}}/get?customers=new. Запрос будет отправлен на https://testengineer.ru/get?customers=new

Шаг 1: Меняем тип HTTP-запроса на GET и вводим URL:

![image](https://user-images.githubusercontent.com/117518577/211896279-f225180c-d6fb-4201-a45b-1d57328a8371.png)

Шаг 2: Меняем URL на параметр {{url}}. После этого URL запроса должен быть таким: {{url}}/users

![image](https://user-images.githubusercontent.com/117518577/211896322-448a6037-7bde-4648-a9bf-1d73b6dbe775.png)

Шаг 3: Теперь нам нужно создать переменную окружения, чтобы использовать ее в качестве параметра. Для этого нажимаем на кнопку с глазом и кликаем на Edit (редактировать), чтобы создать глобальную переменную и затем использовать ее в коллекциях.

![image](https://user-images.githubusercontent.com/117518577/211896356-815a0095-1e9a-4bb5-9307-8080d03be5c2.png)

Шаг 4: В окне создания переменной задаем имя (именем будет url) и значение (значением будет https://jsonplaceholder.typicode.com). После этого нажимаем Save (Сохранить)

![image](https://user-images.githubusercontent.com/117518577/211896396-4381abb3-3a0d-47bd-90c6-d9005c930cee.png)

Шаг 5: Возвращаемся к GET-запросу и нажимаем Send (отправить)

![image](https://user-images.githubusercontent.com/117518577/211896487-a385b812-a88e-4e5e-a42f-5227fc7eea54.png)

Если все сделано правильно, значение переменной, которую мы создали, будет подставлено вместо ее имени и запрос выполнится успешно.

Создание тестов в Postman
Тесты в Postman позволяют убедиться, что API работает так, как этого от него ожидают.

Давайте начнем с написания простого теста.

Шаг 1: Возвращаемся к GET-запросу, который мы создали ранее и переключаемся во вкладку Tests (Тесты). В секции сниппетов нажимаем на сниппет «Status code: Code is 200». В окне теста появится скрипт. Этот скрипт будет проверять, что запрос возвращает код ответа 200.

![image](https://user-images.githubusercontent.com/117518577/211896556-6f5b88f5-bd4c-4f80-9a15-7a23acf15763.png)

Шаг 2: Нажмите кнопку Send (Отправить). В нижней части окна вы увидите результат выполнения теста (в нашем случае он выполнился успешно).

![image](https://user-images.githubusercontent.com/117518577/211896584-9b98cf8b-afda-4d0c-998b-c6d980a86da5.png)

Шаг 3: Давайте добавим еще один тест. В этот тесте мы будем сравнивать полученный результат с ожидаемым. Чтобы это сделать, выбираем сниппет с названием «Response body:JSON value check». Давайте проверим, что пользователь с именем Leanne Graham имеет userid 1.

![image](https://user-images.githubusercontent.com/117518577/211896626-a539a4ed-10d1-46ca-9435-76781ed97ca2.png)

Шаг 4: Заменим название теста на что-то более понятное: вместо «Your test name» напишем «Check if Leanne Graham has the userid 1». Также заменим jsonData.value на jsonData[0].name (т.к. jsonData представляет собой массив, а массивы начинаются с 0):

![image](https://user-images.githubusercontent.com/117518577/211896663-faa6a3b7-b1f8-4b8a-8da7-bea5e6962344.png)

Код теста будет выглядеть следующим образом:

pm.test("Check if user with id1 is Leanne Graham", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData[0].name).to.eql("Leanne Graham");
});
Шаг 5: Нажимаем Send (Отправить)

![image](https://user-images.githubusercontent.com/117518577/211896726-62bb44cf-5ffc-421c-aa73-624892516ed9.png)

Запуск коллекций с помощью Collection Runner

Шаг 1: Нажимаем на кнопку «Runner» (находится рядом с кнопкой Import)

![image](https://user-images.githubusercontent.com/117518577/211896790-de83c8c4-3539-4ef7-a729-19c3ed15efcc.png)

Шаг 2: Должна будет открыться следующая страница:

![image](https://user-images.githubusercontent.com/117518577/211896822-9bb0152f-e3a1-4dc1-9698-67af3e460bd8.png)

Разберем основные элементы:

2 — Resent Runs: Все предыдущие запуски

3 — Environment: Окружение. Если вы хотите запустить коллекцию в конкретном окружении, вы можете выбрать его в этом поле.

4 — Iterations: Количество итераций

5 — Delay: Задержка. Указывается в миллисекундах. Выполнение тестов без задержки может вызвать ошибки, поэтому всегда указывайте небольшую задержку.

7 — Start Run: Кнопка для запуска коллекции

Шаг 3: В этом окне добавим коллекцию для запуска. Выбираем нашу коллекцию тестов, устанавливаем параметр Iterations в 2, delay в 2500ms и нажимаем кнопку запуска.

![image](https://user-images.githubusercontent.com/117518577/211896866-55e20b70-0276-4e61-9f7c-c0b300c61437.png)

Шаг 4: После выполнения откроется отчет. В нашей коллекции были GET и POST запросы, но тесты мы добавляли только для GET-запроса. Поэтому в отчете рядом с POST-запросом показывается текст «This request doesn’t have any tests.» (для этого запроса нет тестов)

Postman
Запуск коллекций с помощью Newman
Для того, чтобы запустить коллекции с помощью Newman, делаем следующее:

Шаг 1: Устанавливаем node.js. Сделать это можно по ссылке

Шаг 2: Открываем командную строку и выполняем команду npm install -g newman

Шаг 3: После установки newman заходим в Postman. В списке коллекции находим нашу коллекцию, нажимаем на три точки и выбираем Export (Экспортировать)

![image](https://user-images.githubusercontent.com/117518577/211896908-f78dfd4f-f009-488d-8133-003a94a93ed1.png)

Шаг 4: В появившемся окне выбираем «Export Collection as Collection 2.1 (Recommended)» и нажимаем Export.

![image](https://user-images.githubusercontent.com/117518577/211896994-3dd15253-93d9-4769-acfb-613156518dab.png)

Шаг 5: Выбираем папку, в которую экспортировать коллекцию и нажимаем Save. Рекомендуем создать отдельную папку для Postman-тестов. После нажатия на Save, коллекция будет экспортирована в выбранную папку.

Шаг 6: Для корректного запуска нам понадобится экспортировать и окружение. Для этого нажимаем на кнопку с глазом и выбираем опцию Download as JSON. Выбираем папку, в которую экспортировать окружение и нажимаем Save. Рекомендуем экспортировать окружение в ту же папку, в которую была экспортирована коллекция.

![image](https://user-images.githubusercontent.com/117518577/211897060-e6289004-7fcf-4e3f-ac7b-16645df5fc78.png)

![image](https://user-images.githubusercontent.com/117518577/211897112-988cdbf4-3552-450d-af4a-85b2faf8f97a.png)

Шаг 7: Теперь, когда мы экспортировали коллекцию и окружения в папку, возвращаемся в командную строку и меняем директорию на ту, где находятся коллекция и окружение.

Например:

cd C:\Users\testengineer\Desktop\Postman

Шаг 8: Запускаем коллекцию с помощью команды:

`newman run PostmanTestCollection.postman_collection.json -e Testing.postman_globals.json`

После выполнения коллекции, появятся результаты выполнения тестов.

