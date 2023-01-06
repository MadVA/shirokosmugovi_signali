function S = FT(func , M)
    N1 = length(func); % довжина вектора функції
    nn = 1:N1/2;
    if (M < N1/2)
        nn = 1:M+1;
    end
    temp = fft(func)*2/N1;
    temp(1) = temp(1)/2;
    S(nn) = temp(nn);
end