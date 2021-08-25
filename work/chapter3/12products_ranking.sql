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
  p1.price,
  (
    SELECT
      COUNT(p2.price)
    FROM
      products p2
    WHERE
      p2.price > p1.price
  ) + 1 AS rank_1
FROM
  products p1
ORDER BY
  p1.price desc;
