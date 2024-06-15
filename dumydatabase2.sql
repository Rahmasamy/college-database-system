
-- Create student table
CREATE TABLE student (
    std_id INT PRIMARY KEY,
    username VARCHAR(255),
    passwd VARCHAR(255),
    address VARCHAR(255),
    yearofstudy INT
);

-- Create questionbank table
CREATE TABLE questionbank (
    quest_id INT PRIMARY KEY,
    quest_value VARCHAR(255),
    que_answer VARCHAR(255),
    prof_id INT
);

-- Create professor table
CREATE TABLE professor (
    prof_id INT PRIMARY KEY,
    prof_name VARCHAR(255),
    phone_number VARCHAR(20),
    dep_id INT
);
-- Create department table
CREATE TABLE department (
    dep_id INT PRIMARY KEY,
    dep_name VARCHAR(255),
    supervise_id INT,
    INDEX(supervise_id) ,
    prof_id INT,
    FOREIGN KEY (supervise_id) REFERENCES professor(prof_id),
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
    
);






-- Create course table

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    prof_id INT,
    subject VARCHAR(255),
    std_id VARCHAR(20),
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
);

-- Create Exam table
CREATE TABLE Exam (
    exam_id INT PRIMARY KEY,
    prof_id INT,
    subject VARCHAR(255),
    result INT,
    course_id INT,
    std_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (std_id) REFERENCES student(std_id)
);




-- Create Prof_crs table
CREATE TABLE Prof_crs (
    prof_id INT,
    crs_id INT,
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id),
    FOREIGN KEY (crs_id) REFERENCES course(course_id)
);

-- Create prof_student_evaluate table
CREATE TABLE prof_student_evaluate (
    student_id INT,
    prof_id INT,
    evaluation INT,
    FOREIGN KEY (student_id) REFERENCES student(std_id),
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
);

