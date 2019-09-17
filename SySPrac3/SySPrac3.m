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
% <hhttps://maslinux.es/3-alternativas-de-codigo-abierto-a-matlab/ [2]>
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
%% Problema 2
%
% Construya una funci�n que gr�fique funciones de
% $f:R\rightarrow R$ en el formato de su elecci�n y pruebe
% su c�digo mostrando la gr�fica de $F(\omega)$ vs $\omega$ en el intervalo
% $[-2,2]$ para $a=1$, no debe
% incluir el c�digo, solo el uso de la funci�n para mostrar la gr�fica.
%
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
%% Problema 5
%
% Resuelve el problema 1.2.2 usando las herramientas del paso anterior. 
%
%% Problema 6
%
% Escriba una funci�n que se llame _energia_ que reciba como argumento
% una funci�n (anonima o simbolica) y que regrese el calculo de la energ�a,
% para esto puede resultar �til investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el c�digo solo con funciones de energia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.3
%
%% Problema 7
%
% Escriba una funci�n que se llame _potencia_ que reciba como argumento
% una funci�n (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar �til investigar las instrucciones _int_ , 
% _integral_. Se presupone utilizar el c�digo solo con funciones de potencia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.4
%
%% Referencias
%
%