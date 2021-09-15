SELECT
  YEAR,
  current_sale,
  (
    CASE WHEN current_sale = pre_sale THEN '→' WHEN current_sale > pre_sale THEN '↑' WHEN current_sale < pre_sale THEN '↓' ELSE '-' END
  ) AS var
FROM
  (
    SELECT
      YEAR,
      sale AS current_sale,
      SUM(sale) OVER (
        ORDER BY
          YEAR RANGE BETWEEN 1 preceding
          AND 1 preceding
      ) AS pre_sale
    FROM
      sales
  ) tmp
ORDER BY
  YEAR;
