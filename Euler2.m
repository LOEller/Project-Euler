%find the sum of even fibonacci numbers below 4 million

x = 1;
y = 2;
z = 0;
sum = 0;

while (x < 4000000)
    z = y;
    y = x+y;
    x = z;
    if (mod(x,2) == 0)
        sum = sum + x;
    end
end

disp(sum)

