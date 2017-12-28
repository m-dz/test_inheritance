# subclass_b.pyx

from superclass import Superclass

class SubclassB(Superclass):
    def __init__(self, a, b):
        super(SubclassB, self).__init__(a=a, b=b)

    def do_that(self, c, d=None):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c + self.d)
        return(self.a + self.b + self.c + self.d)
