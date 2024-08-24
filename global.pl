parImpar([],dato([],[])).

% Predicado para verificar si un número es divisible por otro
divi(N, D) :- N mod D =:= 0.

% Predicado principal parImpar
parImpar(Lista, dato(Pares, Impares)) :- separar_pares_impares(Lista, Pares, Impares).

% Predicado auxiliar para separar pares e impares
separar_pares_impares([], [], []).
separar_pares_impares([H|T], Pares, Impares) :-
    (   divi(H, 2)
    ->  Pares = [H|ParesResto],
        Impares = ImparesResto
    ;   Pares = ParesResto,
        Impares = [H|ImparesResto]
    ),
    separar_pares_impares(T, ParesResto, ImparesResto).

parteDcha(_,[],[]).
parteDcha(0,L,L).
parteDcha(1,[R|L],L).
parteDcha(N,[R|Resto],L):-  N1 is N - 1, parteDcha(N1,Resto,L).


a :- b, c, d.
b.
c :- b, !, e.
c :- b, f.
d.
e :- fail.
f.

predecesor([],[]).
predecesor([X],[X]).
predecesor([PrimerElemento | Resto],[PrimerElemento | R]) :-  predecesor_aux(Resto, PrimerElemento, R).

predecesor_aux([], _, []).
predecesor_aux([Elemento | Resto], Predecesor, [Elemento | R]) :- Elemento >= Predecesor, predecesor_aux(Resto, Elemento, R).
predecesor_aux([Elemento | Resto], Predecesor, R) :- Elemento < Predecesor, predecesor_aux(Resto, Predecesor, R).

cuantos([], 0).
cuantos([Numero | Resto], N) :- cuantos_aux(Numero, Resto, N).

cuantos_aux(_, [], 0).
cuantos_aux(Numero, [Siguiente | Resto], N) :- Numero =:= Siguiente, cuantos_aux(Numero, Resto, S), N is S + 1.
cuantos_aux(Numero, [Siguiente | Resto], N) :- Numero =\= Siguiente, cuantos_aux(Numero, Resto, N).

enOrden2([]) :- false.
enOrden2([(Primero, Segundo)]) :- Primero =< Segundo.
enOrden2([(Primero, Segundo) | Resto]) :- Primero =< Segundo, enOrden2(Resto).

enOrden([]) :- fail.
enOrden([(Primero, Segundo)]).
enOrden([(Primero, Segundo), (Tercero, Cuarto) | Resto]) :- Tercero >= Primero, Cuarto >= Segundo, enOrden(Resto).

cto([],0).
cto([X | Y], K) :- cto(X, N), cto(Y, M), K is N + M.
cto(_, 1).


hace([], []).
hace([], B) :- B \= '*'.
hace(B, []) :- B \= '*'.
hace([X1 | X2], Y1) :- X1 \= '*', hace(X2, Y1).
hace(X1, [Y1 | Y2] ) :- Y1 \= '*', hace(X1, Y2).
hace([X1 | X2], (Y1 | Y2)) :- X1 \= Y1, hace(X2, Y2).

p(X) :- q(Z, X), r(X).
%p(X) :- q(Z, X), !, r(X).
p(X) :- q(X, X).
q(X, X) :- s(X).
r(b).
s(a).
s(b).