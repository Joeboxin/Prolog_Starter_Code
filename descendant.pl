% Declare your facts here
parent('John', 'Jim').
parent('John', 'Lisa').
parent('John', 'James').
parent('Bob', 'Mike').
parent('Bob', 'Ann').
parent('Tom', 'Sarah').
parent('David', 'Ike').
parent('Mark', 'Sam').
parent('Mark', 'Emma').
parent('James', 'David').
parent('James', 'Olivia').


% Complete the following horn clause
descendant(X,Y) :- parent(Y,X).
descendant(X,Y) :- parent(Y,Z), descendant(X, Z).

% Example
% ?- descendant(david, james). should return True