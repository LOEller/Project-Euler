% what is the least common multiple of all the numbers from 1 to 20

for x = 20:20:factorial(20)
    if (isDivisible(x))
        break;
    end
end

disp(x)