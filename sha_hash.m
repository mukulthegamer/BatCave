function h = sha_hash(inp)
inp=inp(:);
% sha 256, output 256;
if ischar(inp) || islogical(inp)
    inp=uint8(inp);
else % convert everything else into uint8 format without loss of data
    inp=typecast(inp,'uint8');
end

% create hash
x=java.security.MessageDigest.getInstance('SHA-256');
x.update(inp);
h=typecast(x.digest,'uint8');
h=dec2hex(h)';
if(size(h,1))==1 
    h=[repmat('0',[1 size(h,2)]);h];
end
h=lower(h(:)');
clear x

%Will give 256 bits, but you cannot use it in once;
return
