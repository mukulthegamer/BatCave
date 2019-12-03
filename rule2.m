function [dna_row] = rule2(pixel_row)

dna_row = '';
row_len = length(pixel_row);
%%
for i = 1:row_len
pixel_val = dec2bin(pixel_row(i), 8);

if pixel_val(1) == '0' && pixel_val(2) == '0'
    dna_row = [dna_row, 'A'];
elseif pixel_val(1) == '0' && pixel_val(2) == '1'
    dna_row = [dna_row, 'C'];
elseif pixel_val(1) == '1' && pixel_val(2) == '0'
    dna_row = [dna_row, 'G'];
else
    dna_row = [dna_row, 'T'];
end;
%%
if pixel_val(3) == '0' && pixel_val(4) == '0'
    dna_row = [dna_row, 'A'];
elseif pixel_val(3) == '0' && pixel_val(4) == '1'
    dna_row = [dna_row, 'C'];
elseif pixel_val(3) == '1' && pixel_val(4) == '0'
    dna_row = [dna_row, 'G'];
else
    dna_row = [dna_row, 'T'];
end;
%%
if pixel_val(5) == '0' && pixel_val(6) == '0'
    dna_row = [dna_row, 'A'];
elseif pixel_val(5) == '0' && pixel_val(6) == '1'
    dna_row = [dna_row, 'C'];
elseif pixel_val(5) == '1' && pixel_val(6) == '0'
    dna_row = [dna_row, 'G'];
else
    dna_row = [dna_row, 'T'];
end;
%%
if pixel_val(7) == '0' && pixel_val(8) == '0'
    dna_row = [dna_row, 'A'];
elseif pixel_val(7) == '0' && pixel_val(8) == '1'
    dna_row = [dna_row, 'C'];
elseif pixel_val(7) == '1' && pixel_val(8) == '0'
    dna_row = [dna_row, 'G'];
else
    dna_row = [dna_row, 'T'];
end;
end;