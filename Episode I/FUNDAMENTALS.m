% CHAPTER 1 — MATLAB FUNDAMENTALS
% This file covers introductory MATLAB topics:
% variables, naming rules, case sensitivity, arithmetic operators,
% clearing the workspace, constants, mathematical functions,
% vectors and matrices, and common mistakes.
%
% Note: Lines beginning with % are explanatory comments in this text version.
% MATLAB itself uses % for comments, not #. Replace # with % if you want
% to run this file directly as a MATLAB script.
% Some invalid examples are intentionally shown as commented lines so they
% can be discussed during teaching without stopping the whole script.

% 1) Defining Variables and Assigning Values
% The = operator assigns the value on the right to the variable on the left.
a = 5;

% Define variable b with the value 2.
b = 2;

% 2) Variable Names and Assignments
% A variable name must begin with a letter. It may contain letters, digits,
% and underscores.
% Valid example: assign the value of b to c.
c = b;

% Common error: MATLAB reports an error if e has not been defined.
% Remove the comment marker from the next line to demonstrate the error:
% d = e

% 3) Case Sensitivity
% MATLAB distinguishes between uppercase and lowercase letters.
% Therefore, d and D are two different variables.
d = 4;
D = 5;

% Invalid example: a variable name cannot begin with a number.
% Remove the comment marker from the next line to demonstrate the error:
% 2a = 10

% Valid example: a variable name may contain a number if it begins with a letter.
a2 = 10;

% 4) Basic Arithmetic Operators
% Addition:
3 + 5

% Store the result of an expression in a variable:
result = 2 + 5;

% Another addition example:
5 + 5

% Subtraction:
10 - 4

% Multiplication:
3 * 6

% Ordinary division:
12 / 3

% The backslash operator is used to solve linear systems in MATLAB.
% This scalar example produces a numeric result; its common use can be explained separately.
3 \ 12

% Exponentiation:
2^5

% 5) Operator Precedence and Parentheses
% Parentheses make MATLAB evaluate the expression inside them first:
2 * (5 + 6)

% Multiplication has higher precedence than addition:
2 + 3 * 5

% Exponentiation has higher precedence than multiplication:
3 * 2^2

% 6) Clearing the Command Window and Variables
% clc clears the displayed text in the Command Window,
% but it does not remove variables from the Workspace.
clc

% Remove variable a from the Workspace:
clear a

% Remove variables a, b, and c from the Workspace:
clear a b c

% Remove all variables from the Workspace:
clear

% 7) Using Variables in Calculations
% Define variable a:
a = 1;

% Use the value of a in a new expression:
b = 5 + a;

% Error example: if d has not been defined or has been cleared,
% MATLAB reports an undefined-variable error.
% Remove the comment marker from the next line to demonstrate the error:
% c = 4 + d

% 8) Constants and Special Values in MATLAB
% By default, pi represents the mathematical constant pi:
pi

% By default, i and j represent the imaginary unit,
% unless they have previously been assigned other values.
i
j

% eps represents the distance between 1 and the next larger floating-point number:
eps

% Teaching example: pi can be overwritten as a variable,
% but doing so masks its default value in the current Workspace.
pi = 3;

% pi now has the value 3:
a = pi + 3;

% Remove the overwritten variable pi:
clear pi

% 9) Mathematical Functions
% sin accepts an angle in radians:
sin(pi/2)

% sind accepts an angle in degrees:
sind(90)

% cos accepts an angle in radians:
cos(pi)

% tan accepts an angle in radians:
tan(pi/4)

% log calculates the natural logarithm (base e):
log(3)

% log10 calculates the base-10 logarithm:
log10(10)

% log2 calculates the base-2 logarithm:
log2(8)

% 10) Defining Scalars, Vectors, and Matrices
% Define a single-element array:
a = [5];

% Define a row vector; elements can be separated by commas or spaces:
b = [2, 4, 6];

% Another row-vector example:
c = [2, 4, 6];

% Define a 3-by-3 matrix:
% Commas separate elements in a row, and semicolons separate rows.
d = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% 11) Clearing and Defining Arrays in the Editor
% clear removes all variables from the Workspace:
clear

% Define a single-element array:
d = [3];

% Define a three-element row vector:
e = [5, 3, 8];

% Define a 2-by-2 matrix:
% The first row contains 2 and 4; the second row contains 1 and 6.
f = [2, 4; 1, 6];

% 12) Classroom Exercise — Identifying Valid and Invalid Commands
% This section is intended for deliberately demonstrating errors.
% The examples are shown as comments so they do not interrupt the script.
% Ask students to predict the result of each line, then test them one at a time.

% Error 1: The variable name starts with a number.
% 2a = 10

% Error 2: Using a variable that has not been defined.
% x = variable_that_does_not_exist

% Error 3: Variable names are case-sensitive.
% Run d = 4 and D = 5, then compare the values:
% d
% D

% Exercise: Which variable assignment is valid?
% a2 = 10
% 2a = 10

% END OF CHAPTER 1
% Suggested teaching sequence:
% 1. Explain the concept.
% 2. Run the valid command.
% 3. Uncomment the error example and read MATLAB's error message.
% 4. Comment the line again before continuing with the rest of the examples.