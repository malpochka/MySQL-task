SELECT last_name,birthday FROM students WHERE last_name = 'Ipatova' AND birthday = '1988-03-08';
CREATE INDEX idx_word ON students(last_name);
DROP INDEX idx_word ON students;