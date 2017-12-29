# ti.pyx

cdef class Superclass:

    cdef int a
    cdef int b
    cdef int c
    cdef int d

    cdef Function f

    def __init__(self, a, b, c=0, d=0):
        self.a = a
        self.b = b
        self.c = c
        self.d = d

    cpdef int do_that(self, int c, int d) except? -1:
        return 0


# As in http://cython.readthedocs.io/en/latest/src/tutorial/cdef_classes.html
cdef class Function:

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        return 0


cdef class FunctionA(Function):

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        # print(a + b + c)
        return(a + b + c)


cdef class FunctionB(Function):

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        # print(a + b + c + d)
        return(a + b + c + d)


# subclass_A.pyx

# from superclass import Superclass

cdef class SubclassA(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassA, self).__init__(a=a, b=b)
        self.f = FunctionA()

    cpdef int do_that(self, int c, int d) except? -1:
        self.c = c
        self.d = 0
        return(self.f.evaluate(self.a, self.b, self.c, self.d))


# subclass_B.pyx

# from superclass import Superclass

cdef class SubclassB(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassB, self).__init__(a=a, b=b)
        self.f = FunctionB()

    cpdef int do_that(self, int c, int d) except? -1:
        self.c = c
        self.d = d
        return(self.f.evaluate(self.a, self.b, self.c, self.d))
