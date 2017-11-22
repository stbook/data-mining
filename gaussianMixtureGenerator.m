function [ X, gm ] = gaussianMixtureGenerator(k, dim)
%generate a gaussian mixtures with k clusters, and dim dimensions
%X = num_points * dim

% number of points
num = 10000;

% lower bound and upper bound for mu(mean) and sigma(standard deviation)
lower_bound_mu = -20;
upper_bound_mu = 20;
lower_bound_sigma = 2;
upper_bound_sigma = 5;

% build the mu matrix, its dimension is k * d
mu = lower_bound_mu + (upper_bound_mu - lower_bound_mu) * rand(k, dim);

% build the sigma matrix, its dimension is d * d * k
sigma = [];
for j = 1:k
    sigma = cat(3, sigma, random_conv(dim));
end

% build P, its dimension is 1 * k
p = ones(1, k) / k;

gm = gmdistribution(mu, sigma, p);
X = random(gm, num);

end

function [ A ] = random_conv ( n )
% generate n * n dimensional covariance matrix

% lower bound and upper bound
a = 2;
b = 5;

Q = orth(a + (b - a) * rand(n));
D = diag(abs(a + (b - a) * rand(n, 1)) + 0.3);
A = Q * D * Q';

end

