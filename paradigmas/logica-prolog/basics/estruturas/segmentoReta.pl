ponto(1.3, 22.1).
ponto(2, 1).
ponto(3, 4).

segmentoReta(ponto(1, 2), ponto(5, 2)).
segmentoReta(ponto(X1, Y1), ponto(X2, Y2)) :-
    ponto(X1, Y1),
    ponto(X2, Y2),
    ponto(X1, Y1) \== ponto(X2, Y2).

