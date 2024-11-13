% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

function GPAhisto(database)
    gpas = arrayfun(@(x) x.GPA, [database.Students{:}]);
    histogram(gpas, 'BinWidth', 0.2);
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
end