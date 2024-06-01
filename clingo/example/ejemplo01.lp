{weekend; tv; happy; rain}.

% Premisa 1: w -> ¬tv
:- weekend, tv.

% Premisa 2: r & ¬w -> h
:- rain, not weekend, not happy.

% Premisa 3: tv & ¬h
:- not tv. % Para facilitar las cosas se puede dividir en dos reglas
:- happy.

