# %% 0. Imports
from hypercomplex import \
        reals, \
        cayley_dickson_construction, cd_construction, \
        cayley_dickson_algebra, cd_algebra, \
        CD1, R, Real,\
        CD2, C, Complex, \
        CD4, Q, Quaternion, \
        CD8, O, Octonion, \
        CD16, S, Sedenion, \
        CD32, P, Pathion, \
        CD64, X, Chingon, \
        CD128, U, Routon, \
        CD256, V, Voudon, \
        CD
import random
# num = random.random()
# print(num)

# %% 1. Initialization can be done in various ways, including using Python's built in complex numbers. Unspecified coefficients become 0.
T=P(random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random())

T1=P(random.random(),random.random(),random.random(),random.random(),random.random()
    ,random.random(),random.random(),random.random(),random.random(),0,0,0,0,0,0,0,random.random())

with open('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/toev.txt', 'w') as f:
    for i in range(5000):
        DELTA2=.1*random.random()*random.random()
        T3=P(random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random())

# print(T)
# print(T1)print(T*T1)
    # print(DELTA1)
    # print(DELTA2)
        EMAN=T*T1
        N1=EMAN.norm()
        N2=T.norm()*T1.norm()
        EMAN2=T*T3
        N21=EMAN2.norm()
        N22=T.norm()*T3.norm()
        array_1D = [DELTA2,N1/N2,N21/N22]
        f.writelines(" ".join(str(x) for x in array_1D) + "\n")
        # print(array_1D)


f.close() #close file
# %%**