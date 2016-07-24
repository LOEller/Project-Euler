% how many ways can you get from the top left corner of a 20x20 lattice to
% the bottom right corner, moving only down and to the right?

size = 20;
% length of max is size*2
max = '1111111111111111111111111111111111111111';
max = bin2dec(max);

paths = zeros(1,2*size);
count = 1;
for j = 1:max
    tmp = dec2bin(j)-'0';
    if length(tmp(tmp==0)) == size && length(tmp(tmp==1)) == size
        paths(count,2*size+1-length(tmp):2*size) = tmp;
        count = count + 1;
    end
end

save('paths.mat', 'paths');

% so this is totally a working solution, and it's also not the worst brute
% force solution that you could make because it has some clever-ish math,
% but it's just too slow, I left it running for about 12 hours overnight
% and it's only checked up to 359560925 which obviosuly means the program
% would never get the solution. Maybe there is a better way to anticiapte
% all of the ways in which the binary numbers could have an equal number
% of ones and zeros. 
    
% possible performance improvement: you only need to count from
% 0000000000000000000011111111111111111111
% to
% 1111111111111111111100000000000000000000
% which might actually eliminate a whole lot of the stuff you need to go
% through
    
    
    