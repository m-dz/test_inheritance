# subclass_a.pyx

from superclass import Superclass

class SubclassA(Superclass):
    def __init__(self, a, b):
        super(SubclassA, self).__init__(a=a, b=b)

    def do_that(self, c, d=None):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c)
        return(self.a + self.b + self.c)
