comprimento([], 0).
comprimento([_|T], C) :- comprimento(T, CT), C is CT+1.

membro(X, [X|_]).
membro(X, [_|T]) :- membro(X, T).

membroCut(X, [X|_]) :- !.
membroCut(X, [_|T]) :- membroCut(X, T), !.