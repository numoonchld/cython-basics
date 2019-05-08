from distutils.core import setup
from Cython.Build import cythonize

setup(
    ext_modules=cythonize(["b_cython.pyx","c_cython.pyx"])
)
