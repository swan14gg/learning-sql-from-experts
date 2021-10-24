CREATE TABLE tblage (age_class INT PRIMARY KEY, age_range CHAR(6));

CREATE TABLE tblsex (sex_cd CHAR(1) PRIMARY KEY, sex CHAR(1));

CREATE TABLE tblpop (
  pref_name CHAR(3),
  age_class INT,
  sex_cd CHAR(1),
  population INT,
  FOREIGN KEY (age_class) REFERENCES tblage (age_class),
  FOREIGN KEY (sex_cd) REFERENCES tblsex (sex_cd)
);

INSERT INTO
  tblage
VALUES
  (1, '21〜30歳'),
  (2, '31〜40歳'),
  (3, '41〜50歳');

INSERT INTO
  tblsex
VALUES
  ('m', '男'),
  ('f', '女');

INSERT INTO
  tblpop
VALUES
  ('秋田', 1, 'm', 400),
  ('秋田', 3, 'm', 1000),
  ('秋田', 1, 'f', 800),
  ('秋田', 3, 'f', 1000),
  ('青森', 1, 'm', 700),
  ('青森', 1, 'f', 500),
  ('青森', 3, 'f', 800),
  ('東京', 1, 'm', 900),
  ('東京', 1, 'f', 1500),
  ('東京', 3, 'f', 1200),
  ('千葉', 1, 'm', 900),
  ('千葉', 1, 'f', 1000),
  ('千葉', 3, 'f', 900);
