/* Nested Query + Table Alias */
SELECT id, NAME FROM students s
WHERE id IN (SELECT student_id FROM registered_courses WHERE student_id = s.id);
