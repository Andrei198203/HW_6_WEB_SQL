SELECT t.teacher_name, AVG(g.grade) AS avg_grade
FROM teachers t
JOIN disciplines d s ON t.teacher_id = d.teacher_id
JOIN grades g ON d.discipline_id = g.discipline_id
WHERE t.teacher_id = :teacher_id
GROUP BY t.teacher_id;
