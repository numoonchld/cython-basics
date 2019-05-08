## GOAL: 
    # given array of integers: a = [21, 7, 3, 11, 5, 108, 65], compute MSE 
    # MSE = (curr_value - arr_avg)^2/arr_length

## python only def and dynamic variables:
def mse():
    # """ compute mean square error of input array 'a' """
    a = [21, 7, 3, 11, 5, 108, 65]
    mean = sum(a)/len(a)
    accum = 0
    
    for num in a:
        accum += (num - mean) ** 2

    return accum/mean
    

## cdef variables and functions:
cdef float cmse():
    # """ compute mean square error of input array 'a' """
    
    cdef list a = [21, 7, 3, 11, 5, 108, 65]
    cdef int mean = sum(a)/len(a)
    cdef int accum = 0
    
    cdef int num

    for num in a:
        accum += (num - mean) ** 2

    return accum/mean
    

## cpdef variables and functions:
cpdef float cpmse():
    # """ compute mean square error of input array 'a' """
    
    cpdef list a = [21, 7, 3, 11, 5, 108, 65]
    cpdef int mean = sum(a)/len(a)
    cpdef int accum = 0
    
    cpdef int num

    for num in a:
        accum += (num - mean) ** 2
    
    return accum/mean
