suma(0,[]).
suma(S, [X | Resto]) :- suma(S1, Resto), S is S1 + X.