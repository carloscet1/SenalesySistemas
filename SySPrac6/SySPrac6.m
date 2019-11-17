%% Pr�ctica 6: Sistemas diferenciales
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
%% Desarrollo
% Para sistemas diferenciales realiza un programa con las siguientes
% caracter�sticas
% 
% # Muestra la funci�n de transferencia del sistema
% # Muestra la respuesta al impulso (simb�lico, gr�fica)
% # Muestra la respuesta a entrada cero (simb�lico, gr�fica)
% # Muestra la respuesta a estado cero (simb�lico, gr�fica)
% # Muestra la respuesta total (simb�lico, gr�fica)
% # La respuesta total al escal�n con condiciones iniciales 0 (simb�lico, gr�fica) 
% # Usando subplot, despliega una figura con 5 gr�ficas
% 
% Observa que los entregables pueden resolverse (solo la funci�n de 
% transferencia) con llamadas a las funciones
% presentadas en esta publicaci�n
%
% Nota: Ejecuta los ejemplos descritos dentro de los comentarios de cada
% c�digo para que observes el uso de estos
%
% Se entrega una publicaci�n en html de tu desarrollo y se probar� para un
% problema espec�fico. 
% 
%% Ejercicio 1
% Para esta practica vamos a ocupar la siguiente ecuaci�n diferencial, con
% su respectiva entrada y condiciones iniciales.
%
% $$\ddot{y}(t)+ \dot{y}(t)+ y(t)=x(t),\;\;y(0)=1,\;\dot{y}(0)=-1,\;\;x(t)=e^{-t}u(t)  $$
%
% NOTA: Para esta funci�n, los coeficientes deben de ponerse de mayor a
% menor, tanto las salidas como las entradas
%
% El c�digo de la funci�n mitrans se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
mitrans([1 1 1],[1])
%
%% Ejercicio 2
% El c�digo de la funci�n fun2 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun2([1 1 1],[1],10)
%
%% Ejercicio 3
% El c�digo de la funci�n fun3 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun3([1 1 1],[1],[1,-1],10)
%
%% Ejercicio 4
% El c�digo de la funci�n fun4 se puede encontrar en el siguiente 
% <https://www.dropbox.com/s/nliybr6c3q0xdpj/P06SyS20201.m?dl=0 enlace>
%
fun4([1 1 1],[1],exp(-t),10)
%
%% Ejercicio 5
%
%
%
%% Ejercicio 6
%
%
%
%% Ejercicio 7
%
%
%