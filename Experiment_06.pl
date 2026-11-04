connected(raipur, nagpur).
connected(nagpur, bhopal).
connected(bhopal, delhi).
connected(raipur, bilaspur).
connected(bilaspur, korba).
route(X, Y) :- connected(X, Y).
route(X, Y) :- connected(Y, X).
path(X, Y) :- route(X, Y).
path(X, Y) :-
 route(X, Z),
 path(Z, Y).