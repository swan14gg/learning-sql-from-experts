CREATE TABLE projects (
  project_id CHAR(5),
  step_nbr INT,
  status CHAR(2)
);

INSERT INTO
  projects
VALUES
  ('AA100', 0, '完了'),
  ('AA100', 1, '待機'),
  ('AA100', 2, '待機'),
  ('B200', 0, '待機'),
  ('B200', 1, '待機'),
  ('CS300', 0, '完了'),
  ('CS300', 1, '完了'),
  ('CS300', 2, '待機'),
  ('CS300', 3, '待機'),
  ('DY400', 0, '完了'),
  ('DY400', 1, '完了'),
  ('DY400', 2, '完了');
