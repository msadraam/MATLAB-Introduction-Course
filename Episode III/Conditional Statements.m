% MATLAB Conditional Statements, Logical Operators, Loops, and Array Searching
% This file introduces comparisons, logical expressions, if/elseif/else, find,
% for and while loops, loop control (break/continue), and switch-case.
% Each section has a short explanation before its code.

% Explanation: Compare two values using the greater-than and less-than operators.
a = 10;
b = 5;

a > b
%
% Explanation: Check whether a comparison is false using the less-than operator.
a < b
%
% Explanation: Assign a value to a variable and test equality using ==.
x = 5;       % Assign a value
x == 5       % Check equality
%
% Explanation: Use relational operators to create logical results and display them.
x = 12;

a = x > 10;
b = x < 20;
c = x == 12;
d = x ~= 12;

disp(a)
disp(b)
disp(c)
disp(d)
%
% Explanation: Combine two conditions with AND (&) to check whether a value is within a range.
x = 15;

result = (x >= 10) & (x <= 20);

disp(result)
%
% Explanation: Combine conditions with OR (|) to check whether a value is outside a range.
x = 25;

result = (x < 10) | (x > 20);

disp(result)
%
% Explanation: Use NOT (~) to reverse a logical condition.
x = 5;

result = ~(x > 10);

disp(result)
%
% Explanation: Use if with AND (&&) to display a message when a value is within a range.
x = 15;

if (x > 10) && (x < 20)
    disp('Number is between 10 and 20')
end
%
% Explanation: Use find to locate the indices of array elements greater than 15.
A = [10 25 7 30 15];

idx = find(A > 15);

disp(idx)
%
% Explanation: Use find to get both the indices and values of matching array elements.
A = [10 25 7 30 15];

idx = find(A > 15);
values = A(idx);

disp(idx)
disp(values)
%
% Explanation: Find array elements within an inclusive range and display their indices and values.
A = [5 12 18 25 30 8];

idx = find((A >= 10) & (A <= 25));

disp(idx)
disp(A(idx))
%
% Explanation: Use find on a matrix to get the row and column positions of matching elements.
A = [1 8 3;
     9 2 7;
     4 6 5];

[row, col] = find(A > 7);

disp(row)
disp(col)
%
% Explanation: Use an if statement to check whether a number is positive; this value is negative.
x = -5;

if x > 0
    disp('Positive number')
end
%
% Explanation: Use an if statement to check whether a number is positive; this value is positive.
x = 5;

if x > 0
    disp('Positive number')
end
%
% Explanation: Use if-else and mod to determine whether a number is even or odd.
x = 7;

if mod(x, 2) == 0
    disp('Even number')
else
    disp('Odd number')
end
%
% Explanation: Classify a grade using an if-elseif-else chain.
grade = 16.5;

if grade >= 18
    disp('Excellent')
elseif grade >= 15
    disp('Good')
elseif grade >= 10
    disp('Pass')
else
    disp('Fail')
end
%
% Explanation: Demonstrate why conditions in an elseif chain should be ordered from highest to lowest threshold.
grade = 19;

if grade >= 10
    disp('Pass')
elseif grade >= 15
    disp('Good')
elseif grade >= 18
    disp('Excellent')
end
%
% Explanation: Check whether a grade is outside the valid range of 0 to 20 using OR (||).
grade = 22;

if grade < 0 || grade > 20
    disp('Invalid grade')
else
    disp('Valid grade')
end
%
% Explanation: Display the numbers 1 through 10 individually without a loop.
disp(1)
disp(2)
disp(3)
disp(4)
disp(5)
disp(6)
disp(7)
disp(8)
disp(9)
disp(10)
%
% Explanation: Use a for loop to display numbers from 1 to 5.
for i = 1:5
    disp(i)
end
%
% Explanation: Use a for loop with a step of 2 to display even numbers from 2 to 10.
for i = 2:2:10
    disp(i)
