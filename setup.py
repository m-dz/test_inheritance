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
#     Extension("ti.SubclassA", ["ti/subclass_a.pyx"]),
#     Extension("ti.SubclassB", ["ti/subclass_b.pyx"])
#     Extension("ti", ["ti/subclass_b.pyx", "ti/subclass_a.pyx"])
#     Extension("ti", ["ti/ti.pyx"])
# ]

# setup(
#     name = "ti",
#     cmdclass = {'build_ext': build_ext},
#     ext_modules = ext_modules
# )

setup(
    name = "ti",
    ext_modules = cythonize('ti/ti.pyx'),
    setup_requires=['pytest-runner'],
    tests_require=['pytest']
)
