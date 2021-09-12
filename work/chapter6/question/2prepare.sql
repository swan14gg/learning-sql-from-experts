CREATE TABLE students (
  student_id INT,
  dpt VARCHAR(4),
  sbmt_date DATE
);

INSERT INTO
  students
VALUES
  (100, '理学部', '2018-10-10'),
  (101, '理学部', '2018-09-22'),
  (102, '文学部', NULL),
  (103, '文学部', '2018-09-10'),
  (200, '文学部', '2018-09-22'),
  (201, '工学部', NULL),
  (202, '経済学部', '2018-09-25');
