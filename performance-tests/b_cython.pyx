## cdef variables and functions:
cdef float cmse():
    # """ compute mean square error of input array 'a' """
    
    cdef list a = [21, 7, 3, 11, 5, 108, 65]
    cdef float mean = sum(a)/len(a)
    cdef float accum = 0
    
    cdef int num

    for num in a:
        accum += (num - mean) ** 2

    return accum/mean