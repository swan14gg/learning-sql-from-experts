CREATE TABLE course_master (
  course_id int PRIMARY KEY,
  course_name varchar(10)
);

INSERT INTO
  course_master
VALUES
  (1, '経理入門'),
  (2, '財務知識'),
  (3, '簿記検定開講講座'),
  (4, '税理士');

CREATE TABLE open_courses (
  MONTH varchar(6),
  course_id int,
  PRIMARY KEY (MONTH, course_id)
);

INSERT INTO
  open_courses
VALUES
  ('201806', 1),
  ('201806', 3),
  ('201806', 4),
  ('201807', 4),
  ('201808', 2),
  ('201808', 4);
