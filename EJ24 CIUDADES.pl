% Definición de las relaciones entre ciudades y distancias
conectado(mendoza, san_juan, 160).
conectado(mendoza, san_luis, 280).
conectado(san_juan, cordoba, 710).
conectado(san_luis, cordoba, 350).
conectado(san_luis, buenos_aires, 710).
conectado(cordoba, buenos_aires, 540).
conectado(cordoba, misiones, 950).
conectado(cordoba, santa_fe, 280).
conectado(misiones, santa_fe, 570).

% Regla para verificar si existe un camino entre dos ciudades
existe_camino(CiudadInicio, CiudadDestino) :-
    existe_camino_aux(CiudadInicio, CiudadDestino, []).

existe_camino_aux(Ciudad, Ciudad, _) :-
    write(Ciudad).

existe_camino_aux(CiudadInicio, CiudadDestino, Visitadas) :-
    conectado(CiudadInicio, CiudadIntermedia, _), % Usar _ en lugar de Distancia
    \+ member(CiudadIntermedia, Visitadas), % Evitar ciudades ya visitadas
    write(CiudadInicio), write(' -> '),
    existe_camino_aux(CiudadIntermedia, CiudadDestino, [CiudadInicio | Visitadas]).

% Regla para determinar la distancia entre dos ciudades
distancia_entre_ciudades(CiudadInicio, CiudadDestino, Distancia) :-
    distancia_entre_ciudades_aux(CiudadInicio, CiudadDestino, 0, Distancia).

distancia_entre_ciudades_aux(Ciudad, Ciudad, DistanciaAcumulada, DistanciaAcumulada).

distancia_entre_ciudades_aux(CiudadInicio, CiudadDestino, DistanciaAcumulada, DistanciaTotal) :-
    conectado(CiudadInicio, CiudadIntermedia, Distancia),
    NuevaDistanciaAcumulada is DistanciaAcumulada + Distancia,
    distancia_entre_ciudades_aux(CiudadIntermedia, CiudadDestino, NuevaDistanciaAcumulada, DistanciaTotal).



