USE mysql_task;
SELECT *FROM students
WHERE students.id IN (
SELECT student_id
FROM students_assessment
WHERE assessment_id IN(
SELECT assessment.id
FROM assessment
WHERE mark>5) 
GROUP BY student_id
HAVING COUNT(student_id) > 5)
AND (DATEDIFF(CURDATE() ,birthday))/360 > 17
ORDER BY last_name;