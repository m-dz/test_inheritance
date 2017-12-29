# superclass.pyx


cdef class Superclass:

    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.c = 0


cdef class Function:

    cpdef int evaluate(self, int a, int b, int c, int d) except *:
        return 0
