SELECT
  s1.seat AS START,
  '~',
  s1.seat + 2 AS END
FROM
  seats s1,
  seats s2
WHERE
  s2.seat BETWEEN s1.seat
  AND s1.seat + 2
GROUP BY
  s1.seat
HAVING
  COUNT(CASE s2.status WHEN '空' THEN 1 ELSE 0 END) = 3;
