
from test import SubclassA, SubclassB, FunctionA, FunctionB

# import testinheritance

this_A = SubclassA(a=1, b=2)
ret_A = this_A.do_that(c=3, d=0, f=FunctionA())
print(ret_A)

this_B = SubclassB(a=1, b=2)
ret_B = this_B.do_that(c=3, d=4, f=FunctionB())
print(ret_B)
