%% Pr�ctica 5: Series de Fourier en tiempo continuo
%
%% Programa serie de Fourier exponencial compleja
%
% La serie de Fourier de una se�al $f(t)$ peri�dica puede ser construida  
% bajo ciertas condiciones matem�ticas (las condiciones de Dirichlet, aunque estas podr�an no 
% cumplirse y a�n as� la serie existir) de la se�al. Si la se�al
% no es peri�dica pero cumple las condiciones en un intervalo de longitud
% finita,
% se puede construir la serie de
% Fourier en el intervalo (cuando el intervalo 
% es de longitud infinita se puede abordar a la suma de Fourier, 
% exponencial compleja, como una integral y los coeficientes 
% $D_n$ son muestras de lo que llamamos transformada de Fourier.)
%
% Deber�s realizar algunos problemas con las especificaciones que
% se encuentran al final del documento, para ello se proporciona el 
% siguiente c�digo, que gr�fica la serie de Fourier exponencial compleja.  
%%
%
% <include>sfc.m</include>
%
% Por ejemplo si 
%%
% 
% $$f(t)=e^{-t/2};\;\; 0<t<\pi$$
% 
% peri�dica, entonces si se calcula la serie de Fourier exponencial compleja
% se utilizan las siguientes instrucciones para observar las gr�ficas
% correspondientes

d0=0.504;
dn=@(n) 0.504/(1+4*n*j);
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=4;
a=-7;
b=7;
sfc(t0,tf,dn,d0,f,armo,a,b)

%% Entregables
% Se revisa una publicaci�n (html) de la pr�ctica. En este caso inicie
% indicando el nombre de la pr�ctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El �ndice del contenido lo genera Publish (�ndice). Los
% objetivos son los sigueintes:
%
% * Realizar gr�ficas de series de Fourier exponenciales y trigonom�tricas
% en tiempo continuo
% * Manipulaci�n de instrucciones en MATLAB
% * Calculo n�merico de los coeficientes de Fourier
%
% Como introducci�n elabore un reporte de la aproximaci�n n�merica de los
% coeficientes de Fourier exponencial compleja, puede apoyarse de Lathi
% secci�n 6.6, aqu� debe de observar que el autor hace un tipo de
% aproximaci�n para la integral que calcula los $D_n$, pero como sabe (de
% la pr�ctica anterior) existen diferentes algoritmos para aproximar
% numericamente una integral definida. 
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva secci�n (para la publicaci�n) en cada uno de ellos.
%
% Para cada problema debes de realizar 
% 
% # Realizar el programa de la serie que se indica
% # Gr�fica de la serie de Fourier en un intervalo que muestre 5
% repeticiones
% # Gr�fica de la se�al y la serie de Fourier para 4 armonicos
% # Gr�fica del error
% # Gr�fica de la energ�a del error
% # Espectro de magnitud  para 4 armonicos
% # Espectro de fase para 4 armonicos
% # Todo lo anterior para 15 armonicos
% 
% 
% * *Ejemplo 6.1* Con serie  y espectro trigonometrico, no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * *Ejemplo 6.2.* Con serie y espectro exponencial y A=3,  no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
% el procedimiento)
% 
% * *Ejemplo 6.4.* Con serie y espectro exponencial,  no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
% el procedimiento) 
%
% * *Ejercicio 6.5.* Con serie y espectro exponencial,  no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * *Ejemplo 6.7.* Con serie y espectro exponencial y $T_0=3$ sin incluir la
% gr�fica de f, error ni energ�a del error,  no es
% necesario entregar el c�digo, solo la aplicaci�n al problema especifico,
% debe de indicar la funci�n y los valores de sus coeficientes (sin incluir
% el procedimiento)
%
% * Elabore un c�digo similar al COMPUTER EXAMPLE C6.2 que se encuentra al 
% final de la secci�n 6.2 de Lathi para el Ejempo 6.2 con los datos
% indicados anteriormente (no utilice inline)
%
% * Elabore un c�digo que implemente el algoritmo de trapecio compuesto
% para $n=15$, Utilice este c�digo para aproximar $D_0,...,D_4$ del ejemplo
% de la pr�ctica. Ahora implemente el c�digo COMPUTER EXAMPLE C6.4 que se
% encuentra al final de la secci�n 6.6 de Lathi, y calcule nuevamente el
% los coeficientes $D_0,...,D_4$ del ejemplo propuesto. Muestre una tabla
% que contenga los coeficientes mencionados calculados con los dos
% algoritmos y de forma exacta, �Qu� algortmo aproxima mejor a los
% coeficientes?, para esto compare los coefientes con el valor absoluto de
% la resta. 
%
% No es necesario incluir conclusiones en esta pr�ctica, si lo considera
% necesario puede incluir ap�ndices, no olvide incluir sus referencias. 
%
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/pxg0fhs1oi0dnyp/P05SyS20201.m?dl=0 enlace>




