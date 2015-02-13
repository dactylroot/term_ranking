function res = mi_cnd(observations)
%% Compute conditional mutual information for a set of token observations
% BROKEN DOESN'T WORK
% This is not real "Conditional Mutual Information", which is a measure
% between two variables conditioned on a third
% The idea here is to create a positive measure which captures positive 
% correlations and ignore others

[V,O] = size(observations);

% I(X;Y) = sum{x,y} p(x,y) log(p(x,y)/[p(x)p(y)])
res = zeros(V);
%tic;
for I = 1:V,
    for J = 1:V,
        for i = [1],
            for j = [1],
                joint = sum(observations(I,:)==i & observations(J,:)==j) / O;
                pI = sum(observations(I,:)==i) / O;
                pJ = sum(observations(J,:)==j) / O;
                if pI*pJ*joint ~= 0,
                    res(I,J) = res(I,J) + joint * log(joint / (pI*pJ));
                end
            end
        end
    end
end
%toc;

end