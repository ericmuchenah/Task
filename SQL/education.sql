CREATE DATABASE IF NOT EXISTS education;
USE education;


DROP TABLE IF EXISTS institution;
CREATE TABLE IF NOT EXISTS institution (
  institutionid int(11) NOT NULL AUTO_INCREMENT,
  name varchar(250) NOT NULL,
  PRIMARY KEY (institutionid)
);


INSERT INTO institution (institutionid, name) VALUES
(1, 'Dublin'),
(2, 'London'),
(3, 'US');


DROP TABLE IF EXISTS course;
CREATE TABLE IF NOT EXISTS course (
  courseid int(11) NOT NULL AUTO_INCREMENT,
  name varchar(250) NOT NULL,
  institution int(11) NULL,
  PRIMARY KEY (courseid),
  KEY FK_course_institution (institution),
  CONSTRAINT FK_course_institution FOREIGN KEY (institution) REFERENCES institution (institutionid)
);


INSERT INTO course (courseid, name, institution) VALUES
(1, 'Acturial Science', 1),
(2, 'Genomics', 2),
(3, 'Maths', 3);

	
DROP TABLE IF EXISTS student;
CREATE TABLE IF NOT EXISTS student (
  studentid int(11) NOT NULL AUTO_INCREMENT,
  name varchar(250) NOT NULL,
  course int(11) NULL,
  PRIMARY KEY (studentid),
  KEY FK_student_course (course),
  CONSTRAINT FK_student_course FOREIGN KEY (course) REFERENCES course (courseid)
);


INSERT INTO student (studentid, name, course) VALUES
(1, 'eric 1', 1),
(2, 'eric 2', 1),
(3, 'eric 3', 1),
(4, 'eric 4', 2),
(5, 'eric 5', 2);
