%% Pr�ctica 3: Se�ales continuas
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
%%
% 
% * Manipulaci�n b�sica de MATLAB
% * Gr�ficas de se�ales reales y complejas continuas
% * Transformaci�n de se�ales continuas (escalamientos y traslaciones)
% * Calculo de energ�a y potencia de se�ales continuas
%
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
% *Alternativas a MATLAB*
%
% * GNU Octave
%
% GNU Octave puede ser la alternativa m�s conocida a MATLAB. En desarrollo 
% activo durante casi tres d�cadas, Octave se ejecuta en Windows, Mac y 
% Linux, y est� empaquetado para la mayor�a de las distribuciones principales. 
% Si est� buscando un proyecto que sea lo m�s parecido posible al 
% lenguaje MATLAB real, Octave puede ser una buena opci�n para usted; se 
% esfuerza por una compatibilidad exacta, por lo que muchos de sus proyectos 
% desarrollados para MATLAB pueden ejecutarse en Octave sin necesidad de 
% modificaciones.
% 
% Octave tiene licencia GPL, y su c�digo fuente se puede encontrar en el 
% sitio FTP de GNU.
% 
% * Scilab
%
% Scilab es otra opci�n de c�digo abierto para computaci�n num�rica que se 
% ejecuta en todas las plataformas principales: Windows, Mac y Linux 
% incluidos. Scilab es quiz�s la alternativa m�s conocida fuera de Octave, 
% y (como Octave) es muy similar a MATLAB en su implementaci�n, aunque 
% la compatibilidad exacta no es un objetivo de los desarrolladores del proyecto.
% 
% Scilab se distribuye como fuente abierta bajo la licencia CeCILL compatible 
% con GPL, y su c�digo fuente est� disponible en su p�gina oficial.
% 
% * Sage
%
% SageMath es otro sistema de software de matem�ticas de c�digo abierto que 
% podr�a ser una buena opci�n para aquellos que buscan una alternativa 
% de MATLAB. Est� construido sobre una variedad de conocidas bibliotecas de 
% computaci�n cient�fica basadas en Python, y su propio lenguaje es 
% sint�cticamente similar a Python. Tiene muchas caracter�sticas que incluyen 
% una interfaz de l�nea de comandos, cuadernos basados en navegador, 
% herramientas para incrustar f�rmulas en otros documentos y, por supuesto, 
% muchas bibliotecas matem�ticas.
% 
% SageMath est� disponible bajo una licencia GPL, y su c�digo fuente se 
% puede encontrar en el sitio web del proyecto.
% <https://maslinux.es/3-alternativas-de-codigo-abierto-a-matlab/ [2]>
%% Desarrollo
% A continuaci�n se presentan los problemas resueltos.
%
%% Problema 1
%
% Crea una funci�n que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la funci�n debe regresar la evaluaci�n $F(\omega)=a/(a^2+\omega^2)$,
% esta funci�n debe trabajar con $a\in R$ y $\omega\in  R^n$. Debe
% mostrar su c�digo en el reporte (sin ejecutar).
%
%   clear all;
%
%   close all;
%
%   a=input("Introduce el valor de a: ");
%
%   w=input("Introduce el valor de w: ");
%
%   fun1(a,w);
%
% El contenido de fun1 es el siguiente:
%
%   function[resultado]= fun1(a, w)
%
%   resultado=(a)./(a.^(2)+w.^(2));
%
%   end
%
%% Problema 2
%
% Construya una funci�n que gr�fique funciones de
% $f:R\rightarrow R$ en el formato de su elecci�n y pruebe
% su c�digo mostrando la gr�fica de $F(\omega)$ vs $\omega$ en el intervalo
% $[-2,2]$ para $a=1$, no debe
% incluir el c�digo, solo el uso de la funci�n para mostrar la gr�fica.
%
a=1;
w=[-2:0.01:2];
mifigura(w,fun1(a,w));                    
%% Problema 3
%
% Este problema no se hace.
%
%% Problema 4
%
% Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4
% que se encuentra al final del cap�tulo 1 y antes de la secci�n de
% problemas, cambie los _inline_ por funciones anonimas.
%
%%
% Problema M1.1
    % Ejercicio 1
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=0;
    f(t);
    fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    fprintf('\n');

%%   
    % Ejercicio 2
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=[-2:2];
    f(t);
    fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    fprintf('\n');
    plot(t,f(t));
    xlabel('t');
    ylabel('f(t)');
    grid on;

