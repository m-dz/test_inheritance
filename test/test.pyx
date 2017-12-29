# test.pyx

cdef class Superclass:

    cdef int a
    cdef int b
    cdef int c
    cdef int d

    def __init__(self, a, b, c=0, d=0):
        self.a = a
        self.b = b
        self.c = c
        self.d = d


# subclass_A.pyx

# from superclass import Superclass

cdef class SubclassA(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassA, self).__init__(a=a, b=b)

    cpdef int do_that(self, int c, int d=0):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c)
        return(self.a + self.b + self.c)


# subclass_B.pyx

# from superclass import Superclass

cdef class SubclassB(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassB, self).__init__(a=a, b=b)

    cpdef do_that(self, int c, int d):
        self.c = c
        self.d = d
        print(self.a + self.b + self.c + self.d)
        return(self.a + self.b + self.c + self.d)
