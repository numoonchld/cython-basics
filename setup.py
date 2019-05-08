from distutils.core import setup
from Cython.Build import cythonize

setup(
    # ext_modules = cythonize("helloworld.pyx")
    # ext_modules = cythonize("fib.pyx")
    # ext_modules = cythonize("primes.pyx")
    # ext_modules = cythonize("primes_cpp.pyx")
    ext_modules = cythonize("c_datatypes.pyx")
    # ext_modules = cythonize("memoryview.pyx")
    # ext_modules = cythonize("perftest.pyx")
)
