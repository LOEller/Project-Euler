function [ array ] = intToArray( int )
% It takes any integer, and returns an array containing all the digits
%of that integer
    digits = ceil(log10(int));

    array = zeros(1,digits);

    modulo = 10;
    divisor = 1;
    for x = 1:1:digits
        array(1,x) = floor((mod(int,modulo)) / divisor);
        modulo = modulo*10;
        divisor = divisor*10;
    end
end

