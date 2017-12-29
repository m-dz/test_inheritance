# subclass_a.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassA(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassA, self).__init__(a=a, b=b)
        self.f = FunctionA()


cdef class FunctionA(Function):

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        # print(a + b + c)
        return(a + b + c)
