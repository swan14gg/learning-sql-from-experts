SELECT
  prc_date,
  prc_amt,
  (
    CASE WHEN cnt = 3 THEN mvg_avg ELSE NULL END
  )
FROM
  (
    SELECT
      prc_date,
      prc_amt,
      AVG(prc_amt) OVER(
        ORDER BY
          prc_date ROWS BETWEEN 2 preceding
          AND CURRENT ROW
      ) mvg_avg,
      COUNT(*) OVER(
        ORDER BY
          prc_date ROWS BETWEEN 2 preceding
          AND CURRENT ROW
      ) cnt
    FROM
      accounts
  ) tmp
