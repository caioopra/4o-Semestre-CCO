# -*- coding: utf-8 -*-
case = 0
while True:
    N, Q = [int(x) for x in input().split()]
    if not Q and not N:
        break
    
    case += 1

    print(f"CASE# {case}:")
    
    marbles = []
    for _ in range(N):
        marbles.append(int(input()))
    
    marbles.sort()
    
    for i in range(Q):
        finding = int(input())
        print(f"{finding} found at {marbles.index(finding) + 1}" if finding in marbles 
                                                                else f"{finding} not found")
    