inserirElemento(X, L, [X|L]).

ultimo([X], X).
ultimo([H, H2|T], X) :- ultimo([H2|T], X).

dobro([], []).
dobro([H1|T1], [H2|T2]) :- H2 is H1*2, dobro(T1, T2).
% dobro([1, 2, 3], X).  -> X = [2, 4, 6]

tamanhoPar([]) :- !.
tamanhoPar([_|T]) :- tamanhoImpar(T).
tamanhoImpar([]) :- !.
tamanhoImpar([_|T]) :- tamanhoPar(T).

% considerando indexação
% i-esimo item da lista é o i-1 ésimo da cauda da lista
enesimo(0, [H|_], H).
enesimo(I, [_|T], X) :- I2 is I-1, enesimo(I2, T, X).

% remover item da lista
remover(X, [], []).
remover(X, [X|T], T2) :- remover(X, T, T2).  % se X é cabeca, ignora e retorna a lista resultante de a remover da cauda
remover(X, [H|T], [H|T2]) :- X \== H, remover(X, T, T2). % se X não é cabeça, retorna ela e lista resultante
% remover(3, [1, 2, 3, 4, 5, 3], L). -> [1, 2, 4, 5].
% remover(3, [3], L) -> L = [].

% concatenação
concatena([], L, L).
concatena([H|T], L2, [H|LConcatenada]) :- concatena(T, L2, LConcatenada).  % adiciona cabeçca da lista na resultante e concatena a cauda da primeira com a segunda

%subconjunto
% subconjuntos de conjunto são a cabeça do conjunto e pelos subconjuntos da cauda ou apenas pelos subconjuntos da cauda ignoreando a cabeça
subconjunto([], []).
subconjunto([H|S], [H|Sub]) :- subconjunto(S, Sub).
subconjunto([H|S], Sub) :- Subconjunto(S, Sub).

%ordenação
ordenada([]).
ordenada([_]).
ordenada([H1,H2|T]) :- h1 =< H2, ordenada([H2|T]).