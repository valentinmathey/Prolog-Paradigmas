esPar(0).
esPar(N) :- N > 0, N1 is N - 2, esPar(N1).