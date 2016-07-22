function [ primality ] = isPrime(n)
%my first MATLAB program, determines if input is prime
    primality = 1;
    for i = 2:1:sqrt(n)
        if eq(mod(n, i), 0)
            primality = 0;
        end
    end
end

