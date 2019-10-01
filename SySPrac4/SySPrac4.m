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
%%
% <<1.jpeg>>
%%
% <<2.jpeg>>
%%
% <<3.jpeg>>
%%
% <<4.jpeg>>
%%
% <<5.jpeg>>
%%
% <<6.jpeg>>
%%
% <<7.jpeg>>
%%
% <<8.jpeg>>
%%
% <<9.jpeg>>
%%
% <<10.jpeg>>
%%
% <<11.jpeg>>
%%
% <<12.jpeg>>
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
% de la convoluci�n y compare con el resultado anal�tico que obtuvo para el problema 1, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�n
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico.  Investigue como crear un gif
% e inserte la animaci�n.
%
% Se va a realizar la convoluci�n de las siguientes se�ales:
% 
% $$x(t)=(-t+1)(u(t)-u(t-1)) + (t-1)(u(t-1)-u(t-2))$$
%
% $$h(t)=(1)(u(t)-u(t-1))$$
%
clear all;
close all; 
x = @(t) (-t+1).*(t>=0 & t<=1) + (t-1).*(t>=1 & t<=2);
h = @(t) (1).*(t>=0 & t<=1);
a=-1;
b=4;
nombregif= 'problema1.gif';
convconm(x,h,a,b,nombregif) %El codigo de esta funci�n se encuentra en el ap�ndice
%%
% <<problema1.png>>
figure(1);
problema1(); %El codigo de esta funcion se encuentra en el ap�ndice
%%
% <<problema1.gif>>
%% Problema 2
% Para el PR04 reporte la grafica de la simulaci�n n�merica
% de la convoluci�n y compare con el resultado anal�tico que obtuvo para el problema 3, esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% la convoluci�n, y en esta �ltima gr�ficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un gif
% e inserte la animaci�n.
%
% Se va a realizar la convoluci�n de las siguientes se�ales:
% 
% $$x(t)=(t)(u(t)-u(t-1)) + (1)(u(t-1)-u(t-2))$$
%
% $$h(t)=(1)(u(t-1)-u(t-3))$$
%
clear all;
close all;
x = @(t) (t).*(t>=0 & t<=1) + (1).*(t>1 & t<=2);
h = @(t) (1).*(t>=1 & t<=3);
a=-1;
b=6;
nombregif= 'problema2.gif';
convconm(x,h,a,b,nombregif) %%El codigo de esta funci�n se encuentra en el ap�ndice
%%
% <<problema2.png>>
figure(1);
problema2(); %El codigo de esta funcion se encuentra en el ap�ndice
%%
% <<problema2.gif>>
%% Problema 3
% Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correlaci�n y compare con el resultado anal�tico que obtuvo para el problema e), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un gif
% e inserte la animaci�n. 
%
% Se va a realizar la autocorrelacion de la siguiente se�al:
% 
% $$x_1(t)=u(t)-2u(t-3)+u(t-4)$$
%
% $$\Gamma_{x1x1} (t) = x_{1}(t) * x_{1}(-t)$$
clear all;
close all;
w = @(t) (1).*(t>=0 & t<=3) + (-1).*(t>3 & t<=4);
x = @(t) w(-t);
h = @(t) (1).*(t>=0 & t<=3) + (-1).*(t>3 & t<=4);
a=-5;
b=5;
nombregif= 'problema3.gif';
correlacion(x,h,a,b,nombregif) %%El codigo de esta funci�n se encuentra en el ap�ndice
%%
% <<problema3.png>>
figure(1);
problema3(); %El codigo de esta funcion se encuentra en el ap�ndice
%%
% <<problema3.gif>>
%% Problema 4
% Para el PR06 reporte la grafica de la simulaci�n n�merica
% de la correlaci�n y compare con el resultado anal�tico que obtuvo para el problema f), esto
% es, su pr�ctica tendr� que incluir una llamada a la funci�nn
% _convconm_ y posteriormente se tendr� que mostrar (mediante el
% Publish) la gr�fica tanto de las se�ales involucradas como el resultado de
% su correlaci�n, y en esta �ltima graficara su resultado analitico, se
% tendr� que incluir el resultado analitico. Investigue como crear un gif
% e inserte la animaci�n.
%
% Se va a realizar la correlacion de las siguientes se�ales:
%
% $$x_0(t)=u(t)-2u(t-2)+u(t-4)$$
%
% $$x_1(t)=u(t)-2u(t-3)+u(t-4)$$
%
% $$\Gamma_{x0x1} (t) = x_{0}(t) * x_{1}(-t)$$
clear all;
close all;
w = @(t) (1).*(t>=0 & t<=2) + (-1).*(t>2 & t<=4);
x = @(t) w(-t);
h = @(t) (1).*(t>=0 & t<=3) + (-1).*(t>3 & t<=4);
a=-5;
b=5;
nombregif= 'problema4.gif';
correlacion(x,h,a,b,nombregif) %%El codigo de esta funci�n se encuentra en el ap�ndice
%%
% <<problema4.png>>
figure(1);
problema4(); %El codigo de esta funcion se encuentra en el ap�ndice
%%
% <<problema4.gif>>
%% Referencias
% 
% [1] https://la.mathworks.com/matlabcentral/answers/94495-how-can-i-create-animated-gif-images-in-matlab
%
% [2] https://latex2png.com/
%
% [3] https://www.quora.com/How-do-I-add-a-GIF-image-using-HTML-code
%
%% Apendice
%
% A continuaci�n se muestran los codigos de las funciones convconm,
% correlacion, problema1, problema2, problema3 y problema4.
%
%
% Codigo de la funcion convconm
%
%   function convconm(x,h,a,b,nombregif)
%   filename = nombregif;
%   v = figure (1); % Se crea una figura para hacer las gr�ficas
%   axis tight manual % esto asegura que getframe() retorne un tama�o consistente
%   dtau = 0.005; % Base de los rectangulos para realizar la integral 
%   tau = a:dtau:b; % Intervalo de visualizaci�n del resultado
%   ti = 0; % Indice para el vector de resultados
%   tvec = a:0.1:b; % traslaciones de t, cuantas integrales se calulan  
%   y = NaN*zeros(1, length (tvec)); % Resultados de acuerdo a cuantos t
%   for t = tvec, % Cantidad de traslaciones
%       ti = ti+1; % Indice para guardar el resultado (indice del tiempo)
%       xh = x(t-tau).*h(tau); % resultado de la multiplicaci�n 
%       lxh = length(xh); % longitud del resultado
%       y(ti) = sum(xh.*dtau); % Base por altura, aproximaci�n de la integral
%       subplot (2,1,1), % gr�fica de 2 x 1 (primera)
%       plot(tau, h(tau), 'r-', tau, x(t-tau), 'g--', t, 0, 'ob'); %graficas 
%       axis ([tau(1) tau(end) -2.0 2.5]); % l�mites de los ejes
%       patch([tau(1:end-1); tau(1:end-1); tau(2:end); tau(2:end)],...
%       [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
%       [.8 .8 .8], 'edgecolor', 'none');
%       xlabel('\tau'); % Texto del eje X
%       legend('h(\tau)', 'x(t-\tau)','t','h(\tau)x(t-\tau)')% Caja de Texto  
%       subplot (2, 1, 2)  % gr�fica de 2 x 1 (segunda)
%       plot (tvec, y, 'k', tvec (ti), y(ti), 'ok');
%       xlabel ('t'); 
%       ylabel ('y(t) = \int h(\tau)x(t-\tau) d\tau');
%       axis ([tau(1) tau(end) -1.0 2.0]); % l�mites del eje
%       grid; % malla
%       drawnow; % efecto de movimiento continuo
%       
%       % Captura la grafica como una imagen
%       frame = getframe(v); 
%       im = frame2im(frame); 
%       [imind,cm] = rgb2ind(im,256); 
%       % Write to the GIF File 
%       if t == a 
%           imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
%       else 
%           imwrite(imind,cm,filename,'gif','WriteMode','append'); 
%       end 
%   end
%   end
%
% Codigo de la funcion correlacion
%
%   function correlacion(x,h,a,b,nombregif)
%   filename = nombregif;
%   v = figure (1); % Se crea una figura para hacer las gr�ficas
%   axis tight manual % esto asegura que getframe() retorne un tama�o consistente
%   dtau = 0.005; % Base de los rectangulos para realizar la integral 
%   tau = a:dtau:b; % Intervalo de visualizaci�n del resultado
%   ti = 0; % Indice para el vector de resultados
%   tvec = a:0.1:b; % traslaciones de t, cuantas integrales se calulan  
%   y = NaN*zeros(1, length (tvec)); % Resultados de acuerdo a cuantos t
%   for t = tvec, % Cantidad de traslaciones
%       ti = ti+1; % Indice para guardar el resultado (indice del tiempo)
%       xh = x(t-tau).*h(tau); % resultado de la multiplicaci�n 
%       lxh = length(xh); % longitud del resultado
%       y(ti) = sum(xh.*dtau); % Base por altura, aproximaci�n de la integral
%       subplot (2,1,1), % gr�fica de 2 x 1 (primera)
%       plot(tau, h(tau), 'r-', tau, x(t-tau), 'g--', t, 0, 'ob'); %graficas 
%       axis ([tau(1) tau(end) -2.0 2.5]); % l�mites de los ejes
%       patch([tau(1:end-1); tau(1:end-1); tau(2:end); tau(2:end)],...
%       [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
%       [.8 .8 .8], 'edgecolor', 'none');
%       xlabel('\tau'); % Texto del eje X
%       legend('h(\tau)', 'x(\tau-t)','t','h(\tau)x(\tau-t)')% Caja de Texto  
%       subplot (2, 1, 2)  % gr�fica de 2 x 1 (segunda)
%       plot (tvec, y, 'k', tvec (ti), y(ti), 'ok');
%       xlabel ('t'); 
%       ylabel ('y(t) = \int h(\tau)x(\tau-t) d\tau');
%       axis ([tau(1) tau(end) -4.0 6.0]); % l�mites del eje
%       grid; % malla
%       drawnow; % efecto de movimiento continuo
%       
%       % Captura la grafica como una imagen
%       frame = getframe(v); 
%       im = frame2im(frame); 
%       [imind,cm] = rgb2ind(im,256); 
%       % Write to the GIF File 
%       if t == a 
%           imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
%       else 
%           imwrite(imind,cm,filename,'gif','WriteMode','append'); 
%       end 
%   end
%   end
%
% Codigo de la funcion problema1
%
%   function problema1()
%   hold on
%   syms t
%   t1=0:0.01:1;
%   t2=1:0.01:2;
%   t3=2:0.01:3;
%   subplot (2, 1, 2)
%   plot(t1,(-t1.^2/2) + t1)
%   hold on
%   plot(t2,t2.^2 -3*t2 + 5/2)
%   plot(t3,-t3.^2/2 + 2*t3 -3/2)
%   grid on
%   end
%
% Codigo de la funcion problema2
%
%   function problema2()
%   hold on
%   syms t
%   t1=1:0.01:2;
%   t2=2:0.01:3;
%   t3=3:0.01:4;
%   t4=4:0.01:5;
%   subplot (2, 1, 2)
%   plot(t1,t1.^2/2 -t1 + 1/2)
%   hold on
%   plot(t2,t2-3/2)
%   plot(t3,-t3.^2/2+3*t3-3)
%   plot(t4,-t4+5)
%   grid on
%   end
%
% Codigo de la funcion problema3
%
%   function problema3()
%   hold on
%   syms t
%   t1=-4:0.01:-3;
%   t2=-3:0.01:-1;
%   t3=-1:0.01:0;
%   t4=0:0.01:1;
%   t5=1:0.01:3;
%   t6=3:0.01:4;
%   subplot (2, 1, 2)
%   plot(t1,-t1-4)
%   hold on
%   plot(t2,t2+2)
%   plot(t3,3*t3+4)
%   plot(t4,-3*t4+4)
%   plot(t5,-t5+2)
%   plot(t6,t6-4)
%   grid on
%   end
%
% Codigo de la funcion problema4
%
%   function problema4()
%   hold on
%   syms t
%   t1=-4:0.01:-2;
%   t2=-2:0.01:-1;
%   t3=-1:0.01:0;
%   t4=0:0.01:1;
%   t5=1:0.01:2;
%   t6=2:0.01:3;
%   t7=3:0.01:4;
%   subplot (2, 1, 2)
%   plot(t1,-t1-4)
%   hold on
%   plot(t2,t2)
%   plot(t3,3*t3+2)
%   plot(t4,t4+2)
%   plot(t5,-3*t5+6)
%   plot(t6,-t6+2)
%   plot(t7,t7-4)
%   grid on
%   end
%