create database Project1
use Project1

create table Subjects 
(
    SubjectId int primary key identity(101, 1),
    SubjectName nvarchar(50),
    TeacherName nvarchar(50)
)

create table Classes 
(
    ClassId int primary key identity(1, 1),
    ClassName nvarchar(50),
)

create table Student
(
    StudentID int primary key identity(1, 1),
    StudentName nvarchar(50),
    ClassID int foreign key references Classes(ClassId),
    SubjectId int foreign key references Subjects(subjectId)
)

insert into Subjects values
('English', 'Rahul'),
('Hindi', 'Sahil'),
('Mathematics', 'Srikanth'),
('Social', 'Srinivas'),
('Science', 'Fathima')
select * from Subjects

insert into Classes values
('Class 1'),
('Class 2'),
('Class 3'),
('Class 4'),
('Class 5'),
('Class 6')
select * from Classes

insert into Student values('Rohith', 1, 105),
('Abhi', 2, 103),
('Kalam', 4, 101),
('Ganesh', 5, 105),
('Sharma', 6, 104),
('Kavitha', 4, 102)
select * from Student

select * from Student
select * from Subjects
select * from Classes

