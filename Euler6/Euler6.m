% find the difference between the sum of the squares of the first 100
% natural numbers and the square of the sum

sum = 0;
square = 0;

for x = 1:1:100
    square = square + x;
end
square = square*square;

for x = 1:1:100
    sum = sum + (x^2);
end

disp(square-sum)

