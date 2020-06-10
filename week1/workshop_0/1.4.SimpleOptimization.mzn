var 1..10: X;
var int: Y;

constraint X / 4 = Y;
%constraint X mod 4 = 0;

solve minimize pow(X-7, 2);
