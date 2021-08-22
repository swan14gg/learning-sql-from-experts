DELETE FROM
  products_dup p1
WHERE
  ctid < (
    SELECT
      MAX(p2.ctid)
    FROM
      products_dup p2
    WHERE
      p1.name = p2.name
      AND p1.price = p2.price
  );
