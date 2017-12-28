# test.pyx

class Superclass:

    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.c = None


# subclass_A.pyx

# from superclass import Superclass

class SubclassA(Superclass):
    def __init__(self, a=0, b=0):
        super(SubclassA, self).__init__(a=a, b=b)

    def do_that(self, c, d=None):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c)
        return(self.a + self.b + self.c)


# subclass_B.pyx

# from superclass import Superclass

class SubclassB(Superclass):
    def __init__(self, a=0, b=0):
        super(SubclassB, self).__init__(a=a, b=b)

    def do_that(self, c, d=None):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c + self.d)
        return(self.a + self.b + self.c + self.d)
