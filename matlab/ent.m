function res = ent(X)
%% Compute Shannon entropy estimates over X
% Where X is a V-by-D matrix of V variables with D options

% Normalize
sums = full(sum(X,2));
sums(sums == 0) = 1;                %% Just to avoid div/0 issue; proceeding quotient remains 0
res = bsxfun(@rdivide,X,sums);

% Do calculation
res = -log(res) .* res;
res(isnan(res)) = 0;                %% Keep zero information value of 0; will be summed with others
res = sum(res,2);

end