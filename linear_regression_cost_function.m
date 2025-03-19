function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)

  v = size(FeatureMatrix);
  m = v(1);
  % am scos primul element care e 0
  Theta = Theta(2 : end, :);
  result = FeatureMatrix * Theta;
  % am calculat elementele sumei si le-am pus intr-un vector
  aux = (result - Y) .^ 2;
  Error = 1 / (2 * m) * sum(aux);

endfunction