% find the sum of all multiples of 3 or 5 below 100

total = 0

for x = 3:1:999
    if (mod(x,3) == 0) || (mod(x,5) == 0)
        total = total+x
    end
end

disp(total)

