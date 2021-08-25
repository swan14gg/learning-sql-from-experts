CREATE TABLE products_q (name CHAR(4), price INT);

INSERT INTO
  products_q
VALUES
  ('りんご', 100),
  ('みかん', 50),
  ('みかん', 50),
  ('みかん', 50),
  ('バナナ', 80);

CREATE TABLE products_noredundant AS
SELECT
  ROW_NUMBER() OVER (
    PARTITION BY name,
    price
    ORDER BY
      name
  ) AS row_num,
  name,
  price
FROM
  products_q;

DELETE FROM
  products_noredundant
WHERE
  row_num > 1;

SELECT
  *
FROM
  products_noredundant;
