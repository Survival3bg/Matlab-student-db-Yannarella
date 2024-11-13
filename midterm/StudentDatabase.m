% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

classdef StudentDatabase
    properties
        Students = {};
    end
    methods
        %Add students to DB
        function obj = addStudent(obj, student)
            obj.Students{end+1} = student;
        end
        %Find student by ID
        function student = findStudentByID(obj, id)
            student = [];
            for i = 1:length(obj.Students)
                if obj.Students{i}.ID == id
                    student = obj.Students{i};
                    return;
                end
            end
            if isempty(student)
                error('Student not found');
            end
        end
        
        %Get students by Major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = {};
            for i = 1:length(obj.Students)
                if strcmp(obj.Students{i}.Major, major)
                    studentsByMajor{end+1} = obj.Students{i};
                end
            end
        end
        
        %Save database to a .mat file
        function saveDatabase(obj, filename)
            try
                students = obj.Students;
                save(filename, 'students');
            catch
                error('Error saving database');
            end
        end
        
        %Load database from file
        function obj = loadDatabase(obj, filename)
            try
                loadedData = load(filename);
                obj.Students = loadedData.students;
            catch
                error('Error loading database');
            end
        end
    end
end