%%
    % Ejercicio 3
    f=@(t) (exp(-t).*cos(2*pi*t));
    t=[-2:0.01:2];
    f(t);
    %fprintf('\n El resultado de la evaluacion de la funcion f es: %f', f(t));
    %fprintf('\n');
    plot(t,f(t));
    xlabel('t');
    ylabel('f(t)');
    grid on;
   
%%    
% Problema M1.2
    % Ejercicio 1
    u=@(t) (t>=0);
    t=[-2:2];
    u(t);
    plot(t,u(t));
    xlabel('t');
    ylabel('u(t)');
    grid on;
    
%%    
    % Ejercicio 2
    u=@(t) (t>=0);
    t=[-2:0.01:2];
    u(t);
    plot(t,u(t));
    xlabel('t');
    ylabel('u(t)');
    grid on;
    axis([-2 2 -0.1 1.1]);
    
%%    
    % Ejercicio 3
    p=@(t) ((t>=0)&(t<1));
    t=[-1:0.01:2];
    p(t);
    plot(t,p(t));
    xlabel('t');
    ylabel('p(t)= u(t)-u(t-1)');
    grid on;
    axis([-1 2 -0.1 1.1]);
    
%%
% Problema M1.3
    % Ejercicio 1
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    g(2*t+1);
    plot(t,g(2*t+1));
    xlabel('t');
    ylabel('g(2*t+1)');
    grid on;
    
%% 
    % Ejercicio 2
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    g(-t+1);
    plot(t,g(-t+1));
    xlabel('t');
    ylabel('g(-t+1)');
    grid on;
    
 %%   
    % Ejercicio 3
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.01:2];
    h=g(2*t+1) + g(-t+1);
    plot(t,h);
    xlabel('t');
    ylabel('h(t)');
    grid on;
    
%%
% Problema M1.4
    % Ejercicio 1
    x=@(t) (exp(-t).*((t>=0)&(t<1)));
    t=[0:0.01:1];
    E_x=sum(x(t).*x(t)*0.01)
    
%%    
    % Ejercicio 2
    x=@(t) (exp(-t).*((t>=0)&(t<1)));
    t=[0:0.001:1];
    E_x=sum(x(t).*x(t)*0.001)
    
%%   
    % Ejercicio 3
    x_cuadrada=@(t) (exp(-2*t).*((t>=0)&(t<1)));
    E_x=quad(x_cuadrada,0,1)
    
%%   
    % Ejercicio 4
    g_cuadrada=@(t) (exp(-2*t).*(cos(2*pi*t).^2).*(t>=0));
    t=[0:0.001:100];
    E_g=sum(g_cuadrada(t)*0.001)
    
%%    
    % Ejercicio 5
    g_cuadrada=@(t) (exp(-2*t).*(cos(2*pi*t).^2).*(t>=0));
    E_g=quad(g_cuadrada,0,100)
    
%%  
    % Ejercicio 6
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    t=[-2:0.001:2];
    h_cuadrada=(g(2*t+1)+g(-t+1)).^2;
    E_h=sum(h_cuadrada*0.001)
    
 %%   
    % Ejercicio 7
    g=@(t) (exp(-t).*cos(2*pi*t).*(t>=0));
    h_cuadrada=@(t) (g(2*t+1)+g(-t+1)).^2;
    E_h=quad(h_cuadrada,-2,2)
    
%% Problema 5
%
% Resuelve el problema 1.2.2 usando las herramientas del paso anterior. 
%
 % Ejercicio 1.2.2
    % Se�al x(t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t);
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
    axis([-5 3 -1 5]);
    grid on;
    
%%    
    % Inciso a) Se�al x(t-4)
     
    t=[-10:0.0001:10];
    x(t-4);
    plot(t,x(t-4));
    xlabel('t');
    ylabel('x(t-4)');
    axis([-1 7 -1 5]);
    grid on;
    
%%   
    % Inciso b) Se�al x(t/1.5)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t/1.5);
    plot(t,x(t/1.5));
    xlabel('t');
    ylabel('x(t/1.5)');
    axis([-7 4 -1 5]);
    grid on;
    
%%    
    % Inciso c) Se�al x(-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(-t);
    plot(t,x(-t));
    xlabel('t');
    ylabel('x(-t)');
    axis([-3 5 -1 5]);
    grid on;
    
%% 
    % Inciso d) Se�al x(2t-4)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2*t-4);
    plot(t,x(2*t-4));
    xlabel('t');
    ylabel('x(2t-4)');
    axis([-1 4 -1 5]);
    grid on;
    
%%  
    % Inciso e) Se�al x(2-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2-t);
    plot(t,x(2-t));
    xlabel('t');
    ylabel('x(2-t)');
    axis([-0.5 6.5 -1 5]);
    grid on;
