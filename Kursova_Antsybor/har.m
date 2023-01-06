function H = har( r,m,x )
    N = length(x);
    H = zeros(1,N);
    if r == 0 && m == 0
        H = ones(1,N);
    else
        for i=1:N
            if ((m-1)/(2^r)<=x(i) && x(i)<(m-1/2)/(2^r))
                H(i) = 2^(r/2);
            end
            if (m-1/2)/(2^r)<=x(i) && x(i)<(m)/(2^r)
                H(i) = -2^(r/2);
            end
        end
    end
end