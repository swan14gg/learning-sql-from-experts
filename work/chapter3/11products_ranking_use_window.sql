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
  name,
  price,
  RANK() OVER (
    ORDER BY
      price desc
  ) AS rank_1,
  DENSE_RANK() OVER (
    ORDER BY
      price desc
  ) AS rank_2
FROM
  products;
