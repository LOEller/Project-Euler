function [ divisibility ] = isDivisible( number )
% it determines if a number is a multiple of the numbers 1-20
    divisibility = 1;
    for x = 20:-1:1
        if (mod(number,x) ~= 0)
            divisibility = 0;
            break;
        end
    end
end

