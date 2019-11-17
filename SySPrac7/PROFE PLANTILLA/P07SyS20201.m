%% Pr�ctica 7:  Respuesta en frecuencia, Simulaci�n en MATLAB
%
%% Respuesta en frecuencia
%
% Los filtros (sistemas LTI) son importantes en el �rea de procesamiento de se�ales.
% Las caracteristicas del filtrado de un sistema diferencial LTI (ecuaci�n 
% diferencial con coeficientes constantes y condiciones iniciales cero) 
% est�n determinadas por lo siguiente:
%
% Si la entrada a un sistema BIBO-estable es
% 
% $$x(t)= A\cos(\omega t + \theta)u(t)$$
% 
%
% La salida en estado estacionario (coincide con la soluci�n particular o forzada), para 
% un sistema asintoticamente estable, ser�
%
% $$y_{ss}(t)=A|H(j\omega)|\cos(\omega t+ \theta + \angle H(j\omega))u(t)$$
%
% Podemos decir lo siguiente: Si una se�al coseno (o seno) es la entrada de 
% un sistema LTI BIBO-estable y asintoticamente estable, la respuesta 
% en estado estacionario es un escalamiento vertical y una traslaci�n horizontal 
% de la se�al de entrada.
%
% Si el escalamiento vertical dado es muy peque�o 
% $|H(j\omega)|<< 1$ la respuesta en estado estacionario tiene un efecto 
% despreciable en la salida del sistema, entonces
% diremos que el sistema filtra a esta se�al ("no la deja pasar para llegar
% a la salida del sistema", por lo que los sistemas LTI son filtros) pero esto
% no siempre es el caso, podr�a suceder que el escalamiento vertical no sea
% tan peque�o, entonces la respuesta en estado estacionario no ser�a
% despreciable
%
% El escalamiento vertical depende de dos cosas, de la estructura del sistema
% (cuantas derivadas hay en la entrada y la salida y los coeficientes de estas)
% y de los valores de $\omega$.  As� para un sistema fijo $H$ el
% escalamiento vertical y la traslaci�n horizontal (o desfasamiento)
% depende solo de los  valores de $\omega$, esto es, 
% de la frecuencia de la entrada (ya sea una funci�n seno o coseno).
% Entonces ser�a conveniente tener registrados los escalamientos y 
% traslaciones de la se�al de salida en estado estacionario de alguna manera.  
%
% A la expresi�n $H(j\omega)$ se le conoce como *la respuesta en frecuencia
% del sistema* (es decir, la respuesta en frecuencia es la funci�n de 
% transferencia en el formato de transformada de Fourier) y la manera 
% de registrar la informaci�n que contiene es mediante las
% gr�ficas $|H(j\omega)|$ contra $\omega$ (gr�fica de magnitud) y 
% $\angle(H(j\omega))$  contra $\omega$ (gr�fica de fase)
% (con $\omega$ de 0 a $\infty$) 
% y precisamente estas gr�ficas nos ayudan a interpretar el sistema como
% filtro, est�s gr�ficas son las que se estudian cuando se habla de la
% respuesta en frecuencia mas que la expresi�n an�litica $H(j\omega)$ en si. 
%% Ejemplo:
% Encuentra la respuesta en frecuencia de
%%
% 
% $$\ddot{y}+3\dot{y}+2y=\dot{x}+5x$$
% 
% �Cu�l es la respuesta en estado estacionario cuando la entrada es $x(t)=20sen(3t+2)$?
%
% Se suele utilizar a la letra $s$ para escribir a la funci�n de
% transferencia, aunque en este estudio nos conviene ver a la funci�n de
% transferecia en su notaci�n de transformada de Fourier, as� sustituimos a
% $s=j\omega$
% 
% $$H(s)=\frac{P(s)}{Q(s)}=\frac{s+5}{s^2+3s+2}$$
% 
% $$H(j\omega)=\frac{j\omega+5}{(j\omega)^2+3(j\omega)+2}=\frac{5+\omega j}{2-\omega^2+3\omega j}$$
%
% Aqu� $\omega=3$, entonces
%
% $$H(3j)=\frac{j3+5}{(j3)^2+3(j3)+2}=\frac{5+3j}{-7+9j}$$
% 
% $$|H(3j)|=\frac{5.831}{11.402}=0.51141$$
%
% $$\angle H(3j)=0.54042-2.2318=-1.6914$$
% 
% Entonces la respuesta en estado estacionario es
%
% $$y_{ss}(t)=20(0.51141)sen(3t+2-1.6914)u(t)=10.228sen(3t+0.3086)u(t)$$
%
% Ahora podemos resolver este sistema para condiciones iniciales cero y la
% entrada establecida, observemos que la soluci�n es la respuesta total y en
% principio la soluci�n  no permite mostrar la respuesta en estado 
% estacionario encontrada, pero mediante simplificaci�n se puede ver 
% que coicide con la soluci�n del ejemplo anterior. 
% Este sistema es asintoticamente estable y por lo tanto BIBO estable, 
% entonces la respuesta transitoria tiende a ser despreciable desp�es de
% un largo tiempo, entonces si gr�ficamos la respuesta en estado estacionario 
% encontrada en el ejemplo anterior tenemos que  
%
syms t
rg=laplace2016am([2 3 1],[5 1],[0 0],20*sin(3*t+2)*heaviside(t),10);
tt=0:0.01:10;
plot(rg,tt,10.228*sin(3*tt+0.3086),'k','DisplayName','Estado estacionario')

%%
% La funci�n |laplace2016am| es una modificaci�n de un programa que ya
% hemos utilizado donde nos regresa una ubicaci�n para gr�ficar en donde
% corresponde a la respuesta en estado estacionario, no hay mayor
% importancia en esto solo es para un despliegue m�s amigable, puede consultar el c�digo en el 
% siguiente <https://www.dropbox.com/s/4g2ye89p8hkhjpt/laplace2016am.m?dl=0 enlace> . 
%
% A continuaci�n calculamos la gr�fica de Magnitud y de fase para el
% sistema antes mencionado, mediante la defici�n directa y mediante la
% herramienta de Matlab con la instrucci�n |bode|. Adem�s observamos que
% estas gr�fica tienen la informaci�n de la magnitud y angulo para
% diferentes valores de $\omega$ en particu�ar cuando $\omega=3$,
% hay que tener cuidado, la gr�fica de fase se reporta en 
% grados.

w = [0:0.1:100];
absH =@(w) (25+w.^2).^0.5./((2-w.^2).^2+9*w.^2).^.5;
angH = @(w) atan2d(w,5)-atan2d(3*w,(2-w.^2));
figure
subplot(1,2,1)

plot(w,absH(w))
hold on
p2=plot(3,absH(3),'ro');
legend(p2,'Escalamiento para w=3')
grid on
title('|H(j\omega)|')
xlabel('\omega')

subplot(1,2,2)
plot(w,angH(w))
hold on
p3=plot(3,angH(3),'ro');
legend(p3,'traslaci�n (en grados) para w=3')
grid on
title('\angle H(j\omega)')
xlabel('\omega')

sistema = tf([1 5],[1 3 2])

[m,a,wb] = bode(sistema);
mm = squeeze(m);
aa = squeeze(a);


figure
subplot(1,2,1)
plot(wb,mm)
grid on
title('|H(j\omega)|')
xlabel('\omega')

subplot(1,2,2)
plot(wb,aa)
grid on
title('\angle H(j\omega)')
xlabel('\omega')

%% Gr�ficas de Bode
%
% Las gr�ficas de Bode son escalas de las graficas de magnitud y fase,
% estas escalas se remontan a la decada de 1930-1940,
% nos permiten elaborar las gr�ficas de una manera "amigable"
% y tienen una mejor visualizaci�n que las escalas naturales,
% aunque en un principio la interpretaci�n de la magnitud y el desplazamiento (fase)
% pueden parecer un poco extra�as, son las mismas que hemos 
% comentado anteriormente.
% 
% *La gr�fica de magnitud de bode* es gr�ficar $20 log_{10}(|H(j\omega)|)$,
% contra $log_{10}(\omega)$. 
%
% *La gr�fica de fase de bode* es gr�ficar $\angle(|H(j\omega)|)$,
% contra $log_{10}(\omega)$. 
%
% *Tenemos la siguiente definici�n*, si a un n�mero positivo $a$ le realizamos la 
% operacion de la forma $20log_{10}(a)$ diremos que el resultado es el 
% valor en decibeles del n�mero a, es decir, la gr�fica de Bode 
% de magnitud se mide en *decibeles*.
% 
% *Ejercicio* Convertir 
%
% * $|H(j\omega_0)|=1$ a decibeles
% * $|H(j\omega_0)|=0.01$ a decibeles
% * $|H(j\omega_0)|=1/\sqrt{2}$ a decibeles
% * $-3db$ a magnitud
% * $-20db$ a magnitud
% * $10db$ a mag
%
% *Las transformaciones sugeridas* en estas gr�ficas est�n justificadas por el
% comportamiento de la funci�n logaritmo
%
% *Una Decada* es una razon $\omega_2/\omega_1=10$, equivale a una unidad
% en el eje $u=log(\omega)$
%
% $$u_2-u_1=log(\omega_2)-log(\omega_!)=\log(\omega_2/\omega_1)=log(10)=1$$
% 
% *Una Octava* es una razon $\omega_2/\omega_1=2$, equivale a $0.301$
% en el eje $u=log(\omega)$
%
% $$u_2-u_1=log(\omega_2)-log(\omega_!)=\log(\omega_2/\omega_1)=log(2)=0.301$$
%
% Pensemos en la siguiente funci�n de transferencia
%   
% $$H(s)=\frac { K(s+{ a }_{ 1 })(s+{ a }_{ 2 }) }{ s(s+b_{ 1 })({ s }^{ 2 }+{ b }_{ 2 }s+{ b }_{ 3 }) } $$
%   
%   
% Factorizamos las constantes necesarias de tal manera que el termino independiente de cada componente de la factorizaci�n sea uno. Esto servir� para el an�lisis posterior
%   
%   
% $$H(s)=\frac { K{ a }_{ 1 }{ a }_{ 2 } }{ { b }_{ 1 }{ b }_{ 3 } } \frac { \left( \frac { s }{ { a }_{ 1 } } +1 \right) \left( \frac { s }{ { a }_{ 2 } } +1 \right)  }{ s\left( \frac { s }{ { b }_{ 1 } } +1 \right)\left( \frac { s^{ 2 } }{ { b }_{ 3 } } +\frac { { b }_{ 2 } }{ { b }_{ 3 } } s+1 \right)  } 
% $$
%   
% Sustituimos $s=j\omega$ para encontrar la funci�n del escalamiento y traslaci�n  
%   
%   
% $$
% H(j\omega )=\frac { K{ a }_{ 1 }{ a }_{ 2 } }{ { b }_{ 1 }{ b }_{ 3 } } \frac { \left( 1+\frac { j\omega  }{ { a }_{ 1 } }  \right) \left( 1+\frac { j\omega  }{ { a }_{ 2 } }  \right)  }{ j\omega \left( 1+\frac { j\omega  }{ { b }_{ 1 } }  \right) \left[ 1+j\frac { { b }_{ 2 }\omega  }{ { b }_{ 3 } } +\frac { { (j\omega ) }^{ 2 } }{ { b }_{ 3 } }  \right]  } 
% $$
%   
% As� la magnitud del escalamiento queda como
%   
% $$
% \left| H(j\omega ) \right| =\frac { K{ a }_{ 1 }{ a }_{ 2 } }{ { b }_{ 1 }{ b }_{ 3 } } \frac { \left| 1+\frac { j\omega  }{ { a }_{ 1 } }  \right| \left| 1+\frac { j\omega  }{ { a }_{ 2 } }  \right|  }{ \left| j\omega  \right| \left| 1+\frac { j\omega  }{ { b }_{ 1 } }  \right| \left| 1+j\frac { { b }_{ 2 }\omega  }{ { b }_{ 3 } } +\frac { { (j\omega ) }^{ 2 } }{ { b }_{ 3 } }  \right|  } 
% $$
%   
% Y la traslaci�n 
%   
% $$
% \angle H(j\omega )=\angle\left(\frac { K{ a }_{ 1 }{ a }_{ 2 } }{ { b }_{ 1 }{ b }_{ 3 } }\right)+\angle \left( 1+\frac { j\omega  }{ { a }_{ 1 } }  \right) +\angle \left( 1+\frac { j\omega  }{ { a }_{ 2 } }  \right) -\angle j\omega -\angle \left( 1+\frac { j\omega  }{ { b }_{ 1 } }  \right) -\angle \left[ 1+j\frac { { b }_{ 2 }\omega  }{ { b }_{ 3 } } +\frac { { (j\omega ) }^{ 2 } }{ { b }_{ 3 } }  \right] 
% $$
%   
%   
% El valor en decibeles de la magnitud queda como
% 
% $$ 20log\left| H(j\omega ) \right| =20log\left|\frac { K{ a }_{ 1 }{ a }_{ 2 } }{ { b }_{ 1 }{ b }_{ 3 } } \right|+20log\left| 1+\frac { j\omega  }{ { a }_{ 1 } }  \right| +20log\left| 1+\frac { j\omega  }{ { a }_{ 2 } }  \right| -20log\left| j\omega  \right| -20log\left| 1+\frac { j\omega  }{ { b }_{ 1 } }  \right|  \\
% -20log\left| 1+j\frac { { b }_{ 2 }\omega  }{ { b }_{ 3 } } +\frac { {
% (j\omega ) }^{ 2 } }{ { b }_{ 3 } } \right| $$
%      
%% Gr�ficas de bode de constantes
% Si la funci�n de transferencia es una constante, la grafica de la magnitud 
% son lineas horizontales y la fase es de $0$ o $180$ grados dependiendo del signo
% Pensemos en la siguiente funci�n  de transferencia:
% 
% $$H(j\omega)=a\;\; a\in R$$
%
% $$20log|H(j\omega)|=20log|a|$$
%
% Para a positiva $ang(H(j\omega))=0$ y para a negativa $ang(H(j\omega))=180$
figure
bode(5,1)
grid on
figure
bode(-5,1)
grid on
%% Gr�ficas de bode de potencias
% Pensemos en la siguiente funci�n  de transferencia:
% 
% $$H(j\omega)=\frac{1}{jw}$$
%
% La magnitud en decibeles queda como:
%
% $$20log|H(j\omega)|=-20log|\omega|=-20log(\omega)=-20u$$
%
% La traslaci�n queda como:
%
% $$\angle H(j\omega )=-\angle \left( j\omega \right)=- 90$$
%
close figure 1 2 3 4 5
figure
%hold on
% Iteraci�n sobre diferentes valores
d=[1];
for i = 1:4
    d=[d 0];
	bode(tf(1,d))
	pause(0.5)
	drawnow
    hold on
end
grid on
legend('1/(j\omega)^1','1/(j\omega)^2','1/(j\omega)^3','1/(j\omega)^4','Location','SW')
hold off
%%
% Se puede deducir de manera semejante si el factor esta en el numerador
% claro que habra un peque�o cambio de signo por las porpiedades de la
% funci�n logaritmo
figure
hold on
% Iteraci�n sobre diferentes valores
n=[1];
for i = 1:4
    n=[n 0];
	bode(tf(n,1))
	pause(0.5)
	drawnow
end
grid on
legend('(j\omega)^1','(j\omega)^2','(j\omega)^3','(j\omega)^4','Location','SW')
hold off

%% Gr�ficas de bode de factores lineales
% Pensemos en la siguiente funci�n de transferencia 
%
% $$H(j\omega)=\frac{1}{\left(1+\frac{j\omega}{a}\right)}$$
%
% La magnitud en decibeles queda como:
%
% $$20log|H(j\omega)|=-20log\left| 1+\frac { j\omega  }{ a } \right|$$
% 
% Cuando $\omega<<a$ entonces
%
% $$20log|H(j\omega)|=-20log\left| 1+\frac { j\omega  }{ a } \right|\approx -20log(1)=0$$
%
% Cuando $\omega>>a$ entonces
%
% $$20log|H(j\omega)|=-20log\left| 1+\frac { j\omega  }{ a }  \right| \approx -20log\left( \frac { \omega  }{ a }  \right) =-20log\omega +20loga=-20u+20log(a)$$
%
% �Qu� pasa cuando $\omega=a$?
%
% La traslaci�n queda como:
%
% $$\angle H(j\omega )=-\angle \left( 1+\frac { j\omega  }{ a }  \right) =-{ tan }^{ -1 }\left( \frac { \omega  }{ a }  \right)$$
%
% Cuando $\omega<<a$ entonces
%
% $$\angle H(j\omega )=-{ tan }^{ -1 }\left( \frac { \omega  }{ a }  \right) \approx 0 $$
%
% Cuando $\omega>>a$ entonces
%
% $$\angle H(j\omega )=-{ tan }^{ -1 }\left( \frac { \omega  }{ a }  \right) \approx -90$$
%
% �Qu� pasa cuando $\omega=a$?
%
figure
hold on
% Iteraci�n sobre diferentes valores
for i = 1:5
	bode(tf(1,[ 1/(10^i) 1]))
	pause(0.5)
	drawnow
end
grid on
legend('a = 10','a = 100','a = 1000','a = 10000','a = 100000','Location','SW')
hold off
%%
% Se puede deducir de manera semejante si el factor esta en el numerador
% claro que habra un peque�o cambio de signo por las porpiedades de la
% funci�n logaritmo
%
figure
hold on
% Iteraci�n sobre diferentes valores
for i = 1:5
    bode(tf([ 1/(10^i) 1],1))
	pause(0.5)
	drawnow
end
grid on
legend('a = 10','a = 100','a = 1000','a = 10000','a = 100000','Location','SW')
hold off
%% Gr�ficas de bode de factores cuadraticos
% Pensemos en la siguiente funci�n de transferencia 
%
% $$H(j\omega)=\frac{1}{\left(1+2j\zeta \frac { \omega  }{ { \omega  }_{ n } } +{ \left( \frac { j\omega  }{ { \omega  }_{ n } }  \right)  }^{ 2 }\right)}$$
%
% La magnitud en decibeles queda como:
%
% $$20log|H(j\omega)|=-20log\left| 1+2j\zeta \frac { \omega  }{ { \omega  }_{ n } } +{ \left( \frac { j\omega  }{ { \omega  }_{ n } }  \right)  }^{ 2 } \right|$$
% 
% Cuando $\omega<<\omega_n$ entonces
%
% $$20log|H(j\omega)|=-20log\left| 1 \right|\approx -20log(1)=0$$
%
% Cuando $\omega>>\omega_n$ entonces
%
% $$20log|H(j\omega)|=-20log\left| \frac {- \omega^2  }{ \omega_n^2 }  \right| \approx -40log\left( \frac { \omega  }{ \omega_n }  \right) =-40log\omega +40log\omega_n=-40u+40log(\omega_n)$$
%
% �Qu� pasa cuando $\omega=\omega_n$?
%
% La traslaci�n queda como:
%
% $$\angle H(j\omega )=-\angle \left(1+2j\zeta \frac { \omega  }{ { \omega  }_{ n } } +{ \left( \frac { j\omega  }{ { \omega  }_{ n } }  \right)  }^{ 2 }  \right) =-{ tan }^{ -1 }\left( \frac { 2\zeta \left( \frac { \omega  }{ { \omega  }_{ n } }  \right)  }{ 1-{ \left( \frac { \omega  }{ { \omega  }_{ n } }  \right)  }^{ 2 } }\right)$$
%
% Cuando $\omega<<\omega_n$ entonces
%
% $$\angle H(j\omega )=-{ tan }^{ -1 }\left( \frac { 0  }{ 1 }  \right) \approx 0 $$
%
% Cuando $\omega>>\omega_n$ entonces
%
% $$\angle H(j\omega ) \approx -180$$
%
% �Qu� pasa cuando $\omega=\omega_n$?
%

figure
hold on
w_n=10;

% Iteraci�n sobre diferentes valores
for zeta = 0.1:0.2:0.9
	bode(tf(1,[ 1/(w_n^2) 2*zeta/w_n  1]))
	pause(0.5)
	drawnow
end
grid on
legend('\zeta = 0.1','\zeta = 0.3','\zeta = 0.5','\zeta = 0.7','\zeta = 0.9','Location','SW')
hold off
%%
% Se puede deducir de manera semejante si el factor esta en el numerador
% claro que habra un peque�o cambio de signo por las porpiedades de la
% funci�n logaritmo
%
figure
hold on
w_n=10;

% Iteraci�n sobre diferentes valores
for zeta = 0:0.3:1.2
	bode(tf([ 1/(w_n^2) 2*zeta/w_n  1],1))
	pause(0.5)
	drawnow
end
grid on
legend('\zeta = 0','\zeta = 0.3','\zeta = 0.6','\zeta = 0.9','\zeta = 1.2','Location','SW')
hold off



%% Analisis de un sistema de segundo orden no amortiguado
%
% Un sistema masa-resorte, es un ejemplo de sistema de segundo orden no amortiguado 
% (no disipa energia). Este tipo de sistema puede ser modelado
% por la siguiente ecuaci�n diferencial
% 
% $$m\ddot{x}(t)+kx(t)=f(t)$$
% 
% Donde $x$ representa la salida del sistema (la posici�n de la masa), y 
% $f$ la entrada del sistema (la fuerza que se le aplica a la masa). La
% funci�n de transferencia asociada es la sigueinte:
% 
% $$\frac{X(s)}{F(s)}=\frac{1}{ms^2+k}$$
%
%% Representaci�n de un sistema LTI en MATLAB

m = 1;
k = 5;
num = 1;
den = [m 0 k];
massSpring_sys = tf(num, den)

%% Respuesta al escal�n (condiciones iniciales cero)

figure
step(massSpring_sys,10)
[y,t] = step(massSpring_sys,10);

%% Polos y ceros del sistema 

r = roots(den)
p = pole(massSpring_sys)	% Poles del sistema
disp('Los polos del sistema son las ra�ces del denominador')


%% Respuesta al impulso (condiciones iniciales cero)
figure
impulse(massSpring_sys,10)

%% Respuesta a entradas sinusoidales
t = 0:0.001:15;
wn=2.23
figure
u = sin(wn/2*t);
lsim(massSpring_sys, u, t)
title('Repuesta a bajas frecuencias')
ylim([-3 3])

figure
u = sin(wn*t);
lsim(massSpring_sys, u, t)
title('Repuesta a la frecuencia de resonancia')
ylim([-3 3])

figure
u2 = sin(wn*2*t);
lsim(massSpring_sys, u2, t)
title('Respuesta a altas frecuencias')
ylim([-3 3])


%% Modelo de suspensi�n de un carro
%
% El modelo de una de las cuatro suspensiones de un carro es un 
% modelo de segundo orden. Este puede ser aproximado por un sistema 
% masa-resorte-amortiguador. La entrada del sistema es el cambio en la
% altura del camino y la salida es el desplazamiento del cuerpo del carro
%
% <<quartercar_schematic_fbd.PNG>>
% 
% Del diagrama de cuerpo libre, se puede obtener la siguiente ecuaci�n
% diferencial de segundo orden para describir la din�mica de este sistema.
%
% $$m\ddot{y}(t) = k\,(u(t)-y(t)) + b\,(\dot{u}(t) - \dot{y}(t))$$
%
%
% Al tomar la transformada de Lapalce con condiciones iniciales 
% igual a cero, se obtine la siguiente funci�n de transferencia:
% 
%
% $$\frac{Y(s)}{U(s)} = \frac{b\,s+k}{m\,s^2+b\,s+k}$$
%
%
% Copyright 1984-2009 The MathWorks, Inc. 

%% Parametros del modelo
m = 500;	%kg
b = 1000;	%Ns/m
k = 25000;	%N/m

%% Funci�n de transferencia: Entrada- Salida 
car_sys = tf([b k],[m b k])

%% Ceros y polos del sistema
r = roots([m b k])	% Raices de la ecuaci�n carateristica
p = pole(car_sys)	% Polos del sistema
pzmap(car_sys)		% Visualizaci�n de los polos y ceros del sistema
grid on

disp(sprintf(['Los polos del sistema son equivalentes a las ra�ces ' ...
			  'del denominador de la funci�n de transferencia\n']))

disp(sprintf(['Los ceros del sistema son equivalentes a las ra�ces ' ...
			  'del numerador de la funci�n de transferencia\n']))

%% Respuesta del sistema al escal�n (conidiciones iniciales cero)
figure
step(car_sys)
legend('Respuesta al escal�n')

%% Respuesta al impulso (condiciones iniciales cero)
figure
impulse(car_sys)

%% Respuesta a una entrada sinusoidal
% Se obtiene la respuesta del sistema a diferentes frecuencias
t = 0:0.001:10;
wd=7;
% Respuesta a bajas frecuencias
figure
u1 = sin(wd/2*t);
lsim(car_sys, u1, t)
title('Respuesta a bajas frecuencias')
legend('Respuesta del sistema','Location','SE')
ylim([-4 4])

% Respuesta a la frecuencia de resonancia
figure
u2 = sin(wd*t);
lsim(car_sys, u2, t)
title('Repuesta a la frecuencia de resonancia')
legend('Respuesta del sistema','Location','SE')
ylim([-4 4])

% Respuesta a altas frecuencias
figure
u3 = sin(2*wd*t);
lsim(car_sys, u3, t)
title('Repuesta a altas frecuencias')
legend('Respuesta del sistema ','Location','SE')
ylim([-4 4])

%% Respuesta en frecuencia del sistema

% Gr�ficas de Bode
figure
bode(car_sys)
grid on

%% Efectos de variar el amortiguamiento en la respuesta en frecuencia
close all
figure
hold on

% Inicializamos las variables
m = 1;
k = 5;

% Iteraci�n sobre diferentes valores de amortiguamiento
for b = [0.1 0.5 1 2 4]
	bode(tf(1,[m b k]),{0.1,10})
	pause(0.5)
	drawnow
end
grid on
legend('b = 0.1','b = 0.5','b = 1','b = 2','b = 4','Location','SW')
title('Efecto de variar el amortiguamiento en la respuesta en frecuencia')
hold off


%% Efecto de variar la masa en la respuesta en frecuencia

figure
hold on

b = 0.6;
k = 5;

% Iteraci�n sobre diferentes valores de la masa
for m = 2:6
	bode(tf(1,[m b k]))
	pause(0.5)
	drawnow
end
grid on
legend('m = 2','m = 3','m = 4','m = 5','m = 5','Location','SW')
title('Efecto de variar la masa en la respuesta en frecuencia')
hold off

%% Entregables:
%
% Se revisa una publicaci�n (html) de la pr�ctica. En este caso tendra que iniciar 
% indicando el nombre de la pr�ctica y sus datos personales, equipos de dos a cuatro personas 
% (Portada). El �ndice del contenido lo genera Publish (�ndice). Los objetivos son los sigueintes:
% 
% * Conocer los conceptos de respuesta en frecuencia
% * Conocer los conceptos de filtros
% * Realizar graficas de Bode (manual y con MATLAB) 
% * Realizar simulaciones num�ricas de sistemas con MATLAB
%
% Como introducci�n, realice un resumen de la secci�n 4.10 de Lathi, si
% lo considera necesario, investigue m�s sobre el tema.
%
% Para el desarrollo se tienen que resolver cada uno de los siguientes problemas comenzando 
% una nueva secci�n (para la publicaci�n) en cada uno de ellos.
%
% * *Problema 1.* El siguiente sistema es un ciruito electrico RLC en serie, donde la
% estrada es el voltaje suministrado al circuito y la salida es el voltaje
% en la resistencia,
% 
% <<RLC_schematic.PNG>>
% 
% realiza lo siguiente 
% 
% *1a.* Demuestra que la ecuaci�n que modela el sistema es 
%
% $$\ddot{V}_o(t)+\frac{R}{L}\dot{V}_o(t)+\frac{1}{LC}V_o(t) = \frac{R}{L}\dot{V_i}(t)$$
%  
% Ayuda: Voltaje suministrado es igual a voltaje consumido, escribir las
% variables en terminos de la salida mediante las relaciones de voltaje
% corriente en cada elemento y utilizar el hecho de que es un circuito en
% serie
% 
% *1b.* Encuentre la funci�n de transferencia. 
%
% En adelante suponga que $L=1 H$, $C=510\,\mu F$ y $R=50\, \Omega$
%
% *1c.* Reporta el c�digo y la gr�fica de la respuesta al impulso, para
% diferentes tiempos de simulaci�n de tal manera que se muestre el
% comportamiento del sistema
%
% *1d.* Reporta el codigo y la gr�fica de la respuesta al escal�n, para
% diferentes tiempos de simulaci�n de tal manera que se muestre el
% comportamiento del sistema
%
% Define $\omega_0=1/\sqrt(L*C)$
%
% *1e.* Presenta las simulaciones con una entrada seno de 
% de amplitud 1 con frecuencias, $\frac{1}{2}\omega_0$, $\omega_0$, y
% $2\omega_0$, para
% diferentes tiempos de simulaci�n de tal manera que se muestre el
% comportamiento del sistema
%
% *1f.* Reporta las gr�ficas de Bode para los valores de $R$ y $C$ propuestos y
% varia $L$ de 1 a 1e-6 (en potencias de 10), �Qu� sucede con la respuesta
% en frecuencia?
%
% *1g.* Reporta las gr�ficas de Bode para los valores de $L$ y $C$ propuestos y
% varia $R$ para $2,10,20 K\Omega$, �Qu� sucede con la respuesta
% en frecuencia?
%
% * *Problema 2.* Consideremos el siguiente sistema
%
% $$G(s)=\omega_c/(s+\omega_c)$$
%
% *2a.* Muestra que $|H(0j)|=1$
%
% *2b.* Muestra que cuando que la magnitud de la respuesta en frecuencia es
% $-3db$ cuando $\omega=\omega_c$
%
% *2c.* Para modificar el comportamiento del sistema, se realiza una
% retroalimentaci�n negativa con $k=9$. �Para qu� valor de $\omega$ se
% tiene una ganancia de $-3db$?, �Qu� concluye?
%
% *2d.* Para modificar el comportamiento del sistema, se realiza una
% retroalimentaci�n negativa con $k=0.9$. �Para qu� valor de $\omega$ se
% tiene una ganancia de $-3db$?, �Qu� concluye?
%
% *2e.* Reporte las graficas de bode (c�digo) de los tres sistemas anteriores.
%
% <<Bloques1.png>>
%
% * *Problema 3* Para el siguiente sistema
%
% $$H(s)=\frac{(s+10)(s+20)}{s^2(s+100)}$$
%
% *3a.* Bosqueja las gr�ficas de Bode a mano paso a paso, puedes revisar el
% ejemplo 4.25 y 4.26 de Lathi
%
% *3b.* Utiliza la instrucci�n _bode_ para realizar las gr�ficas de bode
%
% * *Problema 4* Para el sistema 
%
% $$H(s)=\frac{10(s+2)}{s^2+8s+15}$$
%
% Simule la respuesta al escal�n (CI=0), para
% diferentes tiempos de simulaci�n de tal manera que se muestre el
% comportamiento del sistema y comparela con la soluci�n
% anal�tica
%
% $$y(t)=1.33u(t)+1.67e^{-3t}u(t)-3e^{-5t}u(t)$$
%
% * *Problema 5* Se tiene el siguiente sistema 
%
% $$\ddot{x}+5x=f$$
%
% *5a.* �El sistema es BIBO estable? 
%
% *5b.* Encuentre la respuesta  (anal�tica) para condiciones iniciales cero del sistema si
% $f(t)=sen(\sqrt{5}t)u(t)$, recuerde aplicar el resultado de convoluci�n si es
% necesario.
%
% *5c.* De acuerdo a 5a, �tiene sentido hablar de la respuesta en estado
% estacionario?
%
% *5d.* Presente las graficas de Bode del sistema utilizando la instrucci�n
% _bode_
%
% *5e.* �Cu�les son sus concluisiones al respecto?
% 
% *5f.* Encuentre la respuesta  (anal�tica) para condiciones iniciales cero del sistema si
% $f(t)=sen(\sqrt{5}/2t)u(t)$, compare con la simulaci�n en MATLAB
%
% *5g.* Encuentre la respuesta  (anal�tica) para condiciones iniciales cero del sistema si
% $f(t)=sen(2\sqrt{5}t)u(t)$, compare con la simulaci�n en MATLAB
%
% * *Problema 6* Investigue la instrucci�n _linearSystemAnalyzer_ (disposible a partir de 2015a)
% y con ayuda de esta, reporte las gr�ficas de 
%
% *6a.* Respuesta al Impulso
%
% *6b.* Respuesta al escal�n
%
% *6c.* Respuesta a $x(t)=cos(2t)u(t)$
%
% *6d.* Graficas de Bode
%
% Para condiciones iniciales cero y 10 segundos de simulaci�n, para el sistema.
%
% $$\ddot{y}+3\dot{y}+2y=x$$
%
% * *Problema 7* Reproduzca los resultados de la MATLAB session 4 del libro
% de Lathi.
%
% No es necesario incluir conclusiones en esta pr�ctica, si lo considera necesario 
% puede incluir ap�ndices, no olvide incluir sus referencias.
%
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente <https://www.dropbox.com/s/ogmkwqf46bybemj/P07SyS20201.m?dl=0  enlace> 

