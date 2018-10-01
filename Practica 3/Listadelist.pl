



%Caso base, listas vacias, para la recursividad
listadelist([], [], Y).

listadelist([X|Y],[W|F],[[R|X]]):-
       R is X,
       X is W,
       concatenar(Y, F,Aux2).
%tendria que desplegar listde listas...




