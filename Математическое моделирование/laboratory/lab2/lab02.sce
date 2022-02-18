//Лабораторная работа №2 , вариант 43.

//начальные условия в случае 1
//r0=16.2/3;
//tetha0=0;

//начальные условия в случае 2
r0=16.2/5;
tetha0 = -%pi;

//функция, описывающая движение катера береговой охраны
function dr=f(tetha, r)
    dr=r/sqrt(15);
endfunction;
//функция, описывающая движение лодки браконьеров
function xt=f2(t)
    xt=tan(fi)*t;
endfunction

fi=3*%pi/4;
tetha=tetha0:0.001:2*%pi;
r=ode(r0,tetha0,tetha,f);
t=0:1:800;



// Построение траектории движения катера(зеленый) и лодки(красный)
polarplot(tetha,r,style = color('green')); 
plot2d(t,f2(t),style = color('red'));
