%Combinaciones para mover hacia arriba
up([A,B,C,0,E,F,G,H,I],[0,B,C,A,E,F,G,H,I]).
up([A,B,C,D,0,F,G,H,I],[A,0,C,D,B,F,G,H,I]).
up([A,B,C,D,E,0,G,H,I],[A,B,0,D,E,C,G,H,I]).
up([A,B,C,D,E,F,0,H,I],[A,B,C,0,E,F,D,H,I]).
up([A,B,C,D,E,F,G,0,I],[A,B,C,D,0,F,G,E,I]).
up([A,B,C,D,E,F,G,H,0],[A,B,C,D,E,0,G,H,F]).

%Combinaciones par amover hacia abajo
down([0,B,C,D,E,F,G,H,I],[D,B,C,0,E,F,G,H,I]).
down([A,0,C,D,E,F,G,H,I],[A,E,C,D,0,F,G,H,I]).
down([A,B,0,D,E,F,G,H,I],[A,B,F,D,E,0,G,H,I]).
down([A,B,C,0,E,F,G,H,I],[A,B,C,G,E,F,0,H,I]).
down([A,B,C,D,0,F,G,H,I],[A,B,C,D,H,F,G,0,I]).
down([A,B,C,D,E,0,G,H,I],[A,B,C,D,E,I,G,H,0]).

%combinaciones para mover hacia la izquierda
left([A,B,0,D,E,F,G,H,I],[A,0,B,D,E,F,G,H,I]).
left([A,0,C,D,E,F,G,H,I],[0,A,C,D,E,F,G,H,I]).
left([A,B,C,D,E,0,G,H,I],[A,B,C,D,0,E,G,H,I]).
left([A,B,C,D,0,F,G,H,I],[A,B,C,0,D,F,G,H,I]).
left([A,B,C,D,E,F,G,H,0],[A,B,C,D,E,F,G,0,H]).
left([A,B,C,D,E,F,G,0,I],[A,B,C,D,E,F,0,G,I]).

%Combinaciones para mover hacia la derecha
right([0,B,C,D,E,F,G,H,I],[B,0,C,D,E,F,G,H,I]).
right([A,0,C,D,E,F,G,H,I],[A,C,0,D,E,F,G,H,I]).
right([A,B,C,0,E,F,G,H,I],[A,B,C,E,0,F,G,H,I]).
right([A,B,C,D,0,F,G,H,I],[A,B,C,D,F,0,G,H,I]).
right([A,B,C,D,E,F,0,H,I],[A,B,C,D,E,F,H,0,I]).
right([A,B,C,D,E,F,G,0,I],[A,B,C,D,E,F,G,I,0]).

imprimelista([]).
imprimelista([L|X]):-
    write(L), nl,
    imprimelista(X).


juego(A,L):-
    move(A,L,0,Moving),
    write("Tablero finalizado!"), nl,
    imprimelista(Moving).


move([1,2,3,4,5,6,7,8,0],_,_,[]).

%Movimiento hacia arriba
move(A,Li,L,['Movimiento:Arriba'|R]):-
    L\=1,
    Li>0,
    up(A,Nuevo),
    Aux is Li-1,
    move(Nuevo,Aux,2,R),
     write(Nuevo), nl.

%Movimiento hacia abajo
move(A,Li,L,['Movimiento:Abajo'|R]):-
    L\=2,
    Li>0,
    down(A,Nuevo),
    Aux is Li-1,
    move(Nuevo,Aux,1,R),
     write(Nuevo), nl.

%Movimiento hacia a la IZquierda
move(A,Li,L,['Movimiento:Izquierda'|R]):-
    L\=3,
    Li>0,
    left(A,Nuevo),
    Aux is Li-1,
    move(Nuevo,Aux,4,R),
     write(Nuevo), nl.


%Movimiento hacia la Derecha
move(A,Li,L,['Movimiento:Derecha'|R]):-
    L\=4,
    Li>0,
    right(A,Nuevo),
    Aux is Li-1,
    move(Nuevo,Aux,3,R),
    write(Nuevo), nl.
