end
%
% Explanation: Use a for loop with a negative step to count down from 10 to 2.
for i = 10:-2:2
    disp(i)
end
%
% Explanation: Use a for loop to calculate the sum of integers from 1 to 100.
sumValue = 0;

for i = 1:100
    sumValue = sumValue + i;
end

disp(sumValue)
%
% Explanation: Loop through an array and display each element using its index.
A = [4 8 2 10 6];

for i = 1:length(A)
    disp(A(i))
end
%
% Explanation: Use break to stop a for loop when the counter reaches 5.
for i = 1:10
    if i == 5
        break
    end

    disp(i)
end
%
% Explanation: Use continue to skip even numbers and display only odd numbers.
for i = 1:10
    if mod(i, 2) == 0
        continue
    end

    disp(i)
end
%
% Explanation: Use a while loop to display numbers from 1 to 5, updating the counter each time.
i = 1;

while i <= 5
    disp(i)
    i = i + 1;
end
%
% Explanation: Use a while loop to keep asking for input until the number is between 0 and 10.
x = input('Enter a number between 0 and 10: ');

while x < 0 || x > 10
    disp('Invalid input')
    x = input('Try again: ');
end

disp('Valid input')
%
% Explanation: Use switch-case to display a weekday based on its number.
day = 3;

switch day

    case 1
        disp('Saturday')

    case 2
        disp('Sunday')

    case 3
        disp('Monday')

    case 4
        disp('Tuesday')

    otherwise
        disp('Invalid day')

end
%
% Explanation: Use switch-case to perform a selected arithmetic operation, including a division-by-zero check.
a = 10;
b = 5;

operator = '+';

switch operator

    case '+'
        result = a + b;

    case '-'
        result = a - b;

    case '*'
        result = a * b;

    case '/'
        if b ~= 0
            result = a / b;
        else
            disp('Division by zero is not allowed')
            result = NaN;
        end

    otherwise
        disp('Invalid operator')
        result = NaN;

end

disp(result)
%
% Explanation: Exercise: use a for loop to visit each matrix row and a while loop to inspect each element. Add positive elements to a running total and display the total.
A = [3 -2 5;
    -1 4 7;
     0 -6 2];

total = 0;

for i = 1:size(A, 1)

    j = 1;

    while j <= size(A, 2)

        if A(i, j) > 0
            total = total + A(i, j);
        end

        j = j + 1;

    end

end

fprintf('Sum of positive numbers: %d\n', total);
%
% Explanation: Exercise: check each student's grade using for and while loops. Display pass/fail and count the number of passed and failed students.
grades = [18, 7, 12, 9, 20, 5];

passed = 0;
failed = 0;

for i = 1:length(grades)

    attempts = 1;

    while attempts <= 1

        if grades(i) >= 10
            fprintf('Student %d: Passed\n', i);
            passed = passed + 1;
        else
            fprintf('Student %d: Failed\n', i);
            failed = failed + 1;
        end

        attempts = attempts + 1;

    end

end

fprintf('Number of students passed: %d\n', passed);
fprintf('Number of students failed: %d\n', failed);
%
% Explanation: Exercise: create a number-guessing game with up to five attempts. Validate the input range, give higher/lower hints, and reveal the target if the player does not guess it.
target = 13;
maxAttempts = 5;
found = false;

for attempt = 1:maxAttempts

    guess = input('Enter a number between 1 and 20: ');

    while guess < 1 || guess > 20
        fprintf('The number must be between 1 and 20.\n');
        guess = input('Try again: ');
    end

    if guess == target
        fprintf('Correct! You guessed the number.\n');
        found = true;
        break;

    elseif guess < target
        fprintf('The target number is higher.\n');

    else
        fprintf('The target number is lower.\n');
    end

end

if ~found
    fprintf('No attempts left. The target number was %d.\n', target);
end
