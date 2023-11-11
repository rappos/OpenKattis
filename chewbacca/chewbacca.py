l = lambda k, a, b: 0 if a == b else 1 + l(k, (a - 1) // k, b) if a > b else 1 + l(k, a, (b - 1) // k)
_, K, Q = map(int, input().split())
queries = [tuple(map(lambda x: int(x) - 1, input().split())) for _ in range(Q)]
results = [str(l(K, *query)) for query in queries]
print('\n'.join(results))