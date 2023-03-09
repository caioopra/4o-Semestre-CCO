# N = 0
# while not (1 <= N <= 1_000_000) :  
import time

start = time.time()
N = int(input())

pilha = []

while N != 0:
    operacao = input()
    
    if len(operacao) > 3:
        operacao, valor = operacao.split()

    if operacao == "MIN":
        print(pilha[-1][1] if len(pilha) > 0 else "EMPTY")
    elif operacao == "POP":
        if len(pilha) == 0:
            print("EMPTY")
        else:
            pilha.pop()
    else:
        if len(pilha) == 0:
            pilha.append((int(valor), int(valor)))
        else:
            if int(valor) < pilha[-1][1]:
                pilha.append((int(valor), int(valor)))
            else:
                pilha.append((int(valor), pilha[-1][1]))
    
    N = N - 1
    
print(time.time() - start)