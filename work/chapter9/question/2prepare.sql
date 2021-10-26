CREATE TABLE skills (skill VARCHAR(10));

CREATE TABLE empskills (emp VARCHAR(3), skill VARCHAR(10));

INSERT INTO
  skills
VALUES
  ('Oracle'),
  ('UNIX'),
  ('Java');

INSERT INTO
  empskills
VALUES
  ('相田', 'Oracle'),
  ('相田', 'UNIX'),
  ('相田', 'Java'),
  ('相田', 'C#'),
  ('神崎', 'Oracle'),
  ('神崎', 'UNIX'),
  ('神崎', 'Java'),
  ('平井', 'UNIX'),
  ('平井', 'Oracle'),
  ('平井', 'PHP'),
  ('平井', 'Perl'),
  ('平井', 'C++'),
  ('若田部', 'Perl'),
  ('渡来', 'Oracle');
