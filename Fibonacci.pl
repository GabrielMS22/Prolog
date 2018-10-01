

fibonacci(1,R):-
    R=1.

fibonacci(2,R):-
    R=1.

fibonacci(X,R):-
     J is 1,
     X\=J,
     fibonacci(J,RC).

fibonacci(X,R):-
    R is 1,
    J=:=X.
