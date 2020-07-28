function PlotData(X, y)

figure; 
hold on;

pos = find(y == 1); 
neg = find(y == 0); 

plot(X(pos, 3), X(pos, 6),  'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 6), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

hold off;


end