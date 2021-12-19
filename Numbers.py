#from builtins import


def largest(a, b, c):
    if a > b and a > c:
        print("largest number is", a)
    elif b > a and b > c:
        print("largest number is", b)
    else:
        print("largest number is", c)

        
# int
largest(2, 5, 3)
# float
largest(2.6, 5.7, 3.3)


_a = 6
#  assigning complex numbers and python is dynamic programming language
_a = 9+3j
print(_a+_a)