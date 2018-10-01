
%Caso base para detener recursividad
dividirListaDos([],[],[]).
dividirListaDosx([],[],[]).

%este caso asigna la cabeza a la primera lista
%Reenvia el cuerpo a dividirListaDosX, donde se asignara
%Los valores a la segunda lista
dividirListaDos([X|Y],[X|E],A):-
          dividirListaDosx(Y,E,A).

%este caso asigna la cabeza a la segunda lista
dividirListaDosx([X|Y],E,[X|W]):-
        dividirListaDos(Y,E,W).

%el programa tira algunos warnings pero funciona
