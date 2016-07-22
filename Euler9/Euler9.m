% find the product a*b*c of the pythagorean triple for which a+b+c = 1000

% using Dickson's method for generating all triples:

%{
1. choose r, an even number
2. choose s and t, factor pairs of (r^2) / 2
3. a=r+s, b=r+t, c=r+s+t
%}

for r = 2:2:1000
    z = (r^2) / 2;
    i = 1:z;
    divisors = i(rem(z,i) == 0);
    divisors_n = length(divisors);
    s_index = 1;
    t_index = divisors_n;
    for x = 1:(divisors_n / 2)
        s = divisors(s_index);
        t = divisors(t_index);
        a = r + s;
        b = r + t;
        c = r + s + t;
        if a + b + c == 1000
            break
        end
        s_index = s_index + 1;
        t_index = t_index - 1;
    end
    if a + b + c == 1000
        break
    end
end

disp(a*b*c)

% TOTAL FIRST TRY 




