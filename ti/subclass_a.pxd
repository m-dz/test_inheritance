# subclass_a.pyx

cimport superclass
from superclass cimport Superclass, Function


cdef class SubclassA(Superclass):

    pass


cdef class FunctionA(Function):

    cpdef int evaluate(self, int a, int b, int c, int d=*) except *

