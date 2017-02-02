CREATE TABLE Majors
(
MajorID INT IDENTITY PRIMARY KEY,
Name VARCHAR(50)
)

CREATE TABLE Payments
(
PaymentID INT IDENTITY PRIMARY KEY,
PaymentDate DATE,
PaymentAmount DECIMAL (10,2),
StudentID INT
)

CREATE TABLE Subjects
(
SubjectID INT IDENTITY PRIMARY KEY,
SubjectName VARCHAR(50)
)

CREATE TABLE Agenda
(
StudentID INT,
SubjectID INT,
PRIMARY KEY (StudentId, SubjectId)
)

CREATE TABLE Students
(
StudentID INT PRIMARY KEY,
StudentNumber VARCHAR(50),
StudentName VARCHAR(50),
MajorID INT,
CONSTRAINT fk_students_majors FOREIGN KEY (MajorID) REFERENCES Majors (MajorID)
)

ALTER TABLE Agenda
ADD CONSTRAINT fk_agenda_subjects FOREIGN KEY (SubjectID) REFERENCES Subjects (SubjectID)

ALTER TABLE Agenda
ADD CONSTRAINT fk_agenda_students FOREIGN KEY (StudentID) REFERENCES Students (StudentID)

ALTER TABLE Payments
ADD CONSTRAINT fk_payments_students FOREIGN KEY (StudentID) REFERENCES Students (StudentID)
