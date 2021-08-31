SELECT
  n1.num
FROM
  numbers n1
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      numbers n2
    WHERE
      n2.num <= |/n1.num
      AND n2.num <> 1
      AND n1.num % n2.num = 0
  )
  AND n1.num <> 1
