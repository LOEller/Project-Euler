ID = 1;
x = 3;

while (ID < 10001)
    if (isPrime(x))
        ID = ID + 1;
    end
    x = x + 1;
end

disp(x-1)

% it is astounding how much time you can save by only checking up
% to rad(n) 

