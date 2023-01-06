function x = sintez(S,M,t,wal) % синтез сигналу.
    N = length(S); % довжина вектора спектру
    if (M > N) % перевірка довжини
        M = N;
    end
    n = 1 : M;
    x = 0;
    for n = 1:M % шаг вибору гармонік
        x = x + (abs(S(n)))*cos((n-1)* 2*pi*t + phase(S(n)));
        % синтез
    end
    plot(t,[x;wal]); % Побудова синтезованого та заданого сигналу.
end