while True:
    N = int(input())
    if not N:
        break

    H = [int(x) for x in input().split()]
    H.append(H[0])
    H.append(H[1])
    picos = 0

    for i in range(1, N + 1):
        if (H[i] < H[i - 1] and H[i] < H[i + 1]) or (
            H[i] > H[i - 1] and H[i] > H[i + 1]
        ):
            picos += 1

    print(picos)