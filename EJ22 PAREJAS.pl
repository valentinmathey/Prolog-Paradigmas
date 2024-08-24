% Regla para formar parejas a partir de dos listas
parejas([], [], []).  % Caso base: listas vacías, no hay parejas.

parejas([X | L1], [Y | L2], [(X, Y) | L3]) :-
    parejas(L1, L2, L3).  % Recursión: forma una pareja con los primeros elementos y continúa con el resto de las listas.
