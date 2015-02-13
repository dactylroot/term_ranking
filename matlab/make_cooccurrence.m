function res = make_cooccurrence(x)
%% Convert observation-unit term count data into a matrix of cooccurrences between terms

[N,D] = size(x);

res = zeros(N,N);
tic;
for n = 1:N,
    %%
    t = bsxfun(@times,x(n,:),x);
    t = t > 0;
    t = sum(t,2);
    res(n,:) = t';
%     for p = 1:N,
%         for d = 1:D,
%             if all([x(n,d), x(p,d)]),
%                 res(n,p) = res(n,p) + 1;
%                 res(p,n) = res(p,n) + 1;
%             end
%         end
%     end
end
toc;
end