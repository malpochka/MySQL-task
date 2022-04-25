USE mysql_task;
SELECT first_name,middle_name,last_name,birthday,mark,title FROM students INNER JOIN students_assessment ON students.id = students_assessment.student_id
INNER JOIN assessment  ON students_assessment.assessment_id = assessment.id
INNER JOIN subjects ON assessment.subject_id = subjects.id WHERE title LIKE 'm%';