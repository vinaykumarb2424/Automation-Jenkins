class Person:


    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def Display(self, name, age):
        print(name)
        print(age)


    def Printing(self, name):
        return name


#p1 = Person("John", 36)