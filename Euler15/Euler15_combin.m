% Here is the combinatorical approach to this problem, which builds off the
% thinking that I did before, which is that we have a list of 40 moves,
% each of which can a D or an R, and we just need to know hwo many ways we
% can arange them. However, we also know that to reach the bottom right
% corner of a square, we need to have the same number of Ds and Rs. Since
% there are only two options, once we've placed all of the Ds, we know
% exactly where all of the Rs will go, and vice versa. So really all we
% need to know is how many ways we can arrange the Ds or the Rs, but not
% both. In other words, how many ways can you pick 20 of these letters from
% a group of 40 of them? This is known as n choose r, which means how many
% ways you can choose r things from a group of n things. Matlab has a
% function for this.


 nchoosek(40,20) 
 % that's all there is to it