% -------------------------------------
% 1.1 Побудувати динамічну модель заданого 
%     періодичного сигналу
% -------------------------------------

function W = wal(index, t)
    N = floor(log2(index))+1;
    temp1 = index;
    temp2 = 0;
    W = 1;
    for i = 1:N
        temp(N+1-i) = mod (temp1,2);
        temp1 = floor(temp1/2);
    end
    for i = 1:N
        if (mod(temp(i)+temp2,2))
            W = W.*sign(sin(pi*(2^(N+1-i))*t));
        end
        temp2 = temp(i);
    end
end