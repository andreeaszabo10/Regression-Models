function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)

  % am initializat variabilele
  Theta = zeros(n, 1);
  Y = Y(1 : 545, 1);
  result = FeatureMatrix * Theta;
  % am folosit cate iteratii trebuie
  for a = 1 : iter
    for j = 1 : n
      sum1 = 0;
      for i = 1 : m
        % am calculat suma din formula
        sum1 = sum1 + (result(i) - Y(i)) * FeatureMatrix(i,j);
      endfor
      % am calculat eroarea si elementelele lui Theta
      Error = 1 / m * sum1;
      Theta(j) = Theta(j) - alpha * Error;
    endfor
  endfor
  % am adaugat elementul 0
  Theta = [0; Theta];

endfunction