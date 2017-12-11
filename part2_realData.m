close all;
clear all;

% dim = 4;
% k = 3;
% dataset_name = 'iris';
% eps = 0.2;

% dim = 8;
% k = 8;
% dataset_name = 'abalone';
% eps = 0.2;

% dim = 32;
% k = 2;
% dataset_name = 'wpbc';
% eps = 1;

% dim = 60;
% k = 2;
% dataset_name = 'sonar';
% eps = 2;

dim = 100;
k = 2;
dataset_name = 'hill';
eps = 0.9;

load(sprintf('%s_data.mat', dataset_name));

%% find eps
%{
[id_nns, D] = knnsearch(X, X, 'K', 10);

figure(1);
histogram(D(:, 10));
title(sprintf('Distance to 10th NN, d = %d', dim));
xlabel('distance');                  
ylabel('num of points');
print('-f1', sprintf('part2-realData/dim%d_%s_dis2NN_hist', dim, dataset_name), '-dpng');
close all;
%}

%%
% find DSCAN outliers' ids
[clustLabel, varType] = dbscan(X, 10, eps);

% compute hubness score of each point
id_nns = knnsearch(X, X, 'K', 10);

id_potential_hubs = unique(id_nns);
occurrences = [id_potential_hubs, histc(id_nns(:), id_potential_hubs)];

if size(id_potential_hubs, 1) ~= size(X, 1)
    printf('size is different !!!!!!\n')
end

% compute average and std of all the hubness scores
avg_hub = mean(occurrences(:, 2));
std_hub = std(occurrences(:, 2));

% find outlier's hubness score
outliers = [];
for i = 1:size(varType, 1)
    if varType(i) == -1
        outliers = [outliers, i];
    end
end

outliers_hub = occurrences(outliers, 2);
sum_smallerThanElse = sum(outliers_hub < (avg_hub - 2 * std_hub));

sprintf('%d outliers are detected from %d points.\n', size(outliers, 2), ...
    size(X, 1))
sprintf('%d outlier hubness satisfies the requirements.\n', sum_smallerThanElse)
