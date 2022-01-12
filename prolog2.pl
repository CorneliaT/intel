ord_weekday(0, E).
ord_weekday(1, T).
ord_weekday(2, K).
ord_weekday(3, N).
ord_weekday(4, R).
ord_weekday(5, L).
ord_weekday(6, P).

day_next(D, N) :-
    (X+1) mod 7 #= Y,
    ord_weekday(X, D),
    ord_weekday(Y, N).
