TRUNCATE TABLE products;

INSERT INTO
  products
VALUES
  ('りんご', 100),
  ('みかん', 50),
  ('バナナ', 80);

SELECT
  p1.name,
  p2.name
FROM
  products p1
  INNER JOIN products p2 ON p1.name >= p2.name
