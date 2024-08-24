% Hecho: Una lista vacía ya está ordenada
ordenada([], []).

% Regla: Ordenar una lista no vacía
ordenada(L, O) :-
    ordenada_aux(L, [], O).

% Regla auxiliar para la ordenación
ordenada_aux([], Acc, Acc).
ordenada_aux([X | Resto], Acc, O) :-
    insOrden(X, Acc, NuevaLista),     % Insertar X en la lista ordenada
    ordenada_aux(Resto, NuevaLista, O).

% Hecho: Insertar elemento en lista vacía resulta en una lista con un único elemento
insOrden(E, [], [E]).

% Regla: Insertar elemento en lista ordenada no vacía
insOrden(E, [X | Resto], [E, X | Resto]) :-
    E =< X. % E es menor o igual que X.

insOrden(E, [X | Resto], [X | R]) :-
    E > X,  % E es mayor que X.
    insOrden(E, Resto, R).




