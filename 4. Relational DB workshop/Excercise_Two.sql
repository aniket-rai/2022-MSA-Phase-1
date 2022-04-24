DROP TABLE IF EXISTS SCHOOL CASCADE;
DROP TABLE IF EXISTS STUDENT;

CREATE TABLE SCHOOL (
	subject_id SERIAL PRIMARY KEY,
	subject_name TEXT NOT NULL,
	max_score INTEGER NOT NULL,
	lecturer TEXT NOT NULL
);

CREATE TABLE STUDENT (
	student_id SERIAL PRIMARY KEY,
	student_name TEXT NOT NULL,
	city TEXT NOT NULL,
	subject_id INTEGER NOT NULL,
	CONSTRAINT fk_subject_id
		FOREIGN KEY (subject_id)
			REFERENCES SCHOOL(subject_id)
);

ALTER SEQUENCE school_subject_id_seq RESTART WITH 11;
ALTER SEQUENCE student_student_id_seq RESTART WITH 2001;

INSERT INTO SCHOOL (subject_name, max_score, lecturer)
	VALUES
	('Math', 130, 'Christena Solem'),
	('Computer Science', 150, 'Jaime Pille'),
	('Biology', 300, 'Carrol Denmark'),
	('Geography', 220, 'Yuette Galang'),
	('Physics', 110, 'Colton Rather'),
	('Chemistry', 400, 'Nan Mongeau');
	
INSERT INTO STUDENT (student_name, city, subject_id)
	VALUES
	('Thurman Thorn', 'New York', 11),
	('Sharda Clemens', 'San Francisco', 12),
	('Buck Elkins', 'New York', 13),
	('Fabian Johns', 'Boston', 15),
	('Brad Cameron', 'Stanford', 11),
	('Sofia Roles', 'Boston', 16),
	('Rory Pietila', 'New Haven', 12);
	
SELECT
	student.student_name,
	school.subject_name,
	school.max_score,
	school.lecturer
FROM
	student
LEFT JOIN school ON student.subject_id = school.subject_id
WHERE school.subject_name <> 'Computer Science' AND (school.max_score < 100 OR school.max_score > 200);