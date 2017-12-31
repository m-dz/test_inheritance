# subclass_b.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassB(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassB, self).__init__(a=a, b=b)
        self.f = FunctionB()


    cpdef int do_that(self, int c, int d=0) except? -1:
        self.c = c
        self.d = d
        return(self.f.evaluate(self.a, self.b, self.c, self.d))


cdef class FunctionB(Function):

    cpdef int evaluate(self, int a, int b, int c, int d=0) except *:
        return(a + b + c + d)
