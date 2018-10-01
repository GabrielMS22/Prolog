%caso base cuando la lista esta vacia, no sigue.
sustituir([],X,V,[R|Z]).
sustituir([X|Y],X,V,R2):-
         Aux is X,
         sustituir(Y,X,V,Aux),
         R2 is Aux.

sustituir([X|Y],W,V,R):-
    Aux2 is X,
    sustituir(Y,W,V,Aux2),
    R is Aux2.
