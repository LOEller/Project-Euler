%What is the largest prime factor of 600851475143

number = 600851475143
prime_factor = 1

for x = 5:1:600851475143
    if (isPrime(x) && mod(number,x) == 0)
        prime_factor = x
    end
end

disp(prime_factor)