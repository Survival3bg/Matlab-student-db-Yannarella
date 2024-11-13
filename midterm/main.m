% Author Name: Thomas Yannarella
% Email: Yannar47@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Midterm
% Date: 11/13/24

db = StudentDatabase();

%Student Info
db = db.addStudent(Student(1, 'Alice', 20, 3.5, 'Engineering'));
db = db.addStudent(Student(2, 'Ryan', 22, 3.8, 'Film'));
db = db.addStudent(Student(3, 'John', 19, 3.2, 'Physics'));
db = db.addStudent(Student(4, 'Thomas', 21, 2.9, 'Engineering'));
db = db.addStudent(Student(5, 'Joey', 18, 3.0, 'Music'));
db = db.addStudent(Student(6, 'Emily', 18, 3.6, 'English'));
db = db.addStudent(Student(7, 'Robert', 19, 2.5, 'Law'));
db = db.addStudent(Student(8, 'Ethan', 19, 3.4, 'Science'));
db = db.addStudent(Student(9, 'Zach', 21, 2.3, 'Biology'));
db = db.addStudent(Student(10, 'Cameron', 18, 3.7, 'Fashion'));


%Save data
db.saveDatabase('studentDB.mat');

%Load Data
db = db.loadDatabase('studentDB.mat');

%User input
while true
    %Enter Id or exit
    prompt = 'Enter a student ID to search for (or "exit" to quit): ';
    userInput = input(prompt, 's'); 

    if strcmpi(userInput, 'exit')
        fprintf('Exiting program.');
        break;
    end
    
    %Convert to number
    studentID = str2double(userInput);
    
    %Check if valid
    if isnan(studentID) || studentID <= 0 || mod(studentID,1) ~= 0
        fprintf('Invalid ID. Please enter a valid positive ID');
        continue;
    end
    %Search for ID in Database
    try
        student = db.findStudentByID(studentID); 
        student.displayInfo();
    catch ME
        fprintf(ME.message);
    end
end

%Plot graphs
figure;
subplot(3,1,1);
GPAhisto(db);

subplot(3,1,2);
AvgGpa(db);

subplot(3,1,3);
AgeDistrib(db);