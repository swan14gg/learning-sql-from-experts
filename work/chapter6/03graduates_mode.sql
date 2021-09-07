SELECT
  income,
  COUNT(*)
FROM
  graduates
GROUP BY
  income
HAVING
  COUNT(*) >= ALL (
    SELECT
      COUNT(*)
    FROM
      graduates
    GROUP BY
      income
  );
