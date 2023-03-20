N = int(input())    

MIN_OPER = "MIN"
POP_OPER = "POP"

pilha = []
menor = 0
tamanho_pilha = 0

while N:
    operacao = input().split()
    
    if operacao[0] == MIN_OPER:
        if tamanho_pilha:
            print(pilha[-1][1])
        else: 
            print("EMPTY")
            
    elif operacao[0] == POP_OPER:
        if tamanho_pilha:
            tamanho_pilha -= 1
            pilha.pop()
        else:
            print("EMPTY")
    else:
        valor = int(operacao[1])
        if menor > valor or menor == 0:
            menor = valor
        pilha.append((valor,menor))
        tamanho_pilha += 1
        print(pilha)
    
    N = N - 1
