cell(0,2,7).
cell(0,4,5).
cell(0,6,2).
cell(1,0,9).
cell(1,3,6).
cell(1,5,1).
cell(1,8,7).
cell(2,0,6).
cell(2,4,4).
cell(2,8,5).
cell(3,1,8).
cell(3,5,3).
cell(3,7,7).
cell(4,0,5).
cell(4,2,1).
cell(4,6,3).
cell(4,8,9).
cell(5,1,4).
cell(5,3,5).
cell(5,7,8).
cell(6,0,7).
cell(6,4,1).
cell(6,8,8).
cell(7,0,1).
cell(7,3,9).
cell(7,5,6).
cell(7,8,2).
cell(8,2,2).
cell(8,4,3).
cell(8,6,6).

% Generar un dígito en cada casilla del sudoku
digit(1..9).
row(0..8).
col(0..8).
1 {cell(X,Y,D): digit(D)} 1 :- col(X), row(Y).

% No repitas por fila
:- cell(X,Y,D), cell(X',Y,D), X!=X'.

% No repitas por columna
:- cell(X,Y,D), cell(X,Y',D), Y!=Y'.

% No repitas por cuadrante
:- cell(X,Y,D), cell(X',Y',D), (X,Y)!=(X',Y'), X/3=X'/3, Y/3=Y'/3.