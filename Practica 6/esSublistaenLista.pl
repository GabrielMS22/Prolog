%Caso para detener recursividad
isSubListinList([],[]).
%Detiene recursividad cuando segunda lista esta vacia
isSubListinList([LO|X],[]).

%cuando las cabezas coinciden, se envia el cuerpo
isSubListinList([LO|X],[LO|W]):-
         isSubListinList(X,W).

%Cuando no coincide, solo se corta la cabeza de 1era lista
isSubListinList([LO|X],SL):-
         isSubListinList(X,SL).
