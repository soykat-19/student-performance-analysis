USE student_performance;

-- 1. Student-wise Average Marks and Ranking

SELECT
    s.student_name,
    ROUND(AVG(e.marks), 2) AS average_marks,
    RANK() OVER (ORDER BY AVG(e.marks) DESC) AS student_rank
FROM students s
JOIN enrollments e
    ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC;


-- 2. Course-wise Performance Analysis

SELECT
    c.course_name,
    COUNT(e.student_id) AS total_students,
    ROUND(AVG(e.marks), 2) AS average_marks,
    MAX(e.marks) AS highest_marks,
    MIN(e.marks) AS lowest_marks
FROM courses c
JOIN enrollments e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY average_marks DESC;


-- 3. Pass and Fail Analysis

SELECT
    c.course_name,
    SUM(CASE WHEN e.marks >= 50 THEN 1 ELSE 0 END) AS passed_students,
    SUM(CASE WHEN e.marks < 50 THEN 1 ELSE 0 END) AS failed_students
FROM courses c
JOIN enrollments e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY failed_students DESC;


-- 4. Overall Class Performance

SELECT
    COUNT(*) AS total_records,
    ROUND(AVG(marks), 2) AS class_average,
    SUM(CASE WHEN marks >= 50 THEN 1 ELSE 0 END) AS total_passed,
    SUM(CASE WHEN marks < 50 THEN 1 ELSE 0 END) AS total_failed,
    ROUND(
        100.0 * SUM(CASE WHEN marks >= 50 THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS pass_percentage
FROM enrollments;


-- 5. Identify Low-Scoring Students

SELECT
    s.student_name,
    c.course_name,
    e.marks
FROM enrollments e
JOIN students s
    ON e.student_id = s.student_id
JOIN courses c
    ON e.course_id = c.course_id
WHERE e.marks < 50
ORDER BY e.marks ASC;


-- 6. Highest Scorer in Each Course

SELECT
    c.course_name,
    s.student_name,
    e.marks
FROM enrollments e
JOIN students s
    ON e.student_id = s.student_id
JOIN courses c
    ON e.course_id = c.course_id
WHERE e.marks = (
    SELECT MAX(e2.marks)
    FROM enrollments e2
    WHERE e2.course_id = e.course_id
)
ORDER BY e.marks DESC;


-- 7. Top 3 Performing Students

SELECT
    s.student_name,
    ROUND(AVG(e.marks), 2) AS average_marks
FROM students s
JOIN enrollments e
    ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC
LIMIT 3;


-- 8. Students with Average Marks Above 80

SELECT
    s.student_name,
    ROUND(AVG(e.marks), 2) AS average_marks
FROM students s
JOIN enrollments e
    ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(e.marks) >= 80
ORDER BY average_marks DESC;
