
%Estos 2 casos base son cuando las 2 listas
%solo tienen 1 elemento, se verifica quien es mas grande
%y se agrega a la lista respuesta, el caso mas basico
concatenar2ListasOrd([L1],[L2],[R,X]):-
    L1>L2,
    R is L2,
    X is L1.
concatenar2ListasOrd([L1],[L2],[R,X]):-
    L1<L2,
    R is L1,
    X is L2.
% Casos base para detener la recursividad, una vez que una lista esta
% vacia, significa que la lista restante es mayor, solo la concatenamos
concatenar2ListasOrd([],L2,L2).
concatenar2ListasOrd(L1,[],L1).

%este caso evalua si la cabeza de la lista 1 es mayor a la de la lista 2
% si es asi, la cabeza de lista 2 se pone en el resultado y se sigue
% iterando
concatenar2ListasOrd([L1|X],[L2|Y],[R|T]):-
    L1>L2,
    R is L2,
    concatenar2ListasOrd([L1|X],Y,T).

%este caso revisa si la cabeza de l2 es mayor a la de l1, si es asi
% se hace la cabeza de resultado y se sigue iterando con los elementos
% restantes de las listas.
concatenar2ListasOrd([L1|X],[L2|Y],[R|T]):-
    L2>L1,
    R is L1,
    concatenar2ListasOrd(X,[L2|Y],T).

