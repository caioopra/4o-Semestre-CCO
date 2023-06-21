genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).

genitor(bob, ana).
genitor(bob, pat).

genitor(liz,bill).

genitor(pat, jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).
homem(tom).
homem(bob).
homem(jim).
homem(bill).

pai(X,Y) :- genitor(X,Y), homem(X).
mae(X,Y) :- genitor(X,Y), mulher(X).

avo(AvoX, X) :- genitor(GenitorX, X), genitor(AvoX, GenitorX), homem(AvoX).
avoh(AvohX, X) :- genitor(GenitorX, X), genitor(AvohX, GenitorX), mulher(AvohX).
irmao(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, homem(X).
irma(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, mulher(X).
irmaos(X,Y) :- (irmao(X,Y); irma(X,Y)), X \== Y.

ascendente(X,Y) :- genitor(X,Y). %recursão - caso base
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y). %recursão - tpasso recursivo

tio(X, Y) :- homem(X), genitor(Z, Y), irmaos(X, Z). % bob, bill = true
tia(X, Y) :- mulher(X), genitor(Z, Y), irmaos(X, Z). % liz, ana = true

primo(X, Y) :- homem(X), genitor(PaiX, X), genitor(PaiY, Y), irmaos(Paix, PaiY). % bill, pat
prima(X, Y) :- mulher(X), genitor(PaiX, X), genitor(PaiY, Y), irmaos(Paix, PaiY).
primos(X, Y) :- (primo(X, Y); prima(X, Y)), X \== Y.
