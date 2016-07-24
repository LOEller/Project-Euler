% how many ways can you get from the top left corner of a 20x20 lattice to
% the bottom right corner, moving only down and to the right?

% This solution uses the principle that if you draw out the lattice and
% label each box with the number of possible paths to get to the bottom
% right corner of that box, the number in each box equals the sum of the 
% two boxes directly above and to the left of it. Given that there are
% always i paths to get to the boxes at (i,1) or (1,i) - the boxes along 
% the top and left edges of the latice - you can quickly calculate the 
% number of paths required to reach any node on the lattice.

size = 20;
lattice = zeros(size,size);

for i = 1:size
    lattice(1,:) = 2:size+1;
    lattice(:,1) = 2:size+1;
end

for i = 2:size
    for j = 2:size
        lattice(i,j) = lattice(i-1,j) + lattice(i,j-1);
    end
end

disp(lattice(size,size))