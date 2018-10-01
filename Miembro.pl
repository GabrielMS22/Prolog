

miembro(_,[],_):- write('Error al nivel de capa de usuario').

miembro(X,[Y|C],R):- %Caso base
        X==Y,       %Se detiene la recursividad cuando el valor de X
                     %existe en la lista
        R is 1.

miembro(X,[Y|W],R):-
        miembro(X,W,R2), %caso recursivo, si entra aqui significa que
                         %Y (La cabeza) no es el miembro que buscamos
                         %asi que mandamos a W quien sera ahora la cabeza
                         %hasta que revise toda la lista y encuentre o no
                         %el dato buscado.
        R is R2+1.
