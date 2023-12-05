SELECT t.teacher_name, s.name AS student_name, AVG(g.grade) AS avg_grade
FROM teachers t
JOIN disciplines disc ON t.teacher_id = disc.teacher_id
JOIN grades g ON disc.discipline_id = g.discipline_id
JOIN students s ON g.student_id = s.student_id
WHERE t.teacher_id = :teacher_id AND s.student_id = :student_id
GROUP BY t.teacher_id, s.student_id;