# subclass_a.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassA(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassA, self).__init__(a=a, b=b)
        self.f = FunctionA()

    cpdef int do_that(self, int c, int d) except? -1:
        self.c = c
        self.d = 0
        return(self.f.evaluate(self.a, self.b, self.c, self.d))


cdef class FunctionA(Function):

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        # print(a + b + c)
        return(a + b + c)
