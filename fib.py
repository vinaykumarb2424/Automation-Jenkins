def welcome(string):
    print("Welcome", string)


def add(a, b):
    print("Sum of two numbers=", a+b)


def sub(a, b):
    print("sub of two numbers=", a-b)


def sumofn(number):
    sum=0
    for i in range(1, number+1):
        sum += i
    return sum


welcome("Python")
add(1, 5)
sub(200, 400)
print(sumofn(10))
