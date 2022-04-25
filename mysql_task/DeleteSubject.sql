DELETE FROM subjects
USING subjects
INNER JOIN assessment ON subjects.id = assessment.subject_id
WHERE assessment.id IN (
SELECT assessment_id
FROM students_assessment
WHERE mark<3
GROUP BY assessment_id
HAVING COUNT(assessment_id)=10);