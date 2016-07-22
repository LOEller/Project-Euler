function [ palindromic ] = isPalindromic( number )
% determines whether an input integer is palindromic
    palindromic = 0;
    A = intToArray(number);
    B = fliplr(A);
    
    if (A==B)
        palindromic = 1;
    end
end
    
    
    


