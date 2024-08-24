% Hecho: Eliminar el elemento específico
eliminar([E | Resto], E, Resto).

% Regla: Eliminar elemento específico
eliminar([X | Resto], E, [X | R]) :- X \= E, eliminar(Resto, E, R).
