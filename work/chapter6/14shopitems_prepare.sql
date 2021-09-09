CREATE TABLE items (item VARCHAR(8));

CREATE TABLE shopitems (shop VARCHAR(3), item VARCHAR(8));

INSERT INTO
  items
VALUES
  ('ビール'),
  ('紙オムツ'),
  ('自転車');

INSERT INTO
  shopitems
VALUES
  ('仙台', 'ビール'),
  ('仙台', '紙オムツ'),
  ('仙台', '自転車'),
  ('仙台', 'カーテン'),
  ('東京', 'ビール'),
  ('東京', '紙オムツ'),
  ('東京', '自転車'),
  ('大阪', 'テレビ'),
  ('大阪', '紙オムツ'),
  ('大阪', '自転車')