-- Create student_crs_eval table
CREATE TABLE student_crs_eval (
    student_id INT,
    course_id INT,
    evaluation INT,
    FOREIGN KEY (student_id) REFERENCES student(std_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- Create quest_prof table
CREATE TABLE quest_prof (
    prof_id INT,
    ques_prof_id INT,
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id),
    FOREIGN KEY (ques_prof_id) REFERENCES questionbank(quest_id)
);

-- Insert dummy data into professor table
INSERT INTO professor (prof_id, prof_name, phone_number, dep_id)
VALUES
    (1, 'John Smith', '123-456-7890', 1),
    (2, 'Jane Doe', '234-567-8901', 2),
    (3, 'Michael Johnson', '345-678-9012', 3),
    (4, 'Emily Brown', '456-789-0123', 4),
    (5, 'Christopher Lee', '567-890-1234', 5),
    (6, 'Jessica Taylor', '678-901-2345', 6),
    (7, 'David Wilson', '789-012-3456', 7),
    (8, 'Elizabeth White', '890-123-4567', 8),
    (9, 'Matthew Harris', '901-234-5678', 9),
    (10, 'Sarah Martinez', '012-345-6789', 10);
-- Insert dummy data into student table
INSERT INTO student (std_id, username, passwd, address, yearofstudy)
VALUES
    (1, 'Alice', 'password1', '123 Elm St', 1),
    (2, 'Bob', 'password2', '456 Oak Ave', 2),
    (3, 'Charlie', 'password3', '789 Pine Rd', 3),
    (4, 'Diana', 'password4', '101 Main St', 1),
    (5, 'Ethan', 'password5', '202 Elm St', 2),
    (6, 'Fiona', 'password6', '303 Oak Ave', 3),
    (7, 'George', 'password7', '404 Pine Rd', 1),
    (8, 'Hannah', 'password8', '505 Main St', 2),
    (9, 'Ian', 'password9', '606 Elm St', 3),
    (10, 'Julia', 'password10', '707 Oak Ave', 1),
    (11, 'Kevin', 'password11', '808 Pine Rd', 2),
    (12, 'Lily', 'password12', '909 Main St', 3),
    (13, 'Mark', 'password13', '111 Elm St', 1),
    (14, 'Natalie', 'password14', '222 Oak Ave', 2),
    (15, 'Oliver', 'password15', '333 Pine Rd', 3),
    (16, 'Paige', 'password16', '444 Main St', 1),
    (17, 'Quinn', 'password17', '555 Elm St', 2),
    (18, 'Rachel', 'password18', '666 Oak Ave', 3),
    (19, 'Samuel', 'password19', '777 Pine Rd', 1),
    (20, 'Tina', 'password20', '888 Main St', 2),
    (21, 'Ulysses', 'password21', '999 Elm St', 3),
    (22, 'Victoria', 'password22', '123 Oak Ave', 1),
    (23, 'Walter', 'password23', '234 Pine Rd', 2),
    (24, 'Xavier', 'password24', '345 Main St', 3),
    (25, 'Yvonne', 'password25', '456 Elm St', 1),
    (26, 'Zachary', 'password26', '567 Oak Ave', 2),
    (27, 'Emma', 'password27', '678 Pine Rd', 3),
    (28, 'Noah', 'password28', '789 Main St', 1),
    (29, 'Ava', 'password29', '890 Elm St', 2),
    (30, 'James', 'password30', '901 Oak Ave', 3);

-- Insert dummy data into department table
INSERT INTO department (dep_id, dep_name, supervise_id, prof_id)
VALUES
    (1, 'Computer Science Department', 1, 1),
    (2, 'Mathematics Department', 2, 2),
    (3, 'Physics Department', 3, 3),
    (4, 'Chemistry Department', 1, 4),
    (5, 'Biology Department', 2, 5),
    (6, 'History Department', 3, 6),
    (7, 'English Department', 1, 7),
    (8, 'Art Department', 2, 8),
    (9, 'Music Department', 3, 9),
    (10, 'Psychology Department', 1, 10);




-- Insert dummy data into course table
INSERT INTO course (course_id, prof_id, subject, std_id)
VALUES
    (1, 1, 'Computer Science 101', '1'),
    (2, 2, 'Mathematics 101', '2'),
    (3, 3, 'Physics 101', '3'),
    (4, 4, 'Chemistry 101', '4'),
    (5, 5, 'Biology 101', '5'),
    (6, 6, 'History 101', '6'),
    (7, 7, 'English 101', '7'),
    (8, 8, 'Art 101', '8'),
    (9, 9, 'Music 101', '9'),
    (10, 10, 'Psychology 101', '10'),
    (11, 1, 'Computer Science 102', '11'),
    (12, 2, 'Mathematics 102', '12'),
    (13, 3, 'Physics 102', '13'),
    (14, 4, 'Chemistry 102', '14'),
    (15, 5, 'Biology 102', '15'),
    (16, 6, 'History 102', '16'),
    (17, 7, 'English 102', '17'),
    (18, 8, 'Art 102', '18'),
    (19, 9, 'Music 102', '19'),
    (20, 10, 'Psychology 102', '20'),
    (21, 1, 'Computer Science 103', '21'),
    (22, 2, 'Mathematics 103', '22'),
    (23, 3, 'Physics 103', '23'),
    (24, 4, 'Chemistry 103', '24'),
    (25, 5, 'Biology 103', '25'),
    (26, 6, 'History 103', '26'),
    (27, 7, 'English 103', '27'),
    (28, 8, 'Art 103', '28'),
    (29, 9, 'Music 103', '29'),
    (30, 10, 'Psychology 103', '30');

-- Insert dummy data into Exam table
INSERT INTO Exam (exam_id, prof_id, subject, result, course_id, std_id)
VALUES
    (1, 1, 'Computer Science 101 Exam', 78, 1, 1),
    (2, 2, 'Mathematics 101 Exam', 87, 2, 2),
    (3, 3, 'Physics 101 Exam', 89, 3, 3),
    (4, 4, 'Chemistry 101 Exam', 65, 4, 4),
    (5, 5, 'Biology 101 Exam', 89, 5, 5),
    (6, 6, 'History 101 Exam', 57, 6, 6),
    (7, 7, 'English 101 Exam', 84, 7, 7);

-- Insert dummy data into questionbank table
INSERT INTO questionbank (quest_id, quest_value, que_answer, prof_id)
VALUES
    (1, 'What is a variable?', 'A storage location associated with a symbolic name', 1),
    (2, 'What is a loop?', 'A programming construct that repeats a block of code until a certain condition is met', 2),
    (3, 'What is SQL?', 'Structured Query Language used for managing relational databases', 3),
    (4, 'What is an atom?', 'The basic unit of a chemical element', 4),
    (5, 'What is mitosis?', 'A type of cell division that results in two daughter cells each having the same number and kind of chromosomes as the parent nucleus', 5),
    (6, 'What is the Renaissance?', 'A period in European history marking the transition from the Middle Ages to modernity', 6),
    (7, 'What is a metaphor?', 'A figure of speech that refers to one thing by mentioning another', 7),
    (8, 'Who wrote "Hamlet"?', 'William Shakespeare', 8),
    (9, 'What is a chord?', 'A group of (typically three or more) notes sounded together, as a basis of harmony', 9),
    (10, 'What is psychology?', 'The scientific study of the mind and behavior', 10),
    (11, 'What is recursion?', 'The process in which a function calls itself as a subroutine', 1),
    (12, 'What is differentiation?', 'The process of finding the derivative of a function', 2),
    (13, 'What is electromagnetism?', 'The theory of the electromagnetic field', 3),
    (14, 'What is an enzyme?', 'A substance produced by a living organism that acts as a catalyst to bring about a specific biochemical reaction', 4),
    (15, 'What is ecology?', 'The branch of biology that deals with the relations of organisms to one another and to their physical surroundings', 5),
    (16, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 6),
    (17, 'What is a sonnet?', 'A poem of fourteen lines using any of a number of formal rhyme schemes', 7),
    (18, 'Who wrote "Pride and Prejudice"?', 'Jane Austen', 8),
    (19, 'What is a scale?', 'A series of musical notes in ascending or descending order', 9),
    (20, 'What is neuroscience?', 'The scientific study of the nervous system', 10),
    (21, 'What is a pointer?', 'A variable that stores the memory address of another variable', 1),
    (22, 'What is integration?', 'The process of finding the integral of a function', 2),
    (23, 'What is relativity?', 'The theory proposed by Albert Einstein that describes gravity as a curvature of spacetime', 3),
    (24, 'What is a chemical reaction?', 'A process that leads to the transformation of one set of chemical substances to another', 4),
    (25, 'What is evolution?', 'The process by which different kinds of living organisms develop and diversify from earlier forms', 5),
    (26, 'Who sculpted the Statue of David?', 'Michelangelo', 6),
    (27, 'What is alliteration?', 'The occurrence of the same letter or sound at the beginning of adjacent or closely connected words', 7),
    (28, 'Who wrote "1984"?', 'George Orwell', 8),
    (29, 'What is a symphony?', 'An elaborate musical composition for full orchestra', 9),
    (30, 'What is cognitive psychology?', 'The study of mental processes such as "attention, language use, memory, perception, problem-solving, creativity, and thinking"', 10),
    (31, 'What is a class?', 'A blueprint for creating objects', 1),
    (32, 'What is a matrix?', 'A rectangular array of numbers, symbols, or expressions', 2),
    (33, 'What is gravity?', 'The force that attracts a body toward the center of the earth, or toward any other physical body having mass', 3),
    (34, 'What is an acid?', 'A molecule or ion capable of donating a hydron (proton or hydrogen ion H+), or, alternatively, capable of forming a covalent bond with an electron pair (a Lewis acid)', 4),
    (35, 'What is a gene?', 'A unit of heredity that is transferred from a parent to offspring and is held to determine some characteristic of the offspring', 5),
    (36, 'Who composed the Ninth Symphony?', 'Ludwig van Beethoven', 6),
    (37, 'What is a simile?', 'A figure of speech involving the comparison of one thing with another thing of a different kind, used to make a description more emphatic or vivid', 7),
    (38, 'Who wrote "The Catcher in the Rye"?', 'J.D. Salinger', 8),
    (39, 'What is an arpeggio?', 'The playing of the tones of a chord in rapid succession rather than simultaneously', 9),
    (40, 'What is clinical psychology?', 'The branch of psychology concerned with the assessment and treatment of mental illness and disability', 10),
    (41, 'What is inheritance in programming?', 'The mechanism by which one class inherits the properties and behavior of another class', 1),
    (42, 'What is a derivative?', 'The rate of change of a function with respect to a variable', 2),
    (43, 'What is quantum mechanics?', 'The branch of physics that deals with the mathematical description of the motion and interaction of subatomic particles', 3),
    (44, 'What is a base?', 'A substance that can accept hydrogen ions (protons) or, more generally, donate a pair of valence electrons', 4),
    (45, 'What is natural selection?', 'The process whereby organisms better adapted to their environment tend to survive and produce more offspring', 5),
    (46, 'Who painted "Starry Night"?', 'Vincent van Gogh', 6),
    (47, 'What is onomatopoeia?', 'The formation of a word from a sound associated with what is named', 7),
    (48, 'Who wrote "To Kill a Mockingbird"?', 'Harper Lee', 8),
    (49, 'What is a concerto?', 'A musical composition for a solo instrument or instruments accompanied by an orchestra', 9),
    (50, 'What is developmental psychology?', 'The scientific study of how and why human beings change over the course of their life', 10);

-- Insert dummy data into Prof_crs table
INSERT INTO Prof_crs (prof_id, crs_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Insert dummy data into prof_student_evaluate table
INSERT INTO prof_student_evaluate (student_id, prof_id, evaluation)
VALUES
    (1, 1, 3),
    (2, 2, 5),
    (3, 3, 7),
    (4, 4, 2),
    (5, 5, 1),
    (1, 6, 3),
    (5, 7, 5),
    (4, 8, 7),
    (4, 9, 2),
    (5, 10, 3);

-- Insert dummy data into student_crs_eval table
INSERT INTO student_crs_eval (student_id, course_id, evaluation)
VALUES
    (1, 1, 2),
    (2, 5, 4),
    (3, 3, 5),
    (4, 4, 6),
    (5, 5, 3),
    (1, 1, 7),
    (2, 2, 6),
    (3, 3, 7),
    (4, 3, 1),
    (5, 6, 4);

-- Insert dummy data into quest_prof table
INSERT INTO quest_prof (prof_id, ques_prof_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

 
