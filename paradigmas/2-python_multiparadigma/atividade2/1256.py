casos = int(input())
for iteration in range(casos):
    M, C = [int(x) for x in input().split()]

    hash_table = {str(x): [] for x in range(M)}

    entrada = [int(x) for x in input().split()]

    for valor in entrada:
        resto = valor % M
        hash_table[str(resto)].append(valor)

    for i in hash_table:
        print(f"{int(i)} -> ", end="")
        for j in hash_table[i]:
            print(f"{j} -> ", end="")
        print("\\")
    if iteration != casos - 1:
        print()
    
