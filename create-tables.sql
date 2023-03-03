CREATE TABLE Courses (
	id INT PRIMARY KEY,
  	name VARCHAR(12),
  	mentor_id INT,
  	category VARCHAR(24),
  	sub_category VARCHAR(24),
  	total_hours INT,
	FOREIGN KEY (mentor_id) REFERENCES mentors(id)
);

CREATE TABLE parents (
	id INT PRIMARY KEY,
  	name VARCHAR(12),
  	email VARCHAR(24),
  	phone_num INT
);

CREATE TABLE students (
	id INT PRIMARY KEY,
  	name VARCHAR(12),
  	parent_id INT,
  	email VARCHAR(24),
  	phone_num INT,
	FOREIGN KEY (parent_id) REFERENCES parents(id)
);

CREATE TABLE centers (
	id INT PRIMARY KEY,
  	address VARCHAR(30),
  	contact_no VARCHAR(24),
  	phone_num INT
);

CREATE TABLE mentors (
	id INT PRIMARY KEY,
  	name VARCHAR(12),
  	email VARCHAR(24),
  	phone_num INT,
  	center_id INT,
  	field VARCHAR(24),
	FOREIGN KEY (parent_id) REFERENCES parents(id)
  	FOREIGN KEY (center_id) REFERENCES centers(id)
);

CREATE TABLE enrollment (
	student_id INT ,
	course_id INT ,
	FOREIGN KEY (student_id) REFERENCES students(id),
	FOREIGN KEY (course_id) REFERENCES Courses(id)
);