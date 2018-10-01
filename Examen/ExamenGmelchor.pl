%Predicado que devuelve listas Par en impar
paresynones([],[],[]).
paresynones([X|Y],[X|P],R):-
    Aux is X mod 2,
    Aux=1,
    paresynones(Y,P,R).
paresynones([X|Y],R,[X|T]):-
    paresynones(Y,R,T).

unionElementos([],[],_).
unionElementos([X|P],R,[T|S]):-
    estaenLista(X,R),
    T=X,
    unionElementos(P,R,S).

unionElementos(X,[P|T],[P|S]):-
    unionElementos(X,T,S).


estaenLista(X,[R|S]):-
    X==R.
estaenLista(X,[R|S]):-
    estaenLista(X,S).



primerosXElem(_,0,[]).
primerosXElem([X|Y],P,[X|S]):-
             Aux is P-1,
             primerosXElem(Y,Aux,S).


%Predicado que revisa si los elem. son iguales
sonTodosElemIguales(L):-
    iguales(L).

iguales([X]).
iguales([L,X|Y]):-
    L = X,
    iguales([X|Y]).

ocurrencias([],_,0).
ocurrencias([L|Y],X,R):-
   L=X,
   ocurrencias(Y,X,A),
   R is A+1.
estaOrdenadaLista([_]).
estaOrdenadaLista([L,X|Y]):-
    L<X,
    estaOrdenadaLista([X|Y]).


rotacion([L1|X],S):-
   concatenarDosListas(X,L1,S).

concatenarDosListas([],C,[]).
concatenarDosListas(A,C,Y):-
    concatenarDosListas(A,C,Y).













