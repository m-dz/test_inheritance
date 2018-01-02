# test_ti.py


from ti import SubclassA, SubclassB
import pytest

def test_A_pass():

    this_A = SubclassA(a=1, b=2)
    ret_A = this_A.do_that(c=3)
    assert(ret_A == 6)

def test_B_pass():

    this_B = SubclassB(a=1, b=2)
    ret_B = this_B.do_that(c=3, d=4)
    assert(ret_B == 10)

# This does not raise any exception in this version
def test_A_raises_1():
    this_A = SubclassA(a=1, b=2)
    with pytest.raises(Exception) as e_info:
        this_A.do_that(c=3, d=4)

# This does not raise any exception in this version
def test_A_raises_2():
    this_A = SubclassA(a=1, b=2)
    with pytest.raises(Exception) as e_info:
        this_A.do_that(3, 4)

# This does not raise any exception in this version
def test_A_raises_3():
    this_A = SubclassA(a=1, b=2)
    with pytest.raises(Exception) as e_info:
        this_A.do_that(3, d=4)
