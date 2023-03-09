import time

start = time.time()

N = int(input())

pilha = []
menor = 0

while N:
    operacao = input().split()
    
    if operacao[0] == "MIN":
        if len(pilha):
            print(pilha[-1][1])
        else: 
            print("EMPTY")
            
    elif operacao[0] == "POP":
        if len(pilha):
            pilha.pop()
        else:
            print("EMPTY")
    else:
        if menor > int(operacao[1]) or menor == 0:
            menor = int(operacao[1])
        pilha.append((int(operacao[1]),menor))
        print(pilha)
    
    N = N - 1
    
print(time.time() - start)