
imprimelista2x1([]). %Cuando la lista es vacia no imprime

imprimelista2x1([X]):-
      write(X), nl.


imprimelista2x1([Y|X],[]):- %cuando la 1era lista tiene dato pero la 2da es vacia
      write(Y), nl,
      imprimelista2x1(X).

imprimelista2x1([],[X|X]):- %Mismos datos seguidos en la lista
      write(X), nl,
      imprimelista2x1(X).

imprimelista2x1([X|Y]):-   %Datos diferentes, lista de 2
      write(X), nl,
      imprimelista2x1(Y).

imprimelista2x1([],[Y|J]):- %Cuando la 1era lista es vacia pero la 2da tiene dato
      write(Y), nl,
      imprimelista2x1(J).

imprimelista2x1([Y|J],[X|R]):- %Metodo para imprimir las 2 listas a la vez,
                               %Llama recursivamente a todas las posibles casos
      write(Y),
      write(X), nl,

      imprimelista2x1(J,R).

