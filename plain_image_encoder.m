function [dna_image] = plain_image_encoder( pl_image )
%Takes a row of image, using chaotic function encodes the image to DNA
%sequence.
[r,c]=size(pl_image);
dna_image=zeros(r, c*4);
%%
h=sha_hash(pl_image); %256 bits of hash%
xinit=mod(hex2dec(h(1:8)),256)/255; %using 128 bits to generate initial values%
%%
xnext=tent_map(xinit);
for row_n =1:r
dna_rule=floor(8*xnext)+1;
dna_image(row_n,:)=dna_encoder(dna_rule, pl_image(row_n,:));
xnext=tent_map(xnext);
end

