function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
% For loop to iterate over the samples.
for i = 1 : size(X,1)
  % To store the distances from the centroids.
  dist_from_centroid = zeros(K, 1);
  
  % For loop to iterate over the # of centroids.
  for j = 1 : K
    % Compute eucledian distance.
    dist_from_centroid(j) = norm((X(i, :) - centroids(j, :)));
  endfor
  
  % Pick the one with the shortest distance.
  idx(i) = find(dist_from_centroid == min(dist_from_centroid));
endfor






% =============================================================

end

