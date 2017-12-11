close all;
clear all;

%% read iris dataset
%%{
f_iris = fopen('datasets/iris_processed.data', 'r');
formatSpec = '%f,%f,%f,%f';
size_iris = [4 Inf];
data_iris = fscanf(f_iris, formatSpec, size_iris);
X = (data_iris - repmat(min(data_iris, [], 2), [1 size(data_iris, ...
    2)])) ./ repmat(max(data_iris, [], 2) - min(data_iris, [], 2), ...
    [1 size(data_iris, 2)]);
X = X';
save('iris_data.mat', 'X');
%}
%% read abalone dataset
%%{
f_abalone = fopen('datasets/abalone_processed.data', 'r');
formatSpec = '%d,%f,%f,%f,%f,%f,%f,%f,%d';
size_abalone = [9 Inf];
data_abalone = fscanf(f_abalone, formatSpec, size_abalone);
data_abalone = data_abalone(2:end, :);
X = (data_abalone - repmat(min(data_abalone, [], 2), [1 size(data_abalone, ...
    2)])) ./ repmat(max(data_abalone, [], 2) - min(data_abalone, [], 2), ...
    [1 size(data_abalone, 2)]);
X = X';
save('abalone_data.mat', 'X');
%}
%% read wpbc dataset
%%{
f_wpbc = fopen('datasets/wpbc_processed.data', 'r');
formatSpec = '%d,%d,%d,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f';
size_wpbc = [35 Inf];
data_wpbc = fscanf(f_wpbc, formatSpec, size_wpbc);
data_wpbc = data_wpbc(4:end, :);
X = (data_wpbc - repmat(min(data_wpbc, [], 2), [1 size(data_wpbc, ...
    2)])) ./ repmat(max(data_wpbc, [], 2) - min(data_wpbc, [], 2), ...
    [1 size(data_wpbc, 2)]);
X = X';
save('wpbc_data.mat', 'X');
%}
%% read sonar dataset
%%{
f_sonar = fopen('datasets/sonar_processed.data', 'r');
formatSpec = '%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%d';
size_sonar = [61 Inf];
data_sonar = fscanf(f_sonar, formatSpec, size_sonar);
data_sonar = data_sonar(1:60, :);
X = (data_sonar - repmat(min(data_sonar, [], 2), [1 size(data_sonar, ...
    2)])) ./ repmat(max(data_sonar, [], 2) - min(data_sonar, [], 2), ...
    [1 size(data_sonar, 2)]);
X = X';
save('sonar_data.mat', 'X');
%}
%% read hill dataset
f_hill = fopen('datasets/hill_processed.data', 'r');
formatSpec = '%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%d';
size_hill = [101 Inf];
data_hill = fscanf(f_hill, formatSpec, size_hill);
data_hill = data_hill(1:100, :);
X = (data_hill - repmat(min(data_hill, [], 2), [1 size(data_hill, ...
    2)])) ./ repmat(max(data_hill, [], 2) - min(data_hill, [], 2), ...
    [1 size(data_hill, 2)]);
X = X';
save('hill_data.mat', 'X');
