placar = []
N = int(input())

for _ in range(N):
    arr = []

    pais = input().split()
    arr.append(pais[0])
    arr.append(int(pais[1]))
    arr.append(int(pais[2]))
    arr.append(int(pais[3]))

    placar.append(arr)

placar = sorted(
    sorted(placar, key=lambda x: x[0]), 
    key=lambda x: (x[1], x[2], x[3]), 
    reverse=True
)

for pais, ouro, prata, bronze in placar: 
    print(pais, ouro, prata, bronze)
