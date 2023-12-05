SELECT s.name AS student_name, disc.discipline_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN disciplines disc ON g.subject_id = disc.discipline_id
WHERE s.student_id = :student_id;