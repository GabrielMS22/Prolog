
%Caso base donde, cuando solo hay un elemento en la lista1
%Este lo agrega a el resultado, que es Ultimo (Ult).
%A su vez, detiene la recursividad
separarUltimoElemento([A],[],A).

%Este caso itera para ir avanzando a la lista
%Recibe a la lista, la cabeza se agrega a la 2da lista
%Y se envia el cuerpo de lista 1 y lista 2
%Cuando la lista 1 tenga un elemento, hara el caso base
%Para detener la recursividad
separarUltimoElemento([A|B],[A|X],Ult):-
    separarUltimoElemento(B,X,Ult).
