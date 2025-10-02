-- 1. View all students
SELECT * FROM student;

-- 2. Average marks by city
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
ORDER BY avg_marks DESC;

-- 3. Count students per grade
SELECT grade, COUNT(*) AS total
FROM student
GROUP BY grade;

-- 4. Students scoring above 90
SELECT name, marks, city
FROM student
WHERE marks > 90;

-- 5. Top 5 students by marks
SELECT name, marks, city
FROM student
ORDER BY marks DESC
LIMIT 5;

-- 6. Lowest marks in each city
SELECT city, MIN(marks) AS min_marks
FROM student
GROUP BY city;

-- 7. Highest marks in each city
SELECT city, MAX(marks) AS max_marks
FROM student
GROUP BY city;

-- 8. Average marks by grade
SELECT grade, AVG(marks) AS avg_marks
FROM student
GROUP BY grade;

-- 9. Cities with average marks above 75
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 75;

-- 10. Grades with more than 20 students
SELECT grade, COUNT(*) AS total
FROM student
GROUP BY grade
HAVING COUNT(*) > 20;

-- 11. Students with marks between 70 and 80
SELECT * FROM student
WHERE marks BETWEEN 70 AND 80;

-- 12. Students from Delhi or Mumbai
SELECT * FROM student
WHERE city IN ('Delhi', 'Mumbai');

-- 13. Students whose name starts with 'R'
SELECT * FROM student
WHERE name LIKE 'R%';

-- 14. Students sorted by city then marks
SELECT * FROM student
ORDER BY city, marks DESC;

-- 15. Total marks by city
SELECT city, SUM(marks) AS total_marks
FROM student
GROUP BY city;

-- 16. Students grouped by grade with highest marks
SELECT grade, MAX(marks) AS top_marks
FROM student
GROUP BY grade;

-- 17. Average marks of top 10 students
SELECT AVG(marks) AS avg_top10
FROM (SELECT marks FROM student ORDER BY marks DESC LIMIT 10) AS sub;

-- 18. Count students from each city (sorted)
SELECT city, COUNT(*) AS count_students
FROM student
GROUP BY city
ORDER BY count_students DESC;

-- 19. City with maximum students
SELECT city, COUNT(*) AS total
FROM student
GROUP BY city
ORDER BY total DESC
LIMIT 1;

-- 20. Percentage of students per grade
SELECT grade, (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM student)) AS percentage
FROM student
GROUP BY grade;
