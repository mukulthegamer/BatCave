function [ crypt_dna_image ] = operation_executor( dna_key_image, dna_pl_image  )
%Selects XOR, ADD or SUBTRACT operation to be carried out on DNA images
[c,r] = size(dna_pl_image);
crypt_dna_image = zeros(c,r);

h=sha_hash(pl_image); %256 bits of hash%
xinit=mod(hex2dec(h(1:8)),256)/255;

xnext=tent_map(xinit);


end

