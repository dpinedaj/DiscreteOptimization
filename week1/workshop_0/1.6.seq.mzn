int: n;
set of int: INDEX = 1..n;
array[INDEX] of var 0..3:A;

constraint A[1]=0;
constraint A[n]=3;
constraint forall(i in 1..n-1)(A[i] + A[i+1] <= 3);
constraint forall(i in INDEX where i mod 3 = 0)(
    A[i] >= 2);

solve maximize sum(A);

output ["sum(A) = \(sum(A)) \nA = \(A)"]