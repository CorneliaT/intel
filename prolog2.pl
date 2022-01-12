:- use_module(library(clpfd)).

ord_weekday(0, esmasp).
ord_weekday(1, teisip).
ord_weekday(2, kolmap).
ord_weekday(3, neljap).
ord_weekday(4, reede).
ord_weekday(5, laup).
ord_weekday(6, puhap).

day_yesterday(D, N) :-
    (X+1) mod 7 #= Y,
    ord_weekday(X, D),
    ord_weekday(Y, N).
    
    
    day_yesterday(D, esmasp).
