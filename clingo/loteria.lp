digito(0..9).
bombo(1..5).

1 {bola(B, D) : digito(D)} 1 :- bombo(B).

%:- bola(B, D), bola(B', D), B != B'. % Solo muestra cuando no hay repeticiones en la bola que sacan los bombos

% 
repetido :- bola(B, D), bola(B', D), B != B'.
:- not repetido.

#show bola/2.