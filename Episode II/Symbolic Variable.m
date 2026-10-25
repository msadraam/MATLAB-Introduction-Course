%% MATLAB Symbolic Math 
% This file introduces Symbolic Math in MATLAB.
%
% IMPORTANT:
% Most commands in this file require the Symbolic Math Toolbox.
%
% How to use this file:
% 1. Run each section separately using "Run Section".
% 2. Read the comments before running the code.
% 3. Change the numbers and expressions yourself to see what happens.
%
% Main topics:
%   1. Symbolic variables
%   2. Symbolic expressions
%   3. Simplify / expand / factor
%   4. Substitute values
%   5. Solve equations
%   6. Systems of equations
%   7. Derivatives
%   8. Integrals
%   9. Limits
%  10. Symbolic matrices
%  11. Plotting symbolic functions
%  12. Practice exercises

%% 1. Creating Symbolic Variables
% In normal MATLAB calculations, variables usually contain numerical values.
% With symbolic variables, MATLAB treats the variable as a mathematical
% symbol. This allows us to perform algebra and calculus symbolically.

clear;
clc;

syms x
syms y z

% MATLAB now knows x, y, and z as symbolic variables.
x
y
z

% You can check the type of a variable using class().
class(x)

%% 2. Creating Symbolic Expressions
% We can create mathematical expressions using symbolic variables.

syms x y

f = x^2 + 3*x + 2;

% Display the expression:
f

% We can also create expressions with several variables.
g = x^2 + 2*x*y + y^2;
g

% Notice:
% x^2 means x squared.
% 2*x*y means 2xy.
% MATLAB uses * for multiplication when writing expressions explicitly.

%% 3. Simplifying Expressions
% simplify() tries to rewrite an expression into a simpler mathematical form.

syms x

expr = (x^2 - 1)/(x - 1);

simplified_expr = simplify(expr)

% Mathematically:
% (x^2 - 1)/(x - 1) = x + 1
% for x ~= 1.

%% 4. Expanding Expressions
% expand() multiplies out products and powers.

syms x

expr = (x + 2)^3;

expanded_expr = expand(expr)

% Expected mathematical result:
% x^3 + 6*x^2 + 12*x + 8

%% 5. Factoring Expressions
% factor() tries to write a polynomial as a product of simpler factors.

syms x

expr = x^2 - 5*x + 6;

factored_expr = factor(expr)

% Expected result:
% (x - 2)*(x - 3)

%% 6. Collecting Terms
% collect() groups terms according to a selected variable.

syms x y

expr = x^2 + 3*x*y + 2*x + y;

collected_expr = collect(expr, x)

% collect(expr,x) tells MATLAB:
% "Group the expression according to powers of x."

%% 7. Substituting Values
% subs() replaces a symbolic variable with a value or another expression.

syms x

f = x^2 + 3*x + 2;

% Substitute x = 2:
result = subs(f, x, 2)

% MATLAB calculates:
% 2^2 + 3(2) + 2 = 12

% We can also substitute a symbolic expression.
syms x y

f = x^2 + y;

result = subs(f, x, y + 1)

%% 8. Solving a Single Equation
% solve() can solve symbolic equations.

syms x

% Equation:
% x^2 - 5*x + 6 = 0

equation = x^2 - 5*x + 6 == 0;

solutions = solve(equation, x)

% The solutions are x = 2 and x = 3.

% IMPORTANT:
% In MATLAB:
%   =   means assignment
%   ==  means equality / equation

%% 9. Solving Equations Written as Expressions
% You can also provide the left-hand side and right-hand side separately.

syms x

solutions = solve(2*x + 5 == 17, x)

% MATLAB finds:
% x = 6

%% 10. Solving a System of Equations
% We can solve several equations simultaneously.

syms x y

eq1 = x + y == 10;
eq2 = 2*x - y == 5;

[solution_x, solution_y] = solve([eq1, eq2], [x, y])

% MATLAB solves both equations at the same time.

%% 11. Symbolic Derivatives
% diff() calculates derivatives symbolically.

