N = int(input())

quadro = {}
paises_ordenados = []

for _ in range(N):
    pais, *medalhas = input().split()
    
    for i in range(3):
        medalhas[i] = int(medalhas[i])
    quadro[pais] = medalhas

for key, values  in quadro.items():
    ...