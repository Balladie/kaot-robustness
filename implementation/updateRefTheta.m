function [ref_theta, occ] = updateRefTheta(response_diff, init_theta, p)
    %phi = 0.3;
    eta = 0.0;
    for i = 1:size(response_diff, 3)
        eta = eta + norm(response_diff(:,:,i), 2) / 1e4;
    end
    eta = eta / size(response_diff, 3);
    
    ref_theta = init_theta / (1 + log(p*eta + 1));
    occ = false;
end