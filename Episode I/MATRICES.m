% CHAPTER 2 — VECTORS, MATRICES, AND NUMERIC OPERATIONS
% This chapter covers structured vector generation, special-value matrices,
% random arrays, diagonal extraction and construction, matrix arithmetic,
% element-wise operations, plotting, and solving linear systems.
% The # comments are for this text handout. MATLAB scripts use % for comments;
% replace leading # markers with % before running the code in MATLAB.
% Invalid or intentionally problematic examples are retained as commented
% teaching examples so they can be demonstrated separately.

% 1) Generating Vectors with the Colon Operator
% Many numerical tasks require vectors whose values follow a regular pattern.
% The colon operator uses the form start:step:end.
% Example: start at 0, increase by 0.5, and stop at 10.
x = 0:0.5:10

% The step can be omitted; MATLAB uses a default step of 1.
% Example:
% x = 0:10

% 2) Generating Vectors with linspace
% Use linspace(start, end, number_of_elements) when the number of elements
% is known rather than the step size.
% Both endpoints are included in the resulting vector.
y = linspace(0, 10, 11)

% If the third argument is omitted, linspace creates 100 points by default.
% Example:
% y = linspace(0, 10)

% 3) Generating Logarithmically Spaced Vectors with logspace
% logspace(a, b, n) generates n points spaced logarithmically between 10^a and 10^b.
z = logspace(1, 3, 5)

% If n is omitted, logspace uses 50 points by default.
% Example:
% z = logspace(1, 3)

% 4) Creating Matrices Filled with Zeros
% zeros(m,n) creates an m-by-n matrix filled with zeros.
a = zeros(3, 4)

% Create a 3-by-3 zero matrix:
a = zeros(3, 3)

% If one size argument is supplied, zeros creates a square matrix:
a = zeros(3)

% Preallocating an array can be useful when its values will be assigned later.
% It can reduce repeated memory allocation in loops or iterative code.
a = zeros(3, 3)
a(1, 2) = 10

% 5) Creating Matrices Filled with Ones
% ones(m,n) creates an m-by-n matrix filled with ones.
b = ones(5, 5)

% Multiplying the result scales every element by the multiplier:
c = 2 * ones(3, 3)

% A 3-by-3 matrix whose elements are all -2:
c = -2 * ones(3)

% A 3-by-3 matrix whose elements are all pi:
c = pi * ones(3)

% 6) Creating Identity Matrices with eye
% eye(n) creates an n-by-n identity matrix: ones on the main diagonal,
% and zeros everywhere else.
c = eye(5)

% Scale every element of the identity matrix by 2:
d = 2 * eye(5)

% Add 1 to every element of the scaled identity matrix:
d = 2 * eye(5) + 1

% 7) Magic Squares
% magic(n) creates an n-by-n magic square: the sums of each row,
% each column, and the main diagonals are equal.
m = magic(5)

% 8) Random Arrays
% rand with no size arguments returns one uniformly distributed random number
% between 0 and 1.
r = rand

% Generate a 3-by-4 matrix of uniformly distributed random values:
r = rand(3, 4)

% Scale a 3-by-3 random matrix so its values lie in [0, 10):
r = 10 * rand(3)

% Generate a 30-by-1 random column vector:
r = rand(30, 1)

% 9) Setting a Random Value Range
% Clear the Command Window and Workspace:
clc; clear

% Define the lower bound, upper bound, and number of samples:
a = 3;
b = 10;
n = 5;

% Generate n random values uniformly distributed in [a, b):
x = (b - a) * rand(1, n) + a

% 10) Integer Random Values, Normal Random Values, and Permutations
% randi([low, high], m, n) generates integer values from low through high,
% inclusive, in an m-by-n matrix.
r = randi([2, 10], 3, 3)

% randn generates values from a normal distribution with mean 0 and standard deviation 1.
r = randn(1, 10)

% randperm(n) returns a random permutation of the integers 1 through n.
r = randperm(10)

% 11) Extracting and Constructing Diagonals with diag
% Create a magic square and extract its main diagonal as a column vector:
m = magic(5)
v = diag(m)

% Create a diagonal matrix from a vector:
a = [9, 8, 7, 6, 5]
m = diag(a)

% diag(a,k) places the elements of a on the k-th diagonal.
% k = 1 means the diagonal immediately above the main diagonal:
m = diag(a, 1)

% k = -1