% Definición del árbol con nodos persona(nombre, dni, edad)

% Raíz del árbol
persona('R', '123', 40).
% Hijos de la raíz
persona('C', '124', 38).
persona('B', '125', 36).
persona('A', '126', 34).
% Descendientes de 'C'
persona('G', '127', 10).
persona('F', '128', 8).
% Descendientes de 'G'
persona('K', '129', 2).
% Descendientes de 'F'
persona('J', '130', 6).
persona('I', '131', 3).
% Descendientes de 'A'
persona('D', '132', 7).
persona('E', '133', 4).
persona('H', '134', 2).

% Regla para mostrar los descendientes de un nodo
descendientes(Nodo) :-
    write('Descendientes de '), write(Nodo), write(': '), nl,
    mostrar_descendientes(Nodo, []).

mostrar_descendientes(Padre, Visitados) :-
    persona(Padre, _, _),           % Verifica que el nodo Padre exista en el árbol
    persona(Hijo, _, _),            % Busca a los hijos
    ancestro_directo(Padre, Hijo),  % Verifica que Hijo sea descendiente de Padre
    \+ member(Hijo, Visitados),     % Evita nodos ya visitados
    tab(2), write(Hijo), nl,
    mostrar_descendientes(Hijo, [Hijo | Visitados]), !.

mostrar_descendientes(_, _).

% Regla para mostrar los ascendientes de un nodo
ascendientes(Nodo) :-
    write('Ascendientes de '), write(Nodo), write(': '), nl,
    mostrar_ascendientes(Nodo, []).

mostrar_ascendientes(Hijo, Visitados) :-
    persona(Hijo, _, _),             % Verifica que el nodo Hijo exista en el árbol
    persona(Padre, _, _),            % Busca a los padres
    ancestro_directo(Padre, Hijo),   % Verifica que Padre sea ascendiente de Hijo
    \+ member(Padre, Visitados),     % Evita nodos ya visitados
    tab(2), write(Padre), nl,
    mostrar_ascendientes(Padre, [Padre | Visitados]), !.

mostrar_ascendientes(_, _).

% Regla para verificar la relación de ascendencia directa
ancestro_directo(Padre, Hijo) :-
    persona(Padre, _, _),
    persona(Hijo, _, _),
    Padre \= Hijo.

