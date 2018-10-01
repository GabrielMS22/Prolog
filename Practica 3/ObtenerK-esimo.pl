
%Caso base, cuando se busca el kesimo de 1, es la cabeza de la lista
getKesimo([X|_],1,X).

%Este caso es para parar la recursividad
%Si p es igual a 0, significa que estamos en el Kesimo que buscamos
%Igualamos R a la cabeza que traiga la lista, que es el valor
%Que le pertenece a esa posicio
getKesimo([X|_],P,R):-
    P=:=0,
    R=X.

%Este caso entra cuando el kesimo que se busca es mayor a 1
%Se va disminuyendo la variable para saber cuantos casos recursivos
%Hara, cuando se haga 0, significa que encontramos el valor del
%Kesimo numero
getKesimo([_|Y],X,R):-
     Aux   is X-1,
     getKesimo(Y,Aux,R).
%Cuando la lista esta vacia, significa que se dio a buscar
%un kesimo numero mayor de de la cantidad que contiene la lista
%Asi que desplegamos un No existe en pantalla
getKesimo([],_,'no existe').
