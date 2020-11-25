function [x,nit] = biss (f,a,b,tol,maxit)
##  aplicar o método da bisseção na aproximação do zero de uma função dada
##
##  condições do método da bisseção:
##  [a,b] é um intervalo onde está uma raiz (podemos concluir que existe aplicando
##   um corolário do Teorema de Bolzano --> Seja f uma função contínua no 
##  intervalo [a,b]. Se f(a)*f(b) < 0, ent˜ao existe (pelo menos) um ponto c 
##  pertencente a ]a,b[ tal que f(c) = 0.)
##  O código só funciona se as condições estiverem garantidas.
##
##  f é o handle da função cujo zero se pretende determinar
##  a é o extremo esquerdo do intervalo que contém a raiz
##  b é o extremo direito do intervalo que contém a raiz
##  tol é um valor dado devendo parar a iteração quando o ponto médio do intervalo
##   estiver a uma distância de qualquer dos extremos inferior a tol
##  maxit é o máximo de iterações permitido
##  x é o último ponto médio calculado antes da paragem das iterações
##  nit é o número de iterações efetuadas
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
