perm([], []).
perm(L, [X|P]) :-
mem_rem(X, L, R),
perm(R, P).

mem_rem(H, [H|T], T).
mem_rem(X, [H|T], [H|R]) :- mem_rem(X, T, R).

/*10.1*/


perm4(X) :- perm([1,2,3,4], X).

differ([],[]).
differ([H1|T1], [H2|T2]) :- H1 \= H2, differ(T1,T2).

/*10.2*/


solve(W,X,Y,Z) :- 
    perm4(W),perm4(X),perm4(Y),perm4(Z), 
    differ(W,X),differ(W,Y),differ(W,Z),
    differ(X,Y),differ(X,Z),
    differ(Y,Z), 
    W = [W1,W2,W3,W4], X = [X1,X2,X3,X4], Y = [Y1,Y2,Y3,Y4], Z = [Z1,Z2,Z3,Z4],
    W1 > W2, 
    X1 < X2, 
    X4 > Y4, 
    Y1 > Y2, 
    Y4 > Y3, 
    Z4 > Z3.

/*10.3*/

cat(1,X) :- X < 10.
cat(2,X) :- 10 =< X, X < 100.
cat(3,X) :- 100 =< X.

cat2(1,X) :- X < 10,!.
cat2(2,X) :- X < 100,!.
cat2(3,X).