eliminar_todos([], _, []).

eliminar_todos([E | Resto], E, R) :- eliminar_todos(Resto, E, R).

eliminar_todos([X | Resto], E, [X | R]) :- X \= E, eliminar_todos(Resto, E, R).