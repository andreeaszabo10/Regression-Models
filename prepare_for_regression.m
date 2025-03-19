function [FeatureMatrix] = prepare_for_regression(InitialMatrix)

  % am gasit nr de linii si coloane
  size = size(InitialMatrix);
   m = size(1);
  n = size(2);
  FeatureMatrix = zeros(m, n + 1);
  % pentru fiecare element din matrice am completat matricea FeatureMatrix in functie de ce cuvant sau numar se afla in InitialMatrix
  for i = 1 : m
    for j = 1 : n
      if strcmp(InitialMatrix{i, j}, "no")
        FeatureMatrix(i, j) = 0;
      elseif strcmp(InitialMatrix{i, j}, "yes")
        FeatureMatrix(i, j) = 1;
       elseif strcmp(InitialMatrix{i, j}, "semi-furnished")
          % daca nu se afla pe ultima pozitie
          if j != n
            FeatureMatrix(i, j + 2) = FeatureMatrix(i, j + 1);
          endif
          % se afla pe ultima pozitie
          FeatureMatrix(i, j) = 1;
          FeatureMatrix(i, j + 1) = 0;
      elseif strcmp(InitialMatrix{i, j}, "unfurnished")
          % daca nu se afla pe ultima pozitie
        if j != n
          FeatureMatrix(i, j + 2)=FeatureMatrix(i, j + 1);
        endif
        FeatureMatrix(i, j) = 0;
        FeatureMatrix(i, j + 1) = 1;
    elseif strcmp(InitialMatrix{i, j}, "furnished")
       % daca nu se afla pe ultima pozitie
       if j != n
        FeatureMatrix(i, j + 2) = FeatureMatrix(i, j + 1);
      endif
       FeatureMatrix(i, j) = 0;
       FeatureMatrix(i, j + 1) = 0;
     % daca e numar
     elseif !strcmp(InitialMatrix{i, j}, "semi-furnished") & !strcmp(InitialMatrix{i, j}, "semi-furnished") & !strcmp(InitialMatrix{i, j}, "semi-furnished")
        FeatureMatrix(i, j) = str2double(InitialMatrix{i, j});
       endif
    endfor
  endfor
  % am facut aceste 2 for-uri pentru cazul in care semifurnished, furnished si unfurnished nu sunt pe ultima pozitie
  % trebuie sa am grija sa nu scriu coloane una peste alta si astfel sa se piarda
  for i = 1 : m
    for j = 1 : n
      if strcmp(InitialMatrix{i, j}, "semi-furnished")
          if j != n
            FeatureMatrix(i, j + 2) = FeatureMatrix(i, j + 1);
          endif
          FeatureMatrix(i, j) = 1;
          FeatureMatrix(i, j + 1) = 0;
      elseif strcmp(InitialMatrix{i, j}, "unfurnished")
        if j != n
          FeatureMatrix(i, j + 2) = FeatureMatrix(i, j + 1);
        endif
        FeatureMatrix(i, j) = 0;
        FeatureMatrix(i, j + 1) = 1;
    elseif strcmp(InitialMatrix{i, j}, "furnished")
       if j != n
        FeatureMatrix(i, j + 2) = FeatureMatrix(i, j + 1);
      endif
       FeatureMatrix(i, j) = 0;
       FeatureMatrix(i, j + 1) = 0;
     endif
    endfor
  endfor
  
endfunction