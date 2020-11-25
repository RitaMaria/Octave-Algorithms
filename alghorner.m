function [y,dy] = alghorner (c,x)
##  aplicar o algoritmo de Horner no cálculo de f(x) e f'(x)
##  
##  c é um vetor com os coeficientes do polinómio que define f, sendo c(1) o
##   coeficiente do monómio de grau mais elevado até c(end) o termo constante
##  x é o ponto onde se pretende obter o valor de f e da sua derivada
##  y é o valor de f(x)
##  dy é o valor de f'(x)
  n = length(c);
  coef2 = zeros(1,n);
  coef2 = c(1);
  for i=2:n
    coef2(i)=c(i)+coef2(i-1)*x;
  endfor
  y = coef2(end)
  coef3 = zeros(1,n-1);
  coef3 = c(1);
  for i=2:n-1
    coef3(i)=coef2(i)+coef3(i-1)*x;
  endfor
  dy = coef3(end)
endfunction
