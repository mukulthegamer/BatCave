function xnext = tent_map(x)
%On the Chaotic Behaviour of the Tent Map MICHAEL CRAMPIN BENEDICT HEAL
%Efficient Chaotic Tent Map-based Image Cryptosystem  Mohammed A. AlZain Osama S. Faragallah
r=1.999999;
if (x<0.5)
    xnext=x*r;
elseif(x>=0.5)
    xnext=r*(1-x);
end

