rotada_aux([], _, []).
rotada(L, 0, L).

rotada([X | Resto], N, Rotada) :- N > 0, append(Resto, [X], Resultado), N1 is N - 1, rotada(Resultado, N1, Rotada).