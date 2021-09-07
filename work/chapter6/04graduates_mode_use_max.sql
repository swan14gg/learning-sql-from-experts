SELECT
  income,
  COUNT(*)
FROM
  graduates
GROUP BY
  income
HAVING
  COUNT(*) >= (
    SELECT
      MAX(cnt)
    FROM
      (
        SELECT
          COUNT(*) AS cnt
        FROM
          graduates
        GROUP BY
          income
      ) TMP
  );
