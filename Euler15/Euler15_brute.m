% how many ways can you get from the top left corner of a 20x20 lattice to
% the bottom right corner, moving only down and to the right?

% note this solution is far too slow to work in real life

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

    
    