function [ res ] = Thres_21_LRJS(x, tau)
        v = sqrt(sum(x.^2));
        v(v==0) = 1;
        % Weighted group sparsity
        res =  max(1 - (tau.*(1./(abs(v)+eps))./ v), 0).* x;  
      %  res = repmat( max(1 - tau.*(1./(abs(v)+eps)) ./ v, 0), 1, 1, size(x,3) ) .* x;  
        % Group sparsity (without weighted)
%      res = repmat( max(1 - tau ./ v, 0), 1, 1, size(x,3) ) .* x;
end