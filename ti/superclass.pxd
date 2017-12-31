# superclass.pxd

# Default values thanks to https://stackoverflow.com/a/5090236/4272484


cdef class Superclass:

    cdef int a
    cdef int b
    cdef int c
    cdef int d

    cdef Function f

    cpdef int do_that(self, int c, int d=*) except? -1


cdef class Function:

    cpdef int evaluate(self, int a, int b, int c, int d=*) except *
