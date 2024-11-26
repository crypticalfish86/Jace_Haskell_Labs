/*9.1*/
fib(0,1).
fib(1,1).

fib(N,F) :- 
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1,F1), fib(N2,F2),
    F is F1 + F2.

/*9.2*/

a2b([],[]).
a2b([a|Tail1], [b|Tail2]) :- a2b(Tail1,Tail2).
a2b([c|Tail1], [d|Tail2]) :- a2b(Tail1,Tail2).
a2b([X|Tail1], [X|Tail2]) :- a2b(Tail1,Tail2).

/*9.3*/


stars(0).
stars(N) :-
    N > 0,
    write('*'),
    N1 is N - 1,
    stars(N1).

starlines(0).
starlines(N) :-
    N > 0,
    stars(N),
    nl,
    N1 is N - 1,
    starlines(N-1).