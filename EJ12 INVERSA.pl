% Regla para obtener la lista inversa
inversa([], []).
inversa([X], [X]).
inversa([X|Resto], Inversa) :- inversa(Resto, RestoInverso), append(RestoInverso, [X], Inversa).