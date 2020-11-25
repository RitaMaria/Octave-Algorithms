function [y,niter] = metnewton (f,df,x0,itmax,tol)
##  aplicar o método de Newton na aproximação do zero de uma função dada
##  
##  condições do método de Newton:
##  f pertence a C^2([a,b])
##  f(a)*f(b)<0
##  f'(x) diferente de 0, para todo o x pertencente a [a,b]
##  f''(x) >= 0 ou f''(x) <= 0, em [a,b]
##  escolhe-se x0 pertencente a [a,b] tal que f(x0)*f''(x0)>0
##  O código só funciona se as condições estiverem garantidas.
##  
##  f é o handle da função cujo zero se pretende determinar
##  df é o handle da função derivada da função cujo zero se pretende determinar
##  x0 é o valor inicial para a iteração
##  itmax é o número máximo de iterações admissível
##  tol é um valor dado devendo parar a iteração se a diferença de duas iteradas
##   sucessivas for inferior a tol
##  y é a última iteração calculada antes da paragem das iterações
##  niter é o número de iterações efetuadas
  x = x0-(f(x0)/df(x0));
  dif = abs(x-x0);
  niter = 1;
  while dif>=tol && niter<itmax
    y = x-f(x)/df(x);
    dif = abs(x-y);
    x = y;
    niter = niter+1;
  end
endfunction