SELECT
  class
FROM
  testresults
GROUP BY
  class
HAVING
  COUNT(CASE WHEN score >= 80 THEN 1 ELSE NULL END) >= COUNT(*) * 0.75
