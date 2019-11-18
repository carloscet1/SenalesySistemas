function fun7(a,b,xi,ciy,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% xi funci�n de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion
%
%% Respuesta al impulso (gr�fica)
close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1);
end

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);

y(t)=ilaplace(edd);


figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);

tiempo=0:0.01:t0;
subplot(3,2,1)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Respuesta al impulso, h(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta al impulso','FontWeight','bold','FontSize',16)
grid on
hold on
%% Respuesta a entrada cero (gr�fica)
xi2=0;
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*0;
end

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);

y(t)=ilaplace(edd);

subplot(3,2,2)
fplot(xi2,[0, t0],'b','LineWidth',2)
hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Respuesta a entrada cero','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta a entrada cero','FontWeight','bold','FontSize',16)
grid on

%% Respuesta a estado cero (gr�fica)
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
end

edi=subs(edi,X(s), laplace(xi));

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);

y(t)=ilaplace(edd);

subplot(3,2,3)
fplot(xi,[0, t0],'b','LineWidth',2)
hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Respuesta a estado cero','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta a estado cero','FontWeight','bold','FontSize',16)
grid on

%% Respuesta total (gr�fica)
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
end


edi=subs(edi,X(s), laplace(xi));


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;

edd=solve(eq1, Yy);

y(t)=ilaplace(edd);

subplot(3,2,4)
fplot(xi,[0, t0],'b','LineWidth',2)
hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Respuesta total','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta total','FontWeight','bold','FontSize',16)
grid on

%% Respuesta total al escal�n con condiciones iniciales 0 (gr�fica)
sympref('HeavisideAtOrigin', 1);
xi3=heaviside(t);
ciy2=[0,0];
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy2(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
end

edi=subs(edi,X(s), laplace(xi3));


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;

edd=solve(eq1, Yy);

y(t)=ilaplace(edd);

subplot(3,2,5)
fplot(xi3,[0, t0],'b','LineWidth',2)
hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Entrada x(t)','Respuesta total al escalon','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Entrada y Respuesta total al escalon con condiciones iniciales 0','FontWeight','bold','FontSize',8)
grid on
end