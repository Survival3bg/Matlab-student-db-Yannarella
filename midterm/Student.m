% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

classdef Student
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
        %Constructor
        function obj = Student(id, name, age, gpa, major)
            if nargin > 0
                obj.ID = id;
                obj.Name = name;
                obj.Age = age;
                obj.GPA = gpa;
                obj.Major = major;
            end
        end
        
        %Display Student Info
        function displayInfo(obj)
            fprintf('ID: %d\nName: %s\nAge: %d\nGPA: %.2f\nMajor: %s\n', ...
                obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end
    end
end