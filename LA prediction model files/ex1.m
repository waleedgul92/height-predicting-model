fprintf('Plotting Data ...\n')
data = load('grp - Copy.dat');
X = data(:, 1); 
y = data(:, 2);
m = length(y); 
%Plot For Formula Based VS Data Set
%plotData(X, y) we do not use this because of usort data
scatter(X,y,"g")
legend('given data')
xlabel('velocity (ms-1)');
ylabel('height(m)');
p=polyfit(X,y,2);
hold on;

a=X.^(0:2);
a=pinv(a)*y;
a;

save('theta.dat','-ascii','a');
load('theta.dat','-ascii','a')
fprintf("hello LA ")
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


%Plot For Formula Based VS Trained Data
v=[0:1:40];
w=(1/19.6)*((v).^2)
fprintf('Formula Based VS Trained Data\n')
plot(v,w,'g');
xlabel('velocity (ms-1)');
ylabel('height(m)');
hold on;
plot(xq,polyval(flip(a),xq),'r');
legend('formula based', 'trained Data')
fprintf('Press Enter To Continue\n')
pause;
close;


%Plot For Formula Based VS givem data
fprintf('Formula Based VS given Data\n')
scatter(X,y,"g");
legend('givem data');
hold on;
plot(v,w,'b');
legend('givem data based','formula based');