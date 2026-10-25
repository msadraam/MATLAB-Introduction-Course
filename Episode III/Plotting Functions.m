% MATLAB Plotting Functions
% Topic: 2D Plots, Plot Formatting, Statistical Charts, 3D Plots, and Mesh Surfaces
% Name: Seyed Amirhossein Mirpour
% MATLAB Course
%
% This file demonstrates common MATLAB plotting functions. Each section has
% a short explanation and a small example to help students understand when
% to use each function.
%
% Tip: Run the sections one at a time to see how each command changes a plot.

clc;
clear;
close all;

%% 1. Plot a sine wave
% linspace creates 20 evenly spaced values from 0 to 2*pi.
% sin(x) calculates the sine of each value, and plot draws the curve.
x = linspace(0, 2*pi, 20);
y = sin(x);
figure;
plot(x, y);
grid on;
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');

%% 2. Plot two functions on the same axes
% The .* operator multiplies matching elements of two arrays.
% Giving plot two x-y pairs draws both curves in one figure.
z = cos(x) .* x;
figure;
plot(x, y, x, z);
grid on;
legend('sin(x)', 'x cos(x)', 'Location', 'best');
title('Two Functions on One Plot');

%% 3. Change line colors
% The character 'r' means red. The original example uses 'w' (white),
% which may be hard to see on a white figure background.
% Here, blue is used for the second curve so both lines remain visible.
figure;
plot(x, y, 'r', x, z, 'b');
grid on;
legend('sin(x)', 'x cos(x)', 'Location', 'best');
title('Changing Line Colors');

%% 4. Use markers instead of continuous lines
% 'or' means red circle markers; '*b' means blue star markers.
% Markers are useful for showing individual data points.
figure;
plot(x, y, 'or', x, z, '*b');
grid on;
legend('sin(x)', 'x cos(x)', 'Location', 'best');
title('Marker Styles');

%% 5. Combine a line and markers; compare different scales
% '-or' draws a red line with circle markers.
% The original plotyy example uses separate y-axes for data with different
% scales. plotyy is an older function; yyaxis is the modern alternative.
z = z * 10;
figure;
yyaxis left;
plot(x, y, '-or');
ylabel('sin(x)');
yyaxis right;
plot(x, z, '*b');
ylabel('10x cos(x)');
xlabel('x');
title('Two Y-Axes for Different Scales');
grid on;
legend('sin(x)', '10x cos(x)', 'Location', 'best');

%% 6. Plot a damped sine wave and label the graph
% exp(-x) decreases as x increases, so the sine wave gradually becomes
% smaller. xlabel, ylabel, title, and legend add information to the plot.
x = linspace(0, 2*pi, 100);
y = sin(x) .* exp(-x);
figure;
plot(x, y);
xlabel('x');
ylabel('y');
title('Damped Sine Wave: y = sin(x)e^{-x}');
legend('sin(x) .* exp(-x)', 'Location', 'best');
grid on;

%% 7. Change label font size
% FontSize controls the size of the axis label text.
xlabel('x', 'FontSize', 20);

%% 8. Display Greek letters in labels
% MATLAB interprets \alpha as the Greek letter alpha when using its
% default text interpreter.
xlabel('\alpha', 'FontSize', 20);

%% 9. Use superscripts and Greek letters
% The ^ symbol creates a superscript in MATLAB's default text interpreter.
xlabel('\alpha^{x\beta}', 'FontSize', 20);

%% 10. Add text at a chosen location
% text(xPosition, yPosition, message) places text using plot coordinates.
% The coordinates should match the scale of the current axes.
text(0.66, 0.32, 'local optimum');

%% 11. Place text interactively
% gtext lets you click on the current figure to choose where the text goes.
% Run this section while a plot is active, then click the desired location.
% gtext('local optimum');

%% 12. Create a vertical bar chart
% bar displays values as vertical bars. The bar positions default to 1, 2, ...
y = [2 5 3 6];
figure;
bar(y);
grid on;
xlabel('Category');
ylabel('Value');
title('Vertical Bar Chart');

