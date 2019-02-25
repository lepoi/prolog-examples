father(abraham, beatriz).
father(abraham, carlos).
father(beatriz, david).
father(beatriz, esther).
father(beatriz, felipe).
father(carlos, gabriela).
father(david, hilda).
father(david, ines).
father(david, juan).
father(hilda, kiara).

son(X, Y) :-
	father(Y, X).

sibling(X, Z) :-
	father(Y, X),
	father(Y, Z),
	X \= Z.

cousin(X, Z) :-
	uncle(Y, X),
	son(Z, Y).

uncle(X, Y) :-
	father(Z, Y),
	sibling(X, Z).

nephew(X, Y) :-
	uncle(Y, X).

grandfather(X, Z) :-
	father(X, Y),
	father(Y, Z).

grandson(X, Y) :-
	grandfather(Y, X).

greatgrandfather(X, Z) :-
	grandfather(X, Y),
	father(Y, Z).

greatgrandson(X, Y) :-
	gratgrandfather(Y, X).
