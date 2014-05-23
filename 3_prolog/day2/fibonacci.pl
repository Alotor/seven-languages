fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(X, Y) :-
    X > 2,
    X1 is X-1,
    fibonacci(X1, Y1),
    X2 is X-2,
    fibonacci(X2, Y2),
    Y is Y1 + Y2.

