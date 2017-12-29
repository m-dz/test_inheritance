from ti import SubclassA, SubclassB
import pytest

def test_run_me():

    this_A = SubclassA(a=1, b=2)
    ret_A = this_A.do_that(c=3, d=4)
    assert(ret_A == 6)

    this_B = SubclassB(a=1, b=2)
    ret_B = this_B.do_that(c=3, d=4)
    assert(ret_B == 10)
