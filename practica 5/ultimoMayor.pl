
%Caso base, si solo hay un elemento en la lista
%Ese mismo es el mayor.
ultimoMayor([X],[X]).
%Este caso verifica si la cabeza es mayor al PRIMER elemento
%Del cuerpo de la lista, si es asi
%Envia al primer elemento como cabeza
%Y a la cabeza como primer elemento de la lista, para asi
%seguir intercambiando el mayor hasta llegar al final
ultimoMayor([L1,X|Y],Ult):-
    L1>X,
    ultimoMayor([X,L1|Y],Ult).

%si el predicado entra a este caso, Significa que la cabeza no es
%Mayor que el primer elemento de la lista, asi que simplemente
%Envia el primer elemento del cuerpo de la lista como cabeza
%para seguir iterando .
ultimoMayor([L1,X|Y],[L1|Ult]):-
   ultimoMayor([X|Y],Ult).
