close all;
clear all;

% generate synthetic data
%g = gmdistribution([1;10],2,[.6;.4])
%hist(random(g,1000),40)

%{
Mu = [1 2;-3 -5];
Sigma = cat(3,[2 0.2;0.2 .5],[1 0.6;0.6 0.8]);
P = ones(1,2)/2;
gm = gmdistribution(Mu,Sigma,P);

gmPDF = @(x,y)pdf(gm,[x y]);

figure;
ezcontour(gmPDF,[-10 10],[-10 10]);
hold on
title('GMM - PDF Contours');

X = random(gm,10000);
scatter(X(:,1),X(:,2),10,'.')
%}

%[X, gm] = gaussianMixtureGenerator(10, 100);

%{
gmPDF = @(x,y)pdf(gm,[x y]);
figure;
ezcontour(gmPDF,[-20 20],[-20 20]);
hold on
title('GMM - PDF Contours');
scatter(X(:,1),X(:,2),20,'.')
%}



%%