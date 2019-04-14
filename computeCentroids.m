function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for k = 1:K
  number_of_points_assigned = 0;
  column_sums = zeros(1, size(X, 2));
  
  for c = 1:size(idx,1)
    
    if (idx(c) == k)
      number_of_points_assigned = number_of_points_assigned + 1;
      
      for j = 1:size(column_sums, 2)
        column_sums(j) += X([c], j);
      endfor
    endif
  endfor
  
  if (number_of_points_assigned != 0)
    column_sums = column_sums * (1 / number_of_points_assigned);
    centroids([k], :) = column_sums;
    number_of_points_assigned = 0,
    column_sums = zeros(1, size(X, 2));
  endif
  
endfor







% =============================================================


end

