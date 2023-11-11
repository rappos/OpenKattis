t = int(input())
for _ in range(t):
    line = input()
    out = "\n"
    if line.startswith("simon says "):
        out = line.split("simon says ")[1]
    print(out)