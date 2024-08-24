ultimo(0, []).
ultimo(U, [U]).
ultimo(U, [_|Resto]) :- ultimo(U, Resto).