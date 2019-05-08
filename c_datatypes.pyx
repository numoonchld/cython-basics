# test some basic cython data types

# integers
cdef int i = 50
print(i)

cdef int a = 10
cdef int b = 15
print(a+b)

# float
cdef float f = 10.0
print(f)

# math operations 
print(i/5)
print(f/5)
print(f*5)
print(f%3)

# string 
cpdef str s = "cython"
print(s)

# string index access
print(s[1])

# function
cpdef int sum_list(list x):
    """x is an array with all integers, returns sum of elements of x"""
    cpdef int s = 0
    cpdef int num

    for num in x:
        s = s + num

    print(s)

    return s


cdef list arr = [1,2,3,4,5]
sum_list(arr)
