padre(homero,bart).
padre(march,bart).
padre(march,lisa).
padre(homero,lisa).
padre(homero,maggie).
padre(abraham,homero).
padre(mona,homero).
padre(abraham,herb).
padre(mona,herb).
padre(clancy,march).
padre(clancy,patty).
padre(clancy,selma).
padre(jackie,march).
padre(jackie,patty).
padre(jackie,selma).
padre(march,lisa).
padre(march,maggie).
padre(homero,ling).
padre(selma,ling).
padre(herb,chuy).

mediohermano(X,Y):-
        %Aparte de tener un padre en comun, el otro debe ser diferente para
        %ser medio hermano
    padre(Z,X),
    padre(Z,Y),
    padre(W,X),
    padre(A,Y),
    Z\=W,
    Z\=A,
    A\=W,
    X\=Y.

hermano(X,Y):-
        %Para ser hermano, deben tener los 2 mismos padres
        %aparte de que no sea el mismo padre en ambos casos.
    padre(Z,X),
    padre(W,X),
    Z\=W,
    padre(Z,Y),
    padre(W,Y),
    X\=Y.

esposo(X,Y):-
    %Creamos un metodo que busque si 2 personas
    %son esposos, para poder verificar a cuniado
    padre(X,W),
    padre(X,Z),
    W\=Z,
    padre(Y,W),
    padre(Y,Z).

primo(X,Y):-
     padre(Z,X),
     padre(W,Y),
     W\=Z,
     hermano(Z,W).
      %Ling es primo de Lisa,Maggie y Bart,

cuniado(X,Y):-
       %primero buscamos quien es el padre de X,
       %Luego verificamos si el padre de X tiene un sobrino W
       %despues buscamos al papa de (A) de W (el sobrino).
       %finalmente verificamos si A es hermano de Y.
        padre(Z,X),
        abuelo(Z,W),
        padre(A,W),
        hermano(A,Y).

tio(X,Y):-
    %Para saber si X es tio
    %se busca saber si es hermano de alguno de los padres de Y
    padre(Z,Y),
    hermano(X,Z).

abuelo(X,Y):-
    %Para saber si es abuelo, se debe buscar
    %si X es papa del papa de Y
    padre(Z,Y),
    padre(X,Z).








