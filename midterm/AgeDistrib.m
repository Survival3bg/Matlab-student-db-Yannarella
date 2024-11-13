% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

function AgeDistrib(database)
    ages = arrayfun(@(x) x.Age, [database.Students{:}]);
    histogram(ages, 'BinWidth', 1);
    title('Age Distribution');
    xlabel('Age');
    ylabel('Number of Students');
end