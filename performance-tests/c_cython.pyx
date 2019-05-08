## cdef variables and functions:
cpdef float cpmse():
    # """ compute mean square error of input array 'a' """
    
    cpdef list a = [21, 7, 3, 11, 5, 108, 65]
    cpdef float mean = sum(a)/len(a)
    cpdef float accum = 0
    
    cpdef int num

    for num in a:
        accum += (num - mean) ** 2

    return accum/mean