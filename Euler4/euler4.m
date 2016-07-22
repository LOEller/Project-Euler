% finds the greatest palindromic product of three digit numbers
z = 0;

start1 = 100;
start2 = 101;

while (start1 < 1000)
    for x = start2:1:1000
        if (isPalindromic(start1*x))
            if (start1*x > z)
                z = (start1*x);
            end
        end
    end
    start1 = start1 + 1;
    start2 = start2 + 1;
end

disp(z)


