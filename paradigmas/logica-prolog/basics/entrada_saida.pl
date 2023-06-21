:- initialization(main).

main :- writeln("Starting!"),
        X = 36,
        writeln(X),
        Y is sqrt(X),
        writeln(Y),
        halt.