while True:
    n = int(input())
    if not n:
        break

    cards = [*range(n, 0, -1)]
    discarded = []
    
    while n != 1:
        discarded.append(cards.pop())
        cards.insert(0, cards.pop())
        n -= 1

    print("Discarded cards: ", end="")
    for i in range(len(discarded)):
        if i == len(discarded) - 1:
            print(f"{discarded[i]}")
        else:
            print(f"{discarded[i]}, ", end="")    
    print("Remaining card: ", cards[0])
    