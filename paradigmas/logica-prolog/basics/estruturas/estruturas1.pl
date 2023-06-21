ponto(1.3, 22.1).

triangulo(ponto(1, 2), ponto(5, 2), ponto(7, 7)).

data(20, maio, 2019).

fatoHistorico(data(22, abril, 1500), 'Descobrimento Brasil').

segmentoReta(ponto(1, 2), ponto(5, 2)).

% regras para estruturas
vertical(segmentoReta(ponto(X, Y1), ponto(X, Y2))) :- Y1 \== Y2.
horizontal(segmentoReta(ponto(X1, Y), ponto(X2, Y))) :- X1 \== X2.
obliqua(segmentoReta(ponto(X1, Y1), ponto(X2, Y2))) :- X1 \== X2, Y1 \== Y2.
