create database school

CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    familyname VARCHAR(100),
    subject VARCHAR(100),
    supervising_class INT UNIQUE
);

CREATE TABLE classList (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    number_of_students INT,
    supervisor_id INT UNIQUE,
    FOREIGN KEY (supervisor_id) REFERENCES teachers(id)
);


CREATE TABLE students(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    secondName VARCHAR(100),
    class int 
    FOREIGN KEY(class) REFERENCES classList(class_id)
)


















-- populating tables

INSERT INTO teachers (name, familyname, subject, supervising_class) VALUES
('Alice', 'Johnson', 'Math', 1),
('Bob', 'Smith', 'Science', 2),
('Carol', 'Williams', 'History', 3),
('David', 'Jones', 'Geography', 4),
('Eve', 'Brown', 'English', 5),
('Frank', 'Davis', 'Biology', 6),
('Grace', 'Miller', 'Physics', 7),
('Hank', 'Wilson', 'Chemistry', 8),
('Ivy', 'Moore', 'Art', 9),
('Jack', 'Taylor', 'Music', 10),
('Kim', 'Anderson', 'PE', 11),
('Leo', 'Thomas', 'Computer Science', 12);



INSERT INTO classList (number_of_students, supervisor_id) VALUES
(20, 1), 
(22, 2),  
(18, 3),  
(25, 4),  
(24, 5),  
(21, 6),  
(23, 7), 
(26, 8),  
(19, 9),  
(30, 10), 
(28, 11), 
(17, 12); 




INSERT INTO students (name, secondName, class) VALUES
('John', 'Doe', 1),
('Jane', 'Smith', 1),
('Michael', 'Johnson', 2),
('Emily', 'Davis', 2),
('James', 'Wilson', 3),
('Olivia', 'Brown', 3),
('William', 'Jones', 4),
('Sophia', 'Garcia', 4),
('David', 'Martinez', 5),
('Isabella', 'Rodriguez', 5),
('Daniel', 'Hernandez', 6),
('Mia', 'Lopez', 6),
('Matthew', 'Gonzalez', 7),
('Charlotte', 'Wilson', 7),
('Ethan', 'Anderson', 8),
('Amelia', 'Thomas', 8),
('Joshua', 'Taylor', 9),
('Harper', 'Moore', 9),
('Liam', 'Jackson', 10),
('Ella', 'White', 10),
('Aiden', 'Martin', 11),
('Lily', 'Lee', 11),
('Lucas', 'Walker', 12),
('Chloe', 'Hall', 12),
('Logan', 'Young', 1),
('Aria', 'Allen', 1),
('Jacob', 'King', 2),
('Evelyn', 'Scott', 2),
('Mason', 'Wright', 3),
('Scarlett', 'Adams', 3),
('Jackson', 'Baker', 4),
('Grace', 'Nelson', 4),
('Jameson', 'Carter', 5),
('Hannah', 'Mitchell', 5),
('Alexander', 'Perez', 6),
('Zoey', 'Roberts', 6),
('Benjamin', 'Turner', 7),
('Nora', 'Phillips', 7),
('Henry', 'Campbell', 8),
('Mila', 'Parker', 8),
('Sebastian', 'Evans', 9),
('Layla', 'Collins', 9),
('Owen', 'Stewart', 10),
('Luna', 'Sanchez', 10),
('Jack', 'Morris', 11),
('Paisley', 'Morris', 11),
('Gabriel', 'Rogers', 12),
('Riley', 'Reed', 12),
('Julian', 'Cook', 1),
('Avery', 'Morgan', 1),
('Grayson', 'Bell', 2),
('Bella', 'Cooper', 2),
('Wyatt', 'Richards', 3),
('Zoe', 'Ward', 3),
('David', 'Watson', 4),
('Lila', 'Foster', 4),
('Matthew', 'Brooks', 5),
('Ellie', 'Gray', 5),
('Daniel', 'James', 6),
('Sophie', 'Price', 6),
('Leo', 'Wood', 7),
('Victoria', 'Kelly', 7),
('Samuel', 'Sanders', 8),
('Maya', 'Bryant', 8),
('Isaac', 'Bryant', 9),
('Madison', 'Hamilton', 9),
('Christopher', 'James', 10),
('Jasmine', 'Bennett', 10),
('Ryan', 'James', 11),
('Audrey', 'Murray', 11),
('Henry', 'King', 12),
('Emily', 'Adams', 12);




