factorial(1, 1).
factorial(X, Y) :-
    X > 1,
    Z is X-1,
    factorial(Z, RZ),
    Y is X * RZ.