%% 13. Set custom bar positions
% The first input gives the x positions; the second gives bar heights.
x = [10 20 30 40];
y = [2 5 3 6];
figure;
bar(x, y);
grid on;
xlabel('x position');
ylabel('Value');
title('Bar Chart with Custom Positions');

%% 14. Plot matrix values as grouped bars
% magic(4) creates a 4-by-4 magic square. bar displays each matrix column
% as a series, making it possible to compare values across rows.
y = magic(4);
figure;
bar(y);
grid on;
title('Grouped Bar Chart of a 4-by-4 Matrix');
xlabel('Row');
ylabel('Value');
legend('Column 1', 'Column 2', 'Column 3', 'Column 4', ...
    'Location', 'best');

%% 15. Create a horizontal bar chart
% barh displays bars horizontally, which can be useful for long category
% labels or when comparing values from top to bottom.
figure;
barh(y);
grid on;
title('Horizontal Bar Chart');

%% 16. Create a 3D bar chart
% bar3 represents matrix values using bars with height in three dimensions.
figure;
bar3(y);
title('3D Bar Chart');
xlabel('Column');
ylabel('Row');
zlabel('Value');

%% 17. Create a pie chart
% randperm(5) returns the numbers 1 to 5 in a random order.
% pie displays the values as slices of a circle.
y = randperm(5);
figure;
pie(y);
title('Pie Chart');

%% 18. Create a 3D pie chart
% pie3 uses a three-dimensional style for the same kind of part-to-whole chart.
figure;
pie3(y);
title('3D Pie Chart');

%% 19. Plot a histogram
% randn generates normally distributed random values.
% histogram shows how many values fall into each bin.
x = randn(1, 1000);
figure;
histogram(x);
title('Histogram of 1000 Random Values');
xlabel('Value');
ylabel('Frequency');
grid on;

%% 20. Create a 3D curve
% plot3 draws a line using x, y, and z coordinates.
% As t increases, x and y move around a circle while z increases.
t = linspace(0, 2*pi);
x = sin(t);
y = cos(t);
z = t;
figure;
plot3(x, y, z);
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('3D Helix (One Turn)');

%% 21. Create a longer 3D curve
% Increasing the range of t to 0 through 4*pi makes the curve complete
% two turns instead of one.
t = linspace(0, 4*pi);
x = sin(t);
y = cos(t);
z = t;
figure;
plot3(x, y, z);
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('3D Helix (Two Turns)');

%% 22. Draw a 3D mesh surface
% meshgrid creates coordinate matrices for a grid of x and y values.
% z = sin(x+y) calculates the height at every grid point.
% mesh draws the surface as a wireframe.
[x, y] = meshgrid(-10:0.1:10);
z = sin(x + y);
figure;
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('sin(x+y)');
title('Wireframe Surface: z = sin(x+y)');
grid on;

%% 23. Extra practice: compare mesh and surf
% surf displays a filled surface, while mesh displays a wireframe.
% Try changing the function below, for example to z = cos(x).*sin(y).
[x, y] = meshgrid(-2:0.1:2);
z = x.^2 + y.^2;
figure;
surf(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Filled Surface: z = x^2 + y^2');
colorbar;
grid on;

%% 24. Extra practice: plot with a custom line width
% LineWidth changes how thick a curve appears. Try values such as 1, 2, or 3.
x = linspace(0, 2*pi, 100);
figure;
plot(x, sin(x), 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('sin(x)');
title('Sine Wave with a Thicker Line');

%% Quick summary
% plot       : 2D line plot
% bar/barh   : vertical/horizontal bar chart
% bar3       : 3D bar chart
% pie/pie3   : 2D/3D pie chart
% histogram  : distribution of values
% plot3      : 3D line plot
% mesh/surf  : 3D surface plots
% xlabel, ylabel, title, legend : describe the graph
