def prime(number):
    if number < 2:
        print("prime numbers start from 2")
    else:
        for i in range(2, number):
            if number % i == 0:
                print(number, "is not prime number")
                break
        else:
            print(number, "is prime number")


prime(7)