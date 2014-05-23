myreverse([],[]).
myreverse([Head|Tail], Reversed) :-
    myreverse(Tail, TailReversed),
    append(TailReversed, Head, Reversed).

findsmallest([X|[]], X).

findsmallest([X|XS], X) :-
    findsmallest(XS, X).

findsmallest([X|XS], Result) :-
    findsmallest(XS, Result),
    Result < X.

findsmallest([X|XS], X) :-
    findsmallest(XS, Result),
    X < Result.

mysort([], []).
mysort([X|XS], Sorted) :-
    mysort(XS, Result),
    insertSorted(X, Result, Sorted).

insertSorted(X, [], [X]).
insertSorted(X, [X|YS], [X|[X|YS]]).
insertSorted(X, [Y|YS], [X|[Y|YS]]) :- X < Y.
insertSorted(X, [Y|YS], [Y|ZS]) :- X > Y, insertSorted(X, YS, ZS).
