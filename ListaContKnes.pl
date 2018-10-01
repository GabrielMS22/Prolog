
%Cuando la lista es null, no es el numero que buscamos, por tanto 0
contador(_,[],0).
%cuando se encuentra el numero,marcamos el punto para saber que se debe
%asignar un 1 y seguir buscando
contador(X,[X|Y],R):-
    contador(X,Y,R2),
    R is  1+R2.

%En este caso se sabe que el numero no esta en la cabeza, asi que
%Se envia el resto de la lista para verificar si coinciden
contador(X,[_|W],R):-
    contador(X,W,R2),
    R=R2.
