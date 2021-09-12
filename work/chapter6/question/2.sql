SELECT
  dpt
FROM
  students
GROUP BY
  dpt
HAVING
  COUNT(
    CASE WHEN sbmt_date >= '2018-09-01'
    AND sbmt_date < '2018-10-01' THEN 1 ELSE NULL END
  ) = COUNT(*)
