function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)

  v = size(FeatureMatrix);
  m = v(1);
  % am scos primul element care e 0
  Theta = Theta(2 : end, :);
  result = FeatureMatrix * Theta;
  % am calculat elementele sumei si le-am pus intr-un vector
  aux = (Y - result) .^ 2;
  a = size(Theta);
  norms = zeros(a);
  % am calculat normele elementelor din theta si le am inmultit cu lambda
  for i = 1 : a
    norms(i) = norm(Theta(i)) * lambda;
  endfor
  % a calculat eroarea
  aux = aux + sum(norms);
  Error = 1 / m * sum(aux);

endfunction