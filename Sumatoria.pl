
                        %Hace la suma de una sucesion que comienza
                        %en un inicio definido y aumenta en 1 en 1
sumatoria(Inicio,Fin,R):-
          J is Inicio,
          Fin=:=J,      % fin tiene que ser igual a J
          R=Fin.        %si no lo es, buscara el otro caso
                        %el cual es recursivo a este, pero cambia
                        %los valores de inicio
sumatoria(Inicio,Fin,R):-
          P is Inicio,
          sumatoria(P+1,Fin,Sum),
          R is Sum+Inicio.


sumatoriacubos(Numero,R):-
            Numero=:=1,
            R=Numero.


sumatoriacubos(Numero,R):-
            Cant is Numero,  %Tomamos una variable y almacenamos el valor
                             %inicial Numero
            Mul is Cant*Cant, %Tomamos otra variable la cual multiplica Cant*Cant (Cubo).
            Reduc is Cant-1,  %Asignamos a Reduc Cant-1, de esta forma
                              %podremos seguir iterando si la cantidad es mayor a 1
            sumatoriacubos(Reduc,R2), %Proceso recursivo  el cual llama al Numero inicial
                                       % reducido en 1, de aqui verifica el caso base
                                       % si no se cumple, volvera a iterar hasta que el numero
                                       %sea igual a 1
            Final is  Mul+R2, %Obteniendo la R, hacemos la suma con Mul
            R=Final. %resultado final


