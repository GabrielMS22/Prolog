
%Caso base para detener recursividad
%una vez que la lista 1 esta vacia, se asigna la segunda al resultado
concatenarDosListas([],C,C).
%Este caso agrega la cabeza de la lista 1 a Resultado([A|U])
%despues envia la cabeza de la primera lista, la 2da lista, y el cuerpo
%de la lista respuesta, para seguir iterando
concatenarDosListas([A|B],C,[A|Y]):-
    concatenarDosListas(B,C,Y).


