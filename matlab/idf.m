function res = idf(X)
%% Compute Inverse-Document Frequency for concepts on X
% Where X is a C-by-X matrix of C concepts and X observations

res = - log(sum(X>0,2) ./ size(X,2));


end