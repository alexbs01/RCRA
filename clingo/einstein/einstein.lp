house(1..5).

type(person,     (brit;swede;dane;norw;german)).
type(color,      (red;blue;yellow;green;white)).
type(drink,      (tea;coffee;water;milk;beer)).
type(pet,        (fish;dog;cat;horse;bird)).
type(tobaco,     (dunhill;prince;bluem;pall;blends)).

% A cada tipo y valor buscarle una casa

% at(P,H) = en la casa H el tipo T tiene el valor V
1 {at(T,V,H) : house(H)} 1 :- type(T,V).
% En cada casa hay un valor
:- at(T,V,H), at(T,V',H), V!=V'.

% 1. brit in red house
:- at(person,brit,H), not at(color,red,H).

% 2. swede has dog
:- at(person,swede,H), not at(pet,dog,H).

% 3. dane drinks tea
:- at(person,dane,H), not at(drink,tea,H).

% 4. green house is left to white house
:- at(color, green, H), not at(color, white, H+1).

% 5. green house drinks coffee
:- at(color, green, H), not at(drink, coffee, H).

#show at/3.
