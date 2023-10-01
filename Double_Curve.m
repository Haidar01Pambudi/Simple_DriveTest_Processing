clc

% Initialization to open csv file
Myname = 'E:\My Researches\Activities\Project UAV\Hasil Pengukuran\Batununggal_5_Mbps_Backup.csv'; % location the my csv data
delimiter = ';'; % Set delimiter in data

% read data csv with readtable() function
Data = readtable(Myname, 'Delimiter', delimiter);

X  = Data.Index;  % set X-axis with first column
Y1 = Data.Bitrate; % set first Y-axis with second column
Y2 = Data.Jitter; set % set second Y-axis with third column

% Create a figure
figure;

% Plot the first data in left size of Y-axis
yyaxis left
plot(X, Y1, 'r-','LineWidth',1);
ylabel('Throughput (Mbits/sec)')
hold on;

% Plot the second data in right size of Y-axis
yyaxis right
ylabel('Jitter (ms)')
plot(X, Y2, 'b-');
hold off;

% Set border of X-axis
grid on
xlabel('Time (s)')
xlim([0 350]);
