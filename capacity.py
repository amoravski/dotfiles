import copy
import functools as ft

def min_capacity(N, K):
    N = sorted(N, reverse=True)
    capacity = 0
    while capacity<ft.reduce(lambda a,b:a+b, N):
        cur_cap = 0
        copyN = copy.deepcopy(N)
        for _ in range(K):
            for i in range(len(N)):
                els = [(i,s) for i,s in enumerate(copyN) if s + cur_cap <= capacity]
                if els == []:
                    break
                index = els[0][0]
                size = els[0][1]
                cur_cap += size
                del copyN[index]
            cur_cap = 0
        if not copyN:
            break
        capacity += 1
    return capacity

N1 = [26,7,10,30,5,4]
K1 = 2
print(min_capacity(N1,K1))

N2 = [4,8,15,16,23,42]
K2 = 2
print(min_capacity(N2,K2))

N3 = [666,42,7,13,400,511,600,200,202,111,313,94,280,72,42]
K3 = 3
print(min_capacity(N3,K3))
