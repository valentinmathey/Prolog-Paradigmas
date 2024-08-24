% Hecho: La intersección de dos listas vacías es una lista vacía
intersec([], _, []).

% Regla: Si el primer elemento de L1 está en L2, incluirlo en la intersección
intersec([X | Resto1], L2, [X | Resto3]) :- member(X, L2), intersec(Resto1, L2, Resto3).

% Regla: Si el primer elemento de L1 no está en L2, no incluirlo
intersec([X | Resto1], L2, Resto3) :- \+ member(X, L2), intersec(Resto1, L2, Resto3).

% Hecho: La intersección de una lista con una lista vacía es una lista vacía
intersec(_, [], []).
