%% Pr�ctica 4: Convoluci�n y Correlaci�n de se�ales en tiempo continuo
%
%% Simulaci�n num�rica de convoluci�n
%
% Existen diferentes formas de implementar simulaciones num�ricas de
% convoluciones. De acuerdo a la definici�n matem�tica de convoluci�n
% necesitamos resolver una integral de una multiplicaci�n de se�ales,
% entonces implementar una simulaci�n de convoluci�n se subdivide en entender
% que significa integrar num�ricamente y posteriormente elegir un algoritmo
% que resuelva el problema de integraci�n.
% 
% La siguiente
% <https://www.youtube.com/playlist?list=PLSC7gO5dTNPewJkJ5Zh3Y7xHfy_fnDKqD lista de reproducci�n> 
% explica sobre la simulaci�n num�rica de integrales, no se explican todos
% los algoritmos exitentes (hay bastantes) pero sirve para tener una idea
% de lo que se busca en general cuando se realizan simulaciones numericas
%
% Para la implementaci�n n�merica es importante tener en cuenta 
% la duraci�n de cada se�al,
% recuerde que es imposible hacer simulaciones n�mericas que involucren
% cantidades infinitas. Si una se�al tiene duraci�n $T_1$ y otra se�al 
% $T_2$ la convoluci�n tendr� duraci�n $T_1+T_2$; donde la duraci�n se
% refiere al intervalo para el cual la se�al no es totalmente cero. 
% 
% 
% <<duracion.png>>
% 
% 
%%
% Cabe se�alar que si las se�ales involucradas tienen duraci�n infinita
% podr�a elegirse $T_1$ y $T_2$ lo suficientemente grande para tener una
% idea de lo que sucede con el resultado de su convoluci�n
%
% Por ejemplo si queremos realizar la convoluci�n de las siguientes
% se�ales 
% 
% $$x(t)=1.5sen(\pi t)(u(t)-u(t-1))$$
% 
% 
% $$h(t)=1.5((u(t)-u(t-1))-(u(t-2)-u(t-2.5)))$$
% 
% la se�al resultante tendr� longitud de 3.5. 
%
% <<convoecu.png>>
% 
% Ahora se pueden implementar la grafica en MATLAB, 
%
figure
subplot(1,3,1)
syms t
x=piecewise(t<0,0,0<t<1,1.5*sin(pi*t),t>1,0);
fplot(x,[-0.25,1.25],'r')
grid on
title('x(t)')
axis([-1 3.6 -2 2]);
subplot(1,3,2)
h=piecewise(t<0,0,0<t<1,1.5,1<t<2,0,2<t<2.5,-1.5,t>2.5,0);
fplot(h,[-0.25,2.75],'r')
grid on
title('h(t)')
axis([-1 3.6 -2 2]);
t1=0:0.01:1;
t2=1:0.01:2;
t3=2:0.01:2.5;
t4=2.5:0.01:3;
t5=3:0.01:3.5;
subplot(1,3,3)
plot(t1,(1.5^2/pi)*(1-cos(pi*t1)))
hold on
plot(t2,(1.5^2/pi)*(1-cos(pi*t2)))
plot(t3,(1.5/pi)*(cos(pi*t3)-1))
plot(t4,(1.5/pi)*(cos(pi*t4)-sin(pi*t4)))
plot(t5, (-1.5/pi)*(1+sin(pi*t5)))
grid on
title('x(t)*h(t)')
axis([-1 3.6 -2 2]);
%%
% El siguiente c�digo es una modificaci�n del c�digo de Lathi 
% (C�digo del cap�tulo 2, M2.4 p�g 161), ejemplo de convoluciones 
% continuas
%
% <include>convconm.m</include>
%
%%
% Si ejecutamos las siguientes instrucciones en el Command Window y el
% directorio de trabajo es el mismo donde se encuentra la funci�n _convconm_
% tendr�mos el siguiente resultado
% 
x = @(t) 1.5*sin(pi*t).*(t>=0 & t<1);
h = @(t) 1.5*((t>=0&t<1.0) - (t>=2&t<2.5));
convconm(x,h)
%% 
% El cual puede compararse con la gr�fica del resultado an�litico y
% observar que la soluci�n n�merica es una buena aproximaci�n de la exacta. 
% 

%% Correlaci�n n�merica 
% Una manera de abordar este problema es recordando una equivalencia de la
% correlaci�n 
%%
% 
% $$r_{fg}(t)=f(t)*g(-t)$$
% 
% Entonces por ejemplo si se quisiera realizar la correlaci�n de las 
% se�ales
%
% $$g(t)=u(t+0.25)-u(t)$$
% 
% 
% $$f(t)=u(t)-u(t-2)$$
%
% El c�digo de convoluci�n podr�a ocuparse de la siguiente manera 
g = @(t) (t>=0 & t<0.25);
f = @(t) (t>=0&t<2);
convconm(g,f)
%% Entregables
% Se revisa una publicaci�n (html) de la pr�ctica. En este caso inicie
% indicando el nombre de la pr�ctica y sus datos personales,
% equipos de dos o tres personas
% (Portada). El �ndice del contenido lo genera Publish (�ndice). Los
% objetivos son los sigueintes:
%
% * Conocer m�todos b�sicos de integraci�n num�rica 
% * Manipulaci�n de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de se�ales continuas
%
% Como introducci�n elabore un reporte de los m�todos descritos en la lista
% de reproducci�n que incluya el desarrollo de los ejemplos expuestos. 
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva secci�n (para la publicaci�n) en cada uno de ellos.
% 
% Para cada problema se tendr�n que hacer las mod�ficaciones necesarias al
% c�digo de ejemplo, convendr�a entonces pensar en realizar una modificaci�n
% general de tal manera que el programa funcione para cualesquiera dos
% funciones, pero esto es opcional.
%
% # Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado an�litico que obtuvo para el problema 1, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales invlucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico.  Investigue como crear un giff
% e inserte la animaci�n. 
% # Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado an�litico que obtuvo para el problema 3, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales invlucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n. 
% # Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correalci�n y compare con el resultado an�litico que obtuvo para el problema e), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n. 
% # Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correalci�n y compare con el resultado an�litico que obtuvo para el problema f), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n. 



%%
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/px6ne3mko1wj6d1/P04SyS20201.m?dl=0 enlace>