TRUNCATE TABLE products;

INSERT INTO
  products
VALUES
  ('りんご', 50),
  ('みかん', 100),
  ('ぶどう', 50),
  ('スイカ', 80),
  ('レモン', 30),
  ('バナナ', 50);

SELECT
  p1.name,
  MAX(p1.price) AS price,
  COUNT(p2.name) + 1 AS rank_1
FROM
  products p1
  LEFT OUTER JOIN products p2 ON p1.price < p2.price
GROUP BY
  p1.name
