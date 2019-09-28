%% Pr�ctica 4: Convoluci�n y Correlaci�n de se�ales en tiempo continuo
%
%
% *Autores:*
%
% * Argaez Herrera Antonia Margarita
% * Leguizamo Lara Daniela Denisse
% * Rojas Solis Juan Carlos
% 
% *Grupo: 2TV1*
%
% *Profesor:*
%
% Dr. Rafael Mart�nez Mart�nez
%% Objetivos
% 
% * Conocer m�todos b�sicos de integraci�n num�rica 
% * Manipulaci�n de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de se�ales continuas
%
%% Introducci�n
%
% *�Qu� es MATLAB?*
%
% MATLAB (abreviatura de MATrix LABoratory, �laboratorio de matrices�) es un sistema de 
% c�mputo num�rico que ofrece un entorno de desarrollo integrado (IDE) 
% con un lenguaje de programaci�n propio (lenguaje M). Est� disponible para 
% las plataformas Unix, Windows, Mac OS X y GNU/Linux.
%
% Entre sus prestaciones b�sicas se hallan la manipulaci�n de matrices, la 
% representaci�n de datos y funciones, la implementaci�n de algoritmos, la creaci�n 
% de interfaces de usuario (GUI) y la comunicaci�n con programas en otros 
% lenguajes y con otros dispositivos hardware. El paquete MATLAB dispone de dos 
% herramientas adicionales que expanden sus prestaciones, a saber, Simulink 
% (plataforma de simulaci�n multidominio) y 
% GUIDE (editor de interfaces de usuario - GUI). Adem�s, se pueden ampliar 
% las capacidades de MATLAB con las cajas de herramientas (toolboxes); y las de 
% Simulink con los paquetes de bloques (blocksets).
%
% Es un software muy usado en universidades y centros de investigaci�n y 
% desarrollo. En los �ltimos a�os ha aumentado el n�mero de prestaciones, 
% como la de programar directamente procesadores digitales de se�al o crear c�digo VHDL.
%
% En 2004, se estimaba que MATLAB era empleado por m�s de un mill�n de personas 
% en �mbitos acad�micos y empresariales.
% <https://es.wikipedia.org/wiki/MATLAB [1]>
%
%% Desarrollo
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes
% problemas comenzando una nueva secci�n (para la publicaci�n) en cada uno de ellos.
% 
% Para cada problema se tendr�n que hacer las mod�ficaciones necesarias al
% c�digo de ejemplo, convendr�a entonces pensar en realizar una modificaci�n
% general de tal manera que el programa funcione para cualesquiera dos
% funciones, pero esto es opcional.
%
%% Problema 1
% Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado an�litico que obtuvo para el problema 1, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales invlucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico.  Investigue como crear un giff
% e inserte la animaci�n.
x = @(t) (-t+1).*(t>=0 & t<=1) + (t-1).*(t>=1 & t<=2);
h = @(t) (1).*(t>=0 & t<=1);
a=-1;
b=4;
nombregif= 'problema1.gif';
convconm(x,h,a,b,nombregif)
%%
% <<problema1.png>>
%% Problema 2
% Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado an�litico que obtuvo para el problema 3, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales invlucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n.
x = @(t) (t).*(t>=0 & t<=1) + (1).*(t>1 & t<=2);
h = @(t) (1).*(t>=1 & t<=3);
a=-1;
b=6;
nombregif= 'problema3.gif';
convconm(x,h,a,b,nombregif)
%%
% <<problema3.png>>
%% Problema 3
% Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correalci�n y compare con el resultado an�litico que obtuvo para el problema e), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n. 
%
%% Problema 4
% Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correalci�n y compare con el resultado an�litico que obtuvo para el problema f), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un giff
% e inserte la animaci�n.
%
%% Referencias
% 
% [1] https://la.mathworks.com/matlabcentral/answers/94495-how-can-i-create-animated-gif-images-in-matlab
% [2] https://latex2png.com/
%