CREATE TABLE testscores (
  student_id INT,
  subject VARCHAR(3),
  score INT
);

INSERT INTO
  testscores
VALUES
  (100, '算数', 100),
  (100, '国語', 80),
  (100, '理科', 80),
  (200, '算数', 80),
  (200, '国語', 95),
  (300, '算数', 40),
  (300, '国語', 90),
  (300, '社会', 55),
  (400, '算数', 80);
