SELECT s.fullname, ROUND (AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 5;

SELECT d.name, ROUND (AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 3
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 1;

SELECT d.name, gr.name, ROUND (AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN[groups] gr ON gr.id = s.group_id
WHERE d.id = 3
GROUP BY gr.name, d.name 
ORDER BY average_grade DESC;

SELECT AVG(grade) AS avg_grade FROM grades;

SELECT t.teacher_name, d.discipline_name
FROM teachers t
JOIN disciplines d ON t.teacher_id = d.teacher_id
WHERE t.teacher_id = :teacher_id;

SELECT s.name AS student_name, g.group_name
FROM students s
JOIN groups g ON s.group_id = g.group_id
WHERE g.group_id = :group_id;

SELECT s.name AS student_name, g.grade, disc.discipline_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN disciplines disc ON g.subject_id = disc.discipline_id
WHERE s.group_id = :group_id AND disc.discipline_id = :discipline_id;

SELECT t.teacher_name, AVG(g.grade) AS avg_grade
FROM teachers t
JOIN disciplines d s ON t.teacher_id = d.teacher_id
JOIN grades g ON d.discipline_id = g.discipline_id
WHERE t.teacher_id = :teacher_id
GROUP BY t.teacher_id;

SELECT s.name AS student_name, disc.discipline_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN disciplines disc ON g.subject_id = disc.discipline_id
WHERE s.student_id = :student_id;

SELECT s.name AS student_name, t.teacher_name, disc.discipline_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN disciplines disc ON g.discipline_id = disc.discipline_id
JOIN teachers t ON disc.teacher_id = t.teacher_id
WHERE s.student_id = :student_id AND t.teacher_id = :teacher_id;

SELECT t.teacher_name, s.name AS student_name, AVG(g.grade) AS avg_grade
FROM teachers t
JOIN disciplines disc ON t.teacher_id = disc.teacher_id
JOIN grades g ON disc.discipline_id = g.discipline_id
JOIN students s ON g.student_id = s.student_id
WHERE t.teacher_id = :teacher_id AND s.student_id = :student_id
GROUP BY t.teacher_id, s.student_id;




