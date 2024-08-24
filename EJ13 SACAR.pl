% Hecho: Eliminar elemento en posición 0
sacar(0, [_ | Resto], Resto).

% Regla: Eliminar elemento en posición P
sacar(P, [X | Resto], [X | R]) :- P > 0, P1 is P - 1, sacar(P1, Resto, R).
