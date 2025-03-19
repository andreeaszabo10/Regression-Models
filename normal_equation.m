function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)

  % calculez matricea sistemului si vad daca e pozitiv definita
  A = transpose(FeatureMatrix) * FeatureMatrix;
  sizee = size(FeatureMatrix);
  if det(A) < 1 && sizee(1) != sizee(2)
    Theta = zeros(sizee(2) + 1, 1);
    return;
  endif
  sizey = size(Y);
  % pastrez elementele nenule din Y
  if sizey(2) != 1
    Y = Y(1 : 545, 1);
  endif
  % calculez Y si initializez parametri conform pseudocodului
  Y = transpose(FeatureMatrix) * Y;
  Theta = zeros(sizee(2), 1);
  r = Y - A * Theta;
  v = r;
  k = 1;
  tol1 = tol^2;
  % am folosit pseudocodul
  while k <= iter && transpose(r) * r > tol1
    t = (transpose(r) * r) / (transpose(v) * A * v);
    Theta = Theta + t * v;
    r1 = r - t * A * v;
    beta = (transpose(r1) * r1) / (transpose(r) * r);
    v = r1 + beta * v;
    r = r1;
    k = k + 1;
  endwhile
  % am adaugat elementul 0 la inceputul vectorului
  Theta = [0; Theta];
  
endfunction