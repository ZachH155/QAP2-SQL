-- TABLE CREATION
CREATE TABLE students (
	id SERIAL PRIMARY KEY NOT NULL, 
	first_name VARCHAR(20), 
	last_name VARCHAR(20), 
	email VARCHAR(40), 
	school_enrollment_date VARCHAR(8)
)

CREATE TABLE professors (
	id SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(20),
  	last_name VARCHAR(20),
  	department VARCHAR(20)
)
  
CREATE TABLE courses (
	id SERIAL PRIMARY KEY NOT NULL,
	course_name VARCHAR(20),
	course_description VARCHAR(100),
	professor_id integer REFERENCES professors (id)
)

CREATE TABLE enrollments (
	student_id integer REFERENCES students (id),
	course_id integer REFERENCES courses (id),
	enrollment_date VARCHAR(8),
	PRIMARY KEY(student_id, course_id)
)

-- DATA INSERTION
INSERT INTO students (first_name, last_name, email, school_enrollment_date)
VALUES ('Corneleus', 'Johnson', 'cornyjohn@gmail.com', CURRENT_DATE),
	   ('Zeberflorb', 'Smith', 'florbinit@gmail.com', CURRENT_DATE),
	   ('Dave', 'Davidson', 'davedson@gmail.com', CURRENT_DATE),
	   ('Quavius', 'Babarlathew', 'barbar@gmail.com', CURRENT_DATE),
	   ('Goku', 'Son', 'heyitsme@gmail.com', CURRENT_DATE)

INSERT INTO professors (first_name, last_name, department)
VALUES ('Glorbius', 'Goboban', 'Science'),
	   ('Frank', 'Frankfurt', 'Math'),
	   ('Vera', 'Davidson', 'Socials'),
	   ('Demetrius', 'Babarlathew', 'English'),
	   ('Alexandra', 'Ivanovich', 'French')

INSERT INTO courses (course_name, course_description, professor_id)
VALUES ('English', 'Writing essays about things you didnt know exist until the teacher gives you the test', 4),
	   ('Math', '"My method is better!" -Math teachers', 2),
	   ('Socials', 'Youll be hearing more history about the teacher than about the world', 3),
	   ('Science', 'Science!... The teacher is harder to deal with than anything', 1),
	   ('French', 'Vous vous souviendrez de tout le français que vous apprendrez!... Jusquau prochain test', 5)
