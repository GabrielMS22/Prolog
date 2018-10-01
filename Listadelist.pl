


combinarver1([X|Y],[W|F],R):-
       R=X,
       R=W,
       combinarver(Y,F,R).

