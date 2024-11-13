% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

function AvgGpa(database)
    majors = unique(arrayfun(@(x) x.Major, [database.Students{:}], 'UniformOutput', false));
    avgGPA = zeros(1, length(majors));
    
    for i = 1:length(majors)
        students = database.getStudentsByMajor(majors{i});
        gpas = arrayfun(@(x) x.GPA, [students{:}]);
        avgGPA(i) = mean(gpas);
    end
    
    bar(categorical(majors), avgGPA);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end