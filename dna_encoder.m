function [ dna_row ] = dna_encoder( dna_rule, pixel_row)
%Calls the rule to encode the image to DNA

switch dna_rule
    case 1
        dna_row = rule1(pixel_row);
    case 2
        dna_row = rule2(pixel_row);
    case 3
        dna_row = rule3(pixel_row);
    case 4
        dna_row = rule4(pixel_row);
    case 5
        dna_row = rule5(pixel_row);
    case 6
        dna_row = rule6(pixel_row);
    case 7
        dna_row = rule7(pixel_row);
    case 8
        dna_row = rule8(pixel_row);


end

