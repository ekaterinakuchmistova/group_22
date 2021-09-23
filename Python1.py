# 1)Create variable of type String

a = 'hello'
print(type(a))  # <class 'str'>
print(a)

# 2)Create variable of type Integer
age = 25
print(a, "is of type", type(a))  # <class 'int'>

# 3)Create variable of type Float
message = 2.0
print(message, "is of type", type(message))  # <class 'float'>

# 4)Create variable of type Bytes
c = bytes(25)
print(c, "is of type", type(c))  # <class 'bytes'>
# b'\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'

# 5)Create variable of type  List
task = list('ИНТЕРПРЕТАЦИЯ')
print(task, "is of type", type(task))  # <class 'list'>
# ['И', 'Н', 'Т', 'Е', 'Р', 'П', 'Р', 'Е', 'Т', 'А', 'Ц', 'И', 'Я']

# 6)Create variable of type Tuple
task1 = tuple('Hello, everyone!')  # <class 'tuple'>
print(task1, "is of type", type(task1))
# ('H', 'e', 'l', 'l', 'o', ',', ' ', 'e', 'v', 'e', 'r', 'y', 'o', 'n', 'e', '!')
print(task1[1:5], type(task1[1:5]))
# ('e', 'l', 'l', 'o')

# 7)Create variable of type Set
num_set = {4, 8, 15, 16, 23, 42}  # <class 'set'>
print(num_set, "is of type", type(num_set))
# {4, 8, 42, 15, 16, 23}

# 8)Create variable of type Frozen set

month1 = frozenset(['January', 'February', 'March', 'April', 'May', 'June'])
month2 = frozenset(['July', 'August', 'September', 'October', 'November', 'December'])
print(month1, "is of type", type(month1))
# frozenset({'January', 'April', 'June', 'May', 'February', 'March'}) is of type <class 'frozenset'>
print(month2, "is of type", type(month2))
# frozenset({'November', 'August', 'December', 'September', 'July', 'October'}) is of type <class 'frozenset'>

# 9)Create variable of type Dict dict
pdict = {'Name': 'Katrin', 'Age': 25, 'Course': 'QA Engineer'}
print("Student Name:", pdict['Name'])
print("Course:", pdict['Course'])
print("Age:", pdict['Age'])
print(pdict, "is of type", type(pdict))  # <class 'dict'>

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
# python3 main.py - Answer

# 11) Создать 2 переменные String, создать переменную в которой суммируете эти переменные. Вывести в консоль.
kat = 'QA'
rin = 'Engineer'
Katrin: str = kat + rin
print(Katrin, "is of type", type(Katrin))  # <class 'str'>

# 12) Создать 2 переменные Integer, создать переменную в которой суммируете эти переменные. Вывести в консоль.
eat: int = 9
days: int = 17
apples: int = int(eat) + int(days)

print(apples, "is of type", type(apples))   # <class 'int'>

# 14) Создать переменную в которой Умножите эти переменные Int. Вывести в консоль.
eat1: int = 9
days1: int = 17
apples1: int = int(eat) * int(days)

print(apples1, "is of type", type(apples1))

# 15) Создать переменную в которой Разделите без остатка эти переменные Int. Вывести в консоль.

eat3: int = 9
days3: int = 17
apples3: int = int(days3) // int(eat3)

print(apples3, "is of type", type(apples3))

# 16) Создать переменную в которой надо присвоить остаток от деления этих переменные Int. Вывести в консоль.
eat2: int = 9
days2: int = 17
apples2: int = int(days2 // eat2)
print(apples2, "is of type", type(apples2))

apples5= int(days2 % eat2)
print(apples5, "is of type", type(apples5))

apples5 = input()
print(apples5)
