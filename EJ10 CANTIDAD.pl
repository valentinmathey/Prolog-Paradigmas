cantidad(0, []).
cantidad(N, [_ | Resto]) :- cantidad(N1, Resto), N is N1 + 1.