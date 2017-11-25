close all;
clear all;

% create 10 different 2-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 2);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('2-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 5-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 5);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('5-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 10-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 10);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('10-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 20-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 20);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('20-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 30-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 30);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('30-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 50-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 50);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('50-dim-syntheticData.mat', 'Xs', 'gms');

% create 10 different 100-dim synthetic data
Xs = [];
gms = cell(1);
for i = 1:10
    [X, gm] = gaussianMixtureGenerator(10, 100);
    Xs = cat(3, Xs, X);
    gms{i} = gm;
end
save('100-dim-syntheticData.mat', 'Xs', 'gms');


