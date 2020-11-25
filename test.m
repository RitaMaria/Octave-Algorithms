% testes das funções biss, metnewton e alghorner

format long

% método da bisseção
f = @(x) x^2-2*x-6;
[zerob,iterb] = biss(f,3,4,0.0001,50)

% método de Newton
g = @(x) x^4-6*x^3+11*x^2-6*x+1;
dg = @(x) 4*x^3-18*x^2+22*x-6;
[zeron,itern] = metnewton(g,dg,3,50,0.0001)

% algoritmo de Horner
c = [3 0 -6 2 0 -8];
x = 2;
[hornerf_x,hornerdf_x] = alghorner(c,x)
