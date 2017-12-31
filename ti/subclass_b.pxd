# subclass_b.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassB(Superclass):

    cpdef int do_that(self, int c, int d=*) except? -1


cdef class FunctionB(Function):

    cpdef int evaluate(self, int a, int b, int c, int d=*) except *
