CREATE TABLE serverloadsample (
  server CHAR(1),
  sample_date DATE,
  load_val INT,
  PRIMARY KEY (server, sample_date)
);

INSERT INTO
  serverloadsample
VALUES
  ('A', '2018-02-01', 1024),
  ('A', '2018-02-02', 2366),
  ('A', '2018-02-05', 2366),
  ('A', '2018-02-07', 985),
  ('A', '2018-02-08', 780),
  ('A', '2018-02-12', 1000),
  ('B', '2018-02-01', 54),
  ('B', '2018-02-02', 39008),
  ('B', '2018-02-03', 2900),
  ('B', '2018-02-04', 556),
  ('B', '2018-02-05', 12600),
  ('B', '2018-02-06', 7309),
  ('C', '2018-02-01', 1000),
  ('C', '2018-02-07', 2000),
  ('C', '2018-02-16', 500);
