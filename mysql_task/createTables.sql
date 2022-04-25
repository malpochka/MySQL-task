USE mysql_task;
CREATE TABLE students
(
    id            int          not null auto_increment,
    first_name    varchar(255) not null,
    middle_name   varchar(400) not null,
    last_name     varchar(255) not null,
    birthday      date,
    PRIMARY KEY (id)
);

CREATE TABLE subjects
(
    id         int not null auto_increment,
    title      varchar(400) not null,
    PRIMARY KEY (id)
);

CREATE TABLE assessment
(
    id         int not null auto_increment,
    mark       int not null,
    subject_id int,
    PRIMARY KEY (id),
	FOREIGN KEY (subject_id) REFERENCES mysql_task.subjects (id)
);

CREATE TABLE students_assessment
(
    student_id    int not null,
    assessment_id int not null,
    FOREIGN KEY (student_id) references students (id),
    FOREIGN KEY (assessment_id) references assessment (id),
    UNIQUE (student_id, assessment_id)
);