%% Problema 6
%
% Escriba una funci�n que se llame _energia_ que reciba como argumento
% una funci�n (anonima o simbolica) y que regrese el calculo de la energ�a,
% para esto puede resultar �til investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el c�digo solo con funciones de energia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.3
%
%
%   syms t;
%
%   f=input("Introduce la funci�n a la que se le va a calcular la energia: ");
%
%   a=input("Introduce el limite de integraci�n inferior: ");
%
%   b=input("Introduce el limite de integraci�n superior: ");
%
%   energia=@(f) int(f.^2,t,a,b);
%
%   energia(f);
%
%   fprintf('\n La energia de la funci�n es: %f', energia(f));
%
%   fprintf('\n');
%
%%
% Problema 1.1.3
    % Inciso a)
    % Instrucciones del problema:
    %
    % Encuentre las energ�as del par de se�ales x (t) e y (t) representadas en las 
    % figuras P1.1-3a y P1.1-3b. Dibuja y encuentra las energ�as de las 
    % se�ales x (t) + y (t) yx (t) - y (t).
    %
        % Primer par de funciones
            % Calculando la energia de x(t)
            t=[-4:0.01:4];
            x=@(t) ((1).*((t>=0)&(t<=2)));
            x(t);
            x_cuadrada=@(t) ((1).*((t>=0)&(t<=2))).^2;
            energia_x = integral(x_cuadrada,0,2);
            fprintf('\n La energia de la funci�n x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([-1 3 -1 2]);
            
%%
            % Calculando la energia de y(t)
            t=[-4:0.01:4];
            y=@(t) ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2)));
            y(t);
            y_cuadrada=@(t) ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>1)&(t<=2))) ).^2;
            energia_y = integral(y_cuadrada,0,2);
            fprintf('\n La energia de la funci�n y(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-1 3 -2 2]);
            
%% 
            % Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((1).*((t>=0)&(t<=2))) + ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ;
            f(t);
            f_cuadrada=@(t) ( ((1).*((t>=0)&(t<=2))) + ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-0.5 1.5 -0.5 2.5]);
            
%%            
            % Calculando la energia de x(t) - y(t)
            t=[-10:0.001:10];
            f=@(t) ((1).*((t>=0)&(t<=2))) - ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) );
            f(t);
            f_cuadrada=@(t) ( ((1).*((t>=0)&(t<=2))) - ( ((1).*((t>=0)&(t<=1))) + ((-1).*((t>=1)&(t<=2))) ) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([0.8 2.2 -0.5 2.5]);
            
 %%           
        % Segundo par de funciones
            % Calculando la energia de x(t)
            t=[-10:0.01:10];
            x=@(t) ((sin(t)).*((t>=0)&(t<=2*pi)));
            x(t);
            x_cuadrada=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))).^2;
            energia_x = integral(x_cuadrada,0,2*pi);
            fprintf('\n La energia de la funci�n x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([0 2*pi -2 2]);
            
%%
            % Calculando la energia de y(t)
            t=[-10:0.01:10];
            y=@(t) ((1).*((t>=0)&(t<=2*pi)));
            y(t);
            y_cuadrada=@(t) ((1).*((t>=0)&(t<=2*pi))).^2;
            energia_y = integral(y_cuadrada,0,2*pi);
            fprintf('\n La energia de la funci�n y(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-1 2.5*pi -2 2]);
            
%%          
            % Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))) +  ((1).*((t>=0)&(t<=2*pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) +  ((1).*((t>=0)&(t<=2*pi))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-1 7 -0.5 2.5]);
            
%%       
            % Calculando la energia de x(t) - y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=2*pi))) -  ((1).*((t>=0)&(t<=2*pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=2*pi))) -  ((1).*((t>=0)&(t<=2*pi))) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([-1 7 -2.5 0.5]);
            
%%      
    % Inciso b)
    % Tercer par de funciones
            % Calculando la energia de x(t)
            t=[-10:0.01:10];
            x=@(t) ((sin(t)).*((t>=0)&(t<=pi)));
            x(t);
            x_cuadrada=@(t) ((sin(t)).*((t>=0)&(t<=pi))).^2;
            energia_x = integral(x_cuadrada,0,pi);
            fprintf('\n La energia de la funci�n x(t) es: %f', energia_x);
            fprintf('\n');
            plot(t,x(t));
            xlabel('t');
            ylabel('x(t)');
            grid on;
            axis([-0.5 3.5 -0.5 1.5]);
            
%%
            % Calculando la energia de y(t)
            t=[-10:0.01:10];
            y=@(t) ((1).*((t>=0)&(t<=pi)));
            y(t);
            y_cuadrada=@(t) ((1).*((t>=0)&(t<=pi))).^2;
            energia_y = integral(y_cuadrada,0,pi);
            fprintf('\n La energia de la funci�n x(t) es: %f', energia_y);
            fprintf('\n');
            plot(t,y(t));
            xlabel('t');
            ylabel('y(t)');
            grid on;
            axis([-0.5 3.5 -0.5 1.5]);
            
%%          
            % Calculando la energia de x(t) + y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=pi))) +  ((1).*((t>=0)&(t<=pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) +  ((1).*((t>=0)&(t<=pi))) ).^2 ;
            energia_suma = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) + y(t) es: %f', energia_suma);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) + y(t)');
            grid on;
            axis([-1 4 -0.5 2.5]);
            
%%          
            % Calculando la energia de x(t) - y(t)
            t=[-10:0.01:10];
            f=@(t) ((sin(t)).*((t>=0)&(t<=pi))) -  ((1).*((t>=0)&(t<=pi)));
            f(t);
            f_cuadrada=@(t) ( ((sin(t)).*((t>=0)&(t<=pi))) -  ((1).*((t>=0)&(t<=pi))) ).^2 ;
            energia_resta = integral(f_cuadrada,-Inf,Inf);
            fprintf('\n La energia de la funci�n x(t) - y(t) es: %f', energia_resta);
            fprintf('\n');
            plot(t,f(t));
            xlabel('t');
            ylabel('x(t) - y(t)');
            grid on;
            axis([-0.5 3.5 -1.5 0.5]);

%% Problema 7
%
% Escriba una funci�n que se llame _potencia_ que reciba como argumento
% una funci�n (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar �til investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el c�digo solo con funciones de potencia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.4
%
%%
%
%   syms t;
%   f=input("Introduce la funci�n a la que se le va a calcular la potencia: ");
%   T=input("Introduce el periodo de la se�al: ");
%   potencia=@(f) (1/T)*int(f.^2,t,(-T/2),(T/2));
%   potencia(f);
%   fprintf('\n La potencia de la funci�n es: %f', potencia(f));
%   fprintf('\n');
%
%%
% Problema 1.1.4
    % Encuentre la potencia de la se�al peri�dica x (t) que se muestra en la
    % figura P1.1-4. Encuentre tambi�n las potencias y los valores rms de:
    %
    % a. -x(t)
    %
    % b. 2x(t)
    %
    % c. cx(t)
    %
    t=[-2:0.01:2];
    x=@(t) ((t.^3).*((t>=-2)&(t<=2)));
    x(t);
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
    grid on;
    axis([-2 2 -8 8]);
    
%%    
    % Potencia y valor rms de la se�al original
    syms t;
    x_original=t.^3;
    potencia=@(x_original) (1/4)*int(x_original.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_original);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n x(t) es: %f', valor_rms);
    fprintf('\n');
    
%%   
    % Potencia y valor rms de -x(t)
    syms t;
    x_original=t.^3;
    x_cambiada=-(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n -x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n -x(t) es: %f', valor_rms);
    fprintf('\n');
    
 %%   
    % Potencia y valor rms de 2x(t)
    syms t;
    x_original=t.^3;
    x_cambiada= 2.*(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n 2x(t) es: %f', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n 2x(t) es: %f', valor_rms);
    fprintf('\n');
    
%%    
    % Potencia y valor rms de cx(t)
    syms t c;
    x_original=t.^3;
    x_cambiada= c.*(x_original);
    potencia=@(x_cambiada) (1/4)*int(x_cambiada.^2,t,(-4/2),(4/2));
    valor_potencia=potencia(x_cambiada);
    valor_rms=sqrt(valor_potencia);
    fprintf('\n La potencia de la funci�n cx(t) es: %s', valor_potencia);
    fprintf('\n');
    
    fprintf('\n El valor rms de la funci�n cx(t) es: %s', valor_rms);
    fprintf('\n');
%% Referencias
% 
% [1] "MATLAB", Es.wikipedia.org, 2019. [Online]. Available: https://es.wikipedia.org/wiki/MATLAB. [Accessed: 24- Sep- 2019].
%
% [2] "3 Alternativas de c�digo abierto a MATLAB", Maslinux.es, 2019. [Online]. Available: https://maslinux.es/3-alternativas-de-codigo-abierto-a-matlab/. [Accessed: 24- Sep- 2019].