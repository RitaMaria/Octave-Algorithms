function [y,niter] = metnewton (f,df,x0,itmax,tol)
##  aplicar o m�todo de Newton na aproxima��o do zero de uma fun��o dada
##  
##  condi��es do m�todo de Newton:
##  f pertence a C^2([a,b])
##  f(a)*f(b)<0
##  f'(x) diferente de 0, para todo o x pertencente a [a,b]
##  f''(x) >= 0 ou f''(x) <= 0, em [a,b]
##  escolhe-se x0 pertencente a [a,b] tal que f(x0)*f''(x0)>0
##  O c�digo s� funciona se as condi��es estiverem garantidas.
##  
##  f � o handle da fun��o cujo zero se pretende determinar
##  df � o handle da fun��o derivada da fun��o cujo zero se pretende determinar
##  x0 � o valor inicial para a itera��o
##  itmax � o n�mero m�ximo de itera��es admiss�vel
##  tol � um valor dado devendo parar a itera��o se a diferen�a de duas iteradas
##   sucessivas for inferior a tol
##  y � a �ltima itera��o calculada antes da paragem das itera��es
##  niter � o n�mero de itera��es efetuadas
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