predecesor([], []).
predecesor([X], [X]).

predecesor([X | Resto], [X | R]) :- predecesor_aux(Resto, X, R).

predecesor_aux([X | Resto], Anterior, [X | R]) :- X >= Anterior, predecesor_aux(Resto, X, R).
predecesor_aux([X | Resto], Anterior, R) :- X < Anterior, predecesor_aux(Resto, Anterior, R).