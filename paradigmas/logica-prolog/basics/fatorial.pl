:- initialization(main).

fatorial(1, 1).
fatorial(N, K) :- N1 is N-1, fatorial(N1, K1), K is N*K1.

main :- trace,
        writeln("Fatorial de 5"),
        K = 5,
        fatorial(K, X),
        writeln(X),
        halt.