close all;
clear all;

% Read in the synthetic dataset
load('30-dim-syntheticData.mat');

mat_dis2medoid_all = [];
mat_dis2strongestHub_all = [];
mat_avgIntraDis_all = [];
mat_count_iter = [];

for m = 1:10
    X_trans = Xs(:, :, m);
    %gm = gms(1);
    
    X = X_trans';
    
    L = [];
    L1 = 0;
    k = 10;
    count_iter = 0;
    max_iter = 50;
    
    mat_dis2medoid = zeros(10, max_iter);
    mat_dis2strongestHub = zeros(10, max_iter);
    mat_avgIntraDis = zeros(10, max_iter);
    
    while length(unique(L)) ~= k
        
        % The k-means++ initialization.
        C = X(:, 1 + round(rand * (size(X, 2) - 1)));
        L = ones(1, size(X, 2));
        for i = 2:k
            % deduct each data point with the cluster C
            D = X-C(:,L);
            D = cumsum(sqrt(dot(D,D,1)));
            if D(end) == 0, C(:,i:k) = X(:,ones(1,k-i+1)); return; end
            C(:,i) = X(:,find(rand < D/D(end),1));
            [~,L] = max(bsxfun(@minus,2*real(C'*X),dot(C,C,1).'));
        end
        t = 0;
        % The k-means algorithm.
        
        while any(L ~= L1) % start another iteration when the labels get updated
            L1 = L;
            % compute the new kernels C
            for i = 1:k, l = L==i; C(:,i) = sum(X(:,l),2)/sum(l); end
            % update the lable L of each instance in X
            [~,L] = max(bsxfun(@minus,2*real(C'*X),dot(C,C,1).'),[],1);
            
            % traverse each cluster and compute the distance to the medoid and
            % strongest hub
            for i = 1:k
                % find point in X belongs to this cluster k
                cluster = X(:, L == i)';
                centroid = C(:, i)';
                
                if size(cluster, 1) > 0
                    
                    % compute the average intraclass distance
                    dis_to_centroid = pdist2(cluster, centroid);
                    avg_intra_class_dis = sum(dis_to_centroid) / size(cluster, 1);
                    
                    % find the medoid and its distance to the centroid
                    dis_to_medoid = min(dis_to_centroid);
                    
                    % find the strongest hub and its distance to the centroid
                    id_nns = knnsearch(cluster, cluster, 'K', 10);
                    
                    id_potential_hubs = unique(id_nns);
                    occurrences = [id_potential_hubs, histc(id_nns(:), id_potential_hubs)];
                    
                    [~, I] = max(occurrences(:, 2));
                    id_strongest_hub = occurrences(I, 1);
                    
                    dis_strongest_hub = dis_to_centroid(id_strongest_hub);
                    
                    mat_dis2medoid(i, count_iter + 1) = dis_to_medoid;
                    mat_dis2strongestHub(i, count_iter + 1) = dis_strongest_hub;
                    mat_avgIntraDis(i, count_iter + 1) = avg_intra_class_dis;
                else
                    mat_dis2medoid(i, count_iter + 1) = 0.0;
                    mat_dis2strongestHub(i, count_iter + 1) = 0.0;
                    mat_avgIntraDis(i, count_iter + 1) = 0.0;
                end
                
            end
            
            count_iter = count_iter + 1;
            if count_iter >= max_iter
                break;
            end
        end
    end
    
    mat_dis2medoid_all = cat(3, mat_dis2medoid_all, mat_dis2medoid);
    mat_dis2strongestHub_all = cat(3, mat_dis2strongestHub_all, mat_dis2strongestHub);
    mat_avgIntraDis_all = cat(3, mat_avgIntraDis_all, mat_avgIntraDis);
    mat_count_iter = [mat_count_iter, count_iter];
end

save('30-dim-syntheticData-medoid-hub-dis.mat', 'mat_dis2medoid_all', ...
    'mat_dis2strongestHub_all', 'mat_avgIntraDis_all', 'mat_count_iter');