% do the Collatz Sequence for all numbers under 1000000

array = zeros(1000000,524);
counts = zeros(1000000,1);

for i = 1:1000000
    x = i;
    count = 1;
    while x > 1
        if mod(x,2) == 0
            x = x / 2;
        else
            x = (3*x)+1;
        end
        array(i,count) = x;
        count = count+1;
    end
    counts(i,1) = count;
end


max = 0;
for i = 1:1000000
    if counts(i,1) > max
        max = counts(i,1);
        disp(i)
    end
end




