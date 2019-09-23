 %Ejercicio 1.2.2
    %Se�al x(t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t);
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
    axis([-5 3 -1 5]);
    grid on;
    
    %Inciso a) Se�al x(t-4)
     
    t=[-10:0.0001:10];
    x(t-4);
    plot(t,x(t-4));
    xlabel('t');
    ylabel('x(t-4)');
    axis([-1 7 -1 5]);
    grid on;
    
    %Inciso b) Se�al x(t/1.5)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(t/1.5);
    plot(t,x(t/1.5));
    xlabel('t');
    ylabel('x(t/1.5)');
    axis([-7 4 -1 5]);
    grid on;
    
    %Inciso c) Se�al x(-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(-t);
    plot(t,x(-t));
    xlabel('t');
    ylabel('x(-t)');
    axis([-3 5 -1 5]);
    grid on;
    
    %Inciso d) Se�al x(2t-4)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2*t-4);
    plot(t,x(2*t-4));
    xlabel('t');
    ylabel('x(2t-4)');
    axis([-1 4 -1 5]);
    grid on;
    
    %Inciso e) Se�al x(2-t)
    x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    x(2-t);
    plot(t,x(2-t));
    xlabel('t');
    ylabel('x(2-t)');
    axis([-0.5 6.5 -1 5]);
    grid on;
    
    