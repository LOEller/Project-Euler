% program finds the sum of all the primes below n

n = 20000000;

% make a matrix of all ones, indexed by the numbers 2...n
matrix = ones(n,2);
for i = 1:length(matrix)
    matrix(i,1) = i;
end
matrix(1,:) = 0;

% sieve of Eratosthenes algorithm, remaining 1s indicate prime numbers
for i = 2:sqrt(n)
    if (matrix(i,2) == 1)
        z = 0;
        while ((i^2)+(z*i) <= n)
            matrix((i^2)+(z*i),2) = 0;
            z = z + 1;
        end
    end 
end

% get vector of only primes 
primes = matrix(:,1) .* matrix(:,2);

% sum
sum = sum(primes);










