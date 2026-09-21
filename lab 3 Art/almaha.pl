% Male family members
male(ali).
male(ahmad).
male(khalid).

% Female family members
female(fatima).
female(sara).
female(nora).

% Parent relationships
% parent(X, Y) means X is a parent of Y.

parent(ali, ahmad).
parent(ali, khalid).
parent(ali, sara).
parent(ali, nora).

parent(fatima, ahmad).
parent(fatima, khalid).
parent(fatima, sara).
parent(fatima, nora).

% Father rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Sister rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.