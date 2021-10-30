SELECT
  s1.seat AS START,
  '~',
  s2.seat AS END
FROM
  seats s1,
  seats s2
WHERE
  s2.seat = s1.seat + 2
  AND NOT EXISTS (
    SELECT
      *
    FROM
      seats s3
    WHERE
      s3.seat BETWEEN s1.seat
      AND s2.seat
      AND s3.status <> '空'
  )
