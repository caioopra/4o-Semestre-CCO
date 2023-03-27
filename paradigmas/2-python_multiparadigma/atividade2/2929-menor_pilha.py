N = int(input())

pilha = []
tamanho = 0

while N != 0:
    operacao = input()
    
    if len(operacao) > 3:
        operacao, valor = operacao.split()

    if operacao == "MIN":
        print(pilha[-1][1] if tamanho > 0 else "EMPTY")
    elif operacao == "POP":
        if not tamanho:
            print("EMPTY")
        else:
            pilha.pop()
            tamanho -= 1
    else:
        if not tamanho:
            pilha.append((int(valor), int(valor)))
            tamanho += 1
        else:
            if int(valor) < pilha[-1][1]:
                pilha.append((int(valor), int(valor)))
            else:
                pilha.append((int(valor), pilha[-1][1]))
    
            tamanho += 1

    N = N - 1
