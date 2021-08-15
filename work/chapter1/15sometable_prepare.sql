CREATE TABLE sometable (
  p_key char(1),
  col_1 int,
  col_2 char(1),
  CONSTRAINT p_key_deferrable PRIMARY KEY (p_key) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO
  sometable
VALUES
  ('a', 1, 'あ'),
  ('b', 2, 'い'),
  ('c', 3, 'う');
