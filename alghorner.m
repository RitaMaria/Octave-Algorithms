function [y,dy] = alghorner (c,x)
##  aplicar o algoritmo de Horner no c�lculo de f(x) e f'(x)
##  
##  c � um vetor com os coeficientes do polin�mio que define f, sendo c(1) o
##   coeficiente do mon�mio de grau mais elevado at� c(end) o termo constante
##  x � o ponto onde se pretende obter o valor de f e da sua derivada
##  y � o valor de f(x)
##  dy � o valor de f'(x)
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
