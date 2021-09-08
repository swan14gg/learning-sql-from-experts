SELECT
  class
FROM
  testresults
GROUP BY
  class
HAVING
  SUM(
    CASE WHEN score >= 50
    AND sex = '男' THEN 1 ELSE 0 END
  ) > SUM(
    CASE WHEN score >= 50
    AND sex = '女' THEN 1 ELSE 0 END
  )
