function J = computeCost(X, y, theta)

% before calling the function you need to extract features and output from data to form vectors and do following 
% m = length(X) % number of training examples
% X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
% theta = zeros(2, 1); % initialize fitting parameters (can initialize to any starting parameter)
% iterations = 1500; % (can be set to your choice)
% alpha = 0.01; % this is learning rate, choose wisely.

% FUNCTION STARTS: COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
temp = (X * theta) - y;
for i=1:m
    J = J + (temp(i))^2;
end

J = J / (2 * length(X));

% =========================================================================

end
