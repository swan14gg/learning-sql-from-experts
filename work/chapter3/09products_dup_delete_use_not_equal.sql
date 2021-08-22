DELETE FROM
  products_dup p1
WHERE
  EXISTS(
    SELECT
      *
    FROM
      products_dup p2
    WHERE
      p1.name = p2.name
      AND p1.price = p2.price
      AND p1.ctid < p2.ctid
  )
