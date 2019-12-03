function [ otpt ] = md5_hash( inp )
%MD5, output 0>=n<=1
d=hex2dec(inp);
bi=dec2bin(d,128);
p1=bin2dec(bi(1:8));
p2=bin2dec(bi(9:16));
p3=bin2dec(bi(17:24));
p4=bin2dec(bi(25:32));
otpt=mod( (bitxor( bitxor( bitxor(p1, p2), p3), p4)), 256) / 255;
end

