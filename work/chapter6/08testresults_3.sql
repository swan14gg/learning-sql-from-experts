SELECT
  class
FROM
  testresults
GROUP BY
  class
HAVING
  AVG(
    CASE WHEN sex = '女' THEN score ELSE NULL END
  ) > AVG(
    CASE WHEN sex = '男' THEN score ELSE NULL END
  )
