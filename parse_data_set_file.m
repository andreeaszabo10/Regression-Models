function [Y, InitialMatrix] = parse_data_set_file(file_path)

  % am deschis fisierul si am citit dimensiunile
  file = fopen(file_path, 'rt');
  size = fscanf(file, '%d', [1 2]);
  m = size(1);
  n = size(2);
  % am initializat vectorul si matricea
  Y = zeros(n);
  InitialMatrix = cell(m, n);
  % am citit pentru fiecare linie din fisier primul element in Y si restul in InitialMatrix
  for i = 1 : m
    Y(i) = fscanf(file, '%d', 1);
    for j = 1 : n
      InitialMatrix{i, j} = fscanf(file, '%s', 1);
    endfor
  endfor
  
endfunction