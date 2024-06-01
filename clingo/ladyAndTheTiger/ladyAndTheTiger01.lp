{tiger1; tiger2; door1; door2}.

% door1 <-> ¬tiger1 & tiger2
:- door1, tiger1.
:- door1, not tiger2.
:- not tiger1, tiger2, not door1.

% door2 <-> (¬tiger2 & tiger1) | (tiger1 & ¬tiger2)
% door2 == tiger1 xor tiger2
:- door2, tiger1, tiger2.
:- door2, not tiger1, not tiger2.

:- tiger1, not tiger2, not door2.
:- not tiger1, tiger2, not door2.

% door1 xor door2
:- door1, door2.
:- not door1, not door2.