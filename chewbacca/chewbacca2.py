import math

def l(k,a,b):
        return math.ceil(math.log(a, k))

N,K,Q=map(int,input().split())
print('\n'.join(str(l(K,*[int(x)-1 for x in input().split()]))for _ in range(Q)))