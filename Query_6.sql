SELECT s.name AS student_name, g.group_name
FROM students s
JOIN groups g ON s.group_id = g.group_id
WHERE g.group_id = :group_id;