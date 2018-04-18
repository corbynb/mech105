mantissa=input('Input the number of bits for the mantissa');
exponent=input('Input the number of bits for the exponent');
bias=(((2^exponent)-1)/2);
roundbias=floor(bias);
base=1+(2^(-mantissa));
smallest_number=base*(2^(1-roundbias));
disp(smallest_number)