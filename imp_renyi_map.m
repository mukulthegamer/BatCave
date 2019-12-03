function [ xnext ] = imp_renyi_map( xinit )
%A New 1D Chaotic Map and ?-Hill Climbing for Generating
%Substitution-Boxes, AMER AWAD ALZAIDI, MUSHEER AHMAD, M. N. DOJA, EESA AL SOLAMI AND M. M. SUFYAN BEG4
a=9;
b=9;
alpha=12345;

xinterim = a*xinit*(1 - xinit) + b*(1 + xinit)*tan(xinit);
xnext = xinterim * alpha - floor (xinterim*alpha);
end

