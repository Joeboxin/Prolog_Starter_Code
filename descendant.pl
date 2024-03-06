% Declare your facts here
parent(John, Jim).
parent(John, Lisa).
parent(John, James).
parent(Bob, Mike).
parent(Bob, Ann).
parent(Tom, Sarah).
parent(David, Ike).
parent(Mark, Sam).
parent(Mark, Emma).
parent(James, David).
parent(James, Olivia).

Your goal is to define a rule called ’descendant(X,Y)’ that queries your knowledge base to verify if
X is a descendant of Y. Incorrectly spelling the rule name will result in a loss of points because the
autograder will not recognize the typo. You are expected to construct the knowledge base within the
same descendant.pl file. Do NOT construct it in a separate .txt or .csv file and import it. This will
cause issues when grading your submission.
CMPSC 360, Spring 2024, Extra Credit 2



% Complete the following horn clause
descendant(X,Y) :- parent(Y,X).
descendant(X,Y) :- parent(Y,Z), descendant(X, Z).

% Example
% ?- descendant(david, james). should return True