SELECT
  s1.year,
  s1.sale
FROM
  sales s1
WHERE
  sale = (
    SELECT
      sale
    FROM
      sales s2
    WHERE
      s1.year = s2.year + 1
  )
