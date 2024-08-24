% Caso base: Rotar 0 posiciones, la lista se mantiene igual
rotarIzq(R, 0, R).

% Caso recursivo: Rotar N posiciones a la izquierda
rotarIzq([Primer | Resto], N, R) :-
    N > 0,
    append(Resto, [Primer], NuevaLista),    % Coloca el primer elemento al final
    N1 is N - 1,                            % Decrementa N
    rotarIzq(NuevaLista, N1, R).            % Llama recursivamente con la nueva lista y N-1


