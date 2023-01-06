function P = pulse( t, tau, delay )
    % будує прямокутний імпульс тривалістю - tau та з затримкою - delay
    N = length(t);
    P = zeros(1,N);
    for i=1:N
        if (delay<=t(i) && t(i)<delay+tau)
            P(i) = 1;
        end
    end
end