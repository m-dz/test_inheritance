# superclass.pyx


cdef class Superclass:

    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.c = 0


    cpdef int do_that(self, int c, int d) except? -1:
        self.c = c
        self.d = d
        return(self.f.evaluate(self.a, self.b, self.c, self.d))


cdef class Function:

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        return 0
