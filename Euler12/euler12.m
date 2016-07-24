% what is the smallest triangle number with 500 divisors?

% flag this soltuion for performance improvements, far too slow

triangle = 1;
triangleIndex = 1;
divisors = [];

while 1
    i = 1:triangle;
    divisors = i(rem(triangle,i) == 0);
    if length(divisors) > 500
        disp(triangle)
        break
    end
    triangleIndex = triangleIndex + 1;
    triangle = sum(1:triangleIndex);
end
















