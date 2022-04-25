USE mysql_task;
CREATE TABLE double_subjects
(
 id   int          not null auto_increment primary key,
title varchar(100) not null
);

INSERT  INTO double_subjects (title)
SELECT (title) FROM subjects
WHERE subjects.id IN(
SELECT subject_id
FROM assessment
WHERE assessment.id IN(
SELECT assessment_id
FROM students_assessment
GROUP BY assessment_id
HAVING COUNT(assessment_id) > 0));

UPDATE double_subjects
SET title = 'NEW_SUBJECT'
WHERE double_subjects.id>0;

INSERT  INTO subjects (title)
SELECT (title) FROM double_subjects;
DROP TABLE double_subjects;
