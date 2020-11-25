function [x,nit] = biss (f,a,b,tol,maxit)
##  aplicar o m�todo da bisse��o na aproxima��o do zero de uma fun��o dada
##
##  condi��es do m�todo da bisse��o:
##  [a,b] � um intervalo onde est� uma raiz (podemos concluir que existe aplicando
##   um corol�rio do Teorema de Bolzano --> Seja f uma fun��o cont�nua no 
##  intervalo [a,b]. Se f(a)*f(b) < 0, ent�ao existe (pelo menos) um ponto c 
##  pertencente a ]a,b[ tal que f(c) = 0.)
##  O c�digo s� funciona se as condi��es estiverem garantidas.
##
##  f � o handle da fun��o cujo zero se pretende determinar
##  a � o extremo esquerdo do intervalo que cont�m a raiz
##  b � o extremo direito do intervalo que cont�m a raiz
##  tol � um valor dado devendo parar a itera��o quando o ponto m�dio do intervalo
##   estiver a uma dist�ncia de qualquer dos extremos inferior a tol
##  maxit � o m�ximo de itera��es permitido
##  x � o �ltimo ponto m�dio calculado antes da paragem das itera��es
##  nit � o n�mero de itera��es efetuadas
  x = (a+b)/2;
  nit = 0;
  while abs(x-a)>=tol && abs(x-b)>=tol && nit<maxit
    if f(a)*f(x)<0 
      b = x;
    else
      a = x;
    end
    x = (a+b)/2;
    nit = nit+1;
  end
endfunction
