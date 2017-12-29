# setup.py

# To build:
# python setup.py build_ext (or build?)
#
# To test:
# python setup.py test (or pytest)
#
# To install:
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
ext_modules=[
#     Extension("ti", ["ti/ti.pyx"])  # Working with single file
    Extension("*", ["ti/*.pyx"])
]

# Below working for single file
# setup(
#     name = "ti",
#     ext_modules = cythonize('ti/ti.pyx'),
#     setup_requires=['pytest-runner'],
#     tests_require=['pytest']
# )

setup(
    name = "ti",
    ext_modules = cythonize(ext_modules),
    setup_requires=['pytest-runner'],
    tests_require=['pytest']
)
