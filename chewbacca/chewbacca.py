l=lambda k,a,b:0if a==b else 1+l(k,(a-1)//k,b)if a>b else 1+l(k,a,(b-1)//k)
_,k,q=map(int,input().split())
print('\n'.join(str(l(k,*[int(x)-1 for x in input().split()]))for _ in range(q)))