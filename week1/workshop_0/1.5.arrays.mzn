int: n=500;
array[1..n] of var 0..9:A;

constraint sum(A) = product(A);
constraint forall(i in 0..n-1)(A[i] <= A[i+1]);
constraint forall(a in A)(a != 0);

solve satisfy;