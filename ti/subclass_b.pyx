# subclass_b.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassB(Superclass):

    def __init__(self, a=0, b=0):
        super(SubclassB, self).__init__(a=a, b=b)
        self.f = FunctionB()


cdef class FunctionB(Function):

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        # print(a + b + c + d)
        return(a + b + c + d)
