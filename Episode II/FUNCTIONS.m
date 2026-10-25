% CHAPTER 3 — MATLAB FUNCTIONS AND NUMERICAL OPERATIONS
%
% This chapter introduces MATLAB functions, input and output arguments,
% rounding operations, numerical precision, data types, sorting,
% maximum and minimum values, mean, sum, median, variance, and standard deviation.

% 1) General Structure of MATLAB Functions
% MATLAB functions can receive input arguments and return output arguments.
% General syntax:
% [output1, output2, ...] = function_name(input1, input2, ...)

% Example 1: Calculating the Sine of an Angle
% Define x as pi/2 radians, then calculate its sine using the sin function.
x=pi/2
[y]=sin(x)

% Example 2: Finding the Maximum Value and Its Index
% Create a vector, find its maximum value, and then find the position
% of the maximum value in the vector.
v=[1,2,3]
maxv=max(v)
[maxv,maxindex]=max(v)

% Example 3: Generating Random Vectors and Comparing Values
% Generate two random row vectors containing three integers between 1 and 10.
% The final command attempts to find the element-wise maximum of v and z.
% Note: The variables v and z must exist before this command can run.
a=randi([1,10],1,3)
b=randi([1,10],1,3)
c=max(v,z)

% 2) Numerical Functions and Saving Data
% save stores variables in a MAT-file.
% load retrieves variables from a MAT-file.
% These commands use the filename mat1.mat.
save('mat1.mat')
load('mat1.mat')

% 3) Rounding Decimal Numbers
% The following commands clear the Command Window, Workspace,
% and open figure windows before performing rounding operations.
% fix rounds toward zero.
% ceil rounds toward positive infinity.
% floor rounds toward negative infinity.
% round rounds to the nearest integer by default.
% round(a,4,'decimal') rounds a to four decimal places.
% Run these commands in the MATLAB Editor.

clc;clear;close all
a=2.4;
fix_a=fix(a)
ceil_a=ceil(a)
floor_a=floor(a)
round_a=round(a)
round_a=round(a,4,'decimal')

% 4) Displaying Numerical Precision
% MATLAB provides different display formats for numerical values.
% format short displays approximately four decimal places for typical values.
% format long displays approximately 15 digits for double-precision values.
% These commands change how numbers are displayed, not their stored precision.
% Test the display formats using pi.

format short    #4
format long     #14

% Test the display format:
pi

% 5) Double and Single Precision
% MATLAB uses double precision by default for most numerical calculations.
% A double-precision value typically occupies 8 bytes.
% Single precision typically occupies 4 bytes and uses less memory.
% The following commands convert pi from double precision to single precision.

a=pi
b=single(a)

% 6) Sorting Matrices
% Create a 5-by-5 magic square.
% sort(M) sorts the elements of each column in ascending order.
% sort(M,2) sorts the elements of each row in ascending order.
% sort(M,2,'descent') attempts to sort each row in descending order.
% Note: MATLAB's valid direction argument is 'descend', not 'descent'.
% sortrows(M,1) sorts the rows according to the values in the first column.

M=magic(5)

a=sort(M)

b=sort(M,2)

c=sort(M,2,'descent')

a=sortrows(M,1)

% 7) Finding Maximum Values in Vectors
% Clear the Workspace and Command Window.
% Generate a random permutation of the integers from 1 to 10.
% Then find the maximum value in the resulting vector.

clear
clc 

v=randperm(10) 
max_v=max(v)

% 8) Finding Maximum Values in Matrices
% Create a 3-by-3 magic square.
% max(b) returns the maximum value of each column.
% When two outputs are requested, max also returns the index of each maximum.
% max(b,4) compares every element of b with 4 and returns the larger value.
% max(b,x) compares corresponding elements of b and x.
% max(b,[],2) returns the maximum value of each row.
% The variables used in each command must have compatible dimensions.

b=magic(3)
max_b=max(b)
[max_b,max_p]=max(b)

c=max(b,4)

c=max(b,x)

D=max(b,[],2)

% 9) Finding Minimum Values in Matrices
% Clear the Workspace and Command Window.
% Create a 5-by-5 magic square.
% min(m) returns the minimum value of each column.
% min(m,[],2) returns the minimum value of each row.

clear
clc

m=magic(5)

min_m=min(m)

% Calculate the minimum values row by row:
min_m=min(m,[],2)

% 10) Comparing Values and Finding Minimum Indices
% min(m,x) compares corresponding elements of m and x.
% Both arrays must have compatible dimensions.
% min(m) returns the minimum value of each column.
% When two outputs are requested, MATLAB also returns the index
% of the minimum value along the operating dimension.

e=min(m,x)

[min_value,min_index]=min(m)

% 11) Calculating the Mean of Arrays
% mean calculates the arithmetic average.
% For a column vector, mean returns the average of its elements.
% For a multidimensional array, mean operates along the first dimension
% whose size is not equal to 1, unless a dimension is specified.
% mean(m,2) calculates the mean of each row.

a=rand(5,1,4)
mean_a=mean(a)

m=rand(10,3,4)
mean_m=mean(m)

% Calculate the mean along the second dimension:
mean_m=mean(m,2)

% 12) Calculating the Sum of Vectors and Matrices
% sum(v) adds the elements of a vector.
% sum(m) calculates the sum of each column of a matrix.
% sum(m,2) calculates the sum of each row.

sum_v=sum(v)

sum_m=sum(m)
sum_m=sum(m,2)

% 13) Calculating Sums and Means of a Magic Square
% Create a 5-by-5 magic square.
% Calculate the sum of each column and then the sum of each row.
% Finally, calculate the mean of each column.

n=magic(5)
sum_n=sum(n)
sum_n=sum(n,2)
mean_n=mean(n)

% 14) Calculating the Median
% median returns the middle value of sorted data.
% If the number of elements is even, it returns the average
% of the two middle values.
% The vector v must already be defined.

a=median(v)

% Sort the elements of v in ascending order:
sort(v)

% 15) Calculating the Variance
% var calculates the variance of the elements in v.
% By default, MATLAB uses normalization by N-1 for a vector,
% where N is the number of observations.

var(v)

% 16) Calculating the Standard Deviation
% std calculates the standard deviation of numerical data.
% Standard deviation is the square root of the variance.
% By default, MATLAB uses normalization by N-1 for a vector.

std(v)

% END OF CHAPTER 3