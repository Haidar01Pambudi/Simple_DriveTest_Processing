clc
% Initialization to open csv file
Myname = 'E:\...\...\...\...\Data_RSSI.csv';  % location the my csv data
delimiter = ';';  % Set delimiter in data

% read data csv with readtable() function
Data = readtable(Myname, 'Delimiter', delimiter);
head(Data);

Y = Data.Index;
X = Data.RSSI;

% Create a figure
figure;
grid on

% Plot the data
plot(X, Y,'b-','LineWidth',1)  % First set of X-values
ylabel('RSSI Level (dBm)')
xlabel('Time (s)')
xlim([0 350]);
