# setup.py

# To install:
# python setup.py build_ext
# python setup.py install

try:
    from setuptools import setup
    from setuptools import Extension
except ImportError:
    from distutils.core import setup
    from distutils.extension import Extension

from Cython.Build import cythonize
# from Cython.Distutils import build_ext

# From https://stackoverflow.com/a/21826294/4272484
# ext_modules=[
#     Extension("test.SubclassA", ["test/subclass_a.pyx"]),
#     Extension("test.SubclassB", ["test/subclass_b.pyx"])
#     Extension("test", ["test/subclass_b.pyx", "test/subclass_a.pyx"])
#     Extension("test", ["test/test.pyx"])
# ]

# setup(
#     name = "test",
#     cmdclass = {'build_ext': build_ext},
#     ext_modules = ext_modules
# )

setup(
    name = "test",
    ext_modules = cythonize('test/test.pyx')
)
