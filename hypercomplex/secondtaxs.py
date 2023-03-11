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
import math
# num = random.random()
# print(num)

# # %% 1. Initialization can be done in various ways, including using Python's built in complex numbers. Unspecified coefficients become 0.
# T=P(random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random())

# T1=P(random.random(),random.random(),random.random(),random.random(),random.random()
#     ,random.random(),random.random(),random.random(),random.random(),0,0,0,0,0,0,0,random.random())




with open('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/Artoev.txt', 'w') as f:
    array_1Ds = ["DELTA","ONLYONE","NORMtt1","NORMtt2","NORMtt1t2","testdivisor","testSUM","PAR212","R2121"]
    f.writelines(" ".join(str(x) for x in array_1Ds) + "\n")
    for i in range(10000):

        T=P(random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random())

        T1=P(random.random(),random.random(),random.random(),random.random(),random.random()
            ,random.random(),random.random(),random.random(),random.random(),0,0,0,0,0,0,0,random.random())

        DELTA2=random.random()*random.random()
        T2=P(0,0,0,0,0,0,0.0,0,0,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),0,DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random(),DELTA2*random.random()
            ,DELTA2*random.random(),DELTA2*random.random())

        nT=T.norm()
        nTT12=(T1+T2).norm()
        # print(T2)
        EMAN1=T*T1
        EMAN2=T*T2

        T3=EMAN1+EMAN2
        Nt=T3.norm()

        CEMAN1=EMAN1.conjugate()
        CEMAN2=EMAN2.conjugate()

        CON12=EMAN2*CEMAN1
        CON21=EMAN1*CEMAN2


        nCON1=EMAN1*CEMAN1  
        nCON2=EMAN2*CEMAN2
        nCON3=(EMAN2*CEMAN2 + (CON12 + CON21))

        nCON12=(CON12 + CON21).norm()
        # nCON21=(CON12 + CON21).norm()


        VESUM= CON12 + CON21 + EMAN1*CEMAN1 + EMAN2*CEMAN2
        NVESUM= math.sqrt(VESUM.norm())

        array_1D = [DELTA2,Nt/Nt,math.sqrt(nCON1.norm())/Nt,math.sqrt(nCON2.norm())/Nt,nCON12/Nt,(nT*nTT12)/Nt
        ,(NVESUM)/Nt,math.sqrt(nCON3.norm())/Nt,math.sqrt(nCON2.norm())/math.sqrt(nCON1.norm()),math.sqrt(nCON3.norm())/math.sqrt(nCON1.norm())]
        f.writelines(" ".join(str(x) for x in array_1D) + "\n")


# print(T1)print(T*T1)
    # print(DELTA1)
    # print(DELTA2)
        # EMAN=T*T1
        # N1=EMAN.norm()
        # N2=T.norm()*T1.norm()
        # EMAN2=T*T3
        # N21=EMAN2.norm()
        # N22=T.norm()*T3.norm()
        # array_1D = [DELTA2,N1/N2,N21/N22]
        # f.writelines(" ".join(str(x) for x in array_1D) + "\n")
        # # print(array_1D))


f.close() #close file
# %%**