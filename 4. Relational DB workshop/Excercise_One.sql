DROP TABLE IF EXISTS SCHOOL CASCADE;
DROP TABLE STUDENT;

CREATE TABLE IF NOT EXISTS School (
	school_id SERIAL PRIMARY KEY,
	school_name TEXT NOT NULL,
	city TEXT NOT NUll 
);

INSERT INTO School(school_name, city)
	VALUES
	('Stanford', 'Stanford'),
	('University of Cali', 'San Francisco'),
	('Harvard University', 'New York'),
	('MIT', 'Boston'),
	('Yale', 'New Haven');

CREATE TABLE IF NOT EXISTS Student (
	student_id SERIAL PRIMARY KEY,
 	student_name TEXT NOT NULL,
 	city TEXT NOT NULL,
 	school_id INT NOT NULL,
 	CONSTRAINT fk_school_id
 		FOREIGN KEY (School_ID)
 			REFERENCES school(School_ID)
);

ALTER SEQUENCE student_student_id_seq RESTART WITH 1001;

INSERT INTO Student(student_name, city, school_id)
	VALUES
	('Peter Brebec', 'New York', 1),
	('John Goorgy', 'San Francisco', 2), 
	('Brad Smith', 'New York', 3),
	('Fabian Johns', 'Boston', 5),
	('Brad Cameron', 'Stanford', 1),
	('Geoff Firby', 'Boston', 5),
	('Johnny Blue', 'New Haven', 2),
	('Johse Brook', 'Miami', 2);
	
-- SHOWS ALL STUDENTS INCLUDING NULL VALUES
-- HELPFUL FOR SEEING WHAT IS ACTUALLY HAPPENING	
SELECT
	student_name,
	school.school_name as school_name,
	CASE 
		WHEN ((school.city = student.city) AND (school.city <> 'New York')) THEN school.city
	END AS city
FROM
	student
LEFT JOIN school ON student.school_id = school.school_id;

-- QUERY THAT IS THE ANSWER TO THE EXERCISE
SELECT
	student_name,
	school.school_name as school_name,
	student.city
FROM
	student
LEFT JOIN school ON student.school_id = school.school_id
WHERE student.city = school.city AND student.city <> 'New York'
