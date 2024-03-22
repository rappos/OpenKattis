def l(k,a,b):
    i = 0
    while(a!=b):
        if a>b:
            a//=k
        else:
            b//=k
        i += 1
    return i
N,K,Q=map(int,input().split())
print('\n'.join(str(l(K,*[int(x)+1 for x in input().split()]))for _ in [0]*Q))
