switch(a; b; c; d).
sit(0; 1).
{up(X, S) : switch(X), sit(S)}.
{light(S) : sit(S)}.
1 {t(X) : switch(X)} 1.
% Est(a)do inicial
up(a,0).
up(b,0).
up(c,0).
up(d,0).
light(0).
% Acción a ejecut(a)r
t(b).
% Axiomasa de efecto
:- t(X), up(X,0), up(X,1).
:- t(X), not up(X,0), not up(X,1).
:- t(X), light(0), light(1).
:- t(X), not light(0), not light(1).
% Axiomas de frame
:- t(X), up(Y,0), not up(Y,1), X != Y.
:- t(X), not up(Y,0), up(Y,1), X != Y.

#show up/2.
#show light/1.
