SELECT
  DISTINCT t1.student_id
FROM
  testscores t1
WHERE
  subject IN ('算数', '国語')
  AND NOT EXISTS (
    SELECT
      *
    FROM
      testscores t2
    WHERE
      t1.student_id = t2.student_id
      AND 1 = CASE WHEN subject = '算数'
      AND score < 80 THEN 1 WHEN subject = '国語'
      AND score < 50 THEN 1 ELSE 0 END
  )
GROUP BY
  student_id
HAVING
  COUNT(*) = 2
