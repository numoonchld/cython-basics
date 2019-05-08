### performance tests: -------------------------------------------------

## import timeit modules:
# https://docs.python.org/2/library/timeit.html
import timeit

# python functioning definition:
t_mse = timeit.timeit('''a_python.mse()''', setup="import a_python", number=100)

# t_cmse = timeit.timeit('''b_cython.cmse()''', setup="import b_cython", number=100) 
# this won't run becase cdef functions don't run on python compiler 

# c and python function definition:
t_cpmse = timeit.timeit('''c_cython.cpmse()''', setup="import c_cython", number=100)

# comparison: 
print('python def function time:', t_mse)
print('cython cpdef function time:', t_cpmse)
print('cython function is ', t_mse/t_cpmse, ' times faster than the python function' )