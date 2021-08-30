SELECT
  DISTINCT t1.student_id
FROM
  testscores t1
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      testscores t2
    WHERE
      t1.student_id = t2.student_id
      AND (
        (
          t2.subject = '算数'
          AND t2.score < 80
        )
        OR (
          t2.subject = '国語'
          AND t2.score < 50
        )
      )
  )
