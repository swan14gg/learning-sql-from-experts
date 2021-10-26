CREATE TABLE tbl_a (
  KEY CHAR(1),
  col_1 INT,
  col_2 INT,
  col_3 INT
);

CREATE TABLE tbl_b (
  KEY CHAR(1),
  col_1 INT,
  col_2 INT,
  col_3 INT
);

INSERT INTO
  tbl_a
VALUES
  ('A', 2, 3, 4),
  ('B', 0, 7, 9),
  ('C', 5, 1, 6);

INSERT INTO
  tbl_b
VALUES
  ('A', 2, 3, 4),
  ('B', 0, 7, 9),
  ('C', 5, 1, 6);
