function res = mi(observations)
%% Compute mutual information for a set of token observations
% observations - a binary V-by-D matrix of V tokens within D observations

[V,N] = size(observations);

% I(X;Y) = sum_{x,y} p(x,y) log(p(x,y)/[p(x)p(y)])
res = zeros(V);
%tic;
for I = 1:V,
    for J = 1:V,
        for i = [0,1],      % to generalize, use `unique(observations)`
            for j = [0,1],
                joint = sum(observations(I,:)==i & observations(J,:)==j) / N;
                pI = sum(observations(I,:)==i) / N;
                pJ = sum(observations(J,:)==j) / N;
                if pI*pJ*joint ~= 0,
                    res(I,J) = res(I,J) + joint * log(joint / (pI*pJ));
                end
            end
        end
    end
end
%toc;

end