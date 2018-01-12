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
tp_sum = zeros(K, n); %kxn
tp_num = zeros(K, 1); %kx1
for i = 1:m
    cy = idx(i); %cy can only be one of value in K's(1/2/3)
    tp_sum(cy,:) = tp_sum(cy,:) + X(i,:);
    tp_num(cy) = tp_num(cy) + 1;%for each K
end
for j = 1:K
    centroids(j,:) = tp_sum(j,:)/tp_num(j);
end







% =============================================================


end

