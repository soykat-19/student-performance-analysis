use student_performance;

INSERT INTO students VALUES
(1, 'Aarav Sharma', 'MCA', 1),
(2, 'Priya Singh', 'MCA', 1),
(3, 'Rahul Kumar', 'MCA', 1),
(4, 'Sneha Das', 'MCA', 1),
(5, 'Aditya Verma', 'MCA', 1),
(6, 'Ananya Roy', 'MCA', 1),
(7, 'Rohan Gupta', 'MCA', 1),
(8, 'Neha Kumari', 'MCA', 1);

INSERT INTO courses VALUES
(101, 'DBMS', 4),
(102, 'Python Programming', 4),
(103, 'Research Methodology', 3),
(104, 'Computer Networks', 3);

INSERT INTO enrollments VALUES
(1, 1, 101, 88),
(2, 1, 102, 92),
(3, 1, 103, 76),
(4, 1, 104, 81),
(5, 2, 101, 95),
(6, 2, 102, 89),
(7, 2, 103, 91),
(8, 2, 104, 87),
(9, 3, 101, 65),
(10, 3, 102, 72),
(11, 3, 103, 68),
(12, 3, 104, 74),
(13, 4, 101, 78),
(14, 4, 102, 85),
(15, 4, 103, 82),
(16, 4, 104, 80),
(17, 5, 101, 45),
(18, 5, 102, 59),
(19, 5, 103, 52),
(20, 5, 104, 48),
(21, 6, 101, 91),
(22, 6, 102, 94),
(23, 6, 103, 88),
(24, 6, 104, 90),
(25, 7, 101, 55),
(26, 7, 102, 61),
(27, 7, 103, 49),
(28, 7, 104, 58),
(29, 8, 101, 84),
(30, 8, 102, 79),
(31, 8, 103, 86),
(32, 8, 104, 83);

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
