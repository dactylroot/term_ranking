function res = tf_idf(X)
%% Compute TF-Inverse-Document Frequency for concepts on X
% Where X is a D-by-X matrix of D words and X observations

res = - log(sum(X>0,2) ./ size(X,2));       % IDF
res = res .* sum(X,2);                      % TF

end