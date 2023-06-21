mulher(pam).
mulher(liz).
homem(tom).
homem(bob).

genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).

pai(X, Y) :- genitor(X, Y), homem(X).
mae(X, Y) :- genitor(X, Y), mulher(X).