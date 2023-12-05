SELECT t.teacher_name, d.discipline_name
FROM teachers t
JOIN disciplines d ON t.teacher_id = d.teacher_id
WHERE t.teacher_id = :teacher_id;