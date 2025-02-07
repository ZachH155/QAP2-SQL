-- TABLE CREATION
CREATE TABLE students (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
  last_name VARCHAR(20),
  email VARCHAR(40),
	school_enrollment_date VARCHAR(8)
)

CREATE TABLE professors (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
  last_name VARCHAR(20),
  department VARCHAR(20)
)
  
CREATE TABLE courses (
	id SERIAL PRIMARY KEY,
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
