function [Y, InitialMatrix] = parse_csv_file(file_path)

  % deschid fisierul, sar peste prima linie si initializez variabile
  file = fopen(file_path, 'rt');
  InitialMatrix = cell();
  count = 0;
  line = fscanf(file, '%s', 1);
  Y = zeros(1000);
  % cat timp nu s-a ajuns la finalul fisierului citesc cate o linie si ii impart elementele in Y si InitialMatrix
  while !feof(file)
    count = count + 1;
    line = fscanf(file, '%s', 1);
    % separ linia in cuvinte
    line = strsplit(line, ',');
    Y(count) = str2num(line{1});
    for i = 1 : 12
      InitialMatrix{count, i} = line{i + 1};
    endfor
  endwhile
  
endfunction