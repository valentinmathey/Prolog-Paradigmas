suma(0, 0).
suma(N, S) :-
    N > 0,
    N1 is N - 1,
    suma(N1, S1),
    NumeroPar is N * 2,
    S is S1 + NumeroPar.