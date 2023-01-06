function x = sintez_DPF(S,M,t,wal) % синтез сигналу.
    temp = 0;
    N = length(S); % довжина вектора спектру
    if (M > N/2)
        M = floor(N/2)+1;
        temp = 1;
    end
    n = 1 : M;
    x = 0.5*(abs(S(1)));
    for n = 2:M
        x = x + (abs(S(n)))*cos((n-1)* 2*pi*t + phase(S(n)));
        % синтез
    end
    if (temp == 1)
        x = x - 0.5*(abs(S(M)))*cos((M-1)* 2*pi*t + phase(S(M)));
    end
    plot(t,[x;wal]); % Побудова синтезованого та заданого сигналу.
end