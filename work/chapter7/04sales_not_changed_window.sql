SELECT
  YEAR,
  current_sale
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
WHERE
  current_sale = pre_sale
ORDER BY
  YEAR;
