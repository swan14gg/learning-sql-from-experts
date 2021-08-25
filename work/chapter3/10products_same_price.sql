TRUNCATE TABLE products;

INSERT INTO
  products
VALUES
  ('りんご', 50),
  ('みかん', 100),
  ('ぶどう', 50),
  ('スイカ', 80),
  ('レモン', 30),
  ('いちご', 100),
  ('バナナ', 100);

SELECT
  DISTINCT p1.name,
  p1.price
FROM
  products p1
  INNER JOIN products p2 ON p1.name <> p2.name
  AND p1.price = p2.price
ORDER BY
  p1.price;
