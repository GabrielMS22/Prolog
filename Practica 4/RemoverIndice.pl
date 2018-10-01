%Caso Base, Detiene recursividad cuando listas vacias
removerIndice(_,[],[]).

%Este caso revisa al valor de Q, osease el indice
%Cuando este es igual a 1, significa que es el indice
%que no debe entrar a la nueva lista,
%Se envia el cuerpo de la lista y R sin modificar
removerIndice(Q,[X|Y],R):-
    Aux is Q,
    Aux==1,
    removerIndice(0,Y,R).

%Caso base donde se reduce el Indice y se agrega a la lista nueva
%Los datos de la lista que se revisa
removerIndice(Q,[X|Y],[X|T]):-
             Aux is Q-1,
              removerIndice(Aux,Y,T).
