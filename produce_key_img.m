function [ key_image ] = produce_key_img( pl_image )
[r,c]=size(pl_image);
key_image=zeros(r, c);
%%
h=sha_hash(pl_image); %256 bits of hash%
xinit=mod(hex2dec(h(1:8)),256)/255;
%%
xnext=imp_renyi_map(xinit);

for i=1:r*c
    key_image(i)=floor(xnext*256);
    xnext=imp_renyi_map(xnext);
end

