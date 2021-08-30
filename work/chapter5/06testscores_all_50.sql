SELECT
  DISTINCT t1.student_id
FROM
  testscores t1
WHERE
  50 <= ALL(
    SELECT
      t2.score
    FROM
      testscores t2
    WHERE
      t1.student_id = t2.student_id
  );
