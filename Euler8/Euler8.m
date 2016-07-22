% find the greatest product of 13 consecutive digits in the 1000 digit
% number

% code to make an array from nice man online
number = textread('number.txt','%1u')';

product = 1;
% loop through all subarrays of size 13
for x = 1:1000-12
    subarray = number(1,x:x+12);
    if prod(subarray) > product
        product = prod(subarray);
    end
end

disp(product)