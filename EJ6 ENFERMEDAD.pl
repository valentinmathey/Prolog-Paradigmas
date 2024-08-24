sintoma(pedro, fiebre).
sintoma(pedro, tos).
sintoma(pedro, dolor_de_garganta).
sintoma(maria, fiebre).
sintoma(maria, dolor_de_cabeza).
sintoma(juan, tos).
sintoma(juan, dolor_de_garganta).

enfermedad(gripe, fiebre).
enfermedad(gripe, tos).
enfermedad(gripe, dolor_de_garganta).
enfermedad(covid, fiebre).
enfermedad(covid, tos).
enfermedad(covid, dolor_de_cabeza).
enfermedad(resfrio, fiebre).
enfermedad(resfrio, tos).
enfermedad(resfrio, dolor_de_garganta).

diagnostico(P,S,E) :- sintoma(P,S), enfermedad(E,S).