%% Pr�ctica 6:  Sistemas diferenciales 
%% Nota
% Se tiene que
% MATLAB presenta una definici�n del escal�n unitario |heaviside(t)|, donde 
% |heaviside(0)=0.5|, para versiones mayores o iguales a 2016 esto puede
% configurarse al valor que se quiera, en nuestro caso queremos 
% |heaviside(0)=1|, esto se logra ejecutando la siguiente instrucci�n 
sympref('HeavisideAtOrigin', 1);
%% 
% de no ser posible establecer la configuraci�n se tiene que tener en
% cuenta la definici�n de MATLAB.
%% Sistemas diferenciales (Transformada de Fourier) 
% Se utiliza el toolbox con herramientas de matem�ticas s�mbolicas, para
% generar un programa que resuelve sistemas diferenciales de orden n
% mediante transformada de Fourier, el programa despliega: paso por paso 
% la metodolog�a de soluci�n, la soluci�n de la ecuaci�n diferencial, 
% y la gr�fica tanto de la se�al de entrada como de la se�al de salida. El 
% c�digo programado es el siguiente
%
% <include>fourier2016a.m</include>
%
%%
% Entonces si se quiere resolver la ecuaci�n diferencial
%%
% 
% $$\ddot{y}(t)+7\dot{y}(t)+10y(t)=u(t),\;\;y(0)=0,\;y'(0)=0$$
% 
%% 
% Se ejecutan las siguientes instrucciones, aqu� es importante recordar 
% que transformada de Fourier solo resuelve ecuaciones diferenciales 
% donde las condiciones iniciales son nulas.
%
syms t
fourier2016a([10 7 1],[1],heaviside(t),10)
%% 
% Se observa que la expresi�n resultante no esta totalmente simplificada,
% posiblemente con algunas modificaciones de las instrucciones el resultado
% pueda desplegarse de manera simplificada, tambi�n se observa que las
% fracciones parciales no estan totalmente desarrolladas, la manipulaci�n 
% de s�mbolos en MATLAB no es lo suficientemente robusta, pero es buena. 
% Ahora observemos el resultado que se ha optenido en el siguiente
% <http://www.mateyasi.org/transformada-de-fourier-continua.html enlace> 
%
%%
% 
% $$y(t)=\frac{1}{10}u(t)-\frac{1}{6}e^{-2t}u(t)+\frac{1}{15}e^{-5t}u(t)$$
% 
%% 
% En la gr�fica se puede observar consistencia, pues observamos que cuando 
% $t\to\infty$ el resultado tiende a $0.1$
%% Sistemas diferenciales (Transformada de Laplace) 
% Se utiliza el toolbox con herramientas de matem�ticas s�mbolicas, para
% generar un programa que resuelve sistemas diferenciales de orden n
% mediante transformada de Laplace, y condiciones iniciales en 0 por la
% izquierda (cero menos) el programa despliega: paso por paso 
% la metodolog�a de soluci�n, la soluci�n de la ecuaci�n diferencial, 
% y la gr�fica tanto de la se�al de entrada como de la se�al de salida 
% y una gr�fica de la primera  y segunda derivada de la salida. El
% c�digo programado es el siguiente
%
% <include>laplace2016a.m</include>
%
%%
% Entonces si se quiere resolver la ecuaci�n diferencial
%%
% 
% $$\ddot{y}(t)+7\dot{y}(t)+10y(t)=u(t),\;\;y(0)=0,\;y'(0)=0$$
% 
%% 
% Se ejecutan las siguientes instrucciones,
%
syms t
laplace2016a([10 7 1],[1],[0,0],heaviside(t),10)
%% 
% Se observa que la expresi�n resultante esta totalmente simplificada,
% posiblemente por que es este caso no hay manipulaci�pn de deltas de Dirac,
% es general la manipulaci�n de
% s�mbolos en MATLAB no es lo suficientemente robusta, pero es buena. 
% Ahora observemos el resultado que se ha optenido en el siguiente
% <http://www.mateyasi.org/transformada-de-fourier-continua.html enlace> 
%
%%
% 
% $$y(t)=\frac{1}{10}u(t)-\frac{1}{6}e^{-2t}u(t)+\frac{1}{15}e^{-5t}u(t)$$
% 
%% 
% As� se logr� observar que el resultado es identico
%% Entregables
% Para sistemas diferenciales realiza un programa con las siguientes
% caracter�sticas
% 
% # Muestra la funci�n de transferencia del sistema
% # Muestra la respuesta al impulso (simb�lico, gr�fica)
% # Muestra la respuesta a entrada cero (simb�lico, gr�fica)
% # Muestra la respuesta a estado cero (simb�lico, gr�fica)
% # Muestra la respuesta total (simb�lico, gr�fica)
% # La respuesta total al escal�n con condiciones iniciales 0 (simb�lico, gr�fica) 
% # Usando subplot, depliega una figura con 5 gr�ficas
% 
% Observa que los entregables pueden resolverse (solvo la funci�n de 
% transferencia) con llamadas a la funciones
% presentadas en esta publicaci�n
%
% Nota: Ejecuta los ejemplos descritos dentro de los comentarios de cada
% c�digo para que observes el uso de estos
%
% Se entrega una publicaci�n en html de tu desarrollo y se probar� para un
% problema espec�fico. 
% 
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>

