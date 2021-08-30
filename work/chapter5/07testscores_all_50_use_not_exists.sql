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
      AND t2.score < 50
  )
