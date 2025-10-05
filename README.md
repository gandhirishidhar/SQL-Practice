# 📊 SQL Practice Repository

This repository contains SQL practice material using a **dummy Student dataset**.

## 📂 Files
- `student_dummy_100.sql` → 100 student records with rollno, name, marks, grade, city.  
- `queries.sql` → Practice queries (aggregation, GROUP BY, HAVING, JOINS, etc.).  

## ✅ Sample Queries
- Average marks by city  
- Count of students in each grade  
- Top 3 cities by performance  
- Students scoring above 90 marks  
- Cities with > 10 students  

## 🎯 Purpose
To practice and demonstrate **SQL skills** useful for data analysis and job preparation.  
-- 21. List all teachers with department names
SELECT t.id, t.name AS teacher_name, d.name AS department_name
FROM teacher t
JOIN department d ON t.department_id = d.id;

-- 22. Count teachers in each department
SELECT d.name, COUNT(t.id) AS total_teachers
FROM department d
LEFT JOIN teacher t ON d.id = t.department_id
GROUP BY d.name;

-- 23. Department with most teachers
SELECT d.name, COUNT(t.id) AS total_teachers
FROM department d
JOIN teacher t ON d.id = t.department_id
GROUP BY d.name
ORDER BY total_teachers DESC
LIMIT 1;

-- 24. Teachers from 'Computer Science' department only
SELECT t.id, t.name
FROM teacher t
JOIN department d ON t.department_id = d.id
WHERE d.name = 'Computer Science';

-- 25. Average teachers per department
SELECT AVG(cnt) AS avg_teachers
FROM (SELECT COUNT(*) AS cnt 
      FROM teacher 
      GROUP BY department_id) sub;
