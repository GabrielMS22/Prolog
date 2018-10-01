


%Caso recursivo que llama al resto, para encontrar al mayor de la lista
%Enviada por el usuario
mayorlista([X|Y],R):-
    mayorlistax(X,Y,R).
%Caso base, si la lista enviada en Y esta vacia, significa
%que solo hay un elemento, siendo este mismo el mayor de la lista.
mayorlistax(X,[],R):-
    R is X.
%Este caso compara si la cabeza es menor que el primer elemento
% Del resto de la lista, o bien, si el primer elemento del RESTO de la
% lista es mayor a la cabeza, si es asi. Aux toma el valor y se envia
mayorlistax(X,[Y|Z],R):-
    Y>X,
    Aux is Y,
    mayorlistax(Y,Z,R2),
    R is R2.
%En este caso X (osease la cabeza) fue mayor a el primer elemento
%De la lista, asi que se envia de nuevo a comparar
% con el resto de la lista de Y (Y se hizo la cabeza de una nueva lista,
% para manipular asi el resto del contenido)
mayorlistax(X,[Y|Z],R):-
    Aux is X,
    mayorlistax(Aux,Z,R2),
    R is R2.
