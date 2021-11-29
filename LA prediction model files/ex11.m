fprintf('Plotting Data ...')
data = load('ex1data1.txt');
X = data(:, 1); 
y = data(:, 2);
m = length(y); 
%Plot For Formula Based VS Data Set
%plotData(X, y) we do not use this because of usort data
scatter(X,y,"g")
xlabel('velocity (ms-1)');
ylabel('height(m)');
p=polyfit(X,y,2);
hold on;

a=X.^(0:2);
a=pinv(a)*y;
a;

save('theta.txt','-ascii','a');
load('theta','-ascii','a')
fprintf("The Values Of Theta Are ")
a

h=polyval(a,X);
xq=linspace(X(1),X(end),100);
polyval(flip(a),7);
polyval(flip(a),xq);
plot(xq,polyval(flip(a),xq),'r')
legend('Data set', 'Trained Data')
fprintf('Press Enter To Continue\n')
pause;
close;

v=[0:1:41]
w=(1/19.6)*(v)^2;
%Plot For Formula Based VS Trained Data


%Plot For Formula Based VS givem data