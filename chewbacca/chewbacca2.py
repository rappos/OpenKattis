N,K,Q=map(int,input().split())
print('\n'.join(str(l(K,*[int(x)-1 for x in input().split()]))for _ in range(q)))