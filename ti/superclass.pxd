# superclass.pxd


cdef class Superclass:

    cdef int a
    cdef int b
    cdef int c
    cdef int d

    cdef Function f


cdef class Function:

    cpdef int evaluate(self, int a, int b, int c, int d) except *
