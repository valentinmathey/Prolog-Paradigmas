% Definición de personas con el functor persona(nombre, teléfono, sexo, edad)

persona('Alice', '1234567890', 'f', 25).
persona('Bob', '9876543210', 'm', 30).
persona('Carol', '5678901234', 'f', 22).
persona('David', '4321098765', 'm', 28).

% Buscar si una persona existe:

existe_persona(Nombre) :-
    persona(Nombre, _, _, _).

% Mostrar todas las personas:

mostrar_personas :-
    forall(persona(Nombre, Telefono, Sexo, Edad), write_persona(Nombre, Telefono, Sexo, Edad)).

write_persona(Nombre, Telefono, Sexo, Edad) :-
    write('Nombre: '), write(Nombre), tab(2),
    write('Teléfono: '), write(Telefono), tab(2),
    write('Sexo: '), write(Sexo), tab(2),
    write('Edad: '), write(Edad), nl.

% Mostrar todas las mujeres:

mujeres :-
    persona(Nombre, _, 'f', _),
    write(Nombre), nl,
    fail.
mujeres.

% Mostrar todos los varones mayores de 21 años:

varones_mayores_de_21 :-
    persona(Nombre, _, 'm', Edad),
    Edad > 21,
    write(Nombre), nl,
    fail.
varones_mayores_de_21.

% Definir la relación casado con teléfono:

casado('Alice', '1234567890').
casado('Bob', '9876543210').

% Definir la relación de visita de una persona a otra:

visita('Alice', 'Carol').
visita('Carol', 'Bob').

% Mostrar los casados:

mostrar_casados :-
    forall(casado(Nombre1, Telefono), (persona(Nombre2, Telefono, _, _), write(Nombre1), write(' y '), write(Nombre2), nl)).

% Indicar para qué sirve c(X) si casado(X, Y), visita(Y, Z), persona(Z, _, m):

c(X) :-
    casado(X, Y),
    visita(Y, Z),
    persona(Z, _, 'm').
