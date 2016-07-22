clear;clc
% find the greatest product of 4 numbers in any direction from the matrix

load('number.mat');
max = 0;

% consider the rows and columns of the matrix
for i = 1:20
    % look at a row
    vector = number(i,:);
    % look at each subarray of length 4 from the row
    for x = 1:17
        subarray = vector(x:x+3);
        product = prod(subarray);
        if product > max
            max = product;
        end
    end
    
    % look at a column
    vector = number(:,i);
    % look at each subarray of length 4 from the column
    for x = 1:17
        subarray = vector(x:x+3);
        product = prod(subarray);
        if product > max
            max = product;
        end
    end
end

% consider each diagonal of the matrix (only of length 4 or more)
for i = 16:-1:-16
    vector = diag(number,i);
    % look at each subarray
    for x = 1:length(vector)-3
        subarray = vector(x:x+3);
        product = prod(subarray);
        if product > max
            max = product;
        end
    end
end

% flip the matrix left to right to get the other diagonals
number = fliplr(number);
for i = 16:-1:-16
    vector = diag(number,i);
    % look at each subarray
    for x = 1:length(vector)-3
        subarray = vector(x:x+3);
        product = prod(subarray);
        if product > max
            max = product;
        end
    end
end

disp(max)








