2 {tiger1; tiger2; tiger3} 2.
{door1; door2; door3} 1.

% Puerta 1: hay un tigre en la 1
:- door1, not tiger1.
:- tiger1, not door1.

% Puerta 2: hay una dama en la 2
% door2 <-> ¬tiger2
:- door2, tiger2.
:- not tiger2, not door2.

% Puerta 2: hay un tigre en la 3
% door3 <-> tiger2
:- door3, not tiger2.
:- tiger2, not door3.

