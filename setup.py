from distutils.core import setup
from Cython.Build import cythonize

setup(
    # ext_modules = cythonize("helloworld.pyx")
    # ext_modules = cythonize("fib.pyx")
    ext_modules = cythonize("primes.pyx")
)
