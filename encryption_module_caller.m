function [ encrypted_image ] = encryption_module_caller( pl_image )
%calls the modules encoder, key image generator and operation excutor from here


dna_pl_image = plain_image_encoder( pl_image ); %done%
key_image  = produce_key_img( pl_image );           %done%
dna_key_img = plain_image_encoder(key_image);   %done%

crypt_dna_image = operation_executor(dna_key_img, dna_pl_image);

encrypted_image = crypt_image_decoder(crypt_dna_image,c,r);

end

