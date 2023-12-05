SELECT s.name AS student_name, t.teacher_name, disc.discipline_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN disciplines disc ON g.discipline_id = disc.discipline_id
JOIN teachers t ON disc.teacher_id = t.teacher_id
WHERE s.student_id = :student_id AND t.teacher_id = :teacher_id;