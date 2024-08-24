% Hecho: Insertar elemento en lista vacía
insOrden(E, [], [E]).

% Regla: Insertar elemento en lista ordenada no vacía
insOrden(E, [X | Resto], [E, X | Resto]) :-
    E =< X. % E es menor o igual que X.

insOrden(E, [X | Resto], [X | R]) :-
    E > X,  % E es mayor que X.
    insOrden(E, Resto, R).
