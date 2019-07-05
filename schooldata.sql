DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;



CREATE TABLE Student (
	ID				int					primary key auto_increment,	
    first_name		nvarchar(50)		not null,
    last_name		nvarchar(50)		not null,
    streetaddress 	nvarchar(50)		not null,
    city			nvarchar(50)		not null,
    state			nvarchar(2)			not null,
    zip				nvarchar(5)			not null,
    birthdate 		date				not null,
    phone_number 	int	(12)				not null  unique,
    email 			nvarchar(50)		not null,
    ssn 			int	(11)			not null  unique
    );
    
CREATE TABLE Course (
	ID				int					primary key auto_increment,
    number			int					not null unique,
    subject			nvarchar(50)		not null,
    name			nvarchar(50)		not null
    );
    
CREATE TABLE Instructor (
	ID				int					primary key auto_increment,
    courseID		int					not null,
    Firstnameins	nvarchar(25)		not null,
    Lastnameins		nvarchar(25)		not null
    );
    
CREATE TABLE Enrollment(
	ID				int					primary key auto_increment,
    student_id		int					not null,
    course_id		int					not null,
    grade			dec(5,2),
    FOREIGN KEY (student_id) REFERENCES student(ID),
    FOREIGN KEY (course_id) REFERENCES course(ID)
    );
    
    INSERT INTO Student
    VALUES	(1,'Arthur', 'Dent', 'Blue Bananna Road', 'Cleveland', 'OH', '44101', '1950-01-01', 111111, 'A@gmail.com', 11111),
			(2,'Ford', 'Prefect', 'Green Grape Road', 'Cincinnati', 'OH', '45014', '1940-02-02', 22222, 'B@gmail.com', 222222),
            (3,'Zaphod', 'Beeblerox', 'Orange Orange Road', 'Dayton', 'OH', '45400', '1940-03-03', 333333, 'c@gmail.com', 333333),
            (4,'Trillian', 'Human', 'Black Berry Road', 'Columbus', 'OH', '43211', '1930-04-04', 444444, 'd@gmail.com', 44444),
            (5,'Marvin', 'Robot', 'White Watermelon Road', 'Toledo', 'OH', '48234', '1920-05-05',5555555, 'e@gmail.com', 55555)
            ;
		
	INSERT INTO Course
    VALUES	(1,1, 'Math', 'Calculus'),
			(2,2, 'History', 'American History'),
            (3,3, 'English', 'Contemporary Writers')
            ;
            
	INSERT INTO Instructor
    VALUES	(1, 1, 'Curtis', 'Jackson'),
			(2, 2, 'Kurtis', 'Blow'),
            (3, 3, 'Phil', 'Jackson')
            ;
            
	INSERT INTO Enrollment (student_id, course_id)
    VALUES	(1,1),
			(1,2),
            (5,2),
            (5,3);
            
		
            