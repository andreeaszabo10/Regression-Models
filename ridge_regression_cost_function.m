function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  
  v = size(FeatureMatrix);
  m = v(1);
  % am scos primul element care e 0
  Theta = Theta(2 : end, :);
  result = FeatureMatrix * Theta;
  % am calculat elementele sumei si le-am pus intr-un vector
  aux = (result - Y) .^ 2;
  a = size(Theta);
  norms = zeros(a);
  % am calculat normele la patrat intr-un vector
  for i = 1 : a
    norms(i) = norm(Theta(i)) ^ 2;
  endfor
  % am calculat eroarea dupa formula
  Error = 1 / (2 * m) * sum(aux) + lambda * sum(norms);
  
endfunction