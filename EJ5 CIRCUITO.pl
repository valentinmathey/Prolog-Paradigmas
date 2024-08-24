and(1, 0, 0).
and(0, 1, 0).
and(0, 0, 0).
and(1, 1, 1).
or(0, 0, 0).
or(1, 0, 1).
or(1, 1, 1).
or(0, 1, 1).
not(0, 1).
not(1, 0).

circuito(Q1, Q2, S) :-
    not(Q1, S1),      
    and(S1, Q2, S2),
    not(Q2, S3),      
    and(Q1, S3, S4),  
    or(S2, S4, S5),   
    S is S5.