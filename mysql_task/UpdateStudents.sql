
UPDATE students
SET last_name = 'NEW_LAST_NAME'
WHERE students.id IN (
SELECT student_id
FROM students_assessment
WHERE assessment_id IN(
SELECT assessment.id
FROM assessment
WHERE mark>5)
GROUP BY student_id
HAVING COUNT(student_id) = 5);