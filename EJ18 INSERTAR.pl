% Hecho: Insertar en posición 0 agrega el elemento al principio
insertarEn(E, L, 0, [E | L]).

% Regla: Insertar en una posición P
insertarEn(E, [X | Resto], P, [X | R]) :-
    P > 0,
    P1 is P - 1,
    insertarEn(E, Resto, P1, R).