syms x

f = x^3 + 2*x^2 - 5*x + 7;

first_derivative = diff(f, x)

% Mathematically:
% d/dx (x^3 + 2x^2 - 5x + 7)
% = 3x^2 + 4x - 5

%% 12. Higher-Order Derivatives
% We can calculate the second, third, or higher derivatives.

syms x

f = x^4 + 3*x^3 - x;

first = diff(f, x);
second = diff(f, x, 2);
third = diff(f, x, 3);

first
second
third

% diff(f,x,2) means the second derivative.

%% 13. Partial Derivatives
% For functions with several variables, diff() can calculate
% partial derivatives.

syms x y

f = x^2*y + sin(x*y);

df_dx = diff(f, x)
df_dy = diff(f, y)

% df_dx is the partial derivative with respect to x.
% df_dy is the partial derivative with respect to y.

%% 14. Symbolic Integration
% int() calculates indefinite integrals symbolically.

syms x

f = 3*x^2 + 4*x + 1;

F = int(f, x)

% Mathematically:
% integral(3x^2 + 4x + 1) dx
% = x^3 + 2x^2 + x + C
%
% MATLAB does not usually display the constant C.

%% 15. Definite Integrals
% We can calculate an integral between two limits.

syms x

f = x^2;

area = int(f, x, 0, 3)

% This calculates:
% integral from 0 to 3 of x^2 dx
%
% Result = 9

%% 16. Limits
% limit() calculates mathematical limits.

syms x

f = sin(x)/x;

L = limit(f, x, 0)

% Mathematically:
% lim(x->0) sin(x)/x = 1

%% 17. One-Sided Limits
% We can calculate a limit from the left or right.

syms x

f = 1/x;

right_limit = limit(f, x, 0, 'right')
left_limit  = limit(f, x, 0, 'left')

% The two limits are different because 1/x approaches
% different values from the two sides.

%% 18. Symbolic Matrix
% MATLAB can also work with matrices containing symbolic variables.

syms a b c d

A = [a b; c d]

% Calculate the determinant symbolically:
det_A = det(A)

% Calculate the inverse symbolically:
inv_A = inv(A)

%% 19. Symbolic Matrix with Numbers
% Symbolic matrices can also contain numerical values.

syms x

A = [1 x; 2 3];

det_A = det(A)

% MATLAB treats x symbolically while keeping the numerical
% values as numbers.

%% 20. Eigenvalues of a Symbolic Matrix
% eig() can calculate symbolic eigenvalues for some matrices.

syms x

A = [x 0; 0 2];

eigenvalues = eig(A)

% The eigenvalues are x and 2.

%% 21. Converting Symbolic Results to Numbers
% A symbolic result may need to be converted to a numerical value.
% vpa() is useful when you want a decimal approximation.

syms x

f = sqrt(2);

exact_value = f
decimal_value = vpa(f, 10)

% sqrt(2) is the exact symbolic answer.
% vpa() gives a decimal approximation.

%% 22. Numerical Substitution + Decimal Result
% subs() can substitute a value, and double() can convert
% a symbolic numerical result into a MATLAB double.

syms x

f = sqrt(x) + x^2;

result_symbolic = subs(f, x, 2)
result_numeric = double(result_symbolic)

%% 23. Symbolic Function
% We can create a symbolic function and use it like a mathematical function.

syms x

f(x) = x^2 + 2*x + 1;

f(3)

% MATLAB evaluates the function at x = 3.

%% 24. Plotting a Symbolic Function
% fplot() can plot a symbolic function directly.

syms x

f(x) = x^2 - 4*x + 3;

fplot(f, [-2 6]);

grid on;
xlabel('x');
ylabel('f(x)');
title('Symbolic Function: f(x) = x^2 - 4x + 3');

%% 25. Finding Critical Points
% A common calculus application is finding critical points.
% Critical points occur where the first derivative is zero
% (or where the derivative does not exist).

syms x

f = x^3 - 3*x^2 - 9*x + 5;

