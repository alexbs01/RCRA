#const n=800.
row(1..n).
col(1..n).

% Una reina por fila
1 {queen(X,Y): col(Y)} 1 :- row(X).

% No pongas dos en la misma columna
:- queen(X,Y), queen(X',Y), X != X'.

:- queen(X,Y), queen(X',Y'), X != X', |X-X'| = |Y-Y'|.
:- queen(X,Y), queen(X',Y'), Y != Y', |X-X'| = |Y-Y'|.

#show.

