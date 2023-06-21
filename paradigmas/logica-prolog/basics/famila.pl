mulher(pam).
mulher(liz).
homem(tom).
homem(bob).

genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ana).
genitor(bob, john).

pai(X, Y) :- genitor(X, Y), homem(X).
mae(X, Y) :- genitor(X, Y), mulher(X).

% X é avo de Y se há Z que é genitor de Y e X é genitor de Z e X é homem
avo(X, Y) :- genitor(Z, Y), genitor(X, Z), homem(X).
irmao(X, Y) :- genitor(Z, X), genitor(Z, Y), X \== Y, homem(X).
irma(X, Y) :- genitor(Z, X), genitor(Z, Y), X \== Y, mulher(X).
irmaos(X, Y) :- irmao(X, Y); irma(X, Y).  % ; = ou