df = diff(f, x);

critical_points = solve(df == 0, x)

% Step 1: Find the derivative.
% Step 2: Set the derivative equal to zero.
% Step 3: Solve for x.

%% 26. Solving for an Unknown Parameter
% Symbolic Math is also useful when the unknown is a parameter.

syms a x

equation = a*x + 5 == 15;

solution_x = solve(equation, x)

% MATLAB gives x in terms of a.

%% 27. Simplifying Trigonometric Expressions
% simplify() can also simplify some trigonometric expressions.

syms x

expr = sin(x)^2 + cos(x)^2;

result = simplify(expr)

% Using the identity:
% sin^2(x) + cos^2(x) = 1

%% 28. Expanding and Simplifying a Trigonometric Expression

syms x

expr = sin(x + pi);

result = simplify(expr)

% MATLAB knows standard mathematical identities.

%% 29. Symbolic Series Expansion
% taylor() creates a Taylor series approximation.

syms x

f = exp(x);

series_approximation = taylor(f, x, 'ExpansionPoint', 0, 'Order', 5)

% This gives a polynomial approximation of exp(x)
% around x = 0.

%% 30. A Complete Example
% This example combines several Symbolic Math operations.

clear;
clc;

syms x

% Define a function
f = x^3 - 6*x^2 + 9*x + 2;

% 1. Display the function
disp('Original function:')
disp(f)

% 2. Calculate the first derivative
df = diff(f, x);

disp('First derivative:')
disp(df)

% 3. Find critical points
critical_points = solve(df == 0, x);

disp('Critical points:')
disp(critical_points)

% 4. Calculate the second derivative
d2f = diff(f, x, 2);

disp('Second derivative:')
disp(d2f)

% 5. Plot the function
figure;
fplot(f, [-1 5]);
grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - 6x^2 + 9x + 2');

%% 31. Important MATLAB Symbols and Commands
% Mathematical operation     MATLAB syntax
%
% Addition                   +
% Subtraction                -
% Multiplication             *
% Division                   /
% Power                      ^
% Equality in equations      ==
% Assignment                 =
%
% Symbolic variable          syms
% Simplification             simplify
% Expansion                  expand
% Factorization              factor
% Substitution               subs
% Equation solving           solve
% Derivative                 diff
% Integral                   int
% Limit                      limit
% Taylor series              taylor
% Determinant                det
% Inverse                    inv
% Eigenvalues                eig
% Numerical approximation    vpa / double

%% 32. PRACTICE EXERCISES
% Try to solve these exercises WITHOUT looking at the previous examples.
%
% Exercise 1:
% Create symbolic variables x and y.
% Define:
%       f = x^2 + 2*x*y + y^2
% Expand and simplify it.
%
% Exercise 2:
% Factor:
%       x^2 - 9*x + 20
%
% Exercise 3:
% Solve:
%       x^2 - 7*x + 12 = 0
%
% Exercise 4:
% Solve the system:
%       x + y = 8
%       2*x - y = 4
%
% Exercise 5:
% Find the first and second derivatives of:
%       f(x) = x^4 - 3*x^2 + 2*x
%
% Exercise 6:
% Calculate:
%       integral from 0 to pi of sin(x) dx
%
% Exercise 7:
% Calculate:
%       lim(x->0) (1 - cos(x))/x^2
%
% Exercise 8:
% Define:
%       f(x) = x^2 - 6*x + 5
% Plot it from x = 0 to x = 6.
%
% Exercise 9:
% Find the critical points of:
%       f(x) = x^3 - 3*x^2 - 9*x
%
% Exercise 10:
% Create the symbolic matrix:
%       A = [x 1; 2 x]
% Find det(A).

%% END OF FILE
% Key idea:
% Symbolic Math allows MATLAB to manipulate mathematical expressions
% instead of only calculating numerical answers.
%
% The most important commands in this lesson are:
% syms, simplify, expand, factor, subs, solve,
% diff, int, limit, taylor, det, inv, eig.